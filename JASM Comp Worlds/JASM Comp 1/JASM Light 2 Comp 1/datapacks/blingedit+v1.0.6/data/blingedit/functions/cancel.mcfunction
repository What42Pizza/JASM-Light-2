scoreboard players set Global handled 0
scoreboard players set Global can_cancel 0
execute if score @s state matches 8..8 run scoreboard players set Global can_cancel 1
execute if score @s state matches 9..9 run scoreboard players set Global can_cancel 1
execute if score @s state matches 11..11 run scoreboard players set Global can_cancel 1
execute if score Global can_cancel matches 1.. run function blingedit:execute122_ln954
execute if score Global handled matches ..0 run tellraw @s ["",{"text":"You can't cancel right now."}]
gamerule sendCommandFeedback false