extends Node2D

@onready var animation_player = $AnimationPlayer

func _on_signal(_signal):
    animation_player.play(_signal)

func _ready():
    Dialogic.start("sir_cat_meets_miss_duck")
    Dialogic.signal_event.connect(_on_signal)