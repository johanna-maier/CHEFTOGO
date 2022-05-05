import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["bookings", "offers", "bookingsList", "offersList"];

  connect() {
    this.bookingsTarget.disabled = true;
  }

  toggle() {
    if (this.bookingsTarget.disabled) {
      this.bookingsTarget.disabled = false;
      this.bookingsListTarget.classList.add("d-none")
      this.offersTarget.disabled = true;
      this.offersListTarget.classList.remove("d-none")
    } else {
      this.bookingsTarget.disabled = true;
      this.bookingsListTarget.classList.remove("d-none")
      this.offersTarget.disabled = false;
      this.offersListTarget.classList.add("d-none")
    }
  }
}
