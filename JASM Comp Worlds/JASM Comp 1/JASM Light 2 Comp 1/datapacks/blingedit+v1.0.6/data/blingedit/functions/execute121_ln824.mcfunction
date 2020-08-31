execute as @s run function blingedit:get_minmax
execute unless score Global has_box matches 1.. run tellraw @s ["",{"text":"You don't currently have a region selected."}]
execute if score Global has_box matches 1.. run function blingedit:execute120_ln830