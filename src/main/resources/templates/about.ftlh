<!--
About the website. This page can include anything you want about the purpose or creation of the site. Requirements:
A) At least one image.
B) A meaningful amount of text (e.g., why you chose your theme, your design choices, or a short bio)
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous">
        </script>

    <!-- Nav Bar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Outer Wilds Gallery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    <a class="nav-link" href="details.html">Details</a>
                    <a class="nav-link" href="about.html">About</a>
                    <a class="nav-link" href="new-character-form.html">Add a Character</a>
                </div>
            </div>
        </div>
    </nav>
    <h1 class="text-center mt-5" class="fw-bold">About this Gallery</h1>
    <p class="text-center">Learn more about the Outer Wilds Character Collection.</p>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <hr>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <!-- This column takes up 4 out of 12 spaces (one-third of the screen) -->
            <div class="col-md-9">
                <h2>Welcome to the Outer Wilds Character Gallery</h2>
                <p>The Outer Wilds Character Gallery showcases iconic characters from the video game Outer Wilds.</p>
                <h2>Data and Attribution</h2>

                    <p>All images and information used in this gallery are sourced from the <a
                            href="https://outerwilds.fandom.com/wiki/Outer_Wilds_Wiki" target="_blank"> Outer Wilds
                            Wiki</a>.
                        All content is pulled from the video game Outer Wilds developed by Mobius Digital and published
                        by Anapurna Interactive.
                    </p>

                <h2>About the Style</h2>
                <p>The gallery is organized by character species, each given a color. Green represents the Hearthians,
                    yellow represents the Nomai, and red represents the Owlk.
                    The green NavBar is also a nod to Timber Hearth, the home planet of the Hearthians.
                </p>

            </div>
            <div class="col-md-3">
                <img src="Assets/Sun_Supernova.webp" class="img-thumbnail" alt="Sun Supernova from Outer Wilds">
                <div class="card">
                    <div class="card-header">
                        Quote
                    </div>
                    <div class="card-body">
                        <blockquote class="blockquote mb-0">
                            <p>"Science compels us to explode the sun."</p>
                            <footer class="blockquote-footer">Pye <cite title="Source Title">Outer Wilds</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>