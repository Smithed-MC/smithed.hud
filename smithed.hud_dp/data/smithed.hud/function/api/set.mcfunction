execute store result storage smithed.hud:storage temp.pid int 1 run scoreboard players get @s smithed.hud.id
$data modify storage smithed.hud:storage temp.id set value "$(id)"
$data modify storage smithed.hud:storage temp.value set value $(value)
$data modify storage smithed.hud:storage temp.width set value $(width)
$data modify storage smithed.hud:storage temp.gamemodes set value $(gamemodes)
function smithed.hud:internal/build/api/set with storage smithed.hud:storage temp
data remove storage smithed.hud:storage temp
