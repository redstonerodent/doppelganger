# if already mirrored, clear that
execute if entity @s[tag=doppel.mirrored] run function doppelganger:unsetmirrored

# set player's doppel id
scoreboard players operation @s doppel.mirror = $id doppel.int
scoreboard players add $id doppel.int 1

# set center to nearest half-meter grid point: this stores DOUBLE the coords of the center
# move the player a bit for this because we want rounding, not floor
execute at @s run tp @s ~.25 ~ ~.25
execute store result score @s doppel.center_x run data get entity @s Pos[0] 2
execute store result score @s doppel.center_z run data get entity @s Pos[2] 2
execute at @s run tp @s ~-.25 ~ ~-.25

# make the actual doppelganger, if visible

execute if score $visible doppel.int matches 1 run function doppelganger:makedoppel

# clean up

tag @e[tag=doppel.newmirror] remove doppel.newmirror
tag @s add doppel.mirrored
scoreboard players enable @s unset_mirrored
tellraw @s {"text": "[Doppelganger] You are mirrored!"}