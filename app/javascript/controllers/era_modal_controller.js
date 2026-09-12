import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["overlay"]

  connect() {
    this.positionTooltip = this.positionTooltip.bind(this)
    this.element.addEventListener("pointerover", this.positionTooltip)
  }

  disconnect() {
    this.element.removeEventListener("pointerover", this.positionTooltip)
  }

  open(event) {
    const id = String(event.params.id)
    const overlay = this.overlayTargets.find(o => o.dataset.eraModalId === id)
    if (overlay) overlay.classList.add("era-modal-overlay--open")
  }

  navigate(event) {
    const currentOverlay = event.target.closest(".era-modal-overlay")
    if (currentOverlay) currentOverlay.classList.remove("era-modal-overlay--open")
    this.open(event)
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

  positionTooltip(event) {
    const tooltip = event.target.closest("[data-tooltip]")
    if (!tooltip || !this.element.contains(tooltip)) return

    tooltip.classList.remove("tooltip-align-left", "tooltip-align-right")

    const tooltipWidth = Math.min(260, window.innerWidth - 16)
    const center = tooltip.getBoundingClientRect().left + tooltip.offsetWidth / 2
    const tooltipLeft = center - tooltipWidth / 2
    const tooltipRight = center + tooltipWidth / 2

    if (tooltipLeft < 8) {
      tooltip.classList.add("tooltip-align-left")
    } else if (tooltipRight > window.innerWidth - 8) {
      tooltip.classList.add("tooltip-align-right")
    }
  }
}
