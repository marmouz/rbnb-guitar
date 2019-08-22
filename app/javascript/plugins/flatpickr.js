import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!





const bookingForm = document.getElementById("booking-form-div")
console.log(bookingForm)
const bookings = JSON.parse(bookingForm.dataset.bookings)
console.log(bookings)

flatpickr(".datepicker", {
  minDate: "today",
  inline: true,
  dateFormat: "Y-m-d",
  disable: bookings,
})



