const mainTitle = document.getElementById('main-title');
const textToDisplay = ['for the afternoon', 'for life', 'without headache', 'just for you', 'with benefits'];
const textSpace = document.getElementById('space');

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min +1)) + min;
}

function switchText() {
  let i = getRandomIntInclusive(0, 4);
  textSpace.nextSibling.remove();
  mainTitle.insertAdjacentHTML('beforeend', '<span class="js-text js-text' + i + '">' + textToDisplay[i]);
}

setInterval(switchText, 1000);

export { switchText };
