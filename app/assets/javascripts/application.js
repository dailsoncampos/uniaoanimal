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
        break;
      case "medicamento":
        $(".description").show();
        $("#resposta").html("<h1>Shellder kyogre honchkrow illumise slugma excadrill klinklang clefable graveler girafarig</h1>");
        break;
      case "alimento":
        $(".description").show();
        $("#resposta").html("<h1>Skorupi nidoking luxio seadra dusknoir abra scrafty sunflora beedrill armaldo</h1>");
        break;
      case "outro":
        $(".description").show();
        $("#resposta").html("<h1>Shiftry doduo torterra ambipom azelf zigzagoon krookodile spinarak floatzel drapion</h1>");
        break;
      default:
        $(".description").show();
        $("#resposta").html("<h1>Growlithe sneasel typhlosion gabite groudon lunatone snover swellow togepi vanilluxe</h1>");
    }
  });
});