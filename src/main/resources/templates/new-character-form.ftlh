<#import "layout.ftlh" as l>
    <@l.page title="Add a Character" active="new-character-form">


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

                        <form action="#" method="POST">

                            <!-- Name -->
                            <div class="mb-3">
                                <label for="fullName" class="form-label">Character Name *</label>
                                <input type="text" class="form-control" id="fullName" placeholder="e.g., Protagonist"
                                    required>
                            </div>

                            <!-- Species -->
                            <div class="mb-3">
                                <label for="speciesSelect" class="form-label">Species *</label>
                                <select class="form-select" id="speciesSelect">
                                    <option selected disabled value="">-- Select a Species --</option>
                                    <option value="hearthian">Hearthian</option>
                                    <option value="nomai">Nomai</option>
                                    <option value="owlk">Owlk</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>

                            <!-- Planet -->
                            <div class="mb-3">
                                <label for="planetSelect" class="form-label">Planet *</label>
                                <select class="form-select" id="planetSelect">
                                    <option selected disabled value="">-- Select a Planet --</option>
                                    <option value="timber-hearth">Timber Hearth</option>
                                    <option value="brittle-hollow">Brittle Hollow</option>
                                    <option value="giants-deep">Giant's Deep</option>
                                    <option value="ash-twin">Ash Twin</option>
                                    <option value="ember-twin">Ember Twin</option>
                                    <option value="quantum-moon">Quantum Moon</option>
                                    <option value="stranger">Stranger</option>
                                </select>
                            </div>

                            <!-- Image URL -->
                            <div class="mb-3">
                                <label for="inputGroupFile02" class="form-label">
                                    Upload an image of your character *
                                </label>
                                <input type="file" class="form-control" id="inputGroupFile02">
                            </div>

                            <!-- Description -->
                            <div class="mb-3">
                                <label for="userMessage" class="form-label">Short Description *</label>
                                <textarea class="form-control" id="userMessage" rows="4"
                                    placeholder="This character is..."></textarea>
                            </div>

                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-success w-100">Add Character</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </@l.page>