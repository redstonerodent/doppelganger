Minecraft data pack which makes an armor stand mirror your movements, intended for square dancing in Minecraft with 4-7 people.

To use: install like any data pack. Run `/trigger set_mirrored` to make yourself mirrored, and `/trigger unset_mirrored` to turn it off. To change where your doppleganger is, run `/trigger move_doppel_x add <dx>` or `/trigger move_doppel_z add <dz>`. Initially it will mirror around the half-block lattice point closest to where you run `/trigger set_mirrored`.

If something breaks, `/function doppelganger:reset` should reset everything.

Caveats: The item copying assumes the player is right handed.
