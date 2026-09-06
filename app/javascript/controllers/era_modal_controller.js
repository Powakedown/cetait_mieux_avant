import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["overlay"]

  open(event) {
    const id = String(event.params.id)
    const overlay = this.overlayTargets.find(o => o.dataset.eraModalId === id)
    if (overlay) overlay.classList.add("era-modal-overlay--open")
  }

  close(event) {
    const overlay = event.target.closest(".era-modal-overlay")
    if (overlay) overlay.classList.remove("era-modal-overlay--open")
  }

  closeBackground(event) {
    if (event.target === event.currentTarget) {
      event.currentTarget.classList.remove("era-modal-overlay--open")
    }
  }

  stopPropagation(event) {
    event.stopPropagation()
  }
}
