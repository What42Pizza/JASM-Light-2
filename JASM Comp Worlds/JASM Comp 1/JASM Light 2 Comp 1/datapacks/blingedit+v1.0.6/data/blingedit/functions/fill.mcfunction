tellraw @s ["",{"text":"Use "},{"text":"/setblock ~ ~ ~ <block>","clickEvent":{"action":"suggest_command","value":"/setblock ~ ~ ~ minecraft:"},"color":"gray"},{"text":" to pick the filler block."}]
scoreboard players set @s state 5
gamerule sendCommandFeedback false