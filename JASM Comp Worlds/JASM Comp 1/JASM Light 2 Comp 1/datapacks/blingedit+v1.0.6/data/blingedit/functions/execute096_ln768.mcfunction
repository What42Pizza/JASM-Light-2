scoreboard players set Global okay_rotation 1
execute if score @s clone_rotation matches 90..90 run scoreboard players set Global okay_rotation 0
execute if score @s clone_rotation matches 270..270 run scoreboard players set Global okay_rotation 0
execute if score Global okay_rotation matches 1.. run function blingedit:execute095_ln773
execute unless score Global okay_rotation matches 1.. run tellraw @s ["",{"text":"Clone and Repeat","color":"green"},{"text":" is not implemented for perpendicular selections."}]