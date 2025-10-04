function showBio(characterId) {
  const bios = {
    char1: {
      name: "Character 1",
      text: "This is the bio for Character 1. She's a time-traveling botanist with a mysterious past."
    },
    char2: {
      name: "Character 2",
      text: "Character 2 is a cyberpunk hacker who speaks in riddles and runs on coffee."
    }
    // Add more bios here
  };

  document.getElementById('bio-name').textContent = bios[characterId].name;
  document.getElementById('bio-text').textContent = bios[characterId].text;
}
