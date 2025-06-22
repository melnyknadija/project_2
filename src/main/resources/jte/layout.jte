@param String title
@param gg.jte.Content content

<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <style>
        body { font-family: sans-serif; margin: 20px; }
        .container { border: 1px solid #ccc; padding: 15px; margin-top: 20px; }
        footer { margin-top: 30px; text-align: center; color: #777; }
    </style>
</head>
<body>
<header>
    <h1>${title}</h1>
</header>

<div class="container">
    ${content}
</div>

<footer>
    <p>&copy; 2025 Мій JTE Проєкт</p>
</footer>
</body>
</html>