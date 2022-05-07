import { Controller } from '@hotwired/stimulus';

import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    console.log("Hello flatpikr")
    // console.log(this.element.dataset.attributes)

    // flatpickr(this.element, {
    //   dateFormat: "d-m-Y",
    //   minDate: "today"
    // });

    // flatpickr(this.element, {});

    let config = JSON.parse(this.element.dataset.attributes)
    flatpickr(this.element, config);
  }

}
