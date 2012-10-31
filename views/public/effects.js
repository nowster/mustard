function expand_element(hash) {
  var anchor = hash.replace('#', '').replace(/\//g, '\\/');
  $('#' + anchor).parent().next('dd').show();
}

$(document).ready(function() {
  $('#content').hide().fadeIn(250);
  $('dd').hide();
  expand_element(window.location.hash);

  $('a').click(function(event) {
    expand_element(event.target.hash);
  });

  $('dt').css('cursor', 'pointer');
  $('dt').click(function () {
    $(this).next('dd').slideToggle(250);
  });

  $('img').each(function() {
    $(this).parent().each(function() {
      $(this).css('text-align', 'center');
    });
  });
});

$(document).unload(function() {
  $('#content').fadeOut(250);
});
