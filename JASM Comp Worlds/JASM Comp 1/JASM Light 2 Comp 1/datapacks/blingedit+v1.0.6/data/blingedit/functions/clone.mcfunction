execute unless score @s state matches 3..3 run tellraw @s ["",{"text":"You can't clone a box right now."}]
execute if score @s state matches 3..3 run function blingedit:execute080_ln655
gamerule sendCommandFeedback false