extends KinematicBody2D

const speed = 50
const jumpForce = 500
const gravity = 700

var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	elif Input.is_action_pressed("ui_right"):
		vel.y += speed 
	
	move_and_slide(vel, Vector2.UP)
