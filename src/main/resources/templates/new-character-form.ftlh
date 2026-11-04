<#import "layout.ftlh" as l>
    <@l.page title="Add a Character" active="new">


        <h1 class="text-center mt-5" class="fw-bold">Add a New Character</h1>
        <p class="text-center">Share your favorite Outer Wilds character.</p>
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

                        <form action="/characters" method="POST">

                            <!-- Name -->
                            <div class="mb-3">
                                <label for="fullName" class="form-label">Character Name *</label>
                                <input type="text" name="name" class="form-control" id="fullName"
                                    placeholder="e.g., Protagonist" required>
                            </div>

                            <!-- Species -->
                            <div class="mb-3">
                                <label for="speciesSelect" class="form-label">Species *</label>
                                <select name="species" class="form-select" id="speciesSelect" required>
                                    <option selected disabled value="">-- Select a Species --</option>
                                    <#list allSpecies as s>
                                        <option value="${s?string}">${s?string}</option>
                                    </#list>
                                </select>
                            </div>

                            <!-- Planet -->
                            <div class="mb-3">
                                <label for="planetSelect" class="form-label">Planet *</label>
                                <select name="planet" class="form-select" id="planetSelect" required>
                                    <option selected disabled value="">-- Select a Planet --</option>
                                    <#list allPlanets as p>
                                        <option value="${p?string}">${p?string}</option>
                                    </#list>
                                </select>
                            </div>

                            <!-- Description -->
                            <div class="mb-3">
                                <label for="userMessage" class="form-label">Short Description *</label>
                                <textarea name="description" class="form-control" id="userMessage" rows="4"
                                    placeholder="This character is..." required></textarea>
                            </div>

                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-success w-100">Add Character</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </@l.page>