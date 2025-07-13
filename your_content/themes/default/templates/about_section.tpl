{% extends "base.tpl" %}

{% block content %}
<link href="https://fonts.googleapis.com/css2?family=Agdasima&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Agdasima', sans-serif;
        line-height: 1.6;
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        color: #333;
    }
    h1, h2 {
        color: #2a2a2a;
    }
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
		
	.purple-link {
        color: purple;
        text-decoration: none;
        font-weight: bold;
    }
    .purple-link:hover {
        text-decoration: underline;
	
    }
    .centered-image {
        display: block;
        margin: 20px auto;
        max-width: 100%;
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

<!-- Logo at the top -->
<img src="/your_content/images/your-logo.png" alt="Cosmic Caliber Logo" class="logo">

<p style="font-size:27px">
    Cosmic Caliber is a webcomic created by 
    <a href="https://bsky.app/profile/badaspen.bsky.social" target="_blank" class="purple-link">BadAspen</a>. 
    Dive into Elysium. A mysterious and fractured system thrown into chaos. Follow Kade and his crew of Rovers 
    on his journey to becoming a <span class="rainbow-text">SUPERSTAR</span>.
</p>

<img src="/your_content/images/feature-gif.gif" alt="Featured GIF" class="centered-image">

<p style="font-size:27px">
    Cosmic Caliber is inspired by an assortment of comics, manga, cartoons, and anime.
    A fusion of my favorite things built into a story I’ve been developing for 10+ years.
</p>

<p style="font-size:27px">
    This webcomic is meant for a mature audience. Don’t let the cute art style fool you
    it’s gonna be a <span class="italic">wild ride</span>. Expect profanity, blood and gore,
    and mature themes. Viewer discretion advised! Space gets messy. So do the people in it. 
</p>

<h2>About Me</h2>

<img src="/your_content/images/question.png" alt="Aspen Portrait" class="centered-image" style="width:60%;">

<p style="font-size:27px">
    Hi! I’m Aspen, a furry artist and storyteller with an unwavering passion for creating and telling stories.
    Cosmic Caliber is my labor of love, envisioned for more than a decade.
    I’m beyond excited to share this universe with you.
</p>

<p style="font-size:27px">
    If you'd like to support the project, head over to my 
    <a href="https://www.patreon.com/badaspen" class="orange-link" target="_blank">Patreon</a>. 
    Every bit of support helps!
</p>
{% endblock %}