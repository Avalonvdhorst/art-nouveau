// select all the elements we need ()
// save them in constants
// create new date objects from the const
// substract the 2 dates
// mulitply the amount of hours with the price per hour


const startDate = document.querySelector("#booking_start_date");
const startHour = document.querySelector("#booking_start_hour");
const endDate = document.querySelector("#booking_end_date");
const endHour = document.querySelector("#booking_end_hour");
const totalPrice = document.querySelector("#booking_total_price");
const passCostToController = document.querySelector(".total_price");

const computeTotalPrice = (evt) => {
  const pricePerWeek = document.querySelector("#price").dataset.price;
  const sd = new Date(startDate.value);
  sd.setHours(startHour.value);
  const ed = new Date(endDate.value);
  ed.setHours(endHour.value);
  const totalHours = ed - sd;
  const perWeek = totalHours / 604800000;
  const newPrice = perWeek * parseInt(pricePerWeek, 10);
  if (!Number.isNaN(newPrice)) {
    totalPrice.innerHTML = Math.round(newPrice);
  }
  passCostToController.value = Math.round(newPrice);
};

const initPriceEvents = () => {
  if (!startDate) { return }

  startDate.addEventListener('change', computeTotalPrice);
  startHour.addEventListener('change', computeTotalPrice);
  endDate.addEventListener('change', computeTotalPrice);
  endHour.addEventListener('change', computeTotalPrice);
  }

export {initPriceEvents};




