$data modify storage smithed.hud:storage temp set value $(args)
execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
function smithed.hud:impl/build/api/remove with storage smithed.hud:storage temp
data remove storage smithed.hud:storage temp
