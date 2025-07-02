<meta name="viewport" content="width=device-width, initial-scale=1">

{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
   
{% extends "base.tpl" %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{% block content %}
   <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Cosmic Caliber</title>
    <style>
        .rainbow-text {
            background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, violet);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            display: inline;
        }
        .orange-link {
            color: orange;
            text-decoration: none;
            font-weight: bold;
        }
        .orange-link:hover {
            text-decoration: underline;
        }
        .image-placeholder {
            width: 100%;
            max-width: 500px;
            height: 300px;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 20px auto;
            border: 1px dashed #ccc;
        }
        .centered-image {
            display: block;
            margin: 20px auto;
            max-width: 100%;
        }
     
        h1, h2 {
            color: #2a2a2a;
        }
        .logo {
            max-width: 200px;
            display: block;
            margin: 0 auto 20px;
        }
        .italic {
            font-style: italic;
        }
    </style>
</head>
<body>
    <!-- Logo at the start -->
    <img src="your-logo.png" alt="Cosmic Caliber Logo" class="logo">
    
    <p>Cosmic Caliber is a webcomic created by <a href="https://bsky.app/profile/badaspen.bsky.social" target="_blank">BadAspen</a>. Dive into Elysium. A mysterious and fractured system thrown into chaos. Follow Kade and his crew of Rovers, on his Journey to becoming a <span class="rainbow-text">SUPERSTAR</span>.</p>
    
    <!-- Gif placeholder -->
    <div class="image-placeholder">
        [Insert GIF here]
    </div>
    
    <p>Cosmic Caliber is inspired by an assortment of Comics and Manga, cartoons and anime. Taking all my favorite things and compiling it into a story that I have been writing for 10+ years.</p>
    
    <p>This webcomic is meant for a mature and older audience. Don't let the cute art style fool you. It's gonna be a <span class="italic">wild ride</span>. Cosmic Caliber will contain profanity, blood and gore and mature themes please be advised.</p>
    
    <h2>About me</h2>
    
    <!-- About me image placeholder -->
    <div class="image-placeholder">
        [Insert your photo here]
    </div>
    
    <p>Hi! I'm Aspen. I am a furry artist and writer with a deep passion for creating. I've been drawing most of my life and Cosmic Caliber is my passion project. I've been working on this project for the better part of 2 years while the story has been in my brain for about 10. I am so excited to share this universe with you.</p>
    
    <p>If you would like to support this project, head over to my <a href="https://www.patreon.com/badaspen" class="orange-link" target="_blank">Patreon</a>. Any support helps!</p>
    
    <!-- Bottom centered image -->
    <div class="image-placeholder centered-image">
        [Insert bottom image here]
    </div>
</body>
</html>
{% endblock %}