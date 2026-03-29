tag @s add smithed.hud.active
$data remove storage smithed.hud:storage players.$(pid).build
$data modify storage smithed.hud:storage temp.index set from storage smithed.hud:storage players.$(pid).index
execute if data storage smithed.hud:storage temp.index[0] run return run function smithed.hud:impl/build/i/main
