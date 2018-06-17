require_relative "ship"
require_relative "weapon_decoration"

cont = 0
res = ''

name = ''

name = gets.chomp.to_i
@weapon_decoration = WeaponDecoration.new
Ship.new(name)

# CRIAR O OBJETO PERFURATRIZ
while res != 0 or cont >= 10
  p "Mate o Bicho clicando em :"
  p "1 - No de Cima"
  p "2 - No de baixo"
  p "3 - No do Meio"

  res = gets.chomp.to_i


    if res == 1 or res == 2 or res == 3
      cont = cont + 1
      @weapon_decoration.newLevel(cont)
    else if res == 0
      "Game Over!!!"
       break
      else
      "Ops voce errou!"
      end
    end

  puts "Boa, passou de nivel #{cont}, sua nave ganhou uma nova arma #{@weapon_decoration.getWeaponDecoration()}"

end
puts  "Você é foda parabéns zerou o jogo!"



