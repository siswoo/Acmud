extends Node2D
@onready var t_respuesta: TextEdit = $CanvasLayer/TRespuesta
@onready var lr_enunciado: Label = $CanvasLayer/LREnunciado
var estudiante: EstudianteClass

func _ready() -> void:
	t_respuesta.text = ""
	lr_enunciado.text = ""
	estudiante = EstudianteClass.new()

func _on_b_opcion_1_button_up() -> void:
	lr_enunciado.text = "Crear una lista de números pares de números del 1 al 100"
	var array1 = "";
	for i in range(1,101):
		if(i%2==0):
			array1 += str(i) + " | ";
	t_respuesta.text = array1

func _on_b_opcion_2_button_up() -> void:
	lr_enunciado.text = "Crear un diccionario con diferentes tipos de datos."
	var diccionario = {
		"nombre": "juan",
		"apellido": "maldonado",
		"edad": 30,
		"vivo": true
	}
	t_respuesta.text = str(diccionario)

func _on_b_opcion_3_button_up() -> void:
	lr_enunciado.text = "Crear una función que tome una lista y un número como argumentos, y devuelva una
nueva lista con todos los elementos de la lista original que sean
divisibles por el número"
	var array1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
	var array2 = [];
	var random = randi_range(1,5);
	for i in array1:
		var resultado = i%random;
		if(resultado==0):
			array2.append(i)
	t_respuesta.text = "El listado va del 1 al 20 y el numero elegido random es = "+str(random)+" numero divisbles son = "+str(array2)

func _on_b_opcion_4_button_up() -> void:
	lr_enunciado.text = "Crear una función que dado dos vectores rote el vector 180 grados, 
	duplique su magnitud y devuelva la suma de los dos nuevos vectores"
	var random1 = randi_range(1,10);
	var random2 = randi_range(1,10);
	var random3 = randi_range(1,10);
	var random4 = randi_range(1,10);
	var vector1 = Vector2(-random1,-random2);
	var vector2 = Vector2(random3,random4);
	var v1_rotado = round(vector1.rotated(PI))
	var v2_rotado = round(vector2.rotated(PI))
	var v1_duplicado = v1_rotado*2
	var v2_duplicado = v2_rotado*2
	t_respuesta.text = "V1 = "+str(vector1)+" | V2 = "+str(vector2)+" R1 = "+str(v1_rotado)+" R2 = "+str(v2_rotado)+" D1 = "+str(v1_duplicado)+" D2 = "+str(v2_duplicado)

class EstudianteClass:
	var nombre: String = "Juan"
	var notas: Dictionary = {
		"Matematicas": 85,
		"Español": 90,
		"Inglés": 80,
		"Ciencias": 75
	}
	
	func promedio() -> float:
		var total_notas = 0
		var cantidad_notas = 0
		for nota in notas.values():
			total_notas += nota
			cantidad_notas += 1
		return total_notas / cantidad_notas if cantidad_notas > 0 else 0
	
	func nota_mas_alta() -> int:
		var notas_array = notas.values()
		return notas_array.max()
		#return max(notas_array) if notas_array.size() > 0 else 0

	func nota_mas_baja() -> int:
		var notas_array = notas.values()
		return notas_array.min()
		#return min(notas_array) if notas_array.size() > 0 else 0

func _on_b_opcion_5_button_up() -> void:
	lr_enunciado.text = "Crear una clase llamada Estudiante que represente a un estudiante con nombre y
	notas. Las notas deben ser los atributos que representan las calificaciones del
	estudiante en diferentes asignaturas. La clase debe tener los siguientes métodos:
	promedio, nota más baja y nota más alta:"
	print(estudiante.promedio())
	t_respuesta.text = "Promedio = "+str(estudiante.promedio())+" | Nota mas baja = "+str(estudiante.nota_mas_baja())+" | Nota mas alta = "+str(estudiante.nota_mas_alta())

