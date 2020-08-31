execute if score @s carrot_on_stick matches 1.. run replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:"{\"text\":\"BlingEdit\"}"},Enchantments:[{lvl:5s,id:"minecraft:sharpness"}]} 1
execute unless score @s carrot_on_stick matches 1.. run replaceitem entity @s weapon.mainhand diamond_sword{display:{Name:"{\"text\":\"BlingEdit\"}"}} 1
scoreboard players set Global found_player 1
scoreboard players set Global handled 0
execute if score @s raycast_select matches 1.. run function blingedit:execute149_ln1386
execute if score Global handled matches ..0 run function blingedit:execute150_ln1392