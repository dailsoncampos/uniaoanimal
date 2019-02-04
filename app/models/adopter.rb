class Adopter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum sector: [:aeroporto_velho, :aldeia, :alvorada, :aparecida, :amparo, :area_verde, :caranazal, :cambuquira, :centro, :cohab, :conquista, :diamantino, :elcione_barbalho, :esperanca, :fatima, :floresta, :interventoria, :ipanema, :jaderlandia, :jardim_santarem, :jutai, :livramento, :liberdade, :laguinho, :maica, :Mapiri, :maracana, :maracana_1, :matinha, :nova_vitoria, :nova_republica, :novo_horizonte, :perola_do_maica, :prainha, :rodagem, :sale, :santana, :santa_clara, :santarenzinho, :santissimo, :santo_andre, :sao_cristovao, :sao_francisco, :sao_jose_operario, :uruara, :urumari, :vigia, :vitoria_regia]
  enum residence: [:apartamento, :casa, :empresa]
end
