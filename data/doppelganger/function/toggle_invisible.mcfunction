# toggle $visible
scoreboard players add $visible doppel.int 1
execute if score $visible doppel.int matches 2 run scoreboard players set $visible doppel.int 0

# set invisible: kill all the doppels
execute if score $visible doppel.int matches 0 run kill @e[tag=doppel.ganger]

# set visible: summon doppels for everyone who should be mirrored
execute if score $visible doppel.int matches 1 as @a[tag=doppel.mirrored] at @s run function doppelganger:makedoppel