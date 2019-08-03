//shake
$("input, textarea").click(function() {
  $(this).effect("shake", 800);
});

$('.carousel').carousel({
  interval: 3000
})