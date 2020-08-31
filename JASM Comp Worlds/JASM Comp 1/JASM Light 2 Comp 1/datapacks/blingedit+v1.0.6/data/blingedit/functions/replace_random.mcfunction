scoreboard players set @s state 10
tellraw @s ["",{"text":"Use "},{"text":"/setblock ~ ~ ~ <block>","clickEvent":{"action":"suggest_command","value":"/setblock ~ ~ ~ minecraft:"},"color":"gray"},{"text":" to pick the blocks to replace."}]
tellraw @s ["",{"text":"Or replace "},{"text":"[air]","clickEvent":{"action":"run_command","value":"/function blingedit:replace_random_air"},"color":"aqua"}]
gamerule sendCommandFeedback false