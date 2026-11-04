<#macro page title active="">
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title} | Outer Wilds Character Gallery</title>
        <link rel="stylesheet" href="/css/styles.css">
    </head>

    <body>
        <header>
            <a class="brand" href="/">Outer Wilds Character Gallery</a>
            <nav>
                <ul>
                    <li><a href="/" class="${active == 'home'?then('active')}">Home</a></li>
                    <li><a href="/details" class="${active == 'details'?then('active')}">Details</a></li>
                    <li><a href="/about" class="${active == 'about'?then('active')}">About</a></li>
                    <li><a href="/new-character-form" class="${active == 'new'?then('active')}">Add a Character</a></li>
                </ul>
            </nav>
        </header>

        <main class="container">
            <#if message??>
                <p class="alert">${message}</p>
            </#if>
            <#nested>
        </main>
    </body>