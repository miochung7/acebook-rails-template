// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$("#notice")
  .fadeTo(2000, 500)
  .slideUp(500, function () {
    $("#notice").slideUp(500);
  });

$(document).ready(function () {
  $("#notice").hide();
});
