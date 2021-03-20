scoreboard players operation $tmpid doppel.int = @s doppel.mirror
execute as @e[tag=doppel.ganger] if score @s doppel.mirror = $tmpid doppel.int run tag @s add doppel.moving
scoreboard players remove $tmpid doppel.mirror

execute store result entity @e[tag=doppel.moving, limit=1] Pos[0] double -1 run data get entity @s Pos[0]
execute store result entity @e[tag=doppel.moving, limit=1] Pos[2] double -1 run data get entity @s Pos[2]
execute store result entity @e[tag=doppel.moving, limit=1] Pos[1] double 1 run data get entity @s Pos[1]

data modify entity @e[tag=doppel.moving, limit=1] ArmorItems set value []

data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]

data modify entity @e[tag=doppel.moving, limit=1] HandItems set value []

data modify entity @e[tag=doppel.moving, limit=1] HandItems[0] set from entity @s SelectedItem
data modify entity @e[tag=doppel.moving, limit=1] HandItems[1] set from entity @s Inventory[{Slot:-106b}]

execute positioned as @e[tag=doppel.moving] rotated as @s run tp @e[tag=doppel.moving] ~ ~ ~ ~180 ~

tag @e[tag=doppel.moving] remove doppel.moving
