function showNewDoseForm() {
  const newDoseFormDiv = document.querySelector("#new-dose-form");
  const newDoseBtn = document.querySelector("#show-new-dose-form");
  newDoseFormDiv.toggleAttribute('hidden');
  newDoseBtn.toggleAttribute('hidden');
};

export function addToggleButton() {
  const newDoseFormBtn = document.querySelector("#show-new-dose-form");
  newDoseFormBtn.addEventListener('click', showNewDoseForm);
};

export function cancelButton() {
  const newDoseBtn = document.querySelector("#cancel-button");
  cancelButton.addEventListener('click', showNewDoseForm);
};
