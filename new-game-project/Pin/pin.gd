extends RigidBody2D

@onready var cash = 1
@onready var moneyindic = preload("res://Pin/moneyindicator.tscn")
signal moolah

func _on_body_entered(body):
	if body.is_in_group("ball"):
		$AnimationPlayer.play("Collide")
		var anglewangle = self.global_position.direction_to(body.global_position)
		body.apply_impulse(anglewangle*200)
		add_child(moneyindic.instantiate())
		moolah.emit(cash)
		
