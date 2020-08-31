tellraw @s ["",{"text":"Use "},{"text":"/setblock ~ ~ ~ <block>","clickEvent":{"action":"suggest_command","value":"/setblock ~ ~ ~ minecraft:"},"color":"gray"},{"text":" to pick the block to be replaced."}]
tellraw @s ["",{"text":"Or pick "},{"text":"[air]","clickEvent":{"action":"run_command","value":"/function blingedit:replace1_air"},"color":"aqua"}]
scoreboard players set @s state 6
gamerule sendCommandFeedback false