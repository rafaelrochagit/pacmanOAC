.eqv VGA_BASE 0xFF000000
.eqv X 320 # 320 - 10
.eqv Y 240 # 240 - 10
.eqv Xmap 32
.eqv Ymap 24
.eqv endereco_teclado 0xFF100000 
#.eqv endereco_teclado 0xFFFF0100
#.eqv control_one_left 0x61  #a mars
#.eqv control_one_right 0x64  #d mars
#.eqv control_one_up 0x77  #w mars
#.eqv control_one_down 0x73  #s mars
#
.eqv control_one_left 0xf50afd02  # esquerda controle_cinza
.eqv control_one_right 0xf708fd02  # direita controle_cinza
.eqv control_one_up 0xf609fd02  # cima controle_cinza
.eqv control_one_down 0xfe01fd02  # baixo controle_cinza
#
.eqv control_two_left 0x66 #f mars
.eqv control_two_right 0x68 #h mars
.eqv control_two_up 0x74 #t mars
.eqv control_two_down 0x67 #g mars
#
.eqv control_three_left 0x0 #< mars
.eqv control_three_right 0x1 #> mars
.eqv control_three_up 0x2 #^ mars
.eqv control_three_down 0x3 #\/ mars
#
.eqv control_four_left 0x0 #< mars
.eqv control_four_right 0x1 #> mars
.eqv control_four_up 0x2 #^ mars
.eqv control_four_down 0x3 #\/ mars
#
.eqv control_1 0xf10efd02
.eqv control_2 0xf00ffd02
.eqv control_3 0xf30cfd02
.eqv control_4 0xed12fd02

.data

	map_vetor_backup: .byte 0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFA,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFA,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0x99,0xFF,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0xFF,0x99,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0x99,0x99,0x99,0x99,0x99,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x00,0x99,0x99,0x99,0x99,0x99,0x00,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x99,0x99,0xAD,0xAD,0xAD,0x99,0x99,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x99,0x99,0x00,0x00,0x00,0x99,0x99,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFA,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFA,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	map_vetor: .byte 0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFA,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFA,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0x99,0xFF,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0xFF,0x99,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0x99,0x99,0x99,0x99,0x99,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x00,0x99,0x99,0x99,0x99,0x99,0x00,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x99,0x99,0xAD,0xAD,0xAD,0x99,0x99,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x99,0x99,0x00,0x00,0x00,0x99,0x99,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFA,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFA,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0xFF,0x99,0xFF,0x99,0xFF,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0xFF,0xFF,0x99,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0x99,0x99,0x99,0x99,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0xFF,0x99,0x99,0x99,0x99,0x99,0x99,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	#
	tile_comida: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	tile_comidona: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	tile_porta_fantasma: .byte 0xAD,0xAD,0xAD,0xAD,0xAD,0xAD,0xAD,0xAD,0xAD,0xAD,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	#
	pac_man_close_x: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00	
	pac_man_open_right: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00
	pac_man_open_big_right: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00
	pac_man_open_left: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00
	pac_man_open_big_left: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00
	#
	pac_man_close_y: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	pac_man_open_down: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	pac_man_open_big_down: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x00,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	pac_man_open_top: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	pac_man_open_big_top: .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x00,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	#
	ghost_up1: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0x3F,0x00,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x3F,0x00,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00
	ghost_up2: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0x3F,0x00,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F
	ghost_right1: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0xFF,0xFF,0x3F,0x3F,0x3F,0xFF,0xFF,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x3F,0x00,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00
	ghost_right2: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0xFF,0xFF,0x3F,0x3F,0x3F,0xFF,0xFF,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F
	ghost_down1: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0x3F,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x3F,0x00,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00
	ghost_down2: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0xFF,0xFF,0xFF,0x3F,0x3F,0xFF,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0x3F,0xC0,0xC0,0x3F,0x3F,0xC0,0xC0,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F
	ghost_left1: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0xFF,0xFF,0x3F,0x3F,0x3F,0xFF,0xFF,0x3F,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x3F,0x00,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00
	ghost_left2: .byte 0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x00,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0xFF,0xFF,0x3F,0x3F,0x3F,0xFF,0xFF,0x3F,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0xC0,0xC0,0xFF,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0xFF,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x3F,0x3F,0x3F,0x3F,0x00,0x3F,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F,0x00,0x00,0x3F
	#
	ghost_azul: .byte 0x00,0x00,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0x00,0x00,0x00,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0x00,0xC0,0xC0,0xC0,0xFF,0xC0,0xC0,0xFF,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xFF,0xFF,0xC0,0xC0,0xFF,0xFF,0xC0,0xC0,0xC0,0xFF,0xC0,0xC0,0xFF,0xFF,0xC0,0xC0,0xFF,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0x00,0xC0,0xC0,0xC0,0xC0,0xC0,0xC0,0x00,0xC0,0xC0,0x00,0x00,0xC0,0x00,0x00,0xC0,0x00,0x00,0xC0
	ghost_branco: .byte 0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0x07,0xFF,0xFF,0x07,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x07,0x07,0xFF,0xFF,0x07,0x07,0xFF,0xFF,0xFF,0x07,0xFF,0xFF,0x07,0x07,0xFF,0xFF,0x07,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0xFF,0x00,0x00,0xFF,0x00,0x00,0xFF,0x00,0x00,0xFF
	#		   xMap,yMap,xPixel,yPixel,tipo_personagem(1-pac,2-fantasma), cor, tile_atual, 
	#                  tile_anterior, vidas_qtd, posicao_score, score, ultima_tecla, ultima_direcao(0-up,1-right,2,down,3-left),
	#                  tipo_desenho, indicador(abrindo fechando), powerUP(Comeu comidona),
	#		   indicador(branco ou cor do pac no powerup)	
	pac_amarelo_backup: .word 2,22,20,220,1,0x3F,0xFF,0x99,3,30,0,0xf708fd02,1,0,1,0,0
	pac_amarelo: .word 2,22,20,220,1,0x3F,0xFF,0x99,3,30,0,0xf708fd02,1,0,1,0,0
	pac_verde_backup: .word 22,22,220,220,1,0x18,0xFF,0x99,3,80,0,0x66,3,0,1,0,0
	pac_verde: .word 22,22,220,220,1,0x18,0xFF,0x99,3,80,0,0x66,3,0,1,0,0
	pac_azul_backup: .word 2,1,20,10,1,0xC0,0xFF,0x99,3,130,0,0x1,1,0,1,0,0
	pac_azul: .word 2,1,20,10,1,0xC0,0xFF,0x99,3,130,0,0x1,1,0,1,0,0
	pac_roxo_backup: .word 22,1,220,10,1,0x86,0xFF,0x99,3,180,0,0x0,1,0,1,0,0
	pac_roxo: .word 22,1,220,10,1,0x86,0xFF,0x99,3,130,0,0x0,1,0,1,0,0
	#		      	xMap,yMap,xPixel,yPixel,tipo_personagem(1-pac,2-fantasma), cor, tile_atual, tile_anterior, 
	#			ultima_direcao,indicador_perninhas, powerUp(Troca Branco azul), indicador_casa, andar_aleatorio
	fantasma_vermelho: .word 11,10,110,100,2,0x07,0x00,0x99,4,0,0,20,0
	fantasma_vermelho_backup: .word 11,10,110,100,2,0x07,0x00,0x99,4,0,0,20,0
	fantasma_rosa: .word 12,10,120,100,2,0x87,0x00,0x99,4,0,0,20,0
	fantasma_rosa_backup: .word 12,10,120,100,2,0x87,0x00,0x99,4,0,0,20,0
	fantasma_azul: .word 13,10,130,100,2,0xF8,0x00,0x99,4,0,0,20,0
	fantasma_azul_backup: .word 13,10,130,100,2,0xF8,0x00,0x99,4,0,0,20,0
	fantasma_laranja: .word 12,8,120,80,2,0x27,0x00,0x00,5,0,0,0,0
	fantasma_laranja_backup: .word 12,8,120,80,2,0x27,0x00,0x00,5,0,0,0,0
	##
	# Quantidade Players	
	quantidade_players: .word 4
	ERRO_PONTO: .asciiz "Ponto fora do limite\n"
	
			   # SI,SI,F#,D#,SI,F#,D#,DO,DO,G ,MI,DO,G ,MI,SI,SI,F#,D#,SI,F#,D#,RE,D#,MI,FA,G ,G#,LA,A#,SI
	NOTAS_MUSICA: .word 71,83,78,75,83,78,75,72,84,79,76,84,79,76,71,83,78,75,83,78,75,75,76,77,77,78,79,79,80,81,83
	DURACAO_NOTA: .word 60,60,60,60,60,60,180,60,60,60,60,60,60,60,60,60,60,60,60,60,180,60,60,60,60,60,60,60,60,60,120 
	SCORE: .asciiz "SCORE:"
	MSG0:.asciiz "Insira o numero de jogadores (1-4): "
.text

MAIN:  
	jal RESET_DATA_MEMORY
	#jal MUSICA_INICIAL
	#jal MENU
	jal MAPA
	#jal TESTE_RETA
	#jal loop
	jal START
	# Close the file 
	j EXIT
	
MENU:
	move $s3, $zero
	la $a0, MSG0		# Pergunta quantidade de jogadores
	li $a1, 15
	li $a2, 30
	li $a3, 0x00FF
	li $v0, 104
	syscall
	################
	# LER IRDA
	################
	la $s1,0xFFFF0504	#IRDA_READ_ADDRESS
	li $t0,0
	sw $t0,0($s1)
	la $s0,0xFFFF0500  	#IRDA_CONTROL_ADDRESS
	li $t0,1
	sw $t0,0($s0)
	
loop_menu:
	lw $s3,0($s1)
	beqz $s3,loop_menu  # Se for zero 
	
	la $t0,quantidade_players # carrega endereco quantidade de players
	la $t1,control_1
	la $t2,control_2
	la $t3,control_3
	la $t4,control_4
	beq $t1,$s3,quantidade_player_1
	beq $t2,$s3,quantidade_player_2
	beq $t3,$s3,quantidade_player_3
	beq $t4,$s3,quantidade_player_4
	j loop_menu # se chegar aqui a tecla clicada n�o � nenhuma das acimas
	quantidade_player_1:
		li $t5,1
		sw $t5,0($t0)
		j exit_menu
	quantidade_player_2:
		li $t5,2
		sw $t5,0($t0)
		j exit_menu
	quantidade_player_3:
		li $t5,3
		sw $t5,0($t0)
		j exit_menu
	quantidade_player_4:
		li $t5,4
		sw $t5,0($t0)
exit_menu:
	jr $ra


EXIT:	li $v0, 10
	syscall
		
START:  
	addi $sp,$sp,-4
	sw $ra,0($sp)
	li $t0, 0xffff
	la $t1, quantidade_players
	lw $t1,0($t1)
	beq $t1,1,start_always
	beq $t1,2,dois_players_start
	beq $t1,3,tres_players_start
	quatro_players_start:
		jal INIT_PAC_ROXO
	tres_players_start:
		jal INIT_PAC_BLUE
	dois_players_start:
		jal INIT_PAC_GREEN
	start_always:
		jal INIT_PONTUACOES
		jal INIT_PAC_YELLOW
		jal INIT_GHOST_RED
		jal INIT_GHOST_PINK
		jal INIT_GHOST_BLUE
		jal INIT_GHOST_ORANGE
		#jal MUSICA_INICIAL
	loop_ready_tecla:
		##############
		# TECLADO
		##############
		#la $t0,endereco_teclado
		#lw $t1,0($t0)	        		# Busca se h� interrup��o no teclado
		#andi $t1, $t1, 0x0001			# Le bit de Controle Teclado
    		###############
    		# END TECLADO
    		###############
    		
    		##############
		# IRDA
		##############
    		la $s1,0xFFFF0504	#IRDA_READ_ADDRESS
		li $t0,0
		sw $t0,0($s1)
		la $s0,0xFFFF0500  	#IRDA_CONTROL_ADDRESS
		li $t0,1
		sw $t0,0($s0)
		lw $s3,0($s1)
	
    		##############
		# END IRDA
		##############
    		j check_key
    		
      		lw $ra,0($sp)
       	 	addi $sp,$sp,4
        	jr $ra
    	
	check_key:
    		#bnez $t1, load_key			# Se houve interrup��o do teclado
    		bnez $s3,load_key			# Se houve interrup��o infra(IrdA)
    		li $s7,-1				# Marca $s7 n�o clicado
    		li $s5,-1				# $s5 representa que n�o � uma tecla
    		j moves_check
	load_key:
		#lw $s5,4($t0)				# Carrega a tecla pressionada teclado
		move $s5,$s3				# Carrega a tecla Pressionada infra vermelho(Irda)
    		#
    		li $t1, 0x71                    	# Carrega a tecla 'q' para sair
    		beq $t1, $s5, EXIT
    		#
    		beq $t1,1,check_always
		beq $t1,2,check_dois_players
		beq $t1,3,check_tres_players
		check_quatro_players:
			#roxo
			#
			li $s7,0x86 #azul			# Marca $s7 clicado pac blue
			la $t1, control_four_left		# Carrega a tecla 'f'
    			beq $t1, $s5, moves_check
    			la $t1, control_four_right               # Carrega a tecla 'h' 
			beq $t1, $s5, moves_check
			la $t1, control_four_up                	# Carrega a tecla 't' 
			beq $t1, $s5, moves_check
			la $t1, control_four_down               	# Carrega a tecla 'g' 
			beq $t1, $s5, moves_check
		check_tres_players:
			#
			li $s7,0xC0 #azul			# Marca $s7 clicado pac blue
			la $t1, control_three_left		# Carrega a tecla 'f'
    			beq $t1, $s5, moves_check
    			la $t1, control_three_right               # Carrega a tecla 'h' 
			beq $t1, $s5, moves_check
			la $t1, control_three_up                	# Carrega a tecla 't' 
			beq $t1, $s5, moves_check
			la $t1, control_three_down               	# Carrega a tecla 'g' 
			beq $t1, $s5, moves_check
		check_dois_players:
			#
			li $s7,0x18	#verde			# Marca $s7 clicado pac green
			la $t1, control_two_left		# Carrega a tecla 'f'
    			beq $t1, $s5, moves_check
    			la $t1, control_two_right               # Carrega a tecla 'h' 
			beq $t1, $s5, moves_check
			la $t1, control_two_up                	# Carrega a tecla 't' 
			beq $t1, $s5, moves_check
			la $t1, control_two_down               	# Carrega a tecla 'g' 
			beq $t1, $s5, moves_check
		check_always:
			li $s7,0x3F    				# Marca $s7 clicado pac yellow
    			la $t1, control_one_left		# Carrega a tecla 'a'
    			beq $t1, $s5, moves_check
    			la $t1, control_one_right               # Carrega a tecla 'd' para verificar se foi a pressionada
			beq $t1, $s5, moves_check	
			la $t1, control_one_up                # Carrega a tecla 'w' para verificar se foi a pressionada
			beq $t1, $s5, moves_check
			la $t1, control_one_down                # Carrega a tecla 's' para verificar se foi a pressionada
			beq $t1, $s5, moves_check
		li $s7,-1				# -1 indicador para indicar que nenhuma tecla foi teclada
	moves_check:
		addi $sp,$sp,-4
		sw $s5,0($sp)				# Guarda valor de $s5
		la $t1, quantidade_players
		lw $t1,0($t1)
		beq $t1,1,move_always
		beq $t1,2,move_dois_players
		beq $t1,3,move_tres_players
		move_quatro_players:
			lw $s5,0($sp)	
			jal MOVE_PAC_ROXO
		move_tres_players:
			lw $s5,0($sp)	
			jal MOVE_PAC_BLUE
		move_dois_players:
			lw $s5,0($sp)	
			jal MOVE_PAC_GREEN
		move_always:
			lw $s5,0($sp)	
    			jal MOVE_PAC_YELLOW
    			#		
			jal MOVE_GHOSTS
    		addi $sp,$sp,4
    		#
    		jal RENDERIZA
    		j loop_ready_tecla
    		
#######################
# Move pac yellow
#######################	    	
MOVE_PAC_YELLOW:
	la $s4,pac_amarelo
	beq $s7,0x3F,continue_pac_yellow	# Se $s7 = yellow(0x3F), foi clicado alguma tecla do pac yellow
	lw $s5,44($s4)				# Se chegou aqui o pac yellow n�o foi clicado. Carrega a ultima tecla apertada
	continue_pac_yellow:				
		sw $s5,44($s4)				# atualiza o valor para ultima tecla apertada
		addi $sp,$sp,-4
		sw $ra,0($sp) 				
		#
		la $t1, control_one_left		# Carrega a tecla 'a'
		beq $t1,$s5, move_left			# tecla 'a' para verificar se foi a pressionada
    		#
    		la $t1, control_one_right               # Carrega a tecla 'd' para verificar se foi a pressionada
		beq $t1, $s5, move_right
		#
		la $t1, control_one_up                # Carrega a tecla 'w' para verificar se foi a pressionada
		beq $t1, $s5, move_top
		#
		la $t1, control_one_down                # Carrega a tecla 's' para verificar se foi a pressionada
		beq $t1, $s5, move_down	
		# 
		j return_move

#######################
# Move pac green
#######################	 
MOVE_PAC_GREEN:
	la $s4,pac_verde
	beq $s7,0x18,continue_pac_green		# Se $s7 = green(0x18), foi clicado alguma tecla do pac green
	lw $s5,44($s4)				# Se chegou aqui pac red n�o clicado. Carrega a ultima tecla apertada
	continue_pac_green:
		sw $s5,44($s4)				# atualiza o valor para ultima tecla apertada
		addi $sp,$sp,-4
		sw $ra,0($sp) 
	
		la $t1, control_two_left		# Carrega a tecla 'f'
		beq $t1, $s5, move_left
    		#
    		la $t1, control_two_right               # Carrega a tecla 'h' 
		beq $t1, $s5, move_right
		#
		la $t1, control_two_up                	# Carrega a tecla 't' 
		beq $t1, $s5, move_top
		#
		la $t1, control_two_down               	# Carrega a tecla 'g' 
		beq $t1, $s5, move_down	
		# 
		j return_move

#######################
# Move pac blue
#######################	 
MOVE_PAC_BLUE:
	la $s4,pac_azul
	beq $s7,0xC0,continue_pac_blue		# Se $s7 = blue(0xC0), foi clicado alguma tecla do pac green
	lw $s5,44($s4)				# Se chegou aqui pac blue n�o clicado. Carrega a ultima tecla apertada
	continue_pac_blue:
		sw $s5,44($s4)				# atualiza o valor para ultima tecla apertada
		addi $sp,$sp,-4
		sw $ra,0($sp) 
	
		la $t1, control_three_left		# Carrega a tecla 'f'
		beq $t1, $s5, move_left
    		#
    		la $t1, control_three_right               # Carrega a tecla 'h' 
		beq $t1, $s5, move_right
		#
		la $t1, control_three_up                	# Carrega a tecla 't' 
		beq $t1, $s5, move_top
		#
		la $t1, control_three_down               	# Carrega a tecla 'g' 
		beq $t1, $s5, move_down	
		# 
		j return_move
		
#######################
# Move pac roxo
#######################	 
MOVE_PAC_ROXO:
	la $s4,pac_roxo
	beq $s7,0x86,continue_pac_roxo		# Se $s7 = roxo(0x86), foi clicado alguma tecla do pac roxo
	lw $s5,44($s4)				# Se chegou aqui pac blue n�o clicado. Carrega a ultima tecla apertada
	continue_pac_roxo:
		sw $s5,44($s4)				# atualiza o valor para ultima tecla apertada
		addi $sp,$sp,-4
		sw $ra,0($sp) 
	
		la $t1, control_four_left		# Carrega a tecla 'f'
		beq $t1, $s5, move_left
    		#
    		la $t1, control_four_right               # Carrega a tecla 'h' 
		beq $t1, $s5, move_right
		#
		la $t1, control_four_up                	# Carrega a tecla 't' 
		beq $t1, $s5, move_top
		#
		la $t1, control_four_down               	# Carrega a tecla 'g' 
		beq $t1, $s5, move_down	
		# 
		j return_move
#######################
# branch right
#######################			    		    
move_right:
 	#move $a0,$s0
 	#move $a1,$s1
 	lw $s0,8($s4)				# carrega xPixel
 	lw $s1,12($s4)				# carrega yMap
 	li $t0,10
 	div $s0,$t0
 	mflo $s0
 	mfhi $t1				# resto x
 	div $s1,$t0
 	mflo $s1
 	mfhi $t2				# resto y
 	lw $t3,48($s4)				# carrega dire��o
 	beq $t3,1,verifica_right 		# A dire��o do personagem � igual a direita(1)
 	beq $t3,3,verifica_right 		# A dire��o do personagem � igual a esquerda(3)
 	bnez $t1,continua_direcao_anterior	# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	bnez $t2,continua_direcao_anterior	# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	##			
	verifica_right:
 		addi $a0,$s0,1
 		move $a1,$s1
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,verifica_direcao_right		# se $v0 = 0 n�o � poss�vel
 		li $t0,1				# 1 a dire��o � right
		sw $t0,48($s4)				# atualiza dire��o
		##
 		sw $s0,0($s4)				# xMap
 		sw $s1,4($s4)				# yMap
 		#
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		##
 		add $a0,$s0,-1
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0, 28($s4)
		##
	atualiza_right:
		lw $a0,8($s4)				# carrega posicao x pixel
 		addi $a0,$a0,1				
 		sw $a0,8($s4)				
 		lw $a1,12($s4)				# carrega posicao y pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		j return_move
	verifica_direcao_right:	
		lw $t2,48($s4)				# A dire��o do personagem
 		beq $t2,1,return_move			# direcao = 1(right) ( Se a dire��o � 1 j� tentamos ir por ela)
 		j continua_direcao_anterior

#######################
# branch left
#######################			
move_left:
 	lw $s0,8($s4)			# carrega xPixel
 	lw $s1,12($s4)			# carrega yMap
 	li $t0,10
 	div $s0,$t0
 	mflo $s0
 	mfhi $t1				# restox
 	div $s1,$t0
 	mflo $s1
 	mfhi $t2				# restoy
 	lw $t3,48($s4)				# Carrega dire��o
 	addi $s0,$s0,1 # arredonda pra cima	
 	beq $t3,3,verifica_left1 		# A dire��o do personagem � igual a esquerda(3)
 	beq $t3,1,verifica_left1 		# A dire��o do personagem � igual a direita(1)
 	bnez $t1,continua_direcao_anterior	# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	bnez $t2,continua_direcao_anterior	# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	# se chegar aqui a dire��o ta mudando e o xMap e yMap � uma posi��o v�lida
 	addi $s0,$s0,-1 			# restos == 0 n�o precisa arredondar
 	j verifica_left
 	#
	verifica_left1: 	
 		bnez $t1,verifica_left			# Se � difere��o igual e o restox != 0 (mantem arredondamento)
 		addi $s0,$s0,-1 			# restos == 0 n�o precisa arredondar
 	#
	verifica_left:
 		addi $a0,$s0,-1
 		move $a1,$s1
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,verifica_direcao_left		# se $v0 = 0 n�o � poss�vel
 		li $t0,3				# 3 a dire��o � left
		sw $t0,48($s4)				# atualiza dire��o
		# TILE ATUAL
 		sw $s0,0($s4)				# xMap
 		sw $s1,4($s4)				# yMap
 		# TILE_ANTERIOR
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		##
 		add $a0,$s0,1
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0, 28($s4)
		##
	atualiza_left:
		lw $a0,8($s4)				# carrega posicao x pixel
 		addi $a0,$a0,-1				
 		sw $a0,8($s4)				
 		lw $a1,12($s4)				# carrega posicao y pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		j return_move
	verifica_direcao_left:	
		lw $t2,48($s4)				# A dire��o do personagem
 		beq $t2,3,return_move			# direcao = 3(left) ( Se a dire��o � 3 j� tentamos ir por ela)
 		j continua_direcao_anterior

#######################
# branch top
#######################	
move_top:
 	#move $a0,$s0
 	#move $a1,$s1
 	lw $s0,8($s4)	# xMap
 	lw $s1,12($s4)	# yPixel
 	li $t0,10
 	div $s1,$t0
 	mflo $s1
 	mfhi $t1				# restoy
 	div $s0,$t0
 	mflo $s0
 	mfhi $t2				# restox
	lw $t3,48($s4)				# Carrega a dire��o	
	addi $s1,$s1,1 # arredonda pra cima
 	beq $t3,0,verifica_top1 		# A dire��o do personagem � igual a top(0)
 	beq $t3,2,verifica_top1 		# A dire��o do personagem � igual a down(2)
 	bnez $t1,continua_direcao_anterior	# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	bnez $t2,continua_direcao_anterior	# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	# se chegar aqui a dire��o ta mudando e o xMap e yMap � uma posi��o v�lida
 	addi $s1,$s1,-1 			# restos == 0 n�o precisa arredondar
	j verifica_top
	#
	verifica_top1:
		bnez $t1,verifica_top			# Se a dire��o � igual e o restoy != 0 (mantem arredondamento)
		addi $s1,$s1,-1				# restos == 0 n�o precisa arredondar
	#
	verifica_top:
 		addi $a1,$s1,-1
 		move $a0,$s0
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,verifica_direcao_top		# se $v0 = 0 n�o � poss�vel
 		li $t0,0				# 0 a dire��o � top
		sw $t0,48($s4)				# atualiza dire��o
		#
		sw $s0,0($s4)				# Guarda no xMap
 		sw $s1,4($s4)				# Guarda no yMap
 		# TILE ATUAL
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		## TILE ANTERIOR
 		move $a0,$s0
 		addi $a1,$s1,1
 		jal TILE_MAP
 		sw $v0, 28($s4)
		##
	atualiza_top:
		lw $a1,12($s4)				# carrega posicao y pixel
 		addi $a1,$a1,-1				
 		sw $a1,12($s4)				
 		lw $a0,8($s4)				# carrega posicao x pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		j return_move
	verifica_direcao_top:	
		lw $t2,48($s4)				# A dire��o do personagem
 		beq $t2,0,return_move			# direcao = 0(top) ( Se a dire��o � 0 j� tentamos ir por ela)
 		j continua_direcao_anterior

#######################
# branch down
#######################			
move_down:
 	lw $s0,8($s4)			# xPixel
 	lw $s1,12($s4)			# yPixel
 	li $t0,10
 	div $s1,$t0
 	mflo $s1
 	mfhi $t1				# restoy
 	div $s0,$t0
 	mflo $s0				# resto x
 	mfhi $t2				# restou
	lw $t3,48($s4)				# Carrega dire��o
 	beq $t3,2,verifica_down 		# A dire��o do personagem � igual a down(2)
 	beq $t3,0,verifica_down 		# A dire��o do personagem � igual a up(0)
 	bnez $t1,continua_direcao_anterior	# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	bnez $t2,continua_direcao_anterior	# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	##			
	verifica_down:
 		addi $a1,$s1,1
 		move $a0,$s0
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,verifica_direcao_down		# se $v0 = 0 n�o � poss�vel
 		li $t0,2				# 2 a dire��o � down
		sw $t0,48($s4)				# atualiza dire��o
		## Atualiza posi��o
 		sw $s0,0($s4)				# Guarda no xMap
 		sw $s1,4($s4)				# Guarda no yMap
 		# TILE ATUAL
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		## TILE ANTERIOR
 		move $a0,$s0
 		addi $a1,$s1,-1
 		jal TILE_MAP
 		sw $v0,28($s4)
		##
	atualiza_down:
		lw $a1,12($s4)				# carrega posicao y pixel
 		addi $a1,$a1,1				
 		sw $a1,12($s4)				
 		lw $a0,8($s4)				# carrega posicao x pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		j return_move
	verifica_direcao_down:	
		lw $t2,48($s4)				# A dire��o do personagem
 		beq $t2,2,return_move			# direcao = 2(down) ( Se a dire��o � 2 j� tentamos ir por ela)
 		j continua_direcao_anterior

# Continua na dire��o anterior do pac
continua_direcao_anterior:
	lw $t0,48($s4)
	beq $t0,0,move_top 	# dire��o igual a 0(top)vai para move_top
	beq $t0,1,move_right 	# dire��o igual a 1(right)vai para move_right
	beq $t0,2,move_down 	# dire��o igual a 2(down)vai para move_down
	beq $t0,3,move_left 	# dire��o igual a 3(left)vai para move_left
	j return_move

return_move:
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra
		
#########################
# MOVE GHOSTS
#########################
MOVE_GHOSTS:
	addi $sp,$sp,-16
	sw $ra,0($sp)
	sw $s4,4($sp)
	sw $s0,8($sp)
	sw $s1,12($sp)
	#jal move_ghost_orange
	jal MOVE_GHOST_RED
	jal MOVE_GHOST_PINK
	jal MOVE_GHOST_BLUE
	jal MOVE_GHOST_ORANGE
	#jal move_ghost_blue
	lw $ra,0($sp)
	lw $s4,4($sp)
	lw $s0,8($sp)
	lw $s1,12($sp)
	addi $sp,$sp,16
	jr $ra

###################
# MOVE GHOST RED
##################	
MOVE_GHOST_RED:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $s4,fantasma_vermelho
	lw $t0,44($s4) 				# carrega posicoes para sair da casa
	bnez $t0,ghost_sai_casa_top 		# Faz o ghost sair da casinha
	lw $t0,40($s4)				# Carrega power up
	bnez $t0,padrao_ghost_aleatorio1 	# Se o PowerUp esta ativo
	lw $t0,48($s4) 				# carrega quantidade anda aleatorio
	beq $t0,0,procura_pac_amarelo 		# se a quantidade anda aleatorio for zero, procura o pac
	addi $t0,$t0,-1 			# decrementa andar aleatorio
	sw $t0,48($s4) 				# salva andar aleatorio decrementado
	lw $t3,32($s4)				# carrega dire��o ghost
	j padrao_ghost_horario
	procura_pac_amarelo:
		la $t1,pac_amarelo
		li $t0,20
		sw $t0,48($s4) 		# salva andar 30 frames aleatorios
		lw $t2,8($s4) 		# x fantasma
		lw $t3,12($s4) 		# y fantasm
		lw $t4,8($t1) 		# x pac
		lw $t5,12($t1) 		# y pac
		sub $s0,$t2,$t4 	# $s0 = xG - xP
		sub $s1,$t3,$t5 	# $s1 = yG - yP
		blt $s0,0,x_negativo_ghost
		#######
		# x positivo
		#######
		j x_positivo_ghost
	
###################
# MOVE GHOST PINK
##################	
MOVE_GHOST_PINK:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $s4,fantasma_rosa
	lw $t0,44($s4)
	bnez $t0,ghost_sai_casa_top # Faz o ghost sair da casinha
	bnez $t0,padrao_ghost_aleatorio1 	# Se o PowerUp esta ativo
	la $t3,quantidade_players
	lw $t3,0($t3)
	blt $t3,2,padrao_ghost_aleatorio1 	# Se tiver s� um pac anda no padr�o aleatorio 1
	#####################
	# Tem 2 ou mais pac
	lw $t0,48($s4) 				# carrega quantidade anda aleatorio
	beq $t0,0,procura_pac_pink 		# se a quantidade anda aleatorio for zero, procura o pac
	addi $t0,$t0,-1 			# decrementa andar aleatorio
	sw $t0,48($s4) 				# salva andar aleatorio decrementado
	lw $t3,32($s4)				# carrega dire��o ghost
	j padrao_ghost_horario
	procura_pac_pink:
		la $t1,pac_verde
		li $t0,20
		sw $t0,48($s4) 		# salva andar 30 frames aleatorios
		lw $t2,8($s4) 		# x fantasma
		lw $t3,12($s4) 		# y fantasm
		lw $t4,8($t1) 		# x pac
		lw $t5,12($t1) 		# y pac
		sub $s0,$t2,$t4 	# $s0 = xG - xP
		sub $s1,$t3,$t5 	# $s1 = yG - yP
		blt $s0,0,x_negativo_ghost
		#######
		# x positivo
		#######
		j x_positivo_ghost
		
###################
# MOVE GHOST BLUE
##################		
MOVE_GHOST_BLUE:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $s4,fantasma_azul
	lw $t0,44($s4)
	bnez $t0,ghost_sai_casa_top # Faz o ghost sair da casinha
	bnez $t0,padrao_ghost_aleatorio1 	# Se o PowerUp esta ativo
	la $t3,quantidade_players
	lw $t3,0($t3)			# Carrega quantidade de players
	blt $t3,3,padrao_ghost_aleatorio1 	# Se tiver s� 2 pac anda no padr�o aleatorio 1
	#####################
	# Tem 3 pacs ou mais
	#lw $t0,48($s4) 				# carrega quantidade anda aleatorio
	#beq $t0,0,procura_pac_azul 		# se a quantidade anda aleatorio for zero, procura o pac
	#addi $t0,$t0,-1 			# decrementa andar aleatorio
	#sw $t0,48($s4) 				# salva andar aleatorio decrementado
	#lw $t3,32($s4)				# carrega dire��o ghost
	j padrao_ghost_horario
	procura_pac_azul:
		la $t1,pac_azul
		li $t0,20
		sw $t0,48($s4) 		# salva andar 30 frames aleatorios
		lw $t2,8($s4) 		# x fantasma
		lw $t3,12($s4) 		# y fantasm
		lw $t4,8($t1) 		# x pac
		lw $t5,12($t1) 		# y pac
		sub $s0,$t2,$t4 	# $s0 = xG - xP
		sub $s1,$t3,$t5 	# $s1 = yG - yP
		blt $s0,0,x_negativo_ghost
		#######
		# x positivo
		#######
		j x_positivo_ghost

###################
# MOVE GHOST ORANGE
##################		
MOVE_GHOST_ORANGE:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $s4,fantasma_laranja
	lw $t0,44($s4)
	bnez $t0,ghost_sai_casa_top # Faz o ghost sair da casinha
	bnez $t0,padrao_ghost_aleatorio1 	# Se o PowerUp esta ativo
	la $t3,quantidade_players
	lw $t3,0($t3)			# Carrega quantidade de players
	blt $t3,3,padrao_ghost_aleatorio1 	# Se tiver s� 2 pac anda no padr�o aleatorio 1
	#####################
	# Tem 3 pacs ou mais
	#lw $t0,48($s4) 				# carrega quantidade anda aleatorio
	#beq $t0,0,procura_pac_roxo 		# se a quantidade anda aleatorio for zero, procura o pac
	#addi $t0,$t0,-1 			# decrementa andar aleatorio
	#sw $t0,48($s4) 				# salva andar aleatorio decrementado
	#lw $t3,32($s4)				# carrega dire��o ghost
	j padrao_ghost_horario
	procura_pac_roxo:
		la $t1,pac_roxo
		li $t0,20
		sw $t0,48($s4) 		# salva andar 30 frames aleatorios
		lw $t2,8($s4) 		# x fantasma
		lw $t3,12($s4) 		# y fantasm
		lw $t4,8($t1) 		# x pac
		lw $t5,12($t1) 		# y pac
		sub $s0,$t2,$t4 	# $s0 = xG - xP
		sub $s1,$t3,$t5 	# $s1 = yG - yP
		blt $s0,0,x_negativo_ghost
		#######
		# x positivo
		#######
		j x_positivo_ghost
	
##################	
ghost_sai_casa_top:
		addi $t0,$t0,-1
		sw $t0,44($s4)
		jal MOVE_GHOST_TOP
		j return_move
	
x_positivo_ghost:
	beq $s0,0,x_igual_ghost
	jal MOVE_GHOST_LEFT
	beq $v0,1,return_move # Se conseguiu ir para esquerda
	blt $s1,0,x_positivo_y_negativo_ghost
	##############
	# x negativo y positivo
	##############
	x_positivo_y_positivo_ghost:
		beq $s1,0,x_positivo_y_igual_ghost
		jal MOVE_GHOST_TOP
		beq $v0,1,return_move # Se conseguiu ir para cima
		j padrao_ghost_aleatorio1_top
		#########
	x_positivo_y_negativo_ghost:
		jal MOVE_GHOST_DOWN
		beq $v0,1,return_move # Se conseguiu ir para baixo
		j padrao_ghost_aleatorio1_down
x_negativo_ghost:
	jal MOVE_GHOST_RIGHT
	beq $v0,1,return_move # Se conseguiu ir para direita
	blt $s1,0,x_negativo_y_negativo_ghost
	##############
	# x negativo y positivo
	##############
	x_negativo_y_positivo_ghost:
		beq $s1,0,x_negativo_y_igual_ghost
		jal MOVE_GHOST_TOP
		j padrao_ghost_aleatorio1_left
	x_negativo_y_negativo_ghost:
		jal MOVE_GHOST_DOWN
		beq $v0,1,return_move # Se conseguiu ir para baixo
		j padrao_ghost_aleatorio1_right

x_igual_ghost:
	blt $s1,0,x_igual_y_negativo_ghost
	##############
	# x negativo y positivo
	##############
	x_igual_y_positivo_ghost:
		jal MOVE_GHOST_TOP
		beq $v0,1,return_move # Se conseguiu ir para top
		j padrao_ghost_aleatorio1_left
	x_igual_y_negativo_ghost:
		jal MOVE_GHOST_DOWN
		beq $v0,1,return_move # Se conseguiu ir para baixo
		j padrao_ghost_aleatorio1_right
x_positivo_y_igual_ghost:
	jal MOVE_GHOST_RIGHT
	beq $v0,1,return_move # Se conseguiu ir para direita
	j padrao_ghost_aleatorio1_top

x_negativo_y_igual_ghost:
	jal MOVE_GHOST_LEFT
	beq $v0,1,return_move # Se conseguiu ir para esquerda
	j padrao_ghost_aleatorio1_left

padrao_ghost_aleatorio1:
	lw $t3,32($s4)				# carrega dire��o ghost
	beq $t3,4,padrao_ghost_aleatorio1_top
	beq $t3,5,padrao_ghost_aleatorio1_right
	beq $t3,6,padrao_ghost_aleatorio1_down
	beq $t3,7,padrao_ghost_aleatorio1_left
	padrao_ghost_aleatorio1_top:
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_left
		move $s0,$a0
		jal MOVE_GHOST_TOP
		beq $v0,1,return_move # Se conseguiu ir para to
		#Se n�o conseguir
		li $t0,3
		div $s0,$t0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_down
	padrao_ghost_aleatorio1_right:
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_top
		move $s0,$a0
		jal MOVE_GHOST_RIGHT
		beq $v0,1,return_move # Se conseguiu ir para direita
		li $t0,3
		div $s0,$t0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_left
	padrao_ghost_aleatorio1_down:
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_right
		move $s0,$a0
		jal MOVE_GHOST_DOWN
		beq $v0,1,return_move # Se conseguiu ir para baixo
		li $t0,3
		div $s0,$t0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_top
	padrao_ghost_aleatorio1_left:
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_down
		move $s0,$a0
		jal MOVE_GHOST_LEFT
		beq $v0,1,return_move # Se conseguiu ir para esquerda
		li $t0,3
		div $a0,$t0
		mfhi $t0
		beq $t0,0,padrao_ghost_aleatorio1_right
		j padrao_ghost_aleatorio1_top
	j return_move
	
	
padrao_ghost_horario:
	lw $t3,32($s4)				# carrega dire��o ghost
	beq $t3,4,padrao_ghost_horario_top
	beq $t3,5,padrao_ghost_horario_right
	beq $t3,6,padrao_ghost_horario_down
	beq $t3,7,padrao_ghost_horario_left
	padrao_ghost_horario_top:
		jal MOVE_GHOST_TOP
		beq $v0,1,return_move # Se conseguiu ir para top
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_horario_left
	padrao_ghost_horario_right:
		jal MOVE_GHOST_RIGHT
		beq $v0,1,return_move # Se conseguiu ir para direita
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_horario_top
	padrao_ghost_horario_down:
		jal MOVE_GHOST_DOWN
		beq $v0,1,return_move # Se conseguiu ir para baixo
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_horario_right
	padrao_ghost_horario_left:
		jal MOVE_GHOST_LEFT
		beq $v0,1,return_move # Se conseguiu ir para esquerda
		li $v0,41 # Le um numero aleatorio desse endere�o
		syscall
		li $t0,2 
		div $a0,$t0 # o numero aleatorio returna em $a0
		mfhi $t0
		beq $t0,0,padrao_ghost_horario_down
		j padrao_ghost_horario_top
	j return_move		
#######################
# MOVE GHOST RIGHT
#######################			    		    
MOVE_GHOST_RIGHT:
 	addi $sp,$sp,-16
 	sw $ra,0($sp)
 	sw $s0,4($sp)
 	sw $s1,8($sp)
 	sw $s4,12($sp)
 	########
 	lw $s0,8($s4)				# carrega xPixel
 	lw $s1,12($s4)				# carrega yMap
 	li $t0,10
 	div $s0,$t0
 	mflo $s0
 	mfhi $t1				# resto x
 	div $s1,$t0
 	mflo $s1
 	mfhi $t2				# resto y
 	lw $t3,32($s4)				# carrega dire��o ghost
 	li $v0,0				# supoem que n�o � possivel
 	beq $t3,5,verifica_ghost_right 		# A dire��o do personagem � igual a direita(5)
 	beq $t3,7,verifica_ghost_right 		# A dire��o do personagem � igual a esquerda(7)
 	bnez $t1,exit_ghost_move		# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	bnez $t2,exit_ghost_move		# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	##			
	verifica_ghost_right:
 		addi $a0,$s0,1
 		move $a1,$s1
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,exit_ghost_move		# se $v0 = 0 n�o � poss�vel
 		li $t0,5				# 5 a dire��o � right
		sw $t0,32($s4)				# atualiza dire��o
		##
 		sw $s0,0($s4)				# xMap
 		sw $s1,4($s4)				# yMap
 		#
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		##
 		add $a0,$s0,-1
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0, 28($s4)
		##
		lw $a0,8($s4)				# carrega posicao x pixel
 		addi $a0,$a0,1				
 		sw $a0,8($s4)				
 		lw $a1,12($s4)				# carrega posicao y pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		li $v0,1				# Foi possivel
		j exit_ghost_move
		
#######################
# MOVE GHOST left
#######################			 		
MOVE_GHOST_LEFT:
 	addi $sp,$sp,-16
 	sw $ra,0($sp)
 	sw $s0,4($sp)
 	sw $s1,8($sp)
 	sw $s4,12($sp)
 	########
 	lw $s0,8($s4)			# carrega xPixel
 	lw $s1,12($s4)			# carrega yMap
 	li $t0,10
 	div $s0,$t0
 	mflo $s0
 	mfhi $t1				# restox
 	div $s1,$t0
 	mflo $s1
 	mfhi $t2				# restoy
 	lw $t3,32($s4)				# Carrega dire��o
 	addi $s0,$s0,1 # arredonda pra cima	
 	li $v0,0				# supoem que n�o � possivel
 	beq $t3,7,verifica_ghost_left1 		# A dire��o do personagem � igual a esquerda(7)
 	beq $t3,5,verifica_ghost_left1 		# A dire��o do personagem � igual a direita(5)
 	bnez $t1,exit_ghost_move		# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	bnez $t2,exit_ghost_move		# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	# se chegar aqui a dire��o ta mudando e o xMap e yMap � uma posi��o v�lida
 	addi $s0,$s0,-1 			# restos == 0 n�o precisa arredondar
 	j verifica_ghost_left
 	#
	verifica_ghost_left1: 	
 		bnez $t1,verifica_ghost_left		# Se � difere��o igual e o restox != 0 (mantem arredondamento)
 		addi $s0,$s0,-1 			# restos == 0 n�o precisa arredondar
 	#
	verifica_ghost_left:
 		addi $a0,$s0,-1
 		move $a1,$s1
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,exit_ghost_move		# se $v0 = 0 n�o � poss�vel
 		li $t0,7				# 7 a dire��o � left
		sw $t0,32($s4)				# atualiza dire��o
		# TILE ATUAL
 		sw $s0,0($s4)				# xMap
 		sw $s1,4($s4)				# yMap
 		# TILE_ANTERIOR
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		##
 		add $a0,$s0,1
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0, 28($s4)
		#
		lw $a0,8($s4)				# carrega posicao x pixel
 		addi $a0,$a0,-1				
 		sw $a0,8($s4)				
 		lw $a1,12($s4)				# carrega posicao y pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		li $v0,1				# Foi possivel 
		j exit_ghost_move

#######################
# MOVE GHOST TOP
#######################			 		
MOVE_GHOST_TOP:
 	addi $sp,$sp,-16
 	sw $ra,0($sp)
 	sw $s0,4($sp)
 	sw $s1,8($sp)
 	sw $s4,12($sp)
 	########
 	lw $s0,8($s4)	# xMap
 	lw $s1,12($s4)	# yPixel
 	li $t0,10
 	div $s1,$t0
 	mflo $s1
 	mfhi $t1				# restoy
 	div $s0,$t0
 	mflo $s0
 	mfhi $t2				# restox
	lw $t3,32($s4)				# Carrega a dire��o	
	addi $s1,$s1,1 # arredonda pra cima
	li $v0,0				# Supor que n�o � poss�vel
 	beq $t3,4,verifica_ghost_top1 		# A dire��o do personagem � igual a top(4)
 	beq $t3,6,verifica_ghost_top1 		# A dire��o do personagem � igual a down(6)
 	bnez $t1,exit_ghost_move		# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	bnez $t2,exit_ghost_move		# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	# se chegar aqui a dire��o ta mudando e o xMap e yMap � uma posi��o v�lida
 	addi $s1,$s1,-1 			# restos == 0 n�o precisa arredondar
	j verifica_ghost_top
	#
	verifica_ghost_top1:
		bnez $t1,verifica_ghost_top		# Se a dire��o � igual e o restoy != 0 (mantem arredondamento)
		addi $s1,$s1,-1				# restos == 0 n�o precisa arredondar
	#
	verifica_ghost_top:
 		addi $a1,$s1,-1
 		move $a0,$s0
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,exit_ghost_move		# se $v0 = 0 n�o � poss�vel
 		li $t0,4				# 4 a dire��o � top
		sw $t0,32($s4)				# atualiza dire��o
		#
		sw $s0,0($s4)				# Guarda no xMap
 		sw $s1,4($s4)				# Guarda no yMap
 		# TILE ATUAL
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		## TILE ANTERIOR
 		move $a0,$s0
 		addi $a1,$s1,1
 		jal TILE_MAP
 		sw $v0, 28($s4)
		#
		lw $a1,12($s4)				# carrega posicao y pixel
 		addi $a1,$a1,-1				
 		sw $a1,12($s4)				
 		lw $a0,8($s4)				# carrega posicao x pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		li $v0,1 				# Indica que foi possivel
		j exit_ghost_move

#######################
# MOVE GHOST DOWN
#######################			 		
MOVE_GHOST_DOWN:
 	addi $sp,$sp,-16
 	sw $ra,0($sp)
 	sw $s0,4($sp)
 	sw $s1,8($sp)
 	sw $s4,12($sp)
 	########
 	lw $s0,8($s4)			# xPixel
 	lw $s1,12($s4)			# yPixel
 	li $t0,10
 	div $s1,$t0
 	mflo $s1
 	mfhi $t1				# restoy
 	div $s0,$t0
 	mflo $s0				# resto x
 	mfhi $t2				# restou
	lw $t3,32($s4)				# Carrega dire��o
	li $v0,0				# supor que n�o � possivel
 	beq $t3,6,verifica_ghost_down 		# A dire��o do personagem � igual a down(6)
 	beq $t3,4,verifica_ghost_down 		# A dire��o do personagem � igual a up(4)
 	bnez $t1,exit_ghost_move		# Se a dire��o � diferente e o restoy != 0 (n�o pode mudar de dire��o)
 	bnez $t2,exit_ghost_move		# Se a dire��o � diferente e o restox != 0 (n�o pode mudar de dire��o)
 	##			
	verifica_ghost_down:
 		addi $a1,$s1,1
 		move $a0,$s0
 		move $a3,$s4				# Guarda em $a3 o endere�o do objeto(pac ou fantasma)
 		jal VERIFICA_POSSIBILIDADE
 		beqz $v0,exit_ghost_move		# se $v0 = 0 n�o � poss�vel
 		li $t0,6				# 6 a dire��o � down
		sw $t0,32($s4)				# atualiza dire��o
		## Atualiza posi��o
 		sw $s0,0($s4)				# Guarda no xMap
 		sw $s1,4($s4)				# Guarda no yMap
 		# TILE ATUAL
 		move $a0,$s0				
 		move $a1,$s1
 		jal TILE_MAP
 		sw $v0,24($s4)
 		## TILE ANTERIOR
 		move $a0,$s0
 		addi $a1,$s1,-1
 		jal TILE_MAP
 		sw $v0,28($s4)
		##
		lw $a1,12($s4)				# carrega posicao y pixel
 		addi $a1,$a1,1				
 		sw $a1,12($s4)				
 		lw $a0,8($s4)				# carrega posicao x pixel
 		lw $a2,20($s4)				# carrega cor_objeto
 		jal VERIFICA_POSSIBILIDADE_OBJETO
		li $v0,1				# indica possivel
		j exit_ghost_move
		
exit_ghost_move:	
 	lw $ra,0($sp)
 	lw $s0,4($sp)
 	lw $s1,8($sp)
 	lw $s4,12($sp)
 	addi $sp,$sp,16
 	jr $ra
#######################
# VERIFICA POSSIBILIDADE
#######################	
#$a0 = x, $a1 = y, $a3 = endereco_objeto(pac,ghost)
VERIFICA_POSSIBILIDADE:
	addi $sp,$sp,-12
	sw $ra,8($sp)
	sw $s2,4($sp)
	sw $s3,0($sp)
	move $s3,$a3		# $s3 = endereco_objeto
	la $t0, map_vetor
	la $t2, Xmap
	# carrega endereco da proxima posicao (x e y antes de andar)
	mult $a1, $t2 				# $t1 = $a1(y) * 32 ; 
	mflo $t1
	add $t1, $t1, $a0 			# $t1 = $t1($a1(y) * 32) + $a0(x); 
	add $s2, $t0, $t1 			# $t0 = map_vetor + y * 32 + x
	lw $t4, 20($s3) 			# carrega $t4 cor do objeto(pac ou fantasma)
	beq $t4,0x3F,pac_possibilidade		# $t4 = 0x3F (pac_amarelo )vai para pac_possibilidade
	#	
	beq $t4,0x18,pac_possibilidade		# $t4 = 0x18 (pac_verde) vai para pac_possibilidade
	#
	beq $t4,0xC0,pac_possibilidade		# $t4 = 0xC0 (pac_azul) vai para pac_possibilidade
	#
	beq $t4,0x86,pac_possibilidade		# $t4 = 0x86 (pac_roxo) vai para pac_possibilidade
	#
	beq $t4,0x07,fantasma_possibilidade	# $t4 = 0x07 (fantasma_vermelho) vai para fantasma_possibilidade
	#
	beq $t4,0x87,fantasma_possibilidade	# $t4 = 0x87 (fantasma_rosa) vai para fantasma_possibilidade
	#
	beq $t4,0xF8,fantasma_possibilidade	# $t4 = 0xF8 (fantasma_azul_claro) vai para fantasma_possibilidade
	#
	beq $t4,0x27,fantasma_possibilidade	# $t4 = 0x87 (fantasma_laranja) vai para fantasma_possibilidade
	#
	li $v0,0				# Indica que que n�o � um pac ou um fantasma
	j return_verifica_possibilidade		# se chegar aqui, n�o � um pac ou um fantasma

	pac_possibilidade:
		lbu $t2,0($s2)				# carrega $t2 (tile) no byte que $t0 corresponde.
		beqz $t2,possivel_pac			# $t2 igual a 0x00(preto)
		#
		beq $t2,0xFF,possivel_pac_comida	# $t2 = 0xFF (comida) vai para possivel comida
		#
		beq $t2,0xFA,possivel_pac_comidona	# $t2= 0xFA (comidona) vai para possivel
		#
		li $v0,0				# que nao pode andar
		j return_verifica_possibilidade		# se chegar aqui, pode andar

	possivel_pac_comida:
		lw $a0,40($s3) 		# carrega scoree do pac
		addi $a0,$a0,10				# adiciona 10 na pontua��o do pac
		sw $a0,40($s3)				# $a0 = pontua��o
		lw $a2,36($s3)				# $a2 = posicao score
		jal PRINT_SCORE
		j possivel_pac
		
	possivel_pac_comidona:
		lw $a0,40($s3)
		addi $a0,$a0,50				# adiciona 50 na pontua��o do pac
		sw $a0,40($s3)				# $a0 = pontua��o
		lw $a2,36($s3)				# $a2 = posicao score
		li $t4,300				# quantidade frames pac especial
		sw $t4,60($s3)				# salva frames 
		la $t0,fantasma_vermelho		
		sw $t4,40($t0)				# Ativa fantasma vermelho pac powerup
		la $t0,fantasma_azul
		sw $t4,40($t0)				# Ativa fantasma azul pac powerup	
		la $t0,fantasma_rosa
		sw $t4,40($t0)				# Ativa fantasma rosa pac powerup
		la $t0,fantasma_laranja
		sw $t4,40($t0)				# Ativa fantasma laranja pac powerup
		jal PRINT_SCORE
		j possivel_pac
	
	possivel_pac:
		li $t4,0				# Carrega a cor preta que representa o tile preto
		sb $t4,0($s2)				# atualiza proxima posicao no map para preto
		# carrega endereco da posicao atual (x e y antes de andar)
		la $t0, map_vetor
		la $t2, Xmap
		mult $s1, $t2 				# $t1 = $a1(y) * 32 ; 
		mflo $t1
		add $t1, $t1, $s0 			# $t1 = $t1($a1(y) * 32) + $a0(x); 
		add $t1, $t0, $t1 			# $t1 = map_vetor + y * 32 + x
		# fim carrega endereco
		li $t4,0				# carrega cor preta
		sb $t4,0($t1)				# atualiza posicao atual do mapa para preta
		li $v0,1				# indica que � poss�vel andar
		j return_verifica_possibilidade
				
	fantasma_possibilidade:
		lbu $t2,0($s2)				# carrega $t2 (tile) no byte que $t0 corresponde.
		beqz $t2,possivel_fantasma		# $t2 igual a 0x00(preto)
		#
		beq $t2,0xFF,possivel_fantasma		# $t2 = 0xFF (comida) vai para possivel comida
		#
		beq $t2,0xFA,possivel_fantasma		# $t2= 0xFA (comidona) vai para possivel
	
		beq $t2,0xAD,possivel_fantasma		# $t2= 0xAD (PORTA) vai para possivel
		#
		li $v0,0				# que nao pode andar
		j return_verifica_possibilidade
		possivel_fantasma:
			li $v0,1
			j return_verifica_possibilidade
			
	return_verifica_possibilidade:
		lw $ra,8($sp)
		lw $s2,4($sp)
		lw $s3,0($sp)
		addi $sp,$sp,12
		jr $ra


#a0 = x, $a1=y, $a2 = cor_objeto
VERIFICA_POSSIBILIDADE_OBJETO:
	jr $ra

# $a0 = x, $a1 = y
TILE_MAP:
	la $t0, map_vetor
	la $t2, Xmap
	# carrega endereco da proxima posicao (x e y antes de andar)
	mult $a1, $t2 				# $t1 = $a1(y) * 32 ; 
	mflo $t1
	add $t1, $t1, $a0 			# $t1 = $t1($a1(y) * 32) + $a0(x); 
	add $t0, $t0, $t1 			# $t0 = map_vetor + y * 32 + x
	lbu $v0,0($t0)
	jr $ra	
			
MUSICA_INICIAL:
	li $s1,31		# QUANTIDADE NOTAS
	la $s0,NOTAS_MUSICA
	la $s2,DURACAO_NOTA
	li $t0,0
	li $a2,1		# instrumento
	li $a3,75		# volume

loop_musica:	
	beq $t0,$s1, fim_musica
	lw $a0,0($s0)		# nota
	lw $a1,0($s2)		# duracao
	li $v0,33		# 33 da pausa a mais
	syscall 
	addi $s0,$s0,4		# proxima nota
	addi $s2,$s2,4		# proxima dura��o
	addi $t0,$t0,1
	j loop_musica
fim_musica:	
	jr $ra

####################################
# RENDERIZA
####################################
RENDERIZA:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $t1,quantidade_players
	lw $t1,0($t1)
	beq $t1,1,renderiza_always
	beq $t1,2,renderiza_dois_players
	beq $t1,3,renderiza_tres_players
	renderiza_quatro_players:
		la $a0,pac_roxo
		jal RENDERIZA_PAC
	renderiza_tres_players:
		la $a0,pac_azul
		jal RENDERIZA_PAC
	renderiza_dois_players:
		la $a0,pac_verde
		jal RENDERIZA_PAC
	renderiza_always:
		la $a0,pac_amarelo		# Carrega desenho
		jal RENDERIZA_PAC
		la $a0,fantasma_vermelho
		jal RENDERIZA_GHOST
		la $a0,fantasma_rosa
		jal RENDERIZA_GHOST
		la $a0,fantasma_azul
		jal RENDERIZA_GHOST
		la $a0,fantasma_laranja
		jal RENDERIZA_GHOST
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra


####################################
# RENDERIZA PAC # $a0 = endereco_pac
####################################
RENDERIZA_PAC:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	move $s0,$a0
	lw $s1,20($s0)
	lw $s2,0($s0) 	# carrega x
	lw $s3,4($s0) 	# carrega y
	li $t0,10
	mult $s2,$t0		# x multiplica por 10 obtendo x pixel
	mflo $s2		# move resultado para $s2	
	mult $s3,$t0		# y multiplica por 10 obtendo y pixel
	mflo $s3		# move resultado para $s3
	lw $t0,48($s0)		# Carrega dire��o
	beq $t0,0,renderiza_cima_pac 		
	beq $t0,1,renderiza_direita_pac 	
	beq $t0,2,renderiza_baixo_pac 	
	beq $t0,3,renderiza_esquerda_pac
	j exit_renderiza_pac
 	renderiza_cima_pac:
 		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		move $a0,$s2		# x	
		addi $a1,$s3,10		# y+10
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 = 0 top_pac  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_pac
	renderiza_direita_pac:
		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		addi $a0,$s2,-10	# x-10	
		move $a1,$s3		# y
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 =1 direita_pac  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_pac
	renderiza_baixo_pac:
		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		move $a0,$s2		# x	
		addi $a1,$s3,-10	# y-10
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 down_pac  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_pac
	renderiza_esquerda_pac:
		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		addi $a0,$s2,10		# x+10	
		move $a1,$s3		# y
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 esquerda_pac  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_pac
	#
	exit_renderiza_pac:
		lw $ra,0($sp)
		addi $sp,$sp,4
		jr $ra

####################################
# RENDERIZA GHOST # $a0 = endereco_pac
####################################
RENDERIZA_GHOST:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	move $s0,$a0
	lw $s1,20($s0)
	lw $s2,0($s0) 	# carrega x
	lw $s3,4($s0) 	# carrega y
	li $t0,10
	mult $s2,$t0		# x multiplica por 10 obtendo x pixel
	mflo $s2		# move resultado para $s2	
	mult $s3,$t0		# y multiplica por 10 obtendo y pixel
	mflo $s3		# move resultado para $s3
	lw $t0,32($s0)		# Carrega dire��o
	beq $t0,4,renderiza_cima_ghost 		
	beq $t0,5,renderiza_direita_ghost 	
	beq $t0,6,renderiza_baixo_ghost 	
	beq $t0,7,renderiza_esquerda_ghost
	j exit_renderiza_ghost
 	renderiza_cima_ghost:
 		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		move $a0,$s2		# x	
		addi $a1,$s3,10		# y+10
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 = 0 top_ghost  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_ghost
	renderiza_direita_ghost:
		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		addi $a0,$s2,-10	# x-10	
		move $a1,$s3		# y
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 =1 direita_ghost  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_ghost
	renderiza_baixo_ghost:
		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		move $a0,$s2		# x	
		addi $a1,$s3,-10	# y-10
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 down_ghost  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_ghost
	renderiza_esquerda_ghost:
		move $a0,$s2		# x	
		move $a1,$s3		# y
		lw $a2,24($s0) 		# Tile atual	
		jal DESENHO_ESCOLHA
		addi $a0,$s2,10		# x+10	
		move $a1,$s3		# y
		lw $a2,28($s0) 		# Tile Anterior	
		jal DESENHO_ESCOLHA
		lw $a0,8($s0)		# xPixel
		lw $a1,12($s0)		# yPixel
		lw $a2,20($s0) 		# $a2 cor
		move $a3,$s0		# $a3 esquerda_ghost  	 	
		jal DESENHO_ESCOLHA
		j exit_renderiza_ghost
	#
	exit_renderiza_ghost:
		lw $ra,0($sp)
		addi $sp,$sp,4
		jr $ra		

#############################################
# Inicia Pontua��es #
#############################################			
INIT_PONTUACOES:
	addi $sp,$sp,-8
	sw $ra,0($sp)
	sw $s0,4($sp)
	la $t1,quantidade_players
	lw $t1,0($t1)
	beq $t1,1,init_p_yellow
	beq $t1,2,init_p_green
	beq $t1,3,init_p_blue
	init_p_roxo:
		# In�cio roxo
		li $a0,0				# N�mero a ser printado
		li $a2,180				# linha score azul pac
		jal PRINT_SCORE
		li $s0,260 
	loop_init_p_roxo:
		move $a0,$s0				# x
		li $a1,190				# y
		li $a2,0x86 #roxo
		la $a3,pac_man_open_right
		jal PRINT_DESENHO_PERSONAGEM
		addi $s0,$s0,15
		bne $s0,305,loop_init_p_roxo
	init_p_blue:
		# In�cio azul
		li $a0,0				# N�mero a ser printado
		li $a2,130				# linha score azul pac
		jal PRINT_SCORE
		li $s0,260 
	loop_init_p_blue:
		move $a0,$s0				# x
		li $a1,140				# y
		li $a2,0xC0 #azul
		la $a3,pac_man_open_right
		jal PRINT_DESENHO_PERSONAGEM
		addi $s0,$s0,15
		bne $s0,305,loop_init_p_blue
	init_p_green:
		# In�cio Green
		li $a0,0				# N�mero a ser printado
		li $a2,80				# linha score red pac
		jal PRINT_SCORE
		li $s0,260 
	loop_init_p_green:
		move $a0,$s0				# x
		li $a1,90				# y
		li $a2,0x18 #green
		la $a3,pac_man_open_right
		jal PRINT_DESENHO_PERSONAGEM
		addi $s0,$s0,15
		bne $s0,305,loop_init_p_green
	####################33	
	init_p_yellow:
		# In�cio pontua��o yellow
		li $a0,0				# N�mero a ser printado
		li $a2,30				# linha score yellow pac
		jal PRINT_SCORE 
		li $s0,260
	loop_init_p_yellow:	
		move $a0,$s0				# x
		li $a1,40				# y
		li $a2,0x3F #red
		la $a3,pac_man_open_right
		jal PRINT_DESENHO_PERSONAGEM
		addi $s0,$s0,15
		bne $s0,305,loop_init_p_yellow
		#
		lw $s0,4($sp)
		lw $ra,0($sp)
		addi $sp,$sp,8 
		jr $ra	  
#############################################
# PRINT SCORE # $a0=numero a ser printado, $a2= linha(y)
#############################################	
PRINT_SCORE:
	li $a1,260				# coluna
	li $a3,0x00FF				# cores de frente(FF) e fundo(00) do texto
	li $v0,101				# print int
	syscall
	jr $ra

###########################################
# INICIA PAC AMARELO
###########################################	 	 
INIT_PAC_YELLOW:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $t0,pac_amarelo
	la $a3,pac_man_open_right
	j INIT_PERSONAGEM

###########################################
# INICIA PAC VERDE
###########################################
INIT_PAC_GREEN:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $t0,pac_verde
	la $a3,pac_man_open_left
	j INIT_PERSONAGEM

###########################################
# INICIA PAC AZUL
###########################################
INIT_PAC_BLUE:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $t0,pac_azul
	la $a3,pac_man_open_right
	j INIT_PERSONAGEM
	
###########################################
# INICIA PAC ROXO
###########################################
INIT_PAC_ROXO:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $t0,pac_roxo
	la $a3,pac_man_open_left
	j INIT_PERSONAGEM
###########################################
# INICIA PERSONAGEM
###########################################		
INIT_PERSONAGEM:
	lw $a0,8($t0)				# x inicial personagem
	lw $a1,12($t0)				# y inicial personagem	mul $a0,$a0,10
	lw $a2,20($t0)
	jal PRINT_DESENHO_PERSONAGEM		# $a3 carrega o desenho que ser� printado
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra

###########################################
# INICIA FANTASMA VERMELHO
###########################################		
INIT_GHOST_RED:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $a3,fantasma_vermelho
	lw $a0,8($a3)		# xPixel
	lw $a1,12($a3)		# yPixel
	lw $a2,20($a3) 		# $a2 cor	
	jal DESENHO_ESCOLHA
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra

###########################################
# INICIA FANTASMA ROSA
###########################################		
INIT_GHOST_PINK:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $a3,fantasma_rosa
	lw $a0,8($a3)		# xPixel
	lw $a1,12($a3)		# yPixel
	lw $a2,20($a3) 		# $a2 cor	
	jal DESENHO_ESCOLHA
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra

###########################################
# INICIA FANTASMA AZUL
###########################################		
INIT_GHOST_BLUE:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $a3,fantasma_azul
	lw $a0,8($a3)		# xPixel
	lw $a1,12($a3)		# yPixel
	lw $a2,20($a3) 		# $a2 cor	
	jal DESENHO_ESCOLHA
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra

###########################################
# INICIA FANTASMA LARANJA
###########################################		
INIT_GHOST_ORANGE:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $a3,fantasma_laranja
	lw $a0,8($a3)		# xPixel
	lw $a1,12($a3)		# yPixel
	lw $a2,20($a3) 		# $a2 cor	
	jal DESENHO_ESCOLHA
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra
		
#######################
# Print MAPA
#######################		
MAPA:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	la $s0,map_vetor
	li $s1,0
	li $s2,0
	la $s3,X
	la $s4,Y
	while_mapa:
		beq $s2,$s4,exit_map	
		beq $s1,$s3,reseta_x
		move $a0,$s1
		move $a1,$s2
		lbu $a2,0($s0)
		jal DESENHO_ESCOLHA
		addi $s0,$s0,1
		addi $s1,$s1,10
		j while_mapa
	reseta_x:
		li $s1,0
		addi $s2,$s2,10
		j while_mapa
	exit_map:
		lw $ra,0($sp)
		addi $sp,$sp,4
		jr $ra

#######################
# DESENHO ESCOLHA
#######################	
# $a0 = x , $a1 = y, a2 = desenho, $a3 = endere�o(s� tem endere�o se for algum personagem)
DESENHO_ESCOLHA:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	beq $a2,0xFF,desenho_comida
	beq $a2,0xFA,desenho_comidona
	beq $a2,0x3F,desenho_personagem # pac_amarelo
	beq $a2,0x18,desenho_personagem # pac_verde
	beq $a2,0xC0,desenho_personagem # pac_azul
	beq $a2,0x86,desenho_personagem # pac_roxo
	beq $a2,0x07,desenho_personagem # ghost vermelho
	beq $a2,0x87,desenho_personagem # ghost pink
	beq $a2,0xF8,desenho_personagem # ghost azul claro
	beq $a2,0x27,desenho_personagem # ghost laranja
	beq $a2,0xAD,porta_fantasma
	move $a3,$a2
	li $a2,-1					# indica que o procedimento print_desenho dever� printar da variavel e n�o da memoria
	jal PRINT_DESENHO
	j return_desenho_escolha
	#
    desenho_comida:
	li $a2,0					# indica que o procedimento print_desenho dever� printar da memoria	
	la $a3,tile_comida
	jal PRINT_DESENHO
	j return_desenho_escolha
	#
    desenho_comidona:
	li $a2,0					# indica que o procedimento print_desenho dever� printar da memoria
	la $a3,tile_comidona
	jal PRINT_DESENHO
	j return_desenho_escolha

    porta_fantasma:
	li $a2,0					# indica que o procedimento print_desenho dever� printar da memoria
	la $a3,tile_porta_fantasma
	jal PRINT_DESENHO
	j return_desenho_escolha
	#
	
    # $a3 = endereco, $a2 = cor	
    desenho_personagem:		
	lw $t1,16($a3) 				# $t0 tipo do personagem
	beq $t1,1,personagem_pac
	personagem_ghost:	
		lw $t0, 32($a3)				# personagem ghost
		la $t3,quantidade_players
		lw $t3,0($t3)
		beq $t3,1,single_player_ativo 		# se a quantidade de player � igual a 1 os fantasmas que mudam se tiver powerUP
		#se chegar aqui o jogo ta multplayer e caso tenha power up o fantasmas n�o mudam
		j switch_desenho_personagem
		single_player_ativo:
			lw $t4,40($a3)				# $t4 = tempo powerUP
			beq $t4,0,switch_desenho_personagem 	# se powerUP = 0, ent�o ele est� inativo e vai para switch
			#######################
			# PowerUp  ativo
			#######################
			power_up_ativo:
				addi $t4,$t4,-1			# diminui o tempo do powerUp
				sw $t4,40($a3)			# salva power up
				###########
				la $a3,ghost_azul 		# Carrega fantasma azul
				slti $t0,$t4,40			# $t0 = 1 se o tempo for menor 40
				beq $t0,1,ghost_power_up_cor_troca
				# se chegar aqui mantem a cor azul
				j print_personagem 
			ghost_power_up_cor_troca:
				li $t3,2
				div $t4,$t3
				mfhi $t3
				beqz $t3,ghost_power_up_cor_branca
				# se chegar aqui mantem a cor azul
				j print_personagem 
			ghost_power_up_cor_branca:
				# se chegar aqui o resto � zero e 
				la $a3,ghost_branco		# carrega ghost branco
				j print_personagem
		j switch_desenho_personagem
	personagem_pac:	
		lw $t0,48($a3)	
		la $t3,quantidade_players
		lw $t3,0($t3)
		beq $t3,1,switch_desenho_personagem 	# se a quantidade de player � igual a 1 os fantasmas que mudam
		# se chegar aqui quantidade de player maior  que 1, logo os player que mudam(piscam no powerUP)
		lw $t4,60($a3)				# $t4 = powerUP
		beq $t4,0,switch_desenho_personagem 	# se powerUP = 0, ent�o ele est� inativo e vai para switch
		#######################
		# PowerUp pac ativo
		#######################
		power_up_pac_ativo:
			lw $t3,64($a3) 				# $t3 = indicar(troca ou n�o a cor)
			beq $t3,0,nao_troca_cor_personagem
			addi $t3,$t3,-1
			sw $t3,64($a3)  		# na proxima nao troca a cor
			addi $t4,$t4,-1			# diminui o tempo do powerUp
			sw $t4,60($a3) 			# salvar tempo
			li $a2, 0x07 			# TROCA A COR PARA BRANCA
			j switch_desenho_personagem
		nao_troca_cor_personagem:
			li $t3,3
			sw $t3,64($a3) 			# na proxima troca a cor
			addi $t4,$t4,-1			# diminui o tempo do powerUp
			sw $t4,60($a3) 			# salvar tempo
		########################
	switch_desenho_personagem:	
		beq $t0,0,desenho_pac_up		# 0 representa desenho pac cima
		beq $t0,1,desenho_pac_right		# 1 representa desenho pac direita
		beq $t0,2,desenho_pac_down		# 2 representa desenho pac baixo
		beq $t0,3,desenho_pac_left		# 3 representa desenho pac left
		beq $t0,4,desenho_ghost_up		# 4 representa desenho ghost up
		beq $t0,5,desenho_ghost_right		# 5 representa desenho ghost right
		beq $t0,6,desenho_ghost_down		# 6 representa desenho ghost down
		beq $t0,7,desenho_ghost_left		# 6 representa desenho ghost left
		j return_desenho_escolha
		################################################
		desenho_pac_up:
			lw $t1,52($a3)
			beq $t1,0,desenho_pac_up_aberta
			beq $t1,1,desenho_pac_up_abertona
			beq $t1,2,desenho_pac_up_close
			desenho_pac_up_aberta:
				li $t0,1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_open_top
				j print_personagem
			desenho_pac_up_abertona:
				lw $t2,56($a3)
				add $t1,$t1,$t2
				sw $t1,52($a3)
				la $a3,pac_man_open_big_top
				j print_personagem
			desenho_pac_up_close:
				li $t0,-1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_close_y
				j print_personagem	
		###############################################	
		desenho_pac_right:
			lw $t1,52($a3)
			beq $t1,0,desenho_pac_right_aberta
			beq $t1,1,desenho_pac_right_abertona
			beq $t1,2,desenho_pac_right_close
			desenho_pac_right_aberta:
				li $t0,1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_open_right
				j print_personagem
			desenho_pac_right_abertona:
				lw $t2,56($a3)
				add $t1,$t1,$t2
				sw $t1,52($a3)
				la $a3,pac_man_open_big_right
				j print_personagem
			desenho_pac_right_close:
				li $t0,-1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_close_x
				j print_personagem
		#################################################
		desenho_pac_down:
			lw $t1,52($a3)
			beq $t1,0,desenho_pac_down_aberta
			beq $t1,1,desenho_pac_down_abertona
			beq $t1,2,desenho_pac_down_close
			desenho_pac_down_aberta:
				li $t0,1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_open_down
				j print_personagem
			desenho_pac_down_abertona:
				lw $t2,56($a3)
				add $t1,$t1,$t2
				sw $t1,52($a3)
				la $a3,pac_man_open_big_down
				j print_personagem
			desenho_pac_down_close:
				li $t0,-1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_close_y
				j print_personagem
		#################################################
		desenho_pac_left:
			lw $t1,52($a3)
			beq $t1,0,desenho_pac_left_aberta
			beq $t1,1,desenho_pac_left_abertona
			beq $t1,2,desenho_pac_left_close
			desenho_pac_left_aberta:
				li $t0,1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_open_left
				j print_personagem
			desenho_pac_left_abertona:
				lw $t2,56($a3)
				add $t1,$t1,$t2
				sw $t1,52($a3)
				la $a3,pac_man_open_big_left
				j print_personagem
			desenho_pac_left_close:
				li $t0,-1
				add $t1,$t1,$t0
				sw $t1,52($a3)
				sw $t0,56($a3)
				la $a3,pac_man_close_x
				j print_personagem
		#################################################
		desenho_ghost_up:
			lw $t0,36($a3)
			beq $t0,1,desenho_ghost_up_2
			li $t0,1
			sw $t0,36($a3)
			la $a3,ghost_up1
			j print_personagem
			desenho_ghost_up_2:
				li $t0,0
				sw $t0,36($a3)
				la $a3,ghost_up2
			j print_personagem
		#################################################
		desenho_ghost_right:
			lw $t0,36($a3)
			beq $t0,1,desenho_ghost_right_2
			li $t0,1
			sw $t0,36($a3)
			la $a3,ghost_right1
			j print_personagem
			desenho_ghost_right_2:
				li $t0,0
				sw $t0,36($a3)
				la $a3,ghost_right2
			j print_personagem
		#################################################
		desenho_ghost_down:
			lw $t0,36($a3)
			beq $t0,1,desenho_ghost_down_2
			li $t0,1
			sw $t0,36($a3)
			la $a3,ghost_down1
			j print_personagem
			desenho_ghost_down_2:
				li $t0,0
				sw $t0,36($a3)
				la $a3,ghost_down2
			j print_personagem
		#################################################
		desenho_ghost_left:
			lw $t0,36($a3)
			beq $t0,1,desenho_ghost_left_2
			li $t0,1
			sw $t0,36($a3)
			la $a3,ghost_left1
			j print_personagem
			desenho_ghost_left_2:
				li $t0,0
				sw $t0,36($a3)
				la $a3,ghost_left2
			j print_personagem
	#
	print_personagem:
		jal PRINT_DESENHO_PERSONAGEM
		j return_desenho_escolha
	#
	return_desenho_escolha:	
		lw $ra,0($sp)
		addi $sp,$sp,4
		jr $ra


#######################
# PRINT DESENHO
#######################	
# $a0 = x, $a1 = y, $a3 = endereco_inicio_desenho, $a2 indicador se ler da memoria ou de constante	
PRINT_DESENHO:
	addi $sp,$sp,-32
	sw $ra,28($sp)
	sw $s0,24($sp)
	sw $s1,20($sp)
	sw $s2,16($sp)
	sw $s3,12($sp)
	sw $s4,8($sp)
	sw $s5,4($sp)
	sw $s6,0($sp)
		
	move $s0,$a3
	move $s1,$a0					# $s1 = x inicio
	move $s2,$a1 					# $s2 = y inicio
	addi $s3,$a0,10					# $s3 = x + 10 (x final)
	addi $s4,$a1,10					# $s4 = y + 10 (y final)
	move $s5,$s1
	move $s6,$a2					# $s6 = $a2 (indicador ler da memoria ou de constante)
	while_desenho:
		beq $s2,$s4,exit_desenho	
		beq $s1,$s3,reseta_x_desenho
		move $a0,$s1
		move $a1,$s2
		bne $s6,-1,ler_memoria_desenho			# se n�o � -1 e devemos ler da memoria
		move $a2,$s0					# $a2 = $s0	
		j ponto_desenho					
	ler_memoria_desenho:	
		lbu $a2,0($s0)
		addi $s0,$s0,1
	ponto_desenho:
		jal PONTO
		addi $s1,$s1,1
		j while_desenho
	reseta_x_desenho:
		move $s1,$s5 					# restaura x 
		addi $s2,$s2,1
		j while_desenho
	exit_desenho:
		lw $ra,28($sp)
		lw $s0,24($sp)
		lw $s1,20($sp)
		lw $s2,16($sp)
		lw $s3,12($sp)
		lw $s4,8($sp)
		lw $s5,4($sp)
		lw $s6,0($sp)
		addi $sp,$sp,32
		jr $ra

####################################################
# PRINT DESENHO PERSONAGEM (troca a cor gen�rica 0x3F, pela cor indicada)
####################################################
# $a0 = x, $a1 = y, $a3 = endereco_inicio_desenho, $a2=cor que ser� modificada	
PRINT_DESENHO_PERSONAGEM:
	addi $sp,$sp,-32
	sw $ra,28($sp)
	sw $s0,24($sp)
	sw $s1,20($sp)
	sw $s2,16($sp)
	sw $s3,12($sp)
	sw $s4,8($sp)
	sw $s5,4($sp)
	sw $s6,0($sp)
		
	move $s0,$a3
	move $s1,$a0					# $s1 = x inicio
	move $s2,$a1 					# $s2 = y inicio
	addi $s3,$a0,10					# $s3 = x + 10 (x final)
	addi $s4,$a1,10					# $s4 = y + 10 (y final)
	move $s5,$s1
	move $s6,$a2					# $s6 = $a2 cor a ser modificada
	while_desenho_personagem:
		beq $s2,$s4,exit_desenho_personagem	
		beq $s1,$s3,reseta_x_desenho_personagem
		move $a0,$s1
		move $a1,$s2
		lbu $a2,0($s0)
		bne $a2,0x3F,ponto_desenho_personagem		# Se n�o for igual
		move $a2,$s6					# $a2 recebe $a6(cor_a_ser_trocada)
	ponto_desenho_personagem:
		addi $s0,$s0,1
		jal PONTO
		addi $s1,$s1,1
		j while_desenho_personagem
	reseta_x_desenho_personagem:
		move $s1,$s5 					# restaura x 
		addi $s2,$s2,1
		j while_desenho_personagem
	exit_desenho_personagem:
		lw $ra,28($sp)
		lw $s0,24($sp)
		lw $s1,20($sp)
		lw $s2,16($sp)
		lw $s3,12($sp)
		lw $s4,8($sp)
		lw $s5,4($sp)
		lw $s6,0($sp)
		addi $sp,$sp,32
		jr $ra

#######################
# PRINTA UM PIXEL (troca a cor gen�rica 0x3F, pela cor indicada)
#######################									
#$a0 = x, $a1 =y , $a2 = cor	
PONTO: 	
	addi $sp,$sp,-4
	sw $ra,0($sp)
	jal ENDERECO_PONTO
	move $t0,$v0
	sb $a2, 0($t0) 				# salva $a2 (cor) no byte que $t0 corresponde.
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra
	
#$a0 = x, $a1 =y 	
ENDERECO_PONTO:
	la $t0, VGA_BASE
	la $t2, X
	la $t3, Y
	slt $t4,$a0,$t2 			# a0 < $t2(X)
	beqz $t4,ponto_fora_limite
	slt $t4,$a1,$t3 			# a1 < $t3(Y)
	beqz $t4,ponto_fora_limite
	mult $a1, $t2 			# $t1 = $a1(y) * 320; 
	mflo $t1
	add $t1, $t1, $a0 			# $t1 = $t1($a1(y) * 320) + $a0(x); 
	add $t0, $t0, $t1 			# $t0 = 0xFF000000 + y * 320 + x
	move $v0,$t0
	jr $ra
	ponto_fora_limite:
		addi $v0,$zero,4 			# x ou y est�o fora do limite
		la $a0, ERRO_PONTO
		syscall
		j EXIT

##########################
# Reseta memoria de dados para o fpga
##########################
RESET_DATA_MEMORY:
	li $t0,768
	li $t1,0
	la $t2,map_vetor
	la $t3,map_vetor_backup
loop_reset_map_memory: 
	beq $t1,$t0,reset_pac_amarelo
	lbu $t4,0($t3) # ler de map_vetor_backup
	sb $t4,0($t2)	# salva em map_vetor	
	addi $t2,$t2,1
	addi $t3,$t3,1
	addi $t1,$t1,1
	j loop_reset_map_memory
##################
reset_pac_amarelo:
	li $t0,16
	li $t1,0
	la $t2,pac_amarelo
	la $t3,pac_amarelo_backup
	loop_reset_pac_amarelo: 
		beq $t1,$t0,reset_pac_verde
		lw $t4,0($t3) 	# ler de pac_amarelo_backup
		sw $t4,0($t2)	# salva em pac_amarelo	
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_pac_amarelo
###################
reset_pac_verde:
	li $t0,16
	li $t1,0
	la $t2,pac_verde
	la $t3,pac_verde_backup
	loop_reset_pac_verde: 
		beq $t1,$t0,reset_pac_azul
		lw $t4,0($t3) 	# ler de pac_verde_backup
		sw $t4,0($t2)	# salva em pac_verde	
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_pac_verde
###################
reset_pac_azul:
	li $t0,16
	li $t1,0
	la $t2,pac_azul
	la $t3,pac_azul_backup
	loop_reset_pac_azul: 
		beq $t1,$t0,reset_pac_roxo
		lw $t4,0($t3) 	# ler de pac_azul_backup
		sw $t4,0($t2)	# salva em pac_azul	
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_pac_azul
###################
reset_pac_roxo:
	li $t0,16
	li $t1,0
	la $t2,pac_roxo
	la $t3,pac_roxo_backup
	loop_reset_pac_roxo: 
		beq $t1,$t0,reset_fantasma_vermelho
		lw $t4,0($t3) 	# ler de pac_roxo_backup
		sw $t4,0($t2)	# salva em pac_azul	
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_pac_roxo		
######################
reset_fantasma_vermelho:
	li $t0,13
	li $t1,0
	la $t2,fantasma_vermelho
	la $t3,fantasma_vermelho_backup
	loop_reset_fantasma_vermelho: 
		beq $t1,$t0,reset_fantasma_rosa
		lw $t4,0($t3) 	# ler de fantasma_vermelho_backup
		sw $t4,0($t2)	# salva em fantasma_vermelho
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_fantasma_vermelho
######################
reset_fantasma_rosa:
	li $t0,13
	li $t1,0
	la $t2,fantasma_rosa
	la $t3,fantasma_rosa_backup
	loop_reset_fantasma_rosa: 
		beq $t1,$t0,reset_fantasma_azul
		lw $t4,0($t3) 	# ler de fantasma_rosa_backup
		sw $t4,0($t2)	# salva em fantasma_rosa
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_fantasma_rosa
######################
reset_fantasma_azul:
	li $t0,13
	li $t1,0
	la $t2,fantasma_azul
	la $t3,fantasma_azul_backup
	loop_reset_fantasma_azul: 
		beq $t1,$t0,reset_fantasma_laranja
		lw $t4,0($t3) 	# ler de fantasma_azul_backup
		sw $t4,0($t2)	# salva em fantasma_azul
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_fantasma_azul
######################
reset_fantasma_laranja:
	li $t0,12
	li $t1,0
	la $t2,fantasma_laranja
	la $t3,fantasma_laranja_backup
	loop_reset_fantasma_laranja: 
		beq $t1,$t0,exit_reset
		lw $t4,0($t3) 	# ler de fantasma_laranja_backup
		sw $t4,0($t2)	# salva em fantasma_laranja
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t1,$t1,1
		j loop_reset_fantasma_laranja		
exit_reset:
	jr $ra
