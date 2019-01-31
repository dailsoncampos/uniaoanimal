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
        $("#resposta").html("<h1 class=\"text-center\">ONG UNIÃO ANIMAL</h1><br><h2 class=\"text-center\">BANCO DO BRASIL</h2><br><h3 class=\"text-center\">Agência: 0130-9</h3><br><h3 class=\"text-center\">Conta Corrente: 95.715-1</h3><br><h3 class=\"text-center\">CNPJ: 23.567.091/0001-30</h3>");
        $("#resposta-alimento").hide();
        $("#resposta-medicamento").hide();
        $("#resposta-outro").hide();
        $("#resposta").show();
        break;
      case "medicamento":
        $(".description").show();
        $("#resposta").hide();
        $("#resposta-alimento").hide();
        $("#resposta-outro").hide();
        $("#resposta-medicamento").show();
        break;
      case "alimento":
        $(".description").show();
        $("#resposta").hide();
        $("#resposta-medicamento").hide();
        $("#resposta-outro").hide();
        $("#resposta-alimento").show();
        break;
      case "outro":
        $(".description").show();
        $("#resposta").hide();
        $("#resposta-medicamento").hide();
        $("#resposta-alimento").hide();
        $("#resposta-outro").show();
        break;
      default:
        $(".description").show();
        $("#resposta").show();
        $("#resposta-alimento").hide();
        $("#resposta-medicamento").hide();
        $("#resposta-outro").hide();
    }
  });
});