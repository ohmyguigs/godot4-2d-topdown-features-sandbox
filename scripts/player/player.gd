extends CharacterBody2D

@onready var camera = $"Camera2D"
@onready var sprite = $AnimatedSprite2D

@export var speed = 200

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
	# animations
	if input_direction == Vector2.ZERO:
		sprite.play("idle")
		sprite.pause()
	elif input_direction.x == -1:
		# print("left")
		sprite.play("walk_oeste")
	elif input_direction.x == 1:
		# print("right")
		sprite.play("walk_leste")
	elif input_direction.y == -1:
		# print("up")
		sprite.play("walk_norte")
	elif input_direction.y == 1:
		# print("down")
		sprite.play("walk_sul")
	elif input_direction.y < 0 && input_direction.x > 0:
		# print("nordeste")
		sprite.play("walk_nordeste")
	elif input_direction.y < 0 && input_direction.x < 0:
		# print("noroeste")
		sprite.play("walk_noroeste")
	elif input_direction.y > 0 && input_direction.x > 0:
		# print("sudeste")
		sprite.play("walk_sudeste")
	elif input_direction.y > 0 && input_direction.x < 0:
		# print("sudoeste")
		sprite.play("walk_sudoeste")

func _physics_process(_delta):
	get_input()
	move_and_slide()
