execute unless score @s state matches 3..3 run tellraw @s ["",{"text":"You can't store a region right now."}]
execute if score @s state matches 3..3 run function blingedit:execute071_ln538
gamerule sendCommandFeedback false