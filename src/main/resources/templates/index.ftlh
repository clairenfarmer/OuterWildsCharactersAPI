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
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Search characters..."
                                        aria-label="Recipient's username" aria-describedby="button-addon2">
                                    <button class="btn btn-outline-secondary" type="button"
                                        id="button-addon2">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Character Cards -->
                    <div class="row g-4 justify-content-md-center">
                        <div class="col-12 col-md-4">
                            <div class="card h-100">
                                <img src="Assets\Chert.avif" class="card-img-top" alt="Chert from outer wilds">
                                <div class="card-body">
                                    <h5 class="card-title">Chert</h5>
                                    <p class="card-text">Chert is a Outer Wilds Venture Member on the planet Ember Twin.
                                        They are an
                                        enthusiastic
                                        astronomer and their instrument of choice is drums.</p>
                                    <h6>Species: <span class="badge bg-success">Hearthian</span></h6>
                                    <a href="#" class="btn btn-outline-success">View details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="card h-100">
                                <img src="Assets\Feldspar.avif" class="card-img-top" alt="Feldspar from outer wilds">
                                <div class="card-body">
                                    <h5 class="card-title">Feldspar</h5>
                                    <p class="card-text">Feldspar is a Outer Wilds Venture Member on the planet Dark
                                        Bramble. They are
                                        known as
                                        fearless and an incredible pilot and their instrument of choice is harmonica.
                                    </p>
                                    <h6>Species: <span class="badge bg-success">Hearthian</span></h6>
                                    <a href="details.html" class="btn btn-outline-success">View details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="card h-100">
                                <img src="Assets\Solanum.avif" class="card-img-top" alt="Solanum from outer wilds">
                                <div class="card-body">
                                    <h5 class="card-title">Solanum</h5>
                                    <p class="card-text">Solanum is the last nomai in the solar system and found on the
                                        Quantum Moon.
                                        Solanum uses her
                                        communication device to play piano-like music.</p>
                                    <h6>Species: <span class="badge bg-warning">Nomai</span></h6>
                                    <a href="#" class="btn btn-outline-warning">View details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="card h-100">
                                <img src="Assets\Pye_Corpse.avif" class="card-img-top" alt="Pye from outer wilds">
                                <div class="card-body">
                                    <h5 class="card-title">Pye</h5>
                                    <p class="card-text">Pye was a Nomai from Ember Twin who worked on the Ash Twin
                                        project
                                        at the High
                                        Energy Lab and
                                        Sun Station. Pye confirmed many important Nomai discoveries including the
                                        negative
                                        time interval
                                        from black hole
                                        travel.</p>
                                    <h6>Species: <span class="badge bg-warning">Nomai</span></h6>
                                    <a href="#" class="btn btn-outline-warning">View details</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="card h-100">
                                <img src="Assets\Prisoner.avif" class="card-img-top" alt="Prisoner from outer wilds">
                                <div class="card-body">
                                    <h5 class="card-title">Prisoner</h5>
                                    <p class="card-text">The Prisoner was an inhabitant of the stranger who was sealed
                                        in a
                                        vault.
                                        By this separation,
                                        the Prisoner 'outlived' their species through a simulation while the rest of
                                        their
                                        kind's
                                        simulation was
                                        destroyed.</p>
                                    <h6>Species: <span class="badge bg-danger">Nomai</span></h6>
                                    <a href="#" class="btn btn-outline-danger">View details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </@l.page>