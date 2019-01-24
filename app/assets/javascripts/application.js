//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets

$(document).ready(function () {
  $(".chosen_select").change(function () {
    switch (this.value) {
      case "financeira":
        $(".description").hide();
        $("#resposta").html("<h1>Doação Financeira</h1>");
        break;
      case "medicamento":
        $("#resposta").html("<h1>Doação de Medicamentos</h1>");
        break;
      default:
        $("#resposta").html("<h1>Escolha sua doação ao lado</h1>");
    }
  });
});
