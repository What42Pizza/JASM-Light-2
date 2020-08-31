scoreboard players set Global can_do 0
execute if score @s state matches 8..8 run scoreboard players set Global can_do 1
execute if score @s state matches 9..9 run scoreboard players set Global can_do 1
execute unless score Global can_do matches 1.. run tellraw @s ["",{"text":"You can't confirm a clone right now."}]
execute if score Global can_do matches 1.. run function blingedit:execute098_ln799
gamerule sendCommandFeedback false