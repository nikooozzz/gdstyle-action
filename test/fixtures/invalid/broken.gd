extends Node2D

var health=100
var speed   :   float= 200.0

func _ready():
    var x = [ 1,2,3 ]
    if health==100:
        print("Full health!")




func take_damage( damage ):
    health-=damage
