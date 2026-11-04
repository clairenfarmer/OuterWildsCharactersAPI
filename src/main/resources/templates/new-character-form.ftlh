<#import "layout.ftlh" as l>
    <#-- Reusable for both "add" and "edit".
         Expects: allSpecies, allPlanets, formAction.
         Optional: character (pre-fills values), heading, lead, submitLabel. -->
    <#assign isEdit = (character)?? >
    <@l.page title=(heading!(isEdit?then('Edit Character', 'Add a Character'))) active=(isEdit?then('', 'new'))>


        <h1 class="text-center mt-5" class="fw-bold">${heading!(isEdit?then('Edit Character', 'Add a New Character'))}</h1>
        <p class="text-center">${lead!(isEdit?then('Update this character\u2019s details.', 'Share your favorite Outer Wilds character.'))}</p>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <hr>
                </div>
            </div>
        </div>

        <!-- Form-->
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-sm p-4">
                        <h3 class="mb-4">Character Information</h3>

                        <form action="${formAction}" method="POST">

                            <!-- Name -->
                            <div class="mb-3">
                                <label for="fullName" class="form-label">Character Name *</label>
                                <input type="text" name="name" class="form-control" id="fullName"
                                    placeholder="e.g., Protagonist"
                                    value="${(character.name)!''}" required>
                            </div>

                            <!-- Species -->
                            <div class="mb-3">
                                <label for="speciesSelect" class="form-label">Species *</label>
                                <select name="species" class="form-select" id="speciesSelect" required>
                                    <option disabled value=""<#if !isEdit> selected</#if>>-- Select a Species --</option>
                                    <#list allSpecies as s>
                                        <option value="${s?string}"<#if isEdit && (character.species)?? && character.species?string == s?string> selected</#if>>${s?string}</option>
                                    </#list>
                                </select>
                            </div>

                            <!-- Planet -->
                            <div class="mb-3">
                                <label for="planetSelect" class="form-label">Planet *</label>
                                <select name="planet" class="form-select" id="planetSelect" required>
                                    <option disabled value=""<#if !isEdit> selected</#if>>-- Select a Planet --</option>
                                    <#list allPlanets as p>
                                        <option value="${p?string}"<#if isEdit && (character.planet)?? && character.planet?string == p?string> selected</#if>>${p?string}</option>
                                    </#list>
                                </select>
                            </div>

                            <!-- Description -->
                            <div class="mb-3">
                                <label for="userMessage" class="form-label">Short Description *</label>
                                <textarea name="description" class="form-control" id="userMessage" rows="4"
                                    placeholder="This character is..." required>${(character.description)!''}</textarea>
                            </div>

                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-success w-100">${submitLabel!(isEdit?then('Save Changes', 'Add Character'))}</button>
                            <#if isEdit>
                                <a href="/characters/${character.characterId}" class="btn btn-outline-secondary w-100 mt-2">Cancel</a>
                            </#if>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </@l.page>
