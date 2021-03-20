scoreboard objectives add doppel.int dummy
scoreboard objectives add doppel.mirror dummy
scoreboard objectives add doppel.center_x dummy
scoreboard objectives add doppel.center_z dummy

# for multiplying to get precise locations; to change precision you need to change more than just this
scoreboard players set $scale doppel.int 10000

tellraw @a {"text": "[Doppelganger] Loaded!"}