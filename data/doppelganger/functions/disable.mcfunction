# kill all doppelgangers
kill @e[tag=doppel.ganger]

# clear scoreboard
scoreboard objectives remove doppel.int
scoreboard objectives remove doppel.mirror
scoreboard objectives remove doppel.center_x
scoreboard objectives remove doppel.center_z

scoreboard objectives remove set_mirrored
scoreboard objectives remove unset_mirrored
scoreboard objectives remove move_doppel_x
scoreboard objectives remove move_doppel_z

# remove tags
tag @e[tag=doppel.mirrored] remove doppel.mirrored
