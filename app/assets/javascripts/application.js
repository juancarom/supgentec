// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require allPages
//= require jquery_nested_form
//= require jquery-ui
//= require jquery-ui-timepicker-addon.js
//= require jquery.min.js
//= require_tree .

$(document).ready(
  function() {
  $("#instancia_materia_tokens").tokenInput("/materias.json", {
		crossDomain: false,
		searchingText: "Buscando...",
		hintText: "Escriba para buscar materias",
		tokenLimit: 5,
    	minChars: 1,
		noResultsText: "No se han encontrado resultados",
		prePopulate: $("#instancia_materia_tokens").data("pre"),
		theme: "facebook"
		
	});
});