# create doppelganger
summon minecraft:armor_stand ~ ~ ~ {Tags:["doppel.newmirror","doppel.ganger"], Invulnerable:1, DisabledSlots:2096896, NoGravity:1, NoBasePlate:1, ShowArms:1}

# couple doppelganger to player with doppel.mirror
scoreboard players operation @e[tag=doppel.newmirror] doppel.mirror = @s doppel.mirror

# give armor stand the player's head. I don't know of a simpler way
# copy slot 0 (if any) to item entity; remove slot 0; give player head with /loot; copy head to armor stand; remove slot 0; player picks up item

execute if data entity @s Inventory[{Slot:0b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone", Count:1b}, Tags:["doppel.item"]}
data modify entity @e[tag=doppel.item, limit=1] Item set from entity @s Inventory[{Slot:0b}]

item replace entity @s container.0 with minecraft:air
loot give @s loot doppelganger:player_head
data modify entity @e[tag=doppel.newmirror, limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:0b}]
item replace entity @s container.0 with minecraft:air
