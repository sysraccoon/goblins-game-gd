extends PanelContainer

onready var hp = $VBoxContainer/HBoxContainer/HealthPoints
onready var move_points = $VBoxContainer/HBoxContainer2/MovePoints

func update_hp(value, max_value):
	hp.text = _format_point_value(value, max_value)
	
func update_move_points(value, max_value):
	move_points.text = _format_point_value(value, max_value)

func _format_point_value(value: int, max_value: int) -> String:
	return "%s/%s" % [value, max_value]
	
