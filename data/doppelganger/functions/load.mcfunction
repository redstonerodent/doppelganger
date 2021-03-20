scoreboard objectives add doppel.int dummy
scoreboard objectives add doppel.mirror dummy
scoreboard objectives add doppel.center_x dummy
scoreboard objectives add doppel.center_z dummy

scoreboard objectives add set_mirrored trigger
scoreboard objectives add unset_mirrored trigger
scoreboard objectives add move_doppel_x trigger
scoreboard objectives add move_doppel_z trigger

scoreboard players enable @a set_mirrored

# for multiplying to get precise locations; to change precision you need to change more than just this
scoreboard players set $scale doppel.int 10000

tellraw @a {"text": "[Doppelganger] Loaded!"}