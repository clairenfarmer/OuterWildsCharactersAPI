<#import "layout.ftlh" as l>
    <@l.page title="Character Not Found" active="">

        <div class="container text-center mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <img src="/Pye_Corpse.avif" class="img-fluid rounded mb-4" style="max-height: 260px;"
                        alt="A lost explorer drifting in space">

                    <h1 class="display-4 fw-bold">404 &mdash; Lost in the Solar System</h1>

                    <p class="lead mt-3">
                        <#if errorMessage??>
                            ${errorMessage}
                        <#else>
                            We searched every planet, but that character could not be found.
                        </#if>
                    </p>

                    <p class="text-muted">
                        The explorer you're looking for may have wandered into a black hole,
                        been caught in the supernova, or never existed in this loop.
                    </p>

                    <div class="d-flex gap-2 justify-content-center flex-wrap mt-4">
                        <a href="/" class="btn btn-success">&larr; Back to the gallery</a>
                        <a href="/characters/new" class="btn btn-outline-success">Add a character</a>
                    </div>
                </div>
            </div>
        </div>
    </@l.page>
