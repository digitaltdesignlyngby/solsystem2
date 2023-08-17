# solsystem2
 
Her et forsøg på at lave solsytemet fra solsystemsopgaven på en måde der giver mere mening hvis man anvender Godot Engine.  

Først er der oprettet en MainScene.

I MainScene er oprettes i første omgang tre nodes af typen "Sprite Node"
- Første sprite-node kaldes "sprite_sol", med et billede af solen som texture. Solen placeres øverst venstre hjørne.
- Anden sprite-node kaldes "sprite_jord", med et billede af jorden som texture. Jorden placeres lidt til højre for Solen.
- Tredje sprite_node kaldes "sprite_mars", med et billede af mars som texture. Mars placeres lidt mere til højre for Jorden.

På den node, der hedder "sprite_jord" oprettes nu en under-node kaldet "sprite_maane", med at billede af månen som texture. Månen placeres lidt til højre for jorden, imellem jorden og mars.

Til sidst vedhæftes det samme gdscript til alle nodes, det ser således ud.

```
extends Sprite

export var bane_hast = 0.01
export var rotations_hast = -0.01

func _process(delta):
	position = position.rotated(bane_hast)
	rotation -= rotations_hast
```

Vha. "export" vil det nu være muligt at indstille "bane_hast" og "rotations_hast" når man vælger sine node´s i selve "MainScene"

God fornøjelse med at afprøve programmet
