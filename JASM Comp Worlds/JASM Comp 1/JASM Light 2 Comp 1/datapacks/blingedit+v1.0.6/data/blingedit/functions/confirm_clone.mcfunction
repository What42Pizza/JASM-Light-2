execute unless score @s state matches 8..8 run tellraw @s ["",{"text":"You can't confirm a clone right now."}]
execute if score @s state matches 8..8 run function blingedit:execute092_ln740
gamerule sendCommandFeedback false