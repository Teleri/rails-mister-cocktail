function showNewDoseForm() {
  const newDoseFormDiv = document.querySelector("#new-dose-form")
  newDoseFormDiv.toggleAttribute('hidden');
};

const newDoseFormBtn = document.querySelector("#show-new-dose-form");
newDoseFormBtn.addEventListener('toggle', showNewDoseForm);
