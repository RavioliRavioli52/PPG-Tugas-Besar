extends Node

var point = 0

func _ready():
	$koin.connect("point_keambil", self, "tambah_point")
	$koin2.connect("point_keambil", self, "tambah_point")
	$koin3.connect("point_keambil", self, "tambah_point")
	
func tambah_point():
	point += 1
	print(point)
