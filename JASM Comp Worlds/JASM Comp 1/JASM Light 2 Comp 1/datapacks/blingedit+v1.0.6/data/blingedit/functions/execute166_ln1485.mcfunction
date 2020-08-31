scoreboard players set @s grid_display 0
scoreboard players operation Global p_xmin = Global _min_0
scoreboard players operation Global p_ymin = Global _min_1
scoreboard players operation Global p_zmin = Global _min_2
scoreboard players set Global mai_scratch1 450
scoreboard players set Global mai_scratch2 -175
scoreboard players set Global mai_scratch3 450
scoreboard players operation Global p_xmin -= Global mai_scratch1
scoreboard players operation Global p_ymin -= Global mai_scratch2
scoreboard players operation Global p_zmin -= Global mai_scratch3
scoreboard players operation Global p_xmax = Global _max_0
scoreboard players operation Global p_ymax = Global _max_1
scoreboard players operation Global p_zmax = Global _max_2
scoreboard players set Global mai_scratch1 450
scoreboard players set Global mai_scratch2 1075
scoreboard players set Global mai_scratch3 450
scoreboard players operation Global p_xmax += Global mai_scratch1
scoreboard players operation Global p_ymax += Global mai_scratch2
scoreboard players operation Global p_zmax += Global mai_scratch3
function blingedit:draw_particle_box
execute as @s run function blingedit:get_dest_minmax
execute if score Global has_dest_box matches 1.. run function blingedit:execute165_ln1493