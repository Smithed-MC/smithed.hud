data modify storage smithed.hud:storage temp.build set from storage smithed.hud:storage input
data remove storage smithed.hud:storage input

execute unless data storage smithed.hud:storage temp.build.id run return run tellraw @s {translate:"smithed.hud.warning.no_id",color:"red"}

data modify storage smithed.hud:storage temp.id set from storage smithed.hud:storage temp.build.id
execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
function smithed.hud:impl/build/remove with storage smithed.hud:storage temp
data remove storage smithed.hud:storage temp