extends CharacterBody2D

@onready var pinscene = get_node("..")

# Called when the node enters the scene tree for the first time.
func _ready():
	pinscene.moolah.connect(pringles)
	$AnimationPlayer.play("fade")
	self.global_rotation_degrees = (randi_range(-45,45))


func pringles(cash):
	$Moneyindicator.text=str("$",cash)
