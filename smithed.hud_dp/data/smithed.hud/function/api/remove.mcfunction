execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
$data modify storage smithed.hud:storage temp.id set value "$(id)"
function smithed.hud:build/api/remove with storage smithed.hud:storage temp
