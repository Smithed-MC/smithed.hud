$data modify storage smithed.hud:storage temp.build set value $(args)
data modify storage smithed.hud:storage temp.id set from storage smithed.hud:storage temp.build.id
execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
function smithed.hud:impl/build/remove with storage smithed.hud:storage temp