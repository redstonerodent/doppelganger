Minecraft data pack which makes an armor stand mirror your movements, intended for square dancing in Minecraft with 4-7 people.

To use: install like any data pack. Run `/function doppelganger:setmirrored` to make yourself mirrored, and `/function doppelganger:unsetmirrored` to turn it off. If it gets weird, `/function doppelganger:reset` should reset everything.

Caveats: The item copying assumes the player is right handed. Giving doppelganger your player head doesn't work if you're holding your head.

It mirrors around the nearest half-block-point to where to run `/function doppelganger:setmirrored`. You can change this by modifying your scores for `center_x` and `center_z`, which store *double* the center point coordinates.