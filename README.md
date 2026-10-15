# Outer Wilds Characters API

A REST API for characters from the video game Outer Wilds, built with Spring Boot using a layered architecture. Data is stored in PostgreSQL (Neon).

## Features

- Create, read, update, and delete characters
- Partial, case-insensitive search by name
- Filter by species and planet
- Bean validation with clear HTTP status codes (400, 404)
- Configured entirely through environment variables (no secrets in the repo)

## Tech Stack

| Area | Technology |
|------|------------|
| Language | Java 25 |
| Framework | Spring Boot (Web, Data JPA, Validation) |
| Database | PostgreSQL on [Neon](https://neon.com) |
| Build | Maven |

Generate a starter project at [start.spring.io](https://start.spring.io) with: **Spring Web, Spring Data JPA, Validation, PostgreSQL Driver**.

## Architecture

The app uses four layers. Each layer talks only to the one below it.

```
HTTP request
    |
Controller   - maps URLs to methods, validates input, returns HTTP responses
    |
Service      - business logic and orchestration, throws domain exceptions
    |
Repository   - data access (Spring Data JPA), generates SQL
    |
Entity       - Java class mapped to the `characters` table
    |
PostgreSQL (Neon)
```

### Project Structure

```
src/main/java/com/csc340/api/characters
  CharacterController.java
  CharacterNotFoundException.java
  CharacterRepository.java
  CharacterService.java
  OuterWildsCharacter.java
  Planet.java (enum)
  Species.java (enum)
src/main/resources/
  application.properties
```

## Data Model

**Outer Wilds Character** (table `character`)

| Field | Type | Rules |
|-------|------|-------|
| `character_id` | Long | Generated automatically |
| `description` | String | Required |
| `name` | String | Required, not blank |
| `Species` | Enum: `HEARTHIAN`, `NOMAI`, `STRANGER` | Required |
| `Planet` | Enum: `TIMBER_HEARTH`, `ATTLEROCK`, `BRITTLE_HOLLOW`, `GIANTS_DEEP`, `DARK_BRAMBLE`, `ASH_TWIN`, `EMBER_TWIN`, `QUANTUM_MOON`, `STRANGER` | Required |

## API Reference

Base path: `/api/characters`

| Method | Path | Description | Success |
|--------|------|-------------|---------|
| GET | `/api/characters` | Get all characters | 200 |
| GET | `/api/characters/{id}` | Get one character by id | 200 |
| POST | `/api/characters` | Add a character | 201 |
| PUT | `/api/characters/{id}` | Update a character | 200 |
| DELETE | `/api/characters/{id}` | Delete a character | 204 |
| GET | `/api/characters?{attribute=value}` | Filter by one value (attribute = planet or species) | 200 |
| GET | `/api/characters?name={partial}` | search by name (partial, case-insensitive) | 200 |

### Query parameters for `GET /api/characters`

| Parameter | Example | Behavior |
|-----------|---------|----------|
| `name` | `?name=sol` | Partial, case-insensitive match ("sol" finds "Solanum") |
| `species` | `?species=NOMAI` | Exact match on `HEARTHIAN`, `NOMAI`, or `STRANGER` |
| both | `?name=sol&species=NOMAI` | Both filters must match |

Blank or missing parameters are ignored.

### Example request

```http
POST /api/plants
Content-Type: application/json

{
  "name": "Solanum",
  "description": "The last nomai standing",
  "species": "NOMAI",
  "planet": "QUANTUM_MOON"
}
```

### Status codes

| Code | Meaning |
|------|---------|
| 200 | OK |
| 201 | Created |
| 204 | Deleted, no content |
| 400 | Validation failed or malformed request (for example, an invalid `planet` value) |
| 404 | Character with that id does not exist |

## Configuration

The app reads its database settings from environment variables. Spring Boot maps these names automatically, so nothing secret is stored in `application.properties`.

| Variable | Example |
|----------|---------|
| `SPRING_DATASOURCE_URL` | `jdbc:postgresql://<neon-host>/<db>?sslmode=require` |
| `PORT` | Set by Render; defaults to `8080` locally |

## Running Locally

1. Create a Neon project and gather your connection details.
2. Set the  `SPRING_DATASOURCE_URL` environment variable.
    - Mac/Linux: `export SPRING_DATASOURCE_URL="jdbc:postgresql://<neon-host>/<db>?sslmode=require"`
    - Windows: `set SPRING_DATASOURCE_URL=jdbc:postgresql://<neon-host>/<db>?sslmode=require`
    - PowerShell: `$env:SPRING_DATASOURCE_URL="jdbc:postgresql://<neon-host>/<db>?sslmode=require"`
3. Start the app:

```bash
./mvnw spring-boot:run        # Mac / Linux
.\mvnw.cmd spring-boot:run    # Windows
```

4. Visit `http://localhost:8080/api/characters`. A fresh database returns `[]`.

Hibernate creates the `characters` table automatically on first run (`spring.jpa.hibernate.ddl-auto=update`).

## Deployment (Render)
 
Render has no native Java runtime, so the app is deployed with Docker.
 
1. Add a `Dockerfile` at the repository root:
```dockerfile
FROM eclipse-temurin:25-jdk-alpine AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q -DskipTests package
 
FROM eclipse-temurin:25-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-XX:MaxRAMPercentage=75", "-jar", "app.jar"]
```
 
2. Push the repository to GitHub.
3. In Render, create a **Web Service**, connect the repo, choose the **Docker** runtime and the **Free** instance type.
4. Add the  `SPRING_DATASOURCE_URL` environment variable (value only, no quotes).
5. Deploy, then open `https://<your-service>.onrender.com/api/characters`.
### Free-tier notes
 
- Render free services sleep after roughly 15 minutes of inactivity, so the first request afterward can take up to a minute.
- Neon scales idle databases to zero, which adds a short delay on the first query.
- Render's file system is ephemeral. All persistent data lives in Neon.