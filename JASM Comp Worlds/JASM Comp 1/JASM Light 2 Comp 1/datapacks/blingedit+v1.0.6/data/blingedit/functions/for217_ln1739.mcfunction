scoreboard players set Global skip 0
scoreboard players operation Global sum = Global ex
scoreboard players operation Global sum += Global ey
scoreboard players operation Global sum += Global ez
execute if score Global sum matches ..-1 run scoreboard players operation Global sum *= minus Constant
scoreboard players set Global skip 0
execute if score Global ex matches -1..-1 if score Global ey matches -1..-1 if score Global ez matches -1..-1 run scoreboard players set Global skip 1
execute if score Global ex matches 1..1 if score Global ey matches 1..1 if score Global ez matches 1..1 run scoreboard players set Global skip 1
execute if score Global ex matches 0..0 if score Global ey matches 0..0 if score Global ez matches 0..0 run scoreboard players set Global skip 1
execute if score Global skip matches ..0 run function blingedit:execute219_ln1748
scoreboard players add Global ez 1
execute if score Global ez <= Global mai_scratch3 run function blingedit:for217_ln1739