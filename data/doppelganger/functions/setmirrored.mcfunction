execute if entity @s[tag=doppel.mirrored] run function doppelganger:unsetmirrored

tag @s add doppel.mirrored

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["doppel.newmirror","doppel.ganger"], Invulnerable:1, DisabledSlots:2096896, NoGravity:1, NoBasePlate:1, ShowArms:1}

scoreboard players operation @s doppel.mirror = $id doppel.int
scoreboard players operation @e[tag=doppel.newmirror] doppel.mirror = $id doppel.int
scoreboard players add $id doppel.int 1


tag @e[tag=doppel.newmirror] remove doppel.newmirror

tellraw @s {"text": "[Doppelganger] You are mirrored!"}