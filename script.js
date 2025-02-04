const sliderContainer = document.querySelector('.slider-container');
const sliderTrack = document.querySelector('.slider-track');
const cards = document.querySelectorAll('.card');
const sliderButtons = document.querySelectorAll('.slider-buttons button');

let currentCard = 0;

sliderButtons.forEach((button, index) => {
  button.addEventListener('click', () => {
    currentCard = index;
    updateSlider();
  });
});

function updateSlider() {
  const translateX = currentCard * -300; // ajuste o valor para o tamanho do card
  sliderTrack.style.transform = `translateX(${translateX}px)`;
}

// adicione o evento de clique nos cards para navegar entre eles
cards.forEach((card, index) => {
  card.addEventListener('click', () => {
    currentCard = index;
    updateSlider();
  });
});