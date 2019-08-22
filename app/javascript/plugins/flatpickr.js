import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const bookingForm = document.getElementById("booking-form-div")
console.log(bookingForm)
const bookings = JSON.parse(bookingForm.dataset.bookings)
console.log(bookings)


flatpickr("#range_start", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})],
  "disable": bookings,
})



