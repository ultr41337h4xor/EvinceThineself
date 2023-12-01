extends Node

@onready var Whoosh = get_node("whoosh")
@onready var Drone = get_node("drone")
@onready var Stinger = get_node("stinger")
@onready var Themee = get_node("theme")
@onready var Drop = get_node("drop")
@onready var CD1 = get_node("cdown1")
@onready var overr = get_node("over")
@onready var gameoverr = get_node("gameover")
@onready var Kliki = get_node("kliki")
@onready var Placeholderr = get_node("placeholder")
@onready var Beginn = get_node("CanvasLayer/Control/begin")
@onready var Instructions = get_node("CanvasLayer/Control3/instructions")
@onready var Gover = get_node("CanvasLayer/Control4/gover")
@onready var Congrats = get_node("CanvasLayer/Control5/congrats")
@onready var Clickcounter = get_node("CanvasLayer/Control6/clickcounter")
@onready var Congratss = get_node("cgs")
@onready var Countdownt = get_node("CanvasLayer/Control2/countdownt")
@onready var Countdownt2 = get_node("CanvasLayer/Control2/countdownt2")
@onready var Countdowntt = get_node("CanvasLayer/Control2/countdownt/countdowntt")
@onready var vagaa = get_node("CenterContainer/Control/vaga")
@onready var vagaa2 = get_node("CenterContainer/Control/vaga2")
@onready var vagaa3 = get_node("CenterContainer/Control/vaga3")
@onready var vagaa4 = get_node("CenterContainer/Control/vaga4")
@onready var vagaa5 = get_node("CenterContainer/Control/vaga5")
@onready var Lijevi = get_node("CanvasLayer/Control7/lijevi")
@onready var Desni = get_node("CanvasLayer/Control8/desni")

var clicker = 0
var dchecker = 0
var dchecker2 = 0
var lchecker = 0
var lchecker2 = 0
var gameover1 = false
var gameover2 = false
var gameover3 = false
var gameover4 = false
var timer = 0
var timerr = 0
var ccounter = 0

func desno_begin():
	dchecker = 1
	
func desno_begin2():
	Drop.play()
	dchecker2 = 1
	
func lijevo_begin():
	Drop.play()
	lchecker = 1
	
func lijevo_begin2():
	Drop.play()
	lchecker2 = 1
	
func desno_checker(delta):
	if dchecker == 1:
		
		timer += delta
		if Input.is_action_just_pressed("ui_left"):
			Lijevi.set_frame_and_progress(1,1)
			Kliki.play()
			
		if Input.is_action_just_released("ui_left"):
			clicker -= 5000 * delta
			ccounter += 1
			Lijevi.set_frame_and_progress(0,1)
		
		clicker += 200 * delta
			
		clicker = max(0, clicker)
		
		if clicker <= 0:
			vagaa.set_frame_and_progress(0,1)
		elif clicker < 333:
			vagaa.set_frame_and_progress(1,1)
		elif clicker < 666:
			vagaa.set_frame_and_progress(2,1)
		elif clicker < 999:
			vagaa.set_frame_and_progress(3,1)
		else:
			if !gameover1:
				gameover1 = true
				gameovercheck()

		if timer >= 20.0:
			timer = 0

func lijevo_checker(delta):
	if lchecker == 1:
		
		timer += delta
		if Input.is_action_just_pressed("ui_right"):
			Desni.set_frame_and_progress(1,1)
			Kliki.play()
		
		if Input.is_action_just_released("ui_right"):
			clicker -= 4500 * delta
			ccounter += 1
			Desni.set_frame_and_progress(0,1)
		
		clicker += 250 * delta
			
		clicker = max(0, clicker)
		
		if clicker <= 0:
			vagaa2.set_frame_and_progress(0,1)
		elif clicker < 333:
			vagaa2.set_frame_and_progress(1,1)
		elif clicker < 666:
			vagaa2.set_frame_and_progress(2,1)
		elif clicker < 999:
			vagaa2.set_frame_and_progress(3,1)
		else:
			if !gameover2:
				gameover2 = true
				gameovercheck2()
			
		if timer >= 20.0:
			timer = 0
			
func desno_checker2(delta):
	if dchecker2 == 1:
		
		timer += delta
		if Input.is_action_just_pressed("ui_left"):
			Lijevi.set_frame_and_progress(1,1)
			Kliki.play()
		
		if Input.is_action_just_released("ui_left"):
			clicker -= 4000 * delta
			ccounter += 1
			Lijevi.set_frame_and_progress(0,1)
		
		clicker += 275 * delta
			
		clicker = max(0, clicker)
		
		if clicker <= 0:
			vagaa.set_frame_and_progress(0,1)
		elif clicker < 333:
			vagaa.set_frame_and_progress(1,1)
		elif clicker < 666:
			vagaa.set_frame_and_progress(2,1)
		elif clicker < 999:
			vagaa.set_frame_and_progress(3,1)
		else:
			if !gameover3:
				gameover3 = true
				gameovercheck3()
			
		if timer >= 20.0:
			timer = 0

func lijevo_checker2(delta):
	if lchecker2 == 1:
		
		timer += delta
		if Input.is_action_just_pressed("ui_right"):
			Desni.set_frame_and_progress(1,1)
			Kliki.play()
		
		if Input.is_action_just_released("ui_right"):
			clicker -= 4000 * delta
			ccounter += 1
			Desni.set_frame_and_progress(0,1)
		
		clicker += 285 * delta
			
		clicker = max(0, clicker)
		
		if clicker <= 0:
			vagaa2.set_frame_and_progress(0,1)
		elif clicker < 333:
			vagaa2.set_frame_and_progress(1,1)
		elif clicker < 666:
			vagaa2.set_frame_and_progress(2,1)
		elif clicker < 999:
			vagaa2.set_frame_and_progress(3,1)
		else:
			if !gameover4:
				gameover4 = true
				gameovercheck4()
			
		if timer >= 20.0:
			timer = 0

func gameovercheck():
	if gameover1:
		Kliki = Placeholderr
		clicker = 1000
		Lijevi.visible = false
		vagaa.visible = false
		vagaa3.visible = true
		vagaa3.play()
		Gover.visible = true
		Themee.stop()
		Countdowntt.stop()
		overr.play()
		await get_tree().create_timer(3).timeout
		gameoverr.play()
		await get_tree().create_timer(2).timeout
		get_tree().quit()

func gameovercheck2():
	if gameover2:
		Kliki = Placeholderr
		clicker = 1000
		Desni.visible = false
		vagaa2.visible = false
		vagaa4.visible = true
		Gover.visible = true
		vagaa4.play()
		Themee.stop()
		Countdowntt.stop()
		overr.play()
		await get_tree().create_timer(3).timeout
		gameoverr.play()
		await get_tree().create_timer(2).timeout
		get_tree().quit()
		
func gameovercheck3():
	if gameover3:
		Kliki = Placeholderr
		clicker = 1000
		Lijevi.visible = false
		vagaa.visible = false
		vagaa3.visible = true
		Gover.visible = true
		vagaa3.play()
		Themee.stop()
		Countdowntt.stop()
		overr.play()
		await get_tree().create_timer(3).timeout
		gameoverr.play()
		await get_tree().create_timer(2).timeout
		get_tree().quit()
		
func gameovercheck4():
	if gameover4:
		Kliki = Placeholderr
		clicker = 1000
		Desni.visible = false
		vagaa2.visible = false
		vagaa4.visible = true
		Gover.visible = true
		vagaa4.play()
		Themee.stop()
		Countdowntt.stop()
		overr.play()
		await get_tree().create_timer(3).timeout
		gameoverr.play()
		await get_tree().create_timer(2).timeout
		get_tree().quit()

func _ready():
	Beginn.visible = false
	Instructions.visible = false
	Gover.visible = false
	Congrats.visible = false
	Clickcounter.visible = false
	Countdownt.visible = false
	Countdownt2.visible = false
	Lijevi.visible = false
	Desni.visible = false
	vagaa2.visible = false
	vagaa3.visible = false
	vagaa4.visible = false
	vagaa5.visible = false
	await get_tree().create_timer(0.1).timeout
	Whoosh.play()
	await get_tree().create_timer(4).timeout
	Drone.play()
	await get_tree().create_timer(15).timeout
	Drone.stop()
	Stinger.play()
	Beginn.visible = true
	Countdownt2.visible = true
	Instructions.visible = true
	CD1.play()
	await get_tree().create_timer(0.5).timeout
	Beginn.visible = false
	Countdownt2.visible = false
	Instructions.visible = false
	await get_tree().create_timer(0.5).timeout
	Beginn.visible = true
	Countdownt2.visible = true
	Instructions.visible = true
	await get_tree().create_timer(0.5).timeout
	Beginn.visible = false
	Countdownt2.visible = false
	Instructions.visible = false
	await get_tree().create_timer(0.5).timeout
	Beginn.visible = true
	Countdownt2.visible = true
	Instructions.visible = true
	await get_tree().create_timer(0.5).timeout
	Beginn.visible = false
	Countdownt2.visible = false
	Instructions.visible = false
	await get_tree().create_timer(0.5).timeout
	Beginn.visible = true
	Countdownt2.visible = true
	Instructions.visible = true
	await get_tree().create_timer(0.5).timeout
	Beginn.visible = false
	Countdownt2.visible = false
	Instructions.visible = false
	Themee.play()
	Drop.play()
	Countdowntt.start()
	Countdownt.visible = true
	desno_begin()
	Lijevi.visible = true
	await get_tree().create_timer(15).timeout
	if gameover1:
		return
	dchecker = 0
	clicker = 0
	Lijevi.visible = false
	vagaa.visible = false
	vagaa2.visible = true
	lijevo_begin()
	Desni.visible = true
	await get_tree().create_timer(15).timeout
	if gameover2:
		return
	Desni.visible = false
	lchecker = 0
	clicker = 0
	vagaa2.visible = false
	vagaa.visible = true
	Lijevi.visible = true
	desno_begin2()
	await get_tree().create_timer(15).timeout
	if gameover3:
		return
	Lijevi.visible = false
	dchecker2 = 0
	clicker = 0
	vagaa.visible = false
	vagaa2.visible = true
	lijevo_begin2()
	Desni.visible = true
	await get_tree().create_timer(15).timeout
	if gameover4:
		return
	Desni.visible = false
	lchecker2 = 0
	Themee.stop()
	vagaa2.visible = false
	vagaa5.set_frame_and_progress(int(vagaa2.get_frame()), 1)
	vagaa5.visible = true
	Congrats.visible = true
	Clickcounter.set_text(str("You clicked " + str(ccounter) + str("times")))
	Clickcounter.visible = true
	Congratss.play()
	await get_tree().create_timer(20).timeout
	get_tree().quit()

func _process(delta):
	Countdownt.set_text(str(int(Countdowntt.get_time_left())))
	desno_checker(delta)
	lijevo_checker(delta)
	desno_checker2(delta)
	lijevo_checker2(delta)
	if gameover1:
		return
