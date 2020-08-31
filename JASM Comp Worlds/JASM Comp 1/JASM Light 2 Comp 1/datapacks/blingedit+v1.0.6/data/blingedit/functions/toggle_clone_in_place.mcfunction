scoreboard players operation Global enabled = @s clone_in_place
execute if score Global enabled matches 1.. run function blingedit:execute031_ln332
execute unless score Global enabled matches 1.. run function blingedit:execute032_ln336
gamerule sendCommandFeedback false