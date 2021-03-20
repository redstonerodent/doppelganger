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

# tellraw @a {"text": "[Doppelganger] Loaded!"}

tellraw @a ["", {"text":"[Doppelganger] Commands:\n", "bold":true}, {"text": "  Create Doppelganger", "color":"green", "clickEvent":{"action":"run_command", "value": "/trigger set_mirrored"}, "hoverEvent":{"action":"show_text", "value":"Click to run!"}}, "\n", {"text": "  Remove Doppelganger", "color":"red", "clickEvent":{"action":"run_command", "value": "/trigger unset_mirrored"}, "hoverEvent":{"action":"show_text", "value":"Click to run!"}}, "\n", "  Move Doppelganger: ", {"text": "North", "color":"aqua", "clickEvent":{"action":"run_command", "value":"/trigger move_doppel_z add -1"}, "hoverEvent":{"action":"show_text", "value":"Negative Z"}}, " | ", {"text": "East", "color":"aqua", "clickEvent":{"action":"run_command", "value":"/trigger move_doppel_x add 1"}, "hoverEvent":{"action":"show_text", "value":"Positive X"}}, " | ", {"text": "South", "color":"aqua", "clickEvent":{"action":"run_command", "value":"/trigger move_doppel_z add 1"}, "hoverEvent":{"action":"show_text", "value":"Positive Z"}}, " | ", {"text": "West", "color":"aqua", "clickEvent":{"action":"run_command", "value":"/trigger move_doppel_x add 1"}, "hoverEvent":{"action":"show_text", "value":"Negative X"}}]