import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["^600 3,", "2,", "1...", "Action!"],
      typeSpeed: 12,
      loop: true,
      loopCount: Infinity,
      showCursor: false,
      fadeOut: true,
      backDelay: 1000,
    });
  }
}
