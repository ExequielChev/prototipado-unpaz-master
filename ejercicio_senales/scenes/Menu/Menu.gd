extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = "Cantidad de instancias: %s" % instancesCount


func _ready():
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	$RedGenerator.button_down.connect(count_new_instance)
	$VioletGenerator.button_down.connect(count_new_instance)

func delete():
	instancesCount = 0
	$CountLabel.text = "Cantidad de instancias: 0"
	

	
	
