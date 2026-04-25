extends ParallaxLayer

var kaydirma_hizi = -150 

func _process(delta):
	# Bu sefer scroll_offset değil, motion_offset kullanıyoruz.
	motion_offset.y += kaydirma_hizi * delta
