// scripts.js
// Implements a bouncing basketball animation that follows the user's scroll.
// The ball element is styled in styles.css.  This script calculates its
// position based on the current scroll progress and simulates a series of
// diminishing bounces as you move down the page.

document.addEventListener('DOMContentLoaded', function () {
  const ball = document.getElementById('ball');
  if (!ball) return;
  // Total number of bounces the ball makes over the whole page
  const totalBounces = 5;
  // Each bounce height reduces by this factor
  const dampening = 0.7;

  function updateBall() {
    // Total scrollable height (document height minus viewport height)
    const docHeight = document.documentElement.scrollHeight - window.innerHeight;
    const scrollY = window.scrollY || window.pageYOffset;
    const progress = docHeight > 0 ? Math.min(scrollY / docHeight, 1) : 0;

    // Determine which bounce we're on and the fractional progress through that bounce
    const bounceIndex = Math.floor(progress * totalBounces);
    const bounceProgress = (progress * totalBounces) - bounceIndex;
    const amplitude = Math.pow(dampening, bounceIndex);
    // Triangular wave: 0 → 1 → 0 across each bounce
    const bouncePosition = amplitude * (1 - Math.abs(1 - 2 * bounceProgress));

    // Vertical travel within the viewport for the bounce (excluding margins)
    const verticalTravel = window.innerHeight - ball.offsetHeight - 80;
    // Compute the vertical position: scroll offset plus bounce within the viewport
    const y = scrollY + bouncePosition * verticalTravel;

    // Horizontal travel across the viewport (from right to left).  We leave a
    // margin of 80px on each side so the ball never touches the edges.
    const horizontalTravel = window.innerWidth - ball.offsetWidth - 160;
    const xShift = progress * horizontalTravel;
    // Apply transform: move leftwards (negative X) and downwards (positive Y)
    ball.style.transform = `translate(${-xShift}px, ${y}px)`;

    requestAnimationFrame(updateBall);
  }
  updateBall();
});