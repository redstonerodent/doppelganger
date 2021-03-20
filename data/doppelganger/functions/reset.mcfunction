# kill all doppelgangers
kill @e[tag=doppel.ganger]

# clear scoreboard
scoreboard objectives remove doppel.int
scoreboard objectives remove doppel.mirror
scoreboard objectives remove doppel.center_x
scoreboard objectives remove doppel.center_z

# remove tags
tag @e[tag=doppel.mirrored] remove doppel.mirrored

# reload
function doppelganger:load