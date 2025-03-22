# tag doppelgangel with doppel.moving
scoreboard players operation $tmpid doppel.int = @s doppel.mirror
execute as @e[tag=doppel.ganger] if score @s doppel.mirror = $tmpid doppel.int run tag @s add doppel.moving
scoreboard players reset $tmpid doppel.mirror

# compute new position
scoreboard players operation $x doppel.int = @s doppel.center_x
scoreboard players operation $x doppel.int *= $scale doppel.int
execute store result score $px doppel.int run data get entity @s Pos[0] 10000
scoreboard players operation $x doppel.int -= $px doppel.int
execute store result entity @e[tag=doppel.moving, limit=1] Pos[0] double .0001 run scoreboard players get $x doppel.int

scoreboard players operation $z doppel.int = @s doppel.center_z
scoreboard players operation $z doppel.int *= $scale doppel.int
execute store result score $pz doppel.int run data get entity @s Pos[2] 10000
scoreboard players operation $z doppel.int -= $pz doppel.int
execute store result entity @e[tag=doppel.moving, limit=1] Pos[2] double .0001 run scoreboard players get $z doppel.int

execute store result entity @e[tag=doppel.moving, limit=1] Pos[1] double .0001 run data get entity @s Pos[1] 10000

scoreboard players reset $x doppel.int
scoreboard players reset $z doppel.int
scoreboard players reset $px doppel.int
scoreboard players reset $pz doppel.int

# copy armor and hand items

data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[0] set value {}
data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[1] set value {}
data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[2] set value {}

data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
#data modify entity @e[tag=doppel.moving, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]

data modify entity @e[tag=doppel.moving, limit=1] HandItems set value []

data modify entity @e[tag=doppel.moving, limit=1] HandItems[0] set from entity @s SelectedItem
data modify entity @e[tag=doppel.moving, limit=1] HandItems[1] set from entity @s Inventory[{Slot:-106b}]

# set facing direction
execute positioned as @e[tag=doppel.moving] rotated as @s run tp @e[tag=doppel.moving] ~ ~ ~ ~180 ~

# clean up
tag @e[tag=doppel.moving] remove doppel.moving
