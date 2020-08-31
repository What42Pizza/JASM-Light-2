scoreboard players operation Global p_xmin = Global _dest_min_0
scoreboard players operation Global p_ymin = Global _dest_min_1
scoreboard players operation Global p_zmin = Global _dest_min_2
scoreboard players set Global mai_scratch1 450
scoreboard players set Global mai_scratch2 -175
scoreboard players set Global mai_scratch3 450
scoreboard players operation Global p_xmin -= Global mai_scratch1
scoreboard players operation Global p_ymin -= Global mai_scratch2
scoreboard players operation Global p_zmin -= Global mai_scratch3
scoreboard players operation Global p_xmax = Global _dest_max_0
scoreboard players operation Global p_ymax = Global _dest_max_1
scoreboard players operation Global p_zmax = Global _dest_max_2
scoreboard players set Global mai_scratch1 450
scoreboard players set Global mai_scratch2 1075
scoreboard players set Global mai_scratch3 450
scoreboard players operation Global p_xmax += Global mai_scratch1
scoreboard players operation Global p_ymax += Global mai_scratch2
scoreboard players operation Global p_zmax += Global mai_scratch3
function blingedit:draw_particle_box