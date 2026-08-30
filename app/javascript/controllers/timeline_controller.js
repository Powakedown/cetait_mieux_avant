import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.setupScrollMarkers()
    window.addEventListener('resize', () => this.setupScrollMarkers())
    this.element.addEventListener('scroll', () => this.setupScrollMarkers(), { passive: true })
  }

  disconnect() {
    window.removeEventListener('resize', this.setupScrollMarkers)
    this.element.removeEventListener('scroll', this.setupScrollMarkers)
  }

  setupScrollMarkers() {
    const rows = this.element.querySelectorAll('.timeline-row')

    rows.forEach(row => {
      const barContainer = row.querySelector('.timeline-bars-container')
      const bar = row.querySelector('.timeline-bar')
      const assetName = row.querySelector('.timeline-asset-name')

      if (!bar || !barContainer || !assetName) return

      // Remove existing marker
      const existingMarker = assetName.querySelector('.timeline-scroll-marker')
      if (existingMarker) existingMarker.remove()

      // Get bar position and dimensions relative to container
      const barLeft = parseFloat(bar.style.left) || 0
      const barWidth = parseFloat(bar.style.width) || 0
      const barRight = barLeft + barWidth

      // Get container position relative to viewport
      const containerRect = barContainer.getBoundingClientRect()
      const containerLeft = containerRect.left

      // Calculate bar position relative to viewport
      const barLeftViewport = barLeft - barContainer.scrollLeft + containerLeft
      const barRightViewport = barRight - barContainer.scrollLeft + containerLeft

      // Check if bar is fully outside the viewport (not visible at all)
      const viewportLeft = 0
      const viewportRight = window.innerWidth

      const barFullyLeft = barRightViewport <= viewportLeft
      const barFullyRight = barLeftViewport >= viewportRight
      const barNotVisible = barFullyLeft || barFullyRight

      // Bar needs a marker if it's not visible
      if (barNotVisible) {
        const marker = document.createElement('span')
        marker.className = 'timeline-scroll-marker'
        marker.innerHTML = barFullyLeft ? '&#9664;' : '&#9654;' // Left arrow if bar is to the right, right arrow if bar is to the left
        marker.title = 'Scroll to view this bar'
        marker.dataset.barLeft = barLeft

        marker.addEventListener('click', (e) => {
          e.stopPropagation()
          this.scrollToBar(barLeft)
        })

        assetName.querySelector('.timeline-asset-name-text').appendChild(marker)
      }
    })
  }

  scrollToBar(barLeft) {
    // Calculate the scroll position to center the bar
    // We want to calculate the scroll position so the start of the bar is centered in the screen

    // Calculate where is the center of the screen
    const screenCenter = window.innerWidth / 2

    // Calculate the scroll position to center the start of the bar in the screen
    const scrollPosition = barLeft - screenCenter

    // Smooth scroll to that position
    document.querySelector(".timeline-scroll").scrollTo({
      left: scrollPosition,
      behavior: 'smooth'
    })
  }
}
