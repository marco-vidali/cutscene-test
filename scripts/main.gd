extends Node2D

@onready var animation_player = $AnimationPlayer

func _on_signal(_signal):
    Dialogic.paused = true

    animation_player.play(_signal)
    await animation_player.animation_finished

    Dialogic.paused = false

func _ready():
    Dialogic.start("sir_cat_meets_miss_duck")
    Dialogic.signal_event.connect(_on_signal)