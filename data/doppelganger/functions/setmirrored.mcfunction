# if already mirrored, clear that
execute if entity @s[tag=doppel.mirrored] run function doppelganger:unsetmirrored

tag @s add doppel.mirrored

# create doppelganger
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["doppel.newmirror","doppel.ganger"], Invulnerable:1, DisabledSlots:2096896, NoGravity:1, NoBasePlate:1, ShowArms:1}

# couple doppelganger to pulayer with doppel.mirror
scoreboard players operation @s doppel.mirror = $id doppel.int
scoreboard players operation @e[tag=doppel.newmirror] doppel.mirror = $id doppel.int
scoreboard players add $id doppel.int 1

# set center to nearest half-meter grid point: this stores DOUBLE the coords of the center
execute at @s run tp @s ~.25 ~ ~.25
execute store result score @s doppel.center_x run data get entity @s Pos[0] 2
execute store result score @s doppel.center_z run data get entity @s Pos[2] 2
execute at @s run tp @s ~-.25 ~ ~-.25

# give armor stand the player's head. I don't know of a simpler way
# copy slot 0 (if any) to item entity; remove slot 0; give player head with /loot; copy head to armor stand; remove slot 0; player picks up item

execute if data entity @s Inventory[{Slot:0b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone", Count:1b}, Tags:["doppel.item"]}
data modify entity @e[tag=doppel.item, limit=1] Item set from entity @s Inventory[{Slot:0b}]

replaceitem entity @s container.0 minecraft:air
loot give @s loot doppelganger:player_head
data modify entity @e[tag=doppel.newmirror, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:0b}]
replaceitem entity @s container.0 minecraft:air

# clean up

tag @e[tag=doppel.newmirror] remove doppel.newmirror

tellraw @s {"text": "[Doppelganger] You are mirrored!"}