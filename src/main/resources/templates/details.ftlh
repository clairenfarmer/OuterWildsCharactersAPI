<#import "layout.ftlh" as l>
<@l.page title ="Details" active="details">


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
            <div class="col-md-3">
                <img src="Assets/Feldspar.webp" class="img-thumbnail" alt="Feldspar from Outer Wilds">
                <div class="card">
                    <h6 class="card-header">Quick Info</h6>
                    <div class="card-body">
                        <h4 class="card-title">${character.name}</h4>
                        <p class="lead fs-6">${character.description}</p>
                        <p><strong>Species: </strong> <span class="badge bg-success">${character.species}</span></p>
                        <p><strong>Planet Found: </strong>${character.planet}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <h2>Backstory</h2>
                <p>Feldspar is one of the founding members of the Outer wilds Ventures, being the first Hearthian 
                    to be intentionally launched into space. They completed an orbit around Timber Hearth and made 
                    the first Landing on the Attlerock. Before the games events, Feldspar had been missing and was 
                    thought dead.</p>
                <h2>Personality</h2>
                <p>Feldspar has been described as "absolutely fearless". They are eager to hear about the protagonists
                    adventures around the Outer Wilds, but have found peace in their camp at Dark Bramble following their
                    crash on the planet.
                </p>
            </div>
        </div>
    </div>





</body>

</html>