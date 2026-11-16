extends CharacterBody2D

@export var speed: float = 200.0
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	motion_mode = CharacterBody2D.MOTION_MODE_FLOATING

func _physics_process(_delta: float) -> void:
	var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_dir * speed
	move_and_slide()

	if input_dir == Vector2.ZERO:
		if anim.animation == "run_back" or anim.animation == "idle_back":
			anim.play("idle_back")
		else:
			anim.play("idle_front")
	else:
		if abs(input_dir.x) > abs(input_dir.y):
			anim.play("run_side")
			anim.flip_h = input_dir.x > 0   # flip when moving right
		elif input_dir.y < 0:
			anim.play("run_back")
		else:
			anim.play("run_front")
