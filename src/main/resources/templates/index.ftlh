<#import "layout.ftlh" as l>
    <@l.page title="Home" active="home">

        <h1 class="text-center mt-5" class="fw-bold">Outer Wilds Character Gallery</h1>
        <p class="text-center"> Explore an amazing collection of characters from the video game Outer Wilds!</p>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <hr>
                                <form method="get" action="/">
                                    <div class="input-group mb-3">
                                        <input type="text" name="name" class="form-control"
                                            placeholder="Search characters..."
                                            value="${(name)!''}"
                                            aria-label="Character name">
                                        <select name="species" class="form-select" aria-label="Filter by species">
                                            <option value="">All species</option>
                                            <#list allSpecies as s>
                                                <option value="${s?string}"<#if (species)?? && species?string == s?string> selected</#if>>${s?string}</option>
                                            </#list>
                                        </select>
                                        <button class="btn btn-outline-secondary" type="submit"
                                            id="button-addon2">Search</button>
                                        <a href="/" class="btn btn-outline-secondary">Clear</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>


                    <!-- Character Cards -->
                    <div class="row g-4 justify-content-md-center">
                        <#list characters as character>
                            <div class="col-12 col-md-4">
                                <div class="card h-100">
                                    <div class="card-body">
                                        <h5 class="card-title">${character.name}</h5>
                                        <p class="card-text">${character.description}</p>
                                        <h6>Species: <span class="badge bg-success">${character.species}</span></h6>
                                        <a href="/characters/${character.characterId}" class="btn btn-outline-success">View details</a>
                                    </div>
                                </div>
                            </div>
                        <#else>
                            <p class="text-center">No characters found.</p>
                        </#list>
                    </div>
                </div>
            </div>
        </div>
    </@l.page>