scoreboard players operation Global dx = Global _max_0
scoreboard players operation Global dy = Global _max_1
scoreboard players operation Global dz = Global _max_2
scoreboard players operation Global dx -= Global _min_0
scoreboard players operation Global dy -= Global _min_1
scoreboard players operation Global dz -= Global _min_2
scoreboard players operation Global _center_0 = Global _max_0
scoreboard players operation Global _center_1 = Global _max_1
scoreboard players operation Global _center_2 = Global _max_2
scoreboard players operation Global _center_0 += Global _min_0
scoreboard players operation Global _center_1 += Global _min_1
scoreboard players operation Global _center_2 += Global _min_2
scoreboard players set Global clo7_scratch0 2
scoreboard players operation Global _center_0 /= Global clo7_scratch0
scoreboard players operation Global _center_1 /= Global clo7_scratch0
scoreboard players operation Global _center_2 /= Global clo7_scratch0
scoreboard players operation Global clo7_scratch0 = Global _center_0
scoreboard players operation Global clo7_scratch1 = Global _center_1
scoreboard players operation Global clo7_scratch2 = Global _center_2
scoreboard players set Global clo7_scratch3 1000
scoreboard players operation Global clo7_scratch0 %= Global clo7_scratch3
scoreboard players operation Global clo7_scratch1 %= Global clo7_scratch3
scoreboard players operation Global clo7_scratch2 %= Global clo7_scratch3
scoreboard players set Global clo7_scratch3 1000
scoreboard players operation Global clo7_scratch3 /= c2 Constant
scoreboard players set Global clo7_scratch4 0
scoreboard players set Global clo7_scratch5 1000
scoreboard players operation Global clo7_scratch5 /= c2 Constant
scoreboard players operation Global clo7_scratch0 += Global clo7_scratch3
scoreboard players operation Global clo7_scratch1 += Global clo7_scratch4
scoreboard players operation Global clo7_scratch2 += Global clo7_scratch5
scoreboard players operation Global _center_0 -= Global clo7_scratch0
scoreboard players operation Global _center_1 -= Global clo7_scratch1
scoreboard players operation Global _center_2 -= Global clo7_scratch2
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global player = @s _id
execute as @s run function blingedit:get_cursor_position
execute if score @s clone_in_place matches 1.. run function blingedit:execute072_ln668
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type matches 1..1 run function blingedit:execute075_ln672
execute as @e[type=minecraft:magma_cube,tag=Corner] at @s run tp @s ~ ~ ~
execute if score @s clone_in_place matches 1.. run scoreboard players set @s state 8
execute unless score @s clone_in_place matches 1.. run function blingedit:execute076_ln697
scoreboard players add @e _age 1
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"CloneDisplay\"", Tags:["CloneDisplay"], Glowing:1b, NoGravity:1b, NoAI: 1b, Silent:1b, AbsorptionAmount: 100f, LeftHanded:0b, Invulnerable:1, ShowArms:1b, Pose:{LeftArm:[-90f,0f,0f],RightArm:[-90f,0f,0f]}}
scoreboard players add @e _age 1
scoreboard players add Global _unique 1
scoreboard players operation @e[type=minecraft:armor_stand,tag=CloneDisplay,scores={_age=1}] _id = Global _unique
scoreboard players operation Global clo7_scratch0 = Global _unique
scoreboard players operation @s from_display = Global clo7_scratch0
scoreboard players operation Global _id = @s from_display
execute as @e if score @s _id = Global _id run function blingedit:execute077_ln704
scoreboard players add @e _age 1
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"CloneDisplay\"", Tags:["CloneDisplay"], Glowing:1b, NoGravity:1b, NoAI: 1b, Silent:1b, AbsorptionAmount: 100f, LeftHanded:0b, Invulnerable:1, ShowArms:1b, Pose:{LeftArm:[-90f,0f,0f],RightArm:[-90f,0f,0f]}}
scoreboard players add @e _age 1
scoreboard players add Global _unique 1
scoreboard players operation @e[type=minecraft:armor_stand,tag=CloneDisplay,scores={_age=1}] _id = Global _unique
scoreboard players operation Global clo7_scratch0 = Global _unique
scoreboard players operation @s to_display = Global clo7_scratch0
scoreboard players operation Global _id = @s to_display
execute as @e if score @s _id = Global _id run function blingedit:execute078_ln711
scoreboard players set @s clone_rotation 0
scoreboard players set @s clone_flip_x 0
scoreboard players set @s clone_flip_z 0
tellraw @s [""]
tellraw @s ["",{"text":"Move "},{"text":"Dest","color":"blue"},{"text":": ","color":"gray"},{"text":"[Up]","clickEvent":{"action":"run_command","value":"/function blingedit:move_up"},"color":"aqua"},{"text":" ","color":"aqua"},{"text":"[Down]","clickEvent":{"action":"run_command","value":"/function blingedit:move_down"},"color":"aqua"},{"text":" ","color":"aqua"},{"text":"[Left]","clickEvent":{"action":"run_command","value":"/function blingedit:move_left"},"color":"aqua"},{"text":" ","color":"aqua"},{"text":"[Right]","clickEvent":{"action":"run_command","value":"/function blingedit:move_right"},"color":"aqua"},{"text":" ","color":"aqua"},{"text":"[Forward]","clickEvent":{"action":"run_command","value":"/function blingedit:move_forward"},"color":"aqua"},{"text":" ","color":"aqua"},{"text":"[Backward]","clickEvent":{"action":"run_command","value":"/function blingedit:move_backward"},"color":"aqua"}]
tellraw @s ["",{"text":"Clone Options: "},{"text":"[Do Clone Air]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_air"},"color":"dark_green"},{"text":" ","color":"dark_green"},{"text":"[Don't Clone Air]","clickEvent":{"action":"run_command","value":"/function blingedit:dont_clone_air"},"color":"dark_green"}]
execute if score @s clone_in_place matches 1.. run tellraw @s ["",{"text":"Clone In Place: "},{"text":"[Enabled]","clickEvent":{"action":"run_command","value":"/function blingedit:toggle_clone_in_place"},"color":"green"}]
execute unless score @s clone_in_place matches 1.. run tellraw @s ["",{"text":"Clone In Place: "},{"text":"[Disabled]","clickEvent":{"action":"run_command","value":"/function blingedit:toggle_clone_in_place"},"color":"red"}]
tellraw @s ["",{"text":"Flip: "},{"text":"[Flip Left/Right]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_leftright"},"color":"dark_green"},{"text":" ","color":"dark_green"},{"text":"[Flip Front/Back]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_flip_frontback"},"color":"dark_green"}]
tellraw @s ["",{"text":"Rotate: "},{"text":"[Rotate Left]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_left"},"color":"dark_green"},{"text":" ","color":"dark_green"},{"text":"[Rotate Right]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_rotate_right"},"color":"dark_green"}]
tellraw @s ["",{"text":"Actions: "},{"text":"[Confirm Clone]","clickEvent":{"action":"run_command","value":"/function blingedit:confirm_clone"},"color":"green"},{"text":" ","color":"green"},{"text":"[Clone&Repeat]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_and_repeat"},"color":"green"},{"text":" ","color":"green"},{"text":"[Clone Brush]","clickEvent":{"action":"run_command","value":"/function blingedit:clone_brush"},"color":"green"},{"text":" ","color":"green"},{"text":"[Cancel]","clickEvent":{"action":"run_command","value":"/function blingedit:cancel"},"color":"green"}]