clone ~ ~ ~ ~ ~ ~ 0 1 0
execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. run function blingedit:execute209_ln1654
setblock ~ ~ ~ air
execute unless score Global has_box matches 1.. run tellraw @s ["",{"text":"You must select a box first."}]