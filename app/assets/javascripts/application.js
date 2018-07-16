// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

  $('input').iCheck({
	    checkboxClass: 'icheckbox_square-blue',
	    radioClass: 'iradio_square-blue',
	});

  $('.select2-selection').select2({
  minimumResultsForSearch: -1,
  placeholder: "Выберите категорию"
});

  if ($('input').is(':checked')) {
    $(this).closest('.todo-text').css("text-decoration", "line-through");
  }

  $("#new_todo").hide();

  $("#show_form_button").click(function(){
    $("#popup-background").show();
  });

  $("#hide_form_button").click(function(){
    $("#new-todo-form").hide();
  });

  $("#ok_submit_link").click(function(event) {
    event.preventDefault();
    $("#new-todo-form").submit();
  });

  $('.icheckbox_square-blue').on('ifChanged', function() {
    $(this).closest('.todo-checkbox-form').submit();
  });

  $("#add-todo-button").click(function(){
    $("#popup-background").css("display", "flex");
  });



});
