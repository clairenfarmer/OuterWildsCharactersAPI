<#import "layout.ftlh" as l>
    <@l.page title="About" active="about">

        <h1 class="text-center mt-5" class="fw-bold">About this App</h1>
        <p class="text-center">Outer Wilds Character Gallery. The same database and service layer power <strong>two front ends</strong>:</p>
            <p class="text-center">a JSON API for programs, and the HTML pages you are looking at now for people.</p>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <hr>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <!-- Main text: left 3/4 of the screen -->
                <div class="col-md-9">
                    <h3>How a page request flows</h2>
                    <ol>
                        <li>The browser requests a URL, for example <code>/characters/5</code>.</li>
                        <li>A <code>@Controller</code> method runs, asks the service for data, and puts it in the
                            <code>Model</code>.</li>
                        <li>The controller returns a view name. Spring renders the matching FreeMarker template.</li>
                        <li>The browser receives HTML.</li>
                    </ol>

                    <h3>Two front ends, one backend</h2>
                    <table>
                        <thead>
                            <tr>
                                <th></th>
                                <th>Web pages</th>
                                <th>JSON API</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Controller</td>
                                <td><code>CharacterUIController</code></td>
                                <td><code>CharacterController</code></td>
                            </tr>
                            <tr>
                                <td>URLs</td>
                                <td><code>/</code>, <code>/characters/...</code>, <code>/about</code></td>
                                <td><code>/api/characters/...</code></td>
                            </tr>
                            <tr>
                                <td>Returns</td>
                                <td>HTML from templates</td>
                                <td>JSON</td>
                            </tr>
                            <tr>
                                <td>Calls</td>
                                <td colspan="2">the same <code>CharacterService</code> and <code>CharacterRepository</code></td>
                            </tr>
                        </tbody>
                    </table>
                
                    <p>Pictures are saved in a static directory.</p>
                </div>

                <!-- Photo and quote: right 1/4 of the screen -->
                <div class="col-md-3">
                    <img src="/Sun_Supernova.webp" class="img-thumbnail" alt="Sun Supernova from Outer Wilds">
                    <div class="card">
                        <div class="card-header">
                            Quote
                        </div>
                        <div class="card-body">
                            <blockquote class="blockquote mb-0">
                                <p>"Science compels us to explode the sun."</p>
                                <footer class="blockquote-footer">Pye <cite title="Source Title">Outer Wilds</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </@l.page>