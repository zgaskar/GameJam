extends AnimatedSprite2D

@export var speed := 400
@export var sway_amount := 50
@export var sway_speed := 3.0

var start_x := 0.0
var time := 0.0

func _ready():
	position = Vector2(
		randi_range(100, 1900),
		randi_range(1500, 2000)
	)
	start_x = position.x

	# rastgele yön (sağa-sola bakma)
	flip_v = randi_range(0,1) == 0

	$Timer.wait_time = randf_range(4.0, 5.0)
	$Timer.start()

func _process(delta):
	time += delta

	# yukarı uçuş
	position.y -= speed * delta

	# sağ-sol oynama
	position.x = start_x + sin(time * sway_speed) * sway_amount

	# ekrandan çıkınca reset
	if position.y < -250:
		queue_free()

		# yeniden spawn olunca da yön değişsin
		flip_v = randi_range(0,1) == 0

func _on_timer_timeout():
	$Timer.wait_time = randf_range(4.0, 5.0)
	$Timer.start()
