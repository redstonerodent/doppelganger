scoreboard objectives add doppel.int dummy

scoreboard players set $id doppel.int 0

scoreboard objectives add doppel.mirror dummy

tellraw @a {"text": "[Doppelganger] Loaded!"}