extends StaticBody2D

var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	$AnimatedSprite2D.animation = "idle"
	$AnimatedSprite2D.play()
	
	
