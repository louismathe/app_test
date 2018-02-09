import "bootstrap";

var zoomDots = $('#about-dot-zoom-1, #about-dot-zoom-2, #about-dot-zoom-3, #about-dot-zoom-4');
TweenMax.staggerTo(zoomDots, 2, {
    x: '50%',
    y: '50%',
    scale: 0,
    repeat: -1,
    ease: Power2.easeInOut,
    yoyo: true
});
