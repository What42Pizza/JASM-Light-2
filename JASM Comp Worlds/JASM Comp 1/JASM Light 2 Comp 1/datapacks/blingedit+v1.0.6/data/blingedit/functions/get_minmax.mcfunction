scoreboard players set Global has_box -1
scoreboard players operation Global _id = @s pick1
execute as @e if score @s _id = Global _id run function blingedit:execute019_ln238
scoreboard players operation Global _id = @s pick2
execute as @e if score @s _id = Global _id run function blingedit:execute020_ln242
execute if score Global x1 < Global x2 run function blingedit:execute021_ln247
execute if score Global x1 >= Global x2 run function blingedit:execute022_ln251
execute if score Global y1 < Global y2 run function blingedit:execute023_ln255
execute if score Global y1 >= Global y2 run function blingedit:execute024_ln259
execute if score Global z1 < Global z2 run function blingedit:execute025_ln263
execute if score Global z1 >= Global z2 run function blingedit:execute026_ln267
scoreboard players operation Global _min_0 = Global xmin
scoreboard players operation Global _min_1 = Global ymin
scoreboard players operation Global _min_2 = Global zmin
scoreboard players operation Global _max_0 = Global xmax
scoreboard players operation Global _max_1 = Global ymax
scoreboard players operation Global _max_2 = Global zmax
scoreboard players operation Global _size_0 = Global _max_0
scoreboard players operation Global _size_1 = Global _max_1
scoreboard players operation Global _size_2 = Global _max_2
scoreboard players operation Global _size_0 -= Global _min_0
scoreboard players operation Global _size_1 -= Global _min_1
scoreboard players operation Global _size_2 -= Global _min_2
scoreboard players operation Global box_xmin = Global _min_0
scoreboard players operation Global box_ymin = Global _min_1
scoreboard players operation Global box_zmin = Global _min_2
scoreboard players set Global get2_scratch0 1000
scoreboard players operation Global box_xmin /= Global get2_scratch0
scoreboard players operation Global box_ymin /= Global get2_scratch0
scoreboard players operation Global box_zmin /= Global get2_scratch0
scoreboard players operation Global box_xmax = Global _max_0
scoreboard players operation Global box_ymax = Global _max_1
scoreboard players operation Global box_zmax = Global _max_2
scoreboard players set Global get2_scratch0 1000
scoreboard players operation Global box_xmax /= Global get2_scratch0
scoreboard players operation Global box_ymax /= Global get2_scratch0
scoreboard players operation Global box_zmax /= Global get2_scratch0
scoreboard players operation Global box_center_x = Global _min_0
scoreboard players operation Global box_center_y = Global _min_1
scoreboard players operation Global box_center_z = Global _min_2
scoreboard players operation Global box_center_x += Global _max_0
scoreboard players operation Global box_center_y += Global _max_1
scoreboard players operation Global box_center_z += Global _max_2
scoreboard players set Global get2_scratch0 2
scoreboard players operation Global box_center_x /= Global get2_scratch0
scoreboard players operation Global box_center_y /= Global get2_scratch0
scoreboard players operation Global box_center_z /= Global get2_scratch0
scoreboard players set Global get2_scratch0 1000
scoreboard players operation Global box_center_x /= Global get2_scratch0
scoreboard players operation Global box_center_y /= Global get2_scratch0
scoreboard players operation Global box_center_z /= Global get2_scratch0
scoreboard players operation Global box_size_x = Global _size_0
scoreboard players operation Global box_size_y = Global _size_1
scoreboard players operation Global box_size_z = Global _size_2
scoreboard players set Global get2_scratch0 1000
scoreboard players operation Global box_size_x /= Global get2_scratch0
scoreboard players operation Global box_size_y /= Global get2_scratch0
scoreboard players operation Global box_size_z /= Global get2_scratch0
scoreboard players set Global get2_scratch0 1
scoreboard players set Global get2_scratch1 1
scoreboard players set Global get2_scratch2 1
scoreboard players operation Global box_size_x += Global get2_scratch0
scoreboard players operation Global box_size_y += Global get2_scratch1
scoreboard players operation Global box_size_z += Global get2_scratch2