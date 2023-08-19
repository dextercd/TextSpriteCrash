# Fixed

This bug has been fixed in a Noita beta update.

# is_text_sprite="1" Ragdoll Crash

Crash always after adding a text sprite component on Sauvojen Tuntija or
Suomuhauki after killing the enemy. Kammolukki also frequently crashes but not
always (feels like a ~1/3 chance).

This repository hosts a simple mod that reproduces the crash using a greatly
minified Kammolukki entity.

The crash seems to happen when the engine is preparing the ragdoll image. It
appears like the game tries to copy from a 0x0 SDL surface to a 1x1 SDL surface.
