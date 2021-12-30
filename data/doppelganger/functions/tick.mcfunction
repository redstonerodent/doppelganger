# handle mirrored players
execute as @a[tag=doppel.mirrored] run function doppelganger:mirror

# process triggers

scoreboard players enable @a set_mirrored
# first clear any existing doppel
execute as @a unless score @s set_mirrored matches 0 at @s run function doppelganger:setmirrored
scoreboard players reset @a set_mirrored
scoreboard players enable @a set_mirrored

execute as @a[tag=doppel.mirrored] unless score @s unset_mirrored matches 0 run function doppelganger:unsetmirrored
scoreboard players reset @a unset_mirrored
scoreboard players enable @a[tag=doppel.mirrored] unset_mirrored

execute as @a[tag=doppel.mirrored] run scoreboard players operation @s doppel.center_x += @s move_doppel_x
scoreboard players reset @a move_doppel_x
scoreboard players enable @a[tag=doppel.mirrored] move_doppel_x

execute as @a[tag=doppel.mirrored] run scoreboard players operation @s doppel.center_z += @s move_doppel_z
scoreboard players reset @a move_doppel_z
scoreboard players enable @a[tag=doppel.mirrored] move_doppel_z

execute as @a unless score @s toggle_invisible matches 0 run function doppelganger:toggle_invisible
scoreboard players reset @a toggle_invisible
scoreboard players enable @a toggle_invisible