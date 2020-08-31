execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. run function blingedit:execute127_ln975
execute unless score Global has_box matches 1.. run tellraw @s ["",{"text":"You must select a region first."}]
gamerule sendCommandFeedback false