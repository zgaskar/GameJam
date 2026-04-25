extends ParallaxBackground

# Arka planın kayma hızı. Eksi değerler sola doğru kaydırır.
var kaydirma_hizi = -150 

func _process(delta):
	# Her karede (frame) arka planın offset (kayma) değerini güncelliyoruz.
	# delta, hareketin her bilgisayarda aynı hızda olmasını sağlar.
	scroll_offset.x += kaydirma_hizi * delta
