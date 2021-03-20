scoreboard players operation $tmpid doppel.int = @s doppel.mirror
execute as @e[tag=doppel.ganger] if score @s doppel.mirror = $tmpid doppel.int run kill @s
scoreboard players reset $tmpid doppel.int

tag @s remove doppel.mirrored
scoreboard players reset @s doppel.mirror
