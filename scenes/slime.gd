extends Node2D

@onready var raycast_right = $raycastRight
@onready var raycast_left = $raycastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D

const speed = 60

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * speed * delta
