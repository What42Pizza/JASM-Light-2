scoreboard players set @s clone_air 0
tellraw @s ["",{"text":"Clone air: "},{"text":"Disabled","color":"red"}]
gamerule sendCommandFeedback false