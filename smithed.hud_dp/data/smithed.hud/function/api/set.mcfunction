$data modify storage smithed.hud:storage temp.build set value $(args)
execute unless data storage smithed.hud:storage temp.build.id run return run tellraw @s {translate:"smithed.hud.warning.no_id",color:"red"}
execute unless data storage smithed.hud:storage temp.build.width run return run tellraw @s {translate:"smithed.hud.warning.no_width",color:"red"}
execute if data storage smithed.hud:storage temp.build{width:0} run return run tellraw @s {translate:"smithed.hud.warning.bad_width",color:"red"}
execute unless data storage smithed.hud:storage temp.build.value run return run tellraw @s {translate:"smithed.hud.warning.no_value",color:"red"}
data modify storage smithed.hud:storage temp.id set from storage smithed.hud:storage temp.build.id
execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
function smithed.hud:impl/build/set with storage smithed.hud:storage temp