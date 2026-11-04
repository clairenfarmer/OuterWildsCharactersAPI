<#import "layout.ftlh" as l>
    <@l.page title="Details" active="details">


        <h1 class="text-center mt-5" class="fw-bold">About the Character</h1>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <hr>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <h6 class="card-header">Quick Info</h6>
                        <div class="card-body">
                            <h4 class="card-title">${character.name}</h4>
                            <p><strong>Species: </strong> <span class="badge bg-success">${character.species}</span></p>
                            <p><strong>Planet Found: </strong>${character.planet}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <h2>About ${character.name}</h2>
                    <p class="lead fs-6">${character.description}</p>
                    <a href="/" class="btn btn-outline-secondary">&larr; Back to gallery</a>
                </div>
            </div>
        </div>
    </@l.page>