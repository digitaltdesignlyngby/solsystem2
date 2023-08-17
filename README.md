# solsystem2
 
Her et forsøg på at lave solsytemet fra solsystemsopgaven på en måde, der giver mere mening hvis man anvender Godot Engine.  

## Del 1 : main scene
Først er der oprettes en scene kaldet "MainScene".

## Del 3 : planeterne nodes
I MainScene er oprettes først tre nodes af typen "Sprite Node"
- "sprite_sol", med et billede af solen som texture. Solen placeres øverst venstre hjørne.
- "sprite_jord", med et billede af jorden som texture. Jorden placeres lidt til højre for Solen.
- "sprite_mars", med et billede af mars som texture. Mars placeres lidt mere til højre for Jorden.

På "sprite_jord" oprettes nu en under-node kaldet "sprite_maane", med et billede af månen som texture. Månen placeres lidt til højre for jorden, imellem jorden og mars.

## Del 2 : kodningen
Nu vedhæftes det samme gdscript til alle nodes, det ser således ud.

```
extends Sprite

export var bane_hast = 0.01
export var rotations_hast = -0.01

func _process(delta):
	position = position.rotated(bane_hast)
	rotation -= rotations_hast
```

Vha. "export" vil det nu være muligt at indstille "bane_hast" og "rotations_hast" når man vælger sine node´s i selve "MainScene"

## Del 3 : kamera
Man kan godt køre programmet og se solsystemet bevæge sig. Men solen er placeret i (0,0) som er i øverste venstre hjørne.

Det er derfor nødvendigt at flytte kamera-positionen til øverste venstre hjørne.

Det gøres meget nemt ved at tilføje en "kamera node" til MainScene,- og herefter sætte "Current" til "valgt" i inspector-vinduet til højre i editor-vinduet...


God fornøjelse med at afprøve programmet
