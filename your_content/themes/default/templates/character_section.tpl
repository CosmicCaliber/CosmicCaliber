{% extends "base.tpl" %}

{% block content %}
<style>
  .character:hover {
    transform: scale(1.15);
  }

 .character-select {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: flex-start;
  gap: 10px;
  margin-top: 30px;
}

.character {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 150px;
  text-align: center;
}

.character img {
  width: 125px;
  height: 125px;
  object-fit: cover;
  border-radius: 7px;
  box-shadow: 0 0 10px rgba(0,0,0,0.2);
}

.character p {
  margin-top: 8px;
  font-size: 17px;
  height: 20px;
  font-weight: bold
}

.arcade-header {
  text-align: center;
  font-size: 48px;
  color: #663399;
  text-shadow:
    0 0 5px #CBA0E3,
    0 0 10px #CBA0E3,
    0 0 20px #A070D6,
    0 0 30px #A070D6;
  margin-top: 30px;
  margin-bottom: 20px;
  font-family: Big Space 
}

@keyframes glowPulse {
  0%, 100% {
    text-shadow:
      0 0 5px #CBA0E3,
      0 0 10px #CBA0E3,
      0 0 20px #A070D6,
      0 0 30px #A070D6;
  }
  50% {
    text-shadow:
      0 0 10px #E6CFFF,
      0 0 20px #D4A8FF,
      0 0 30px #B88EFF,
      0 0 40px #A070D6;
  }
}

.arcade-header {
  animation: glowPulse 2s infinite ease-in-out;
}

  #bio-box {
    margin-top: 40px;
    text-align: center;
    border-top: 2px solid #ccc;
    padding-top: 20px;
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
  }

  #bio-name {
    font-size: 28px;
    margin-bottom: 10px;
  }

  #bio-text {
    font-size: 20px;
    color: #444;
  }
</style>

<div id="container">
<h2 class="arcade-header">Choose Your Character</h2>

<div class="character-select">
  <div class="character" onclick="showBio('char1')">
    <img src="/your_content/images/char1.png" alt="Kade">
    <p>Kade</p>
  </div>
  
  <div class="character" onclick="showBio('char2')">
    <img src="/your_content/images/char2.png" alt="Iggy">
    <p>Iggy</p>
  </div>
  
  <div class="character" onclick="showBio('char3')">
    <img src="/your_content/images/char3.png" alt="Twill">
    <p>Twill</p>
  </div>
  
  <div class="character" onclick="showBio('char4')">
    <img src="/your_content/images/char4.png" alt="Josey">
    <p>Josey</p>
  </div>
  
  <div class="character" onclick="showBio('char5')">
    <img src="/your_content/images/char5.png" alt="Vaya">
    <p>Vaya</p>
  </div>
  
  <div class="character" onclick="showBio('char6')">
    <img src="/your_content/images/char6.png" alt="Garret">
    <p>Garret</p>
  </div>
  
  <div class="character" onclick="showBio('char7')">
    <img src="/your_content/images/char7.png" alt="Aether">
    <p>Aether</p>
  </div>
</div>

<div id="bio-box">
  <h2 id="bio-name"></h2>
  <p id="bio-text"></p>
</div>

<script>
  function showBio(characterId) {
    const bios = {
      char1: {
        name: "Kade",
        text: "Kade is a ambitious lion whose goal is to become a SUPERSTAR. Hailing from Enron 3, he has plans of turning his dying homeplanet into a thriving powerhouse. Kade is the brother to Twill and Iggy"
      },
      char2: {
        name: "Iggy",
        text: "Iggy is a timid mouse who has a passion for technology and cartoons. Iggy has the rare ability to house two powers of cosmosis, with eletricity and healing he dreams of helping others. Iggy is the brother of Kade and Twill."
      },
	   char3: {
        name: "Twill",
        text: "Twill is a chaotic bat who dreams of explosions and violence. Behind her destructive personality she wants to follow in her mothers footsteps and lead her own gang of misfits. Twill is the sister of Kade and Iggy"
      },
	  char4: {
        name: "Josey",
        text: "Josey is the adoptive mother of the enron 3! Joseys main goal is to protect and foster her three children, Kade, Iggy and Twill. Using her ice powers she trains and prepares them for the chaotic realm."
      },
	  char5: {
        name: "Vaya",
        text: "Vaya is a laid back dog who has a passion for anything esoteric. Part of a group known as the Novalite, she is searching for the mythical Evercore. Using her smoke powers shes a master of stealth and recon."
      },
	  char6: {
        name: "Garret",
        text: "Garret is a high strung lemur who has a passion for technology and the aethernet. Best friend to Vaya, he and her both search for the mythical Evercore. Using his voxel powers he can create anything out of blocks."
      },
	  char7: {
        name: "Aether",
        text: "Aether is the obnoxious creator of the Aethernet. A selfaware AI construct of mysterious orgin. He aids cosmosis users with thier powers all while terrorizing them with bad jokes."
      },
	  
      // Add more bios here
    };

    const bio = bios[characterId];
    if (bio) {
      document.getElementById('bio-name').textContent = bio.name;
      document.getElementById('bio-text').textContent = bio.text;
    }
  }
</script>
{% endblock %}
