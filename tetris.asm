
    .data


.eqv BASE_ADDRESS 0x10008000
.eqv KEYBOARD_ADDRESS 0xffff0000

SIZE_ROW: .word 10
SIZE_COL: .word 15

COLOUR_BG:     .word 0x00000000
COLOUR_BD:   .word 0x00FFFF00
COLOUR_GRID: .word 0x00808080

UI_PANEL_COLOUR: .word 0x00404040
TEXT_COLOR: .word 0x00FFFFFF

TITLE_COLOUR_1: .word 0x00FF0000
TITLE_COLOUR_2: .word 0x00FF8000
TITLE_COLOUR_3: .word 0x00FFFF00
TITLE_COLOUR_4: .word 0x0000FF00
TITLE_COLOUR_5: .word 0x000000FF
TITLE_COLOUR_6: .word 0x008000FF    

GAME_OVER_COLOUR: .word 0x00FF0000
SKULL_COLOUR: .word 0x00CCCCCC

BRD:	.space 600
NEXT_PIECE: .word 1
SHAPE:	.space 1792
DIGIT: .space 280
SKULL: .space 256

# CRU
CUR_TYPE: .word 0	# 0-6(I,O,T,S,Z,J,L)
CUR_X: .word 4
CUR_Y: .word 0
CUR_ROTATION: .word 0	# 0-3

game_over:             .word 0
game_paused:           .word 0
total_score:           .word 0
lines_cleared:         .word 0
drop_counter:       .word 0
drop_speed:         .word 30

piece_shapes:
    	# I
    	.word 0,0,0,0, 1,1,1,1, 0,0,0,0, 0,0,0,0  #0
    	.word 0,0,1,0, 0,0,1,0, 0,0,1,0, 0,0,1,0  #1
    	.word 0,0,0,0, 0,0,0,0, 1,1,1,1, 0,0,0,0  #2
		.word 0,1,0,0, 0,1,0,0, 0,1,0,0, 0,1,0,0  #3
    	# O
    	.word 0,0,0,0, 0,1,1,0, 0,1,1,0, 0,0,0,0
    	.word 0,0,0,0, 0,1,1,0, 0,1,1,0, 0,0,0,0
    	.word 0,0,0,0, 0,1,1,0, 0,1,1,0, 0,0,0,0
    	.word 0,0,0,0, 0,1,1,0, 0,1,1,0, 0,0,0,0
    	# T
    	.word 0,0,0,0, 0,1,0,0, 1,1,1,0, 0,0,0,0  #0
    	.word 0,0,0,0, 0,1,0,0, 1,1,0,0, 0,1,0,0  #1
    	.word 0,0,0,0, 0,0,0,0, 1,1,1,0, 0,1,0,0  #2
    	.word 0,0,0,0, 0,1,0,0, 0,1,1,0, 0,1,0,0  #3
    	# S
    	.word 0,0,0,0, 0,1,1,0, 1,1,0,0, 0,0,0,0  #0
    	.word 0,0,0,0, 0,1,0,0, 0,1,1,0, 0,0,1,0  #1
    	.word 0,0,0,0, 0,0,0,0, 0,1,1,0, 1,1,0,0  # 2
    	.word 0,0,0,0, 1,0,0,0, 1,1,0,0, 0,1,0,0  # 3
    	# Z
    	.word 0,0,0,0, 1,1,0,0, 0,1,1,0, 0,0,0,0  # 0
    	.word 0,0,0,0, 0,0,1,0, 0,1,1,0, 0,1,0,0  # 1
    	.word 0,0,0,0, 0,0,0,0, 1,1,0,0, 0,1,1,0  # 2
    	.word 0,0,0,0, 0,1,0,0, 1,1,0,0, 1,0,0,0  # 3
    	# J
    	.word 0,0,0,0, 1,0,0,0, 1,1,1,0, 0,0,0,0  # 0
    	.word 0,0,0,0, 0,1,1,0, 0,1,0,0, 0,1,0,0  # 1 
    	.word 0,0,0,0, 0,0,0,0, 1,1,1,0, 0,0,1,0  # 2
    	.word 0,0,0,0, 0,1,0,0, 0,1,0,0, 1,1,0,0  # 3
    	# L
    	.word 0,0,0,0, 0,0,1,0, 1,1,1,0, 0,0,0,0  #0
    	.word 0,0,0,0, 0,1,0,0, 0,1,0,0, 0,1,1,0  #1 
    	.word 0,0,0,0, 0,0,0,0, 1,1,1,0, 1,0,0,0  #2
    	.word 0,0,0,0, 1,1,0,0, 0,1,0,0, 0,1,0,0  #3

piece_colors:
    	.word 0x0000FFFF # I- cyan
    	.word 0x00FFFF00 # O- yellow
    	.word 0x00800080 # T- purple
    	.word 0x0000FF00 # S- green
    	.word 0x00FF0000 # Z- red
    	.word 0x000000FF # J- blue
    	.word 0x00FF8000 # L- orange

digit_font:
    	# 0
    	.word 0,1,1,1,0, 1,0,0,0,1, 1,0,0,0,1, 1,0,0,0,1, 1,0,0,0,1, 1,0,0,0,1, 0,1,1,1,0
    	# 1
    	.word 0,0,1,0,0, 0,1,1,0,0, 0,0,1,0,0, 0,0,1,0,0, 0,0,1,0,0, 0,0,1,0,0, 0,1,1,1,0
    	# 2
    	.word 0,1,1,1,0, 1,0,0,0,1, 0,0,0,0,1, 0,0,0,1,0, 0,0,1,0,0, 0,1,0,0,0, 1,1,1,1,1
    	# 3
    	.word 0,1,1,1,0, 1,0,0,0,1, 0,0,0,0,1, 0,0,1,1,0, 0,0,0,0,1, 1,0,0,0,1, 0,1,1,1,0
    	# 4
    	.word 0,0,0,1,0, 0,0,1,1,0, 0,1,0,1,0, 1,0,0,1,0, 1,1,1,1,1, 0,0,0,1,0, 0,0,0,1,0
    	# 5
    	.word 1,1,1,1,1, 1,0,0,0,0, 1,1,1,1,0, 0,0,0,0,1, 0,0,0,0,1, 1,0,0,0,1, 0,1,1,1,0
    	# 6
    	.word 0,1,1,1,0, 1,0,0,0,1, 1,0,0,0,0, 1,1,1,1,0, 1,0,0,0,1, 1,0,0,0,1, 0,1,1,1,0
    	# 7
    	.word 1,1,1,1,1, 0,0,0,0,1, 0,0,0,1,0, 0,0,1,0,0, 0,1,0,0,0, 0,1,0,0,0, 0,1,0,0,0
    	# 8
    	.word 0,1,1,1,0, 1,0,0,0,1, 1,0,0,0,1, 0,1,1,1,0, 1,0,0,0,1, 1,0,0,0,1, 0,1,1,1,0
    	# 9
    	.word 0,1,1,1,0, 1,0,0,0,1, 1,0,0,0,1, 0,1,1,1,1, 0,0,0,0,1, 1,0,0,0,1, 0,1,1,1,0

skull_pattern:
    	.word 0,0,1,1,1,1,0,0
    	.word 0,1,1,1,1,1,1,0
    	.word 1,1,0,1,1,0,1,1
    	.word 1,1,1,1,1,1,1,1
    	.word 1,1,0,1,1,0,1,1
    	.word 1,0,1,0,0,1,0,1
    	.word 0,1,0,1,1,0,1,0
    	.word 0,0,1,0,0,1,0,0
    	
screen_needs_update: .word 1
last_piece_x: .word -1
last_piece_y: .word -1  
last_piece_rotation: .word -1
ui_needs_update: .word 1
 
	.text
	.globl main


main:
	# Randomlization
	li $v0, 30
    	syscall
    	move $a1, $a0
    	li $v0, 40
    	syscall
    	# Initialize the game
    	jal init_game_state
    	jal init_brd
    	jal init_shapes
    	jal draw_bg
    	jal draw_ui_panel
    	jal draw_title
    	jal init_digit
    	jal init_skull
    	jal new_piece
    	jal redraw_screen

    	j game_loop


game_loop:
	# whether game over
    	lw $t0, game_over
    	bne $t0, $zero, game_over_loop

    	# whether game paused
    	lw $t0, game_paused
    	bne $t0, $zero, paused_loop

    	# Regular game
    	jal check_keyboard_input
    	jal update_drop
    	
    	lw $t0, screen_needs_update
    	beq $t0, $zero, skip_redraw
    	jal redraw
    	sw $zero, screen_needs_update
    
skip_redraw:
    	# delay
    	li $v0, 32
    	li $a0, 16               # 16ms delay
    	syscall
    	j game_loop

paused_loop:
	jal draw_pause_message
	jal check_pause_input

	li $v0, 32
	li $a0, 50
	syscall

	lw $t0, game_paused
	beq $t0, $zero, restart_regular_game
	j game_loop

restart_regular_game:
		jal redraw_screen
		j game_loop

game_over_loop:
		jal draw_game_over_screen

game_over_wait:
		jal check_restart_input

		li $v0, 32
		li $a0, 50
		syscall

		lw $t0, game_over
		beq $t0, $zero, game_loop

		j game_over_wait

init_brd:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		la $t0, BRD
		li $t1, 0
		li $t2, 600
clear_board_loop:
		bge $t1, $t2, init_brd_done
		sw $zero, 0($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 4
		j clear_board_loop
init_brd_done:
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra
init_shapes:
    	jr $ra
draw_bg:
    	addi $sp, $sp, -4
    	sw   $ra, 0($sp)
	li $t0, BASE_ADDRESS
	lw $t1, COLOUR_BG
	li $t2,0
draw_bg_loop:
	bge $t2, 16384, draw_walls
	sw $t1, 0($t0)
	addi $t0, $t0, 4
	addi $t2, $t2, 4
	j draw_bg_loop
	
draw_walls:
        #left wall x=0-3, y=0-31
        li $t2, 0
        lw $t3, COLOUR_BD
        
        draw_left_wall:
        	bge $t2, 64, draw_right_wall
            li $t4, 0
            
        draw_left_wall_x:
        	bge $t4, 4, next_left_wall_y
                
            sll $t5, $t2, 6    # y * 64
            add $t5, $t5, $t4  # + x
            sll $t5, $t5, 2    # * 4
            li $t6, BASE_ADDRESS
            add $t5, $t6, $t5
                
            sw $t3, 0($t5)
                
            addi $t4, $t4, 1
            j draw_left_wall_x
                
		next_left_wall_y:
            addi $t2, $t2, 1
            j draw_left_wall
        
        draw_right_wall:
            #x=44-47, y=0-31
            li $t2, 0
            
        draw_right_wall_y:
			bge $t2, 64, draw_bottom_wall
        	li $t4, 44
                
        draw_right_wall_x:
			bge $t4, 48, next_right_wall_y
        
            sll $t5, $t2, 6
            add $t5, $t5, $t4
            sll $t5, $t5, 2
            li $t6, BASE_ADDRESS
            add $t5, $t6, $t5
                    
            sw $t3, 0($t5)
                    
            addi $t4, $t4, 1
            j draw_right_wall_x
                    
		next_right_wall_y:
            addi $t2, $t2, 1
            j draw_right_wall_y

		draw_bottom_wall:
			#x=0-47, y=84-87
			li $t2, 60
            
		draw_bottom_wall_y:
            bge $t2, 64, draw_grid
            li $t4, 0
                
		draw_bottom_wall_x:
            bge $t4, 48, next_bottom_wall_y
                    
            sll $t5, $t2, 6
            add $t5, $t5, $t4
            sll $t5, $t5, 2
            li $t6, BASE_ADDRESS
            add $t5, $t6, $t5
                    
            sw $t3, 0($t5)
                    
            addi $t4, $t4, 1
            j draw_bottom_wall_x
                    
		next_bottom_wall_y:
            addi $t2, $t2, 1
            j draw_bottom_wall_y
    
		draw_grid:
        	lw $t3, COLOUR_GRID
        	li $t2, 0
        
        draw_grid_y:
            bge $t2, 15, draw_bg_complete
            li $t4, 0
            
        draw_grid_x:
            bge $t4, 10, next_grid_y
                
            # Calculate position
            sll $t5, $t2, 2    # y * 4
            sll $t6, $t4, 2    # x * 4
            addi $t6, $t6, 4   # offset-left wall
                
            # raw grid dot
            add $t7, $t5, 3    # y + 3
            add $t8, $t6, 3    # x + 3
                
            sll $t9, $t7, 6
            add $t9, $t9, $t8
            sll $t9, $t9, 2
            li $t0, BASE_ADDRESS
            add $t9, $t0, $t9
                
            sw $t3, 0($t9)
                
            addi $t4, $t4, 1
            j draw_grid_x
                
        next_grid_y:
            addi $t2, $t2, 1
            j draw_grid_y
    
	draw_bg_complete:
        	lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra
        	
clear_play_area:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	li $t0, BASE_ADDRESS
    	lw $t1, COLOUR_BG
    
    	# x=4-43, y=0-59
    	li $t2, 0          # y counter
clear_area_y:
    	bge $t2, 60, clear_area_complete
    	li $t3, 4          # x counter
    
clear_area_x:
    	bge $t3, 44, next_clear_y

    	sll $t4, $t2, 6    # y * 64
    	add $t4, $t4, $t3  # + x
    	sll $t4, $t4, 2    # * 4
    	add $t4, $t0, $t4  # + base

    	sw $t1, 0($t4)     # clear pixel

    	addi $t3, $t3, 1
    	j clear_area_x
    
next_clear_y:
    	addi $t2, $t2, 1
    	j clear_area_y
    
clear_area_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

redraw_grid:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t3, COLOUR_GRID
    	li $t2, 0
    
redraw_grid_y:
    	bge $t2, 15, redraw_grid_complete
    	li $t4, 0
    
redraw_grid_x:
    	bge $t4, 10, next_redraw_grid_y
    
        #grid dot position
    	sll $t5, $t2, 2    # y * 4
    	sll $t6, $t4, 2    # x * 4
    	addi $t6, $t6, 4   # left 
    
    	add $t7, $t5, 3    # y + 3
    	add $t8, $t6, 3    # x + 3
    
    	sll $t9, $t7, 6
    	add $t9, $t9, $t8
    	sll $t9, $t9, 2
    	li $t0, BASE_ADDRESS
    	add $t9, $t0, $t9
    
    	sw $t3, 0($t9)
    
    	addi $t4, $t4, 1
    	j redraw_grid_x
    
next_redraw_grid_y:
    	addi $t2, $t2, 1
    	j redraw_grid_y

redraw_grid_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

draw_ui_panel:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	li $t0, BASE_ADDRESS
    	lw $t1, UI_PANEL_COLOUR
    
    	# \x=40-63, y=0-63
    	li $t2, 0
    
	draw_panel_y_loop:
        	bge $t2, 64, draw_panel_complete
        	li $t3, 48
        
    draw_panel_x_loop:
           	bge $t3, 64, next_panel_row
            
            sll $t4, $t2, 6    # y * 64
            add $t4, $t4, $t3  # + x
            sll $t4, $t4, 2    # * 4
            add $t4, $t0, $t4  # + base
            
            sw $t1, 0($t4)
            
            addi $t3, $t3, 1
            j draw_panel_x_loop
            
    next_panel_row:
        	addi $t2, $t2, 1
            j draw_panel_y_loop
    
    draw_panel_complete:
        	lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra
init_digit:
    jr $ra

draw_title:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	li $t0, BASE_ADDRESS

		# 'TET' on the 1st line, 'RIS' on the 2rd line due to limit UI panel space
		# TET at y=2, x=50-58
		# T - red @(2,50)
    	lw $t1, TITLE_COLOUR_1

    	li $t2, 2
    	sll $t3, $t2, 6    # y * 64
    	addi $t4, $t3, 50  # + x
    	sll $t4, $t4, 2    # * 4
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (2,50)
    	sw $t1, 4($t5)     # (2,51)
    	sw $t1, 8($t5)     # (2,52)
    	
    	li $t2, 3
    	sll $t3, $t2, 6
    	addi $t4, $t3, 51
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (3,51)
    	
    	li $t2, 4
    	sll $t3, $t2, 6
    	addi $t4, $t3, 51
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (4,51)
    	
    	# E - orange @(2,54)
    	lw $t1, TITLE_COLOUR_2
    	
    	li $t2, 2
    	sll $t3, $t2, 6
    	addi $t4, $t3, 54
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (2,54)
    	sw $t1, 4($t5)     # (2,55)
    	sw $t1, 8($t5)     # (2,56)
    	
    	li $t2, 3
    	sll $t3, $t2, 6
    	addi $t4, $t3, 54
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (3,54)
    	sw $t1, 4($t5)     # (3,55)
    	
    	li $t2, 4
    	sll $t3, $t2, 6
    	addi $t4, $t3, 54
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (4,54)
    	sw $t1, 4($t5)     # (4,55)
    	sw $t1, 8($t5)     # (4,56)
    	
    	# T - yellow @(2, 58)
    	lw $t1, TITLE_COLOUR_3
    	
    	li $t2, 2
    	sll $t3, $t2, 6
    	addi $t4, $t3, 58
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (2,58)
    	sw $t1, 4($t5)     # (2,59)
    	sw $t1, 8($t5)     # (2,60)
    	
    	li $t2, 3
    	sll $t3, $t2, 6
    	addi $t4, $t3, 59
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (3,59)
    	
    	li $t2, 4
    	sll $t3, $t2, 6
    	addi $t4, $t3, 59
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (4,59)
    	
    	# 2rd line: RIS at y=6, x=50-60
    	
    	# R - Green @(6,50)
    	lw $t1, TITLE_COLOUR_4

    	li $t2, 6
    	sll $t3, $t2, 6
    	addi $t4, $t3, 50
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (6,50)
    	sw $t1, 4($t5)     # (6,51)
    	sw $t1, 8($t5)     # (6,52)
    	
    	li $t2, 7
    	sll $t3, $t2, 6
    	addi $t4, $t3, 50
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (7,50)
    	sw $t1, 4($t5)     # (7,51)
    	
    	addi $t4, $t3, 52
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (7,52)
    	
    	li $t2, 8
    	sll $t3, $t2, 6
    	addi $t4, $t3, 50
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (8,50)
    	
    	addi $t4, $t3, 52
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (8,52)
    	
    	# I - blue @(6, 54)
    	lw $t1, TITLE_COLOUR_5
    	
    	li $t2, 6
    	sll $t3, $t2, 6
    	addi $t4, $t3, 54
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (6,54)
    	sw $t1, 4($t5)     # (6,55)
    	sw $t1, 8($t5)     # (6,56)
    	
    	li $t2, 7
    	sll $t3, $t2, 6
    	addi $t4, $t3, 55
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (7,55)
    	
    	li $t2, 8
    	sll $t3, $t2, 6
    	addi $t4, $t3, 54
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (8,54)
    	sw $t1, 4($t5)     # (8,55)
    	sw $t1, 8($t5)     # (8,56)
    	
    	# S - purple @(6, 58)
    	lw $t1, TITLE_COLOUR_6
    	
    	li $t2, 6
    	sll $t3, $t2, 6
    	addi $t4, $t3, 58
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (6,58)
    	sw $t1, 4($t5)     # (6,59)
    	sw $t1, 8($t5)     # (6,60)
    	
    	li $t2, 7
    	sll $t3, $t2, 6
    	addi $t4, $t3, 58
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (7,58)
    	sw $t1, 4($t5)     # (7,59)
    	sw $t1, 8($t5)     # (7,60)
    	
    	li $t2, 8
    	sll $t3, $t2, 6
    	addi $t4, $t3, 58
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)     # (8,58)
    	sw $t1, 4($t5)     # (8,59)
    	sw $t1, 8($t5)     # (8,60)
    	
    	draw_title_complete:
        	lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra


draw_score:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	# SCORE
    	li $t0, BASE_ADDRESS
    	lw $t1, TEXT_COLOR
    	
		li $t2, 34
		li $t3, 50
		
		sll $t4, $t2, 6
		add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	
    	addi $t6, $t2, 1
    	sll $t4, $t6, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	
    	addi $t6, $t2, 2
    	sll $t4, $t6, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	
    	addi $t6, $t2, 3
    	sll $t4, $t6, 6
    	addi $t7, $t3, 2
    	add $t4, $t4, $t7
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	
    	addi $t6, $t2, 4
    	sll $t4, $t6, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 4($t5)

draw_score_value:
    	# the value
    	lw $a0, total_score
    	li $a1, 50  #x
    	li $a2, 40  #y
    	jal draw_number_compact
    
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

draw_number_compact:
    	# $a0 = num to draw
    	# $a1 = x position
    	# $a2 = y position
    	addi $sp, $sp, -20
    	sw $ra, 0($sp)
    	sw $s0, 4($sp)
    	sw $s1, 8($sp)
    	sw $s2, 12($sp)
    	sw $s3, 16($sp)
    
    	move $s0, $a0  #num
    	move $s1, $a1  #x
    	move $s2, $a2  # y
    
		jal clear_score_area_compact

    	bne $s0, $zero, draw_nonzero_compact
    
    	# 0
    	li $a0, 0
    	move $a1, $s1
    	move $a2, $s2
    	jal draw_digit_compact
    	j draw_number_compact_done
    
draw_nonzero_compact:
    	li $t0, 0      # digit count
    	li $t1, 10     # divisor
    	move $t2, $s0  # number
    
count_digits_compact:
    	beq $t2, $zero, digits_counted_compact
    	div $t2, $t1
    	mflo $t2
    	addi $t0, $t0, 1
    	j count_digits_compact
    
digits_counted_compact:

    	move $s3, $t0
    	beq $s3, $zero, draw_number_compact_done
    
    	li $t0, 3
    	bgt $s3, $t0, use_max_digits
    	j continue_draw_compact
use_max_digits:
    	move $s3, $t0

continue_draw_compact:
    	li $t3, 1
    	addi $t4, $s3, -1
calc_divisor_compact:
    	beq $t4, $zero, draw_digits_loop_compact
	li $t5, 10
    	mul $t3, $t3, $t5
    	addi $t4, $t4, -1
    	j calc_divisor_compact
    
draw_digits_loop_compact:
    	beq $s3, $zero, draw_number_compact_done

    	div $s0, $t3
    	mflo $a0
    	mfhi $s0

    	move $a1, $s1
    	move $a2, $s2
    	jal draw_single_digit
    
    	addi $s1, $s1, 4  # 3 width + 1 space
    
    	# Update divisor
    	li $t1, 10
    	div $t3, $t1
    	mflo $t3
    
    	addi $s3, $s3, -1
    	j draw_digits_loop_compact
    
draw_number_compact_done:
    	lw $ra, 0($sp)
    	lw $s0, 4($sp)
    	lw $s1, 8($sp)
    	lw $s2, 12($sp)
    	lw $s3, 16($sp)
    	addi $sp, $sp, 20
    	jr $ra
draw_digit_compact:
    	# $a0 = digit (0-9)
    	# $a1 = x
    	# $a2 = y
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	
    	li $t0, BASE_ADDRESS
    	lw $t1, TEXT_COLOR
    
    	beq $a0, 0, draw_0_compact
    	beq $a0, 1, draw_1_compact
    	beq $a0, 2, draw_2_compact
    	beq $a0, 3, draw_3_compact
    	beq $a0, 4, draw_4_compact
   	beq $a0, 5, draw_5_compact
    	beq $a0, 6, draw_6_compact
    	beq $a0, 7, draw_7_compact
    	beq $a0, 8, draw_8_compact
    	beq $a0, 9, draw_9_compact
    	j draw_digit_compact_done
    
draw_0_compact:

    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	li $t4, 1
draw_0_loop:
    	bge $t4, 4, draw_0_bottom
    	add $t5, $a2, $t4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 8($t3)
    	addi $t4, $t4, 1
    	j draw_0_loop
draw_0_bottom:
    	addi $t5, $a2, 4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	j draw_digit_compact_done
    
draw_1_compact:
    	li $t4, 0
draw_1_loop:
    	bge $t4, 5, draw_digit_compact_done
    	add $t5, $a2, $t4
    	sll $t2, $t5, 6
    	addi $t6, $a1, 1
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	addi $t4, $t4, 1
    	j draw_1_loop
    
draw_2_compact:
    	# Top
    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	# Right
    	addi $t5, $a2, 1
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	# Middle
    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	# Left
    	addi $t5, $a2, 3
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	# Bottom
    	addi $t5, $a2, 4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	j draw_digit_compact_done
    
draw_3_compact:
    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    
    	addi $t5, $a2, 1
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    
    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    
    	addi $t5, $a2, 3
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)

    	addi $t5, $a2, 4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	j draw_digit_compact_done
    
draw_4_compact:
    	li $t4, 0
draw_4_left:
   	bge $t4, 3, draw_4_middle
    	add $t5, $a2, $t4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	addi $t4, $t4, 1
    	j draw_4_left
    
draw_4_middle:
    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

    	li $t4, 0
draw_4_right:
    	bge $t4, 5, draw_digit_compact_done
    	add $t5, $a2, $t4
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	addi $t4, $t4, 1
    	j draw_4_right
    
draw_5_compact:
    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

    	addi $t5, $a2, 1
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)

    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

    	addi $t5, $a2, 3
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)

    	addi $t5, $a2, 4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	j draw_digit_compact_done
    
draw_6_compact:
    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

    	li $t4, 1
draw_6_left:
    	bge $t4, 4, draw_6_middle
    	add $t5, $a2, $t4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	addi $t4, $t4, 1
    	j draw_6_left
    
draw_6_middle:
    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    
    	addi $t5, $a2, 3
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)

    	addi $t5, $a2, 4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	j draw_digit_compact_done
    
draw_7_compact:
    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

    	addi $t5, $a2, 1
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    
    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	addi $t6, $a1, 1
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)

    	li $t4, 3
draw_7_bottom:
    	bge $t4, 5, draw_digit_compact_done
    	add $t5, $a2, $t4
    	sll $t2, $t5, 6
   	addi $t6, $a1, 1
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	addi $t4, $t4, 1
    	j draw_7_bottom
    
draw_8_compact:
    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

    	addi $t5, $a2, 1
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 8($t3)

    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

    	addi $t5, $a2, 3
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 8($t3)
    
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	j draw_digit_compact_done
    
draw_9_compact:
    	sll $t2, $a2, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)

   	 addi $t5, $a2, 1
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 8($t3)

    	addi $t5, $a2, 2
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    
    	addi $t5, $a2, 3
    	sll $t2, $t5, 6
    	addi $t6, $a1, 2
    	add $t2, $t2, $t6
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)

    	addi $t5, $a2, 4
    	sll $t2, $t5, 6
    	add $t2, $t2, $a1
    	sll $t2, $t2, 2
    	add $t3, $t0, $t2
    	sw $t1, 0($t3)
    	sw $t1, 4($t3)
    	sw $t1, 8($t3)
    	
draw_digit_compact_done:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

clear_score_area_compact:
    # Clear
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    li $t0, BASE_ADDRESS
    lw $t1, UI_PANEL_COLOUR

    li $t2, 40  # y
clear_score_y_compact:
    bge $t2, 46, clear_score_done_compact
    li $t3, 50  # x
clear_score_x_compact:
    bge $t3, 64, next_clear_score_y_compact
    
    sll $t4, $t2, 6
    add $t4, $t4, $t3
    sll $t4, $t4, 2
    add $t4, $t0, $t4
    
    sw $t1, 0($t4)
    
    addi $t3, $t3, 1
    j clear_score_x_compact
    
next_clear_score_y_compact:
    addi $t2, $t2, 1
    j clear_score_y_compact
    
clear_score_done_compact:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

draw_number:
    j draw_number_compact

draw_single_digit:
    j draw_digit_compact
    
clear_score_area:
    j clear_score_area_compact

draw_next_piece_preview:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	# Clear
    	jal clear_preview_area
    	
    	lw $t0, NEXT_PIECE
    	
    	# white
    	li $t3, 0x00FFFFFF
    	
    	# Get shape
    	la $t4, piece_shapes
    	sll $t5, $t0, 8
    	add $t4, $t4, $t5

    	li $t0, BASE_ADDRESS
    	li $t1, 0x0000FFFF
    	li $t2, 20  # y
    	li $t3, 50  # x
    	
    	li $t5, 0
draw_next_label:
    	bge $t5, 8, draw_preview_background
    	
    	sll $t6, $t2, 6
    	add $t6, $t6, $t3
    	add $t6, $t6, $t5
    	sll $t6, $t6, 2
    	add $t6, $t0, $t6
    	
    	sw $t1, 0($t6)
    	
    	addi $t5, $t5, 1
    	j draw_next_label
    	
draw_preview_background:
    	li $t1, 0x00202020
    	li $t2, 23  # y
    	
preview_bg_y:
    	bge $t2, 32, draw_preview_piece
    	li $t5, 51  #x
    	
preview_bg_x:
    	bge $t5, 61, next_preview_bg_y
    	
    	sll $t6, $t2, 6
    	add $t6, $t6, $t5
    	sll $t6, $t6, 2
    	add $t6, $t0, $t6
    	
    	sw $t1, 0($t6)
    	
    	addi $t5, $t5, 1
    	j preview_bg_x
    	
next_preview_bg_y:
    	addi $t2, $t2, 1
    	j preview_bg_y
    	
draw_preview_piece:
    	li $t3, 0x00FFFFFF
    	
    	#  (52, 24)
    	li $t5, 0  # y offset
draw_preview_y:
    	bge $t5, 4, draw_preview_complete
    	li $t6, 0  # x offset
    	
draw_preview_x:
    	bge $t6, 4, next_preview_y
    	
    	# Get shape data
    	sll $t7, $t5, 2    # y * 4
    	add $t7, $t7, $t6  # + x
    	sll $t7, $t7, 2    # * 4
    	add $t7, $t4, $t7
    	lw $t8, 0($t7)
    	
    	beq $t8, $zero, skip_preview_pixel
    	
    	li $t9, 24
    	sll $s0, $t5, 1    # y * 2
    	add $t9, $t9, $s0
    	
    	li $s0, 53
    	sll $s1, $t6, 1    # x * 2
    	add $s0, $s0, $s1

    	li $s2, 0  # pixel y
draw_preview_block_y:
    	bge $s2, 2, skip_preview_pixel
    	li $s3, 0  # pixel x
    	
draw_preview_block_x:
    	bge $s3, 2, next_preview_block_y
    	
    	add $s4, $t9, $s2  # y
    	add $s5, $s0, $s3  # x
    	
    	sll $s6, $s4, 6
    	add $s6, $s6, $s5
    	sll $s6, $s6, 2
    	li $s7, BASE_ADDRESS
    	add $s6, $s7, $s6
    	
    	sw $t3, 0($s6)
    	
    	addi $s3, $s3, 1
    	j draw_preview_block_x
    	
next_preview_block_y:
    	addi $s2, $s2, 1
    	j draw_preview_block_y
    	
skip_preview_pixel:
    	addi $t6, $t6, 1
    	j draw_preview_x
    	
next_preview_y:
    	addi $t5, $t5, 1
    	j draw_preview_y

draw_preview_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

clear_preview_area:

    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    	
    	li $t0, BASE_ADDRESS
    	lw $t1, UI_PANEL_COLOUR
    	
    	#(y=23-32, x=51-61)
    	li $t2, 23
clear_preview_y_loop:
    	bge $t2, 32, clear_preview_done
    	li $t3, 51
    	
clear_preview_x_loop:
    	bge $t3, 61, next_clear_preview_y
    	
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t4, $t0, $t4
    	
    	sw $t1, 0($t4)
    	
    	addi $t3, $t3, 1
    	j clear_preview_x_loop
    	
next_clear_preview_y:
    	addi $t2, $t2, 1
    	j clear_preview_y_loop
    	
clear_preview_done:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

init_skull:
    	jr $ra

new_piece:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t0, NEXT_PIECE
    	sw $t0, CUR_TYPE
    
    	li $t0, 4
    	sw $t0, CUR_X
    	li $t0, 0
    	sw $t0, CUR_Y
    	sw $zero, CUR_ROTATION
    	
    	li $t0, -1
    	sw $t0, last_piece_x
    	sw $t0, last_piece_y
    	sw $t0, last_piece_rotation
    	
    	# check game over
    	li $a0, 0
    	li $a1, 0
    	lw $a2, CUR_ROTATION
    	jal check_collision
    
    	bne $v0, $zero, game_over_detected
    
    	# No collision,next piece
    	li $v0, 42
    	li $a0, 0
    	li $a1, 7
    	syscall
    	sw $a0, NEXT_PIECE
    	
    	li $t0, 1
		sw $t0, screen_needs_update
	sw $t0, ui_needs_update
    
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra
    	
game_over_detected:
    	li $t0, 1
    	sw $t0, game_over
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

draw_current_piece:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t0, CUR_TYPE
    	lw $t1, CUR_X
    	lw $t2, CUR_Y
    	lw $t3, CUR_ROTATION
    
    	# Getbcolor
    	la $t4, piece_colors
    	sll $t5, $t0, 2
    	add $t4, $t4, $t5
    	lw $t6, 0($t4)
    
    	# Get shape
    	la $t4, piece_shapes
    	sll $t5, $t0, 8    # type * 256
    	sll $t7, $t3, 6    # rotation * 64
    	add $t4, $t4, $t5
    	add $t4, $t4, $t7

    	li $t5, 0  # y offset
draw_piece_y:
    	bge $t5, 4, draw_piece_complete
    	li $t7, 0  # x offset
    
draw_piece_x:
    	bge $t7, 4, next_piece_y
    
    	# Get shape data
    	sll $t8, $t5, 2    # y * 4
    	add $t8, $t8, $t7  # + x
    	sll $t8, $t8, 2    # * 4
    	add $t8, $t4, $t8
    	lw $t9, 0($t8)
    
    	beq $t9, $zero, skip_piece_pixel
    
    	add $s0, $t2, $t5  # board y
    	add $s1, $t1, $t7  # board x

    	blt $s0, 0, skip_piece_pixel
    	bge $s0, 15, skip_piece_pixel
    	blt $s1, 0, skip_piece_pixel
    	bge $s1, 10, skip_piece_pixel

    	sll $s2, $s0, 2    # y * 4
    	sll $s3, $s1, 2    # x * 4
    	addi $s3, $s3, 4   # offset for left wall
    
    	li $s4, 0
draw_block_y:
    	bge $s4, 4, skip_piece_pixel
    li $s5, 0
    
draw_block_x:
    	bge $s5, 4, next_block_y

    	add $s6, $s2, $s4  # final y
    	add $s7, $s3, $s5  # final x
    
    	sll $t8, $s6, 6    # y * 64
    	add $t8, $t8, $s7  # + x
    	sll $t8, $t8, 2    # * 4
    	li $t9, BASE_ADDRESS
    	add $t8, $t9, $t8
    
    	sw $t6, 0($t8)
    
    	addi $s5, $s5, 1
    	j draw_block_x
    
next_block_y:
    	addi $s4, $s4, 1
    	j draw_block_y
    
skip_piece_pixel:
    	addi $t7, $t7, 1
    	j draw_piece_x
    
next_piece_y:
    	addi $t5, $t5, 1
    	j draw_piece_y
    
draw_piece_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra
clear_current_piece:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t0, CUR_TYPE
    	lw $t1, CUR_X
    	lw $t2, CUR_Y
    	lw $t3, CUR_ROTATION
    
    	lw $t6, COLOUR_BG
    
    	# Get piece shape
    	la $t4, piece_shapes
    	sll $t5, $t0, 8
    	sll $t7, $t3, 6
    	add $t4, $t4, $t5
    	add $t4, $t4, $t7
    
    	li $t5, 0  # y offset
clear_piece_y:
    	bge $t5, 4, clear_piece_complete
    	li $t7, 0  # x offset
    
clear_piece_x:
    	bge $t7, 4, clear_pieces_y
    
    	# Get shape data
    	sll $t8, $t5, 2
    	add $t8, $t8, $t7
    	sll $t8, $t8, 2
    	add $t8, $t4, $t8
    	lw $t9, 0($t8)
    
    	beq $t9, $zero, skip_clear_pixel

    	add $s0, $t2, $t5  # board y
    	add $s1, $t1, $t7  # board x

    	blt $s0, 0, skip_clear_pixel
    	bge $s0, 15, skip_clear_pixel
    	blt $s1, 0, skip_clear_pixel
    	bge $s1, 10, skip_clear_pixel
    
    	sll $s2, $s0, 2    # y * 4
    	sll $s3, $s1, 2    # x * 4
    	addi $s3, $s3, 4   # offset for left wall
    
    	# Clear 4x4 pixel block
    	li $s4, 0
clear_block_y:
    	bge $s4, 4, skip_clear_pixel
    	li $s5, 0
    
clear_block_x:
    	bge $s5, 4, next_clear_block_y
    
    	add $s6, $s2, $s4
    	add $s7, $s3, $s5

    	blt $s7, 4, skip_this_clear_pixel
    	bge $s7, 44, skip_this_clear_pixel
    	blt $s6, 0, skip_this_clear_pixel
    	bge $s6, 60, skip_this_clear_pixel
    
    	sll $t8, $s6, 6
    	add $t8, $t8, $s7
    	sll $t8, $t8, 2
    	li $t9, BASE_ADDRESS
    	add $t8, $t9, $t8
    
    	andi $t9, $s4, 3
    	bne $t9, 3, not_grid_dot_clear
    	andi $t9, $s5, 3
    	bne $t9, 3, not_grid_dot_clear
    	lw $t6, COLOUR_GRID
    	j do_clear_pixel
    
not_grid_dot_clear:
    	lw $t6, COLOUR_BG
    
do_clear_pixel:
    	sw $t6, 0($t8)
    
skip_this_clear_pixel:
    	addi $s5, $s5, 1
    	j clear_block_x
    
next_clear_block_y:
    	addi $s4, $s4, 1
    	j clear_block_y
    
skip_clear_pixel:
    	addi $t7, $t7, 1
    	j clear_piece_x
    
clear_pieces_y:
    	addi $t5, $t5, 1
    	j clear_piece_y
    
clear_piece_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra
check_collision:
    	# $a0 = x offset, $a1 = y offset, $a2 = rotation
    	# $v0 = 1 collision, 0 no collision
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t0, CUR_TYPE
    	lw $t1, CUR_X
    	lw $t2, CUR_Y
    
    	add $t1, $t1, $a0  # new x
    	add $t2, $t2, $a1  # new y
    	move $t3, $a2      # new rotation
    
    	# Get piece shape
    	la $t4, piece_shapes
    	sll $t5, $t0, 8
    	sll $t7, $t3, 6
    	add $t4, $t4, $t5
    	add $t4, $t4, $t7
    
    	li $v0, 0  # assume no collision
    
    	li $t5, 0
check_collision_y:
    	bge $t5, 4, check_collision_complete
    	li $t7, 0
    
check_collision_x:
    	bge $t7, 4, next_collision_y
    
    	# Get shape data
    	sll $t8, $t5, 2
    	add $t8, $t8, $t7
    	sll $t8, $t8, 2
    	add $t8, $t4, $t8
    	lw $t9, 0($t8)
    
    	beq $t9, $zero, skip_collision_check
    
    	add $s0, $t2, $t5  # actual y
    	add $s1, $t1, $t7  # actual x

    	# Left bd
    	blt $s1, 0, collision_detected
    
    	# Right
    	li $t9, 10
    	bge $s1, $t9, collision_detected
    
    	# Bottom
    	li $t9, 15
    	bge $s0, $t9, collision_detected
    
    	# Top
    	blt $s0, 0, skip_collision_check
    
    	# Check board collision
    	la $s2, BRD
    	sll $s3, $s0, 5    # y * 32
    	sll $s4, $s0, 3    # y * 8
    	add $s3, $s3, $s4  # y * 40
    	sll $s4, $s1, 2    # x * 4
    	add $s2, $s2, $s3
    	add $s2, $s2, $s4
    	lw $s5, 0($s2)
    
    	bne $s5, $zero, collision_detected
    
skip_collision_check:
    	addi $t7, $t7, 1
    	j check_collision_x
    
next_collision_y:
   		addi $t5, $t5, 1
    	j check_collision_y
    
collision_detected:
    	li $v0, 1
    
check_collision_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra
move_piece_left:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t0, CUR_X
    	lw $t1, CUR_Y
    	lw $t2, CUR_ROTATION
    	sw $t0, last_piece_x
    	sw $t1, last_piece_y
    	sw $t2, last_piece_rotation

    	li $a0, -1
    	li $a1, 0
    	lw $a2, CUR_ROTATION
    	jal check_collision
    
    	bne $v0, $zero, move_left_blocked
    
    	# Move left
    	lw $t0, CUR_X
    	addi $t0, $t0, -1
    	sw $t0, CUR_X
    
    	li $t1, 1
    	sw $t1, screen_needs_update
    
move_left_blocked:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

move_piece_right:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)

    	lw $t0, CUR_X
    	lw $t1, CUR_Y
    	lw $t2, CUR_ROTATION
    	sw $t0, last_piece_x
    	sw $t1, last_piece_y
    	sw $t2, last_piece_rotation
    
    	li $a0, 1
    	li $a1, 0
    	lw $a2, CUR_ROTATION
    	jal check_collision
    
    	bne $v0, $zero, move_right_blocked
    
    	lw $t0, CUR_X
    	addi $t0, $t0, 1
    	sw $t0, CUR_X
    
    	li $t1, 1
    	sw $t1, screen_needs_update
    
move_right_blocked:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

move_piece_down:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t0, CUR_X
    	lw $t1, CUR_Y
    	lw $t2, CUR_ROTATION
    	sw $t0, last_piece_x
    	sw $t1, last_piece_y
    	sw $t2, last_piece_rotation
    
    	li $a0, 0
    	li $a1, 1
    	lw $a2, CUR_ROTATION
    	jal check_collision

    	bne $v0, $zero, piece_landed
    
    	# No collision, move piece down
    	lw $t0, CUR_Y
    	addi $t0, $t0, 1
    	sw $t0, CUR_Y
    
    	li $t1, 1
    	sw $t1, screen_needs_update

    	j move_down_complete

piece_landed:
    	jal lock_piece
    	jal check_lines
    	jal new_piece
    
    	#if game over
    	lw $t0, game_over
    	bne $t0, $zero, move_down_complete

    	li $t1, 1
    	sw $t1, screen_needs_update
    	sw $t1, ui_needs_update
    
move_down_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

rotate_piece:
   	addi $sp, $sp, -4
	sw $ra, 0($sp)

    	lw $s0, CUR_X
    	lw $s1, CUR_Y
    	lw $s2, CUR_ROTATION

    	sw $s0, last_piece_x
    	sw $s1, last_piece_y
    	sw $s2, last_piece_rotation

    	addi $t0, $s2, 1
    	andi $t0, $t0, 3

    	sw $t0, CUR_ROTATION

    	li $a0, 0
    	li $a1, 0
    	move $a2, $t0
    	jal check_collision
    
    	beq $v0, $zero, rotation_successful
    
    	# wall kicks
    	li $t1, -1
    	add $t1, $s0, $t1
    	sw $t1, CUR_X
    	li $a0, 0
    	li $a1, 0
    	move $a2, $t0
    	jal check_collision
    	beq $v0, $zero, rotation_successful
    
    	li $t1, 1
    	add $t1, $s0, $t1
    	sw $t1, CUR_X
    	li $a0, 0
    	li $a1, 0
    	move $a2, $t0
    	jal check_collision
    	beq $v0, $zero, rotation_successful
    
    	sw $s0, CUR_X      # Restore X
    	li $t1, -1
    	add $t1, $s1, $t1
    	sw $t1, CUR_Y
    	li $a0, 0
    	li $a1, 0
    	move $a2, $t0
    	jal check_collision
    	beq $v0, $zero, rotation_successful
    
    	# Special I wall kicks
    	lw $t1, CUR_TYPE
    	bne $t1, 0, rotation_failed
    
    	sw $s1, CUR_Y      # Restore Y

    	li $t1, -2
    	add $t1, $s0, $t1
    	sw $t1, CUR_X
    	li $a0, 0
    	li $a1, 0
    	move $a2, $t0
    	jal check_collision
    	beq $v0, $zero, rotation_successful
   
    	li $t1, 2
    	add $t1, $s0, $t1
    	sw $t1, CUR_X
    	li $a0, 0
    	li $a1, 0
    	move $a2, $t0
    	jal check_collision
    	beq $v0, $zero, rotation_successful
    
rotation_failed:
    	sw $s0, CUR_X
    	sw $s1, CUR_Y
    	sw $s2, CUR_ROTATION
    	j rotate_complete
    
rotation_successful:
    	li $t1, 1
    	sw $t1, screen_needs_update
    
rotate_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

lock_piece:
    	addi $sp, $sp, -4
 		sw $ra, 0($sp)
    
    	lw $t0, CUR_TYPE
    	lw $t1, CUR_X
    	lw $t2, CUR_Y
    	lw $t3, CUR_ROTATION
    
    	# Get color
    	la $t4, piece_colors
    	sll $t5, $t0, 2
    	add $t4, $t4, $t5
    	lw $t6, 0($t4)
    
    	# Get shape
    	la $t4, piece_shapes
    	sll $t5, $t0, 8
    	sll $t7, $t3, 6
    	add $t4, $t4, $t5
    	add $t4, $t4, $t7
    
    	# Lock
    	li $t5, 0  # y offset
lock_piece_y:
    	bge $t5, 4, lock_piece_complete
    	li $t7, 0  # x offset
    
lock_piece_x:
    	bge $t7, 4, next_lock_y
    
    	# Get shape data
    	sll $t8, $t5, 2    # y * 4
    	add $t8, $t8, $t7  # + x
    	sll $t8, $t8, 2    # * 4
    	add $t8, $t4, $t8
    	lw $t9, 0($t8)
    
    	beq $t9, $zero, skip_lock_pixel
    
    	add $s0, $t2, $t5
    	add $s1, $t1, $t7
    
    	blt $s0, 0, skip_lock_pixel
    	li $s2, 15
    	bge $s0, $s2, skip_lock_pixel
    	blt $s1, 0, skip_lock_pixel
    	li $s2, 10
    	bge $s1, $s2, skip_lock_pixel
    
    	#board_offset = y * 10 * 4 + x * 4 = y * 40 + x * 4
    	la $s2, BRD
    	sll $s3, $s0, 5    # y * 32
    	sll $s4, $s0, 3    # y * 8
    	add $s3, $s3, $s4  # y * 40
    	sll $s4, $s1, 2    # x * 4
    	add $s2, $s2, $s3  # Add y offset
    	add $s2, $s2, $s4  # Add x offset

    	sw $t6, 0($s2)
    
skip_lock_pixel:
    	addi $t7, $t7, 1
    	j lock_piece_x
    
next_lock_y:
    	addi $t5, $t5, 1
    	j lock_piece_y
    
lock_piece_complete:
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

check_lines:
    	addi $sp, $sp, -12
    	sw $ra, 0($sp)
    	sw $s0, 4($sp)
    	sw $s1, 8($sp)
    
    	li $s0, 0
    	li $s1, 14
check_lines_loop:
    	blt $s1, 0, check_lines_complete
    
    	# Check if line is full
    	la $t1, BRD
    	sll $t2, $s1, 5     # y * 32
    	sll $t3, $s1, 3     # y * 8
    	add $t2, $t2, $t3   # y * 40
    	add $t1, $t1, $t2   # Address of the line to check
    
    	li $t3, 0           # colncounter
    	li $t4, 1           # assume full
    
check_line_full:
    	bge $t3, 10, line_check_done
    
    	sll $t5, $t3, 2     # col * 4
    	add $t5, $t1, $t5   # address of cell
    	lw $t6, 0($t5)      # load cell value
    
    	beq $t6, $zero, line_not_full
    
    	addi $t3, $t3, 1
    	j check_line_full
    
line_not_full:
    	li $t4, 0
    
line_check_done:
    	beq $t4, $zero, next_line_check
    
    	#ful
    	move $a0, $s1
    	jal clear_and_drop_line
    
    	# Update score
    	lw $t7, total_score
    	addi $t7, $t7, 100
    	sw $t7, total_score

    	addi $s0, $s0, 1

    	li $t8, 1
    	sw $t8, screen_needs_update
    	sw $t8, ui_needs_update

    	j check_lines_loop
    
next_line_check:
    	addi $s1, $s1, -1
    	j check_lines_loop
    
check_lines_complete:
    	beq $s0, $zero, no_lines_cleared
    	jal redraw_screen
    
no_lines_cleared:
    	lw $ra, 0($sp)
    	lw $s0, 4($sp)
    	lw $s1, 8($sp)
    	addi $sp, $sp, 12
    	jr $ra

clear_and_drop_line:
    	# $a0 = line#
    	addi $sp, $sp, -8
    	sw $ra, 0($sp)
    	sw $s0, 4($sp)      # 保存 s0
    
    	move $s0, $a0

    	blt $s0, 0, drop_done_error
    	bge $s0, 15, drop_done_error

    	la $t1, BRD
    	sll $t2, $s0, 5     # y * 32
    	sll $t3, $s0, 3     # y * 8
    	add $t2, $t2, $t3   # y * 40
    	add $t1, $t1, $t2

    	li $t3, 0
clear_full_line:
    	bge $t3, 10, start_dropping
    	sll $t4, $t3, 2
    	add $t4, $t1, $t4
    	sw $zero, 0($t4)
    	addi $t3, $t3, 1
    	j clear_full_line
    
start_dropping:

    	move $t1, $s0
    
drop_loop:
    	beq $t1, $zero, clear_top_row
    
    	addi $t2, $t1, -1
    
    	la $t3, BRD

    	sll $t4, $t2, 5     #y * 32
    	sll $t5, $t2, 3     #y * 8
    	add $t4, $t4, $t5   #y * 40
    	add $t6, $t3, $t4

    	sll $t4, $t1, 5
    	sll $t5, $t1, 3
    	add $t4, $t4, $t5
    	add $t7, $t3, $t4

    	li $t8, 0
copy_cells:
    	bge $t8, 10, next_drop_line
    
    	sll $t9, $t8, 2
    	add $t4, $t6, $t9
    	add $t5, $t7, $t9
    
    	lw $t3, 0($t4)
    	sw $t3, 0($t5)
    
    	addi $t8, $t8, 1
    	j copy_cells
    
next_drop_line:
    	addi $t1, $t1, -1
    	j drop_loop
    
clear_top_row:

    	la $t3, BRD
    	li $t8, 0
    
clear_top_cells:
    	bge $t8, 10, drop_done
    
    	sll $t9, $t8, 2
    	add $t4, $t3, $t9
    	sw $zero, 0($t4)
    
    	addi $t8, $t8, 1
    	j clear_top_cells
    
drop_done_error:    
drop_done:
    	lw $ra, 0($sp)
    	lw $s0, 4($sp)
    	addi $sp, $sp, 8
    	jr $ra
update_drop:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    	
    	lw $t0, drop_counter
    	addi $t0, $t0, 1
    	sw $t0, drop_counter
    	
    	lw $t1, drop_speed
    	blt $t0, $t1, update_drop_complete

    	# Reset counter and drop piece
    	sw $zero, drop_counter
    	jal move_piece_down


    	update_drop_complete:
        	lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra

redraw_screen:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)

    	jal clear_play_area
    	jal redraw_grid
    	jal draw_board
    	jal draw_current_piece
    	jal draw_next_piece_preview
    	jal draw_score
    	
    	sw $zero, screen_needs_update
    	sw $zero, ui_needs_update
    
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra
    	
redraw:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	lw $t0, last_piece_x
    	li $t1, -1
    	beq $t0, $t1, skip_clear_old
    
    	lw $t0, last_piece_x
    	lw $t1, last_piece_y  
    	lw $t2, last_piece_rotation
    	lw $t3, CUR_TYPE

    	la $t4, piece_shapes
    	sll $t5, $t3, 8    # type * 256
    	sll $t6, $t2, 6    # rotation * 64
    	add $t4, $t4, $t5
    	add $t4, $t4, $t6

    	li $t5, 0  # y offset
clear_old_y:
    	bge $t5, 4, skip_clear_old
    	li $t6, 0  # x offset
    
clear_old_x:
    	bge $t6, 4, next_clear_old_y
    
    	# Get shape data
    	sll $t8, $t5, 2
    	add $t8, $t8, $t6
    	sll $t8, $t8, 2
    	add $t8, $t4, $t8
    	lw $t9, 0($t8)
	
    	beq $t9, $zero, skip_clear_old_block

    	add $s0, $t1, $t5
    	add $s1, $t0, $t6 

    	blt $s0, 0, skip_clear_old_block
    	bge $s0, 15, skip_clear_old_block
    	blt $s1, 0, skip_clear_old_block
    	bge $s1, 10, skip_clear_old_block
	

    	la $s2, BRD
    	sll $s3, $s0, 5    # y * 32
    	sll $s4, $s0, 3    # y * 8
    	add $s3, $s3, $s4  # y * 40
    	sll $s4, $s1, 2    # x * 4
    	add $s2, $s2, $s3
    	add $s2, $s2, $s4
    	lw $s5, 0($s2)
	
    	#pixel position
    	sll $s2, $s0, 2
    	sll $s3, $s1, 2
    	addi $s3, $s3, 4
	

    	li $s4, 0 
clear_pixel_y_loop:
    	bge $s4, 4, skip_clear_old_block
    	li $s6, 0
    
clear_pixel_x_loop:
    	bge $s6, 4, next_clear_pixel_y
    
    	add $t7, $s2, $s4
    	add $t8, $s3, $s6  #x
    
    	blt $t8, 4, skip_this_pixel
    	bge $t8, 44, skip_this_pixel
    	blt $t7, 0, skip_this_pixel
    	bge $t7, 60, skip_this_pixel
	
    	bne $s5, $zero, use_board_color
    

    	andi $t9, $s4, 3
    	bne $t9, 3, use_bg_color
    	andi $t9, $s6, 3
    	bne $t9, 3, use_bg_color
    	lw $t9, COLOUR_GRID
    	j draw_clear_pixel
    
use_bg_color:
    	lw $t9, COLOUR_BG
    	j draw_clear_pixel
    
use_board_color:
    	move $t9, $s5
    
draw_clear_pixel:

    	sll $s7, $t7, 6    # y * 64
    	add $s7, $s7, $t8  # + x
    	sll $s7, $s7, 2    # * 4
    	li $t7, BASE_ADDRESS
    	add $s7, $t7, $s7
    
    	sw $t9, 0($s7)
    
skip_this_pixel:
    	addi $s6, $s6, 1
    	j clear_pixel_x_loop
    
next_clear_pixel_y:
    	addi $s4, $s4, 1
    	j clear_pixel_y_loop
    
skip_clear_old_block:
    	addi $t6, $t6, 1
    	j clear_old_x
    
next_clear_old_y:
    	addi $t5, $t5, 1
    	j clear_old_y
    
skip_clear_old:
    	jal draw_current_piece

    	lw $t0, ui_needs_update
    	beq $t0, $zero, skip_ui_update
    	jal draw_score
    	jal draw_next_piece_preview
    	sw $zero, ui_needs_update
    
skip_ui_update:
    	lw $t0, CUR_X
    	lw $t1, CUR_Y
    	lw $t2, CUR_ROTATION
    	sw $t0, last_piece_x
    	sw $t1, last_piece_y
    	sw $t2, last_piece_rotation
    
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra
clear_piece_area:
    	jr $ra

draw_board:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	la $t0, BRD
    	li $t1, 0  # row counter
    
    	draw_board_row:
        	bge $t1, 15, draw_board_complete
        	li $t2, 0  # col counter
        
        draw_board_col:
            	bge $t2, 10, next_board_row
            
            	# Get board value
            	sll $t3, $t1, 5
            	sll $t4, $t1, 3
            	add $t3, $t3, $t4
            	sll $t4, $t2, 2
            	add $t3, $t3, $t4
            	add $t3, $t0, $t3
            	lw $t5, 0($t3)
            
            	beq $t5, $zero, skip_board_pixel
            
            	# Draw 4x4 block
            	sll $t6, $t1, 2
            	sll $t7, $t2, 2
            	addi $t7, $t7, 4 
            
            	li $t8, 0  # pixel y
        draw_board_block_y:
                bge $t8, 4, skip_board_pixel
                li $t9, 0  # pixel x
                
        draw_board_block_x:
                bge $t9, 4, next_board_block_y
                    
                add $s0, $t6, $t8
                add $s1, $t7, $t9
                    
                sll $s2, $s0, 6
                add $s2, $s2, $s1
                sll $s2, $s2, 2
                li $s3, BASE_ADDRESS
                add $s2, $s3, $s2
                    
                sw $t5, 0($s2)
                    
                addi $t9, $t9, 1
                j draw_board_block_x
                    
        next_board_block_y:
                addi $t8, $t8, 1
                j draw_board_block_y
            
        skip_board_pixel:
                addi $t2, $t2, 1
                j draw_board_col
                
        next_board_row:
            	addi $t1, $t1, 1
            	j draw_board_row
    
draw_board_complete:
        	lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra

check_keyboard_input:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)

    	li $t0, KEYBOARD_ADDRESS
    	lw $t1, 0($t0)

    
    	beq $t1, 1, process_key_input
    	j input_check_complete
    
    	process_key_input:

        	lw $t2, 4($t0)

        	# W- rotate
        	beq $t2, 0x77, do_rotate
        	# A- move left  
        	beq $t2, 0x61, do_move_left
        	# S- move down
        	beq $t2, 0x73, do_move_down
        	# D - move right
        	beq $t2, 0x64, do_move_right
        	# P- pause
        	beq $t2, 0x70, do_pause
        	# Q- quit
        	beq $t2, 0x71, do_quit
        	# R- restart
        	beq $t2, 0x72, do_restart
        
        	j input_check_complete
        
   do_rotate:
        jal rotate_piece
        j input_check_complete
        
    do_move_left:
        jal move_piece_left
        j input_check_complete
        
    do_move_down:
        jal move_piece_down
        j input_check_complete
        
    do_move_right:
        jal move_piece_right
        j input_check_complete
        
    do_pause:
        lw $t3, game_paused
        xori $t3, $t3, 1
        sw $t3, game_paused
        j input_check_complete
        
    do_quit:
        li $v0, 10
        syscall
        
    do_restart:
        lw $t3, game_over
        beq $t3, 0, input_check_complete
        jal restart_game
        j input_check_complete
    
    input_check_complete:
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra

check_pause_input:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	li $t0, KEYBOARD_ADDRESS
    	lw $t1, 0($t0)
    	beq $t1, 1, process_pause_key
    	j pause_input_complete
    
    	process_pause_key:
        	lw $t2, 4($t0)
        	beq $t2, 0x70, resume_game
        	beq $t2, 0x71, do_quit
        	j pause_input_complete
        
    	resume_game:
        	sw $zero, game_paused
        
    	pause_input_complete:
       		lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra

check_restart_input:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	li $t0, KEYBOARD_ADDRESS
    	lw $t1, 0($t0)
    	beq $t1, 1, process_restart_key
    	j restart_input_complete
    
    	process_restart_key:
        	lw $t2, 4($t0)
        	beq $t2, 0x72, do_restart_action  # R 
        	beq $t2, 0x71, do_quit            # Q 
        	j restart_input_complete
        	
    	do_restart_action:
        	jal restart_game
        	j restart_input_complete
        	
    	restart_input_complete:
        	lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra

restart_game:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	sw $zero, game_over
    	sw $zero, game_paused
    	sw $zero, total_score
    	sw $zero, lines_cleared
    	sw $zero, drop_counter
    	    
    	li $t0, 30
    	sw $t0, drop_speed
    	
    	li $t0, -1
    	sw $t0, last_piece_x
    	sw $t0, last_piece_y
    	sw $t0, last_piece_rotation
    
    	jal init_brd
    	jal draw_bg
    	jal draw_ui_panel
    	jal draw_title
    	jal new_piece
    	jal redraw_screen
    	
    	li $t0, 1
		sw $t0, screen_needs_update
		sw $t0, ui_needs_update
    
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

draw_pause_message:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	li $t0, BASE_ADDRESS
    	lw $t1, TEXT_COLOR
    
    	li $t2, 28  # y
    	
    	# P x=12
    	li $t3, 12
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	
    	li $t6, 1
draw_pause_p:
    	bge $t6, 4, draw_pause_a
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	beq $t6, 1, draw_pause_p_right
    	beq $t6, 2, draw_pause_p_middle
    	j next_pause_p
draw_pause_p_right:
    	sw $t1, 8($t5)
    	j next_pause_p
draw_pause_p_middle:
    	sw $t1, 4($t5)
next_pause_p:
    	addi $t6, $t6, 1
    	j draw_pause_p
    	
draw_pause_a:
    	# A at x=16
    	li $t3, 16
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 4($t5)
    	
    	li $t6, 1
draw_pause_a_shape:
    	bge $t6, 4, draw_pause_u
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 8($t5)
    	beq $t6, 2, draw_pause_a_middle
    	j next_pause_a
draw_pause_a_middle:
    	sw $t1, 4($t5)
next_pause_a:
    	addi $t6, $t6, 1
    	j draw_pause_a_shape
    	
draw_pause_u:
    	# U at x=20
    	li $t3, 20
    	li $t6, 0
draw_pause_u_shape:
    	bge $t6, 3, draw_pause_u_bottom
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 8($t5)
    	addi $t6, $t6, 1
    	j draw_pause_u_shape
    	
draw_pause_u_bottom:
    	addi $t7, $t2, 3
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
    	
draw_pause_s:
    	# S at x=24
    	li $t3, 24
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	
    	addi $t7, $t2, 1
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	
    	addi $t7, $t2, 2
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	
    	addi $t7, $t2, 3
    	sll $t4, $t7, 6
    	addi $t8, $t3, 2
    	add $t4, $t4, $t8
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 4($t5)
    	
draw_pause_e:
    	# E at x=28
    	li $t3, 28
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	
    	li $t6, 1
draw_pause_e_shape:
    	bge $t6, 4, draw_pause_d
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	beq $t6, 2, draw_pause_e_middle
    	beq $t6, 3, draw_pause_e_bottom
    	j next_pause_e
draw_pause_e_middle:
    	sw $t1, 4($t5)
    	j next_pause_e
draw_pause_e_bottom:
    	sw $t1, 4($t5)
next_pause_e:
    	addi $t6, $t6, 1
    	j draw_pause_e_shape
    	
draw_pause_d:
    	# D at x=32
    	li $t3, 32
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	
    	li $t6, 1
draw_pause_d_shape:
    	bge $t6, 3, draw_pause_d_bottom
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 8($t5)
    	addi $t6, $t6, 1
    	j draw_pause_d_shape
    	
draw_pause_d_bottom:
    	addi $t7, $t2, 3
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    
    pause_message_complete:
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra

draw_game_over_screen:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	# Clear play area
    	jal clear_play_area
    	
    	li $t0, BASE_ADDRESS
    	
    	lw $t1, GAME_OVER_COLOUR
    	li $t2, 15  # y
    	li $t3, 10  # x
    	
    	# G
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
    	
    	li $t6, 1
draw_g_vert:
    	bge $t6, 4, draw_a
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	
    	# Right G
    	beq $t6, 2, skip_g_right
    	beq $t6, 3, draw_g_bottom
    	j next_g_vert
draw_g_bottom:
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
skip_g_right:
    	addi $t8, $t3, 2
    	sll $t4, $t7, 6
    	add $t4, $t4, $t8
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
next_g_vert:
    	addi $t6, $t6, 1
    	j draw_g_vert
    	
draw_a:
    	# A at x=14
    	li $t3, 14
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 4($t5)
    	
    	li $t6, 1
draw_a_shape:
    	bge $t6, 4, draw_m
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 8($t5)
    	beq $t6, 2, draw_a_middle
    	j next_a_vert
draw_a_middle:
    	sw $t1, 4($t5)
next_a_vert:
    	addi $t6, $t6, 1
    	j draw_a_shape
    	
draw_m:
    	# M at x=18
    	li $t3, 18
    	li $t6, 0
draw_m_shape:
    	bge $t6, 4, draw_e
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 12($t5)
    	bne $t6, 1, next_m_vert
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
next_m_vert:
    	addi $t6, $t6, 1
    	j draw_m_shape
    	
    	
draw_e:
    	# E at x=23
    	li $t3, 23
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
    	
    	li $t6, 1
draw_e_shape:
    	bge $t6, 4, draw_over_word
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	beq $t6, 2, draw_e_middle
    	beq $t6, 3, draw_e_bottom
    	j next_e_vert
draw_e_middle:
    	sw $t1, 4($t5)
    	j next_e_vert
draw_e_bottom:
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
next_e_vert:
    	addi $t6, $t6, 1
    	j draw_e_shape
    	
draw_over_word:
    	# OVER
    	li $t2, 21  # y position
    	
    	# O at x=10
    	li $t3, 10
    	li $t6, 0
draw_o_shape:
    	bge $t6, 4, draw_v
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	
    	beq $t6, 0, draw_o_top
    	beq $t6, 3, draw_o_bottom

    	sw $t1, 0($t5)
    	sw $t1, 8($t5)
    	j next_o_vert
draw_o_top:
draw_o_bottom:
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
next_o_vert:
    	addi $t6, $t6, 1
    	j draw_o_shape
    	
draw_v:
    	# V at x=14
    	li $t3, 14
    	li $t6, 0
draw_v_shape:
    	bge $t6, 3, draw_e2
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 8($t5)
    	addi $t6, $t6, 1
    	j draw_v_shape

    	addi $t7, $t2, 3
    	sll $t4, $t7, 6
    	addi $t8, $t3, 1
    	add $t4, $t4, $t8
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	
draw_e2:
    	# E at x=18
    	li $t3, 18
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
    	
    	li $t6, 1
draw_e2_shape:
    	bge $t6, 4, draw_r2
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	beq $t6, 2, draw_e2_middle
    	beq $t6, 3, draw_e2_bottom
    	j next_e2_vert
draw_e2_middle:
    	sw $t1, 4($t5)
    	j next_e2_vert
draw_e2_bottom:
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
next_e2_vert:
    	addi $t6, $t6, 1
    	j draw_e2_shape
    	
draw_r2:
    	# R at x=22
    	li $t3, 22
    	sll $t4, $t2, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
    	
    	li $t6, 1
draw_r2_shape:
    	bge $t6, 4, draw_skull_section
    	add $t7, $t2, $t6
    	sll $t4, $t7, 6
    	add $t4, $t4, $t3
    	sll $t4, $t4, 2
    	add $t5, $t0, $t4
    	sw $t1, 0($t5)
    	beq $t6, 1, draw_r2_right
    	beq $t6, 2, draw_r2_middle
    	beq $t6, 3, draw_r2_leg
    	j next_r2_vert
draw_r2_right:
    	sw $t1, 8($t5)
    	j next_r2_vert
draw_r2_middle:
    	sw $t1, 4($t5)
    	sw $t1, 8($t5)
    	j next_r2_vert
draw_r2_leg:
    	sw $t1, 8($t5)
next_r2_vert:
    	addi $t6, $t6, 1
    	j draw_r2_shape
    
draw_skull_section:

		la $t0, skull_pattern
		lw $t1, SKULL_COLOUR
		li $t2, BASE_ADDRESS
	
		li $t3, 28  # y
		li $t4, 18  # x
	
		li $t5, 0   # row counter
draw_skull_row:
		bge $t5, 8, draw_restart_text
	
		li $t6, 0   # col counter
draw_skull_col:
		bge $t6, 8, next_skull_row
	

		sll $t7, $t5, 3    # row * 8
		add $t7, $t7, $t6  # + col
		sll $t7, $t7, 2    # * 4
		add $t7, $t0, $t7
		lw $t8, 0($t7)
	
		beq $t8, $zero, skip_skull_pixel
	
		add $t9, $t3, $t5  # y
		add $s0, $t4, $t6  # x
	
		sll $s1, $t9, 6
		add $s1, $s1, $s0
		sll $s1, $s1, 2
		add $s1, $t2, $s1
	
		sw $t1, 0($s1)
	
skip_skull_pixel:
		addi $t6, $t6, 1
		j draw_skull_col
	
next_skull_row:
		addi $t5, $t5, 1
		j draw_skull_row
	
draw_restart_text:
		li $t0, BASE_ADDRESS
		lw $t1, TEXT_COLOR

		# y=38, x=12
		li $t2, 38
		li $t3, 12
	
		# P
		sll $t4, $t2, 6
		add $t4, $t4, $t3
		sll $t4, $t4, 2
		add $t5, $t0, $t4
		sw $t1, 0($t5)
		sw $t1, 4($t5)
	
		li $t6, 1
draw_p:
		bge $t6, 4, draw_r_restart
		add $t7, $t2, $t6
		sll $t4, $t7, 6
		add $t4, $t4, $t3
		sll $t4, $t4, 2
		add $t5, $t0, $t4
		sw $t1, 0($t5)
		beq $t6, 1, draw_p_right
		beq $t6, 2, draw_p_middle
		j next_p
draw_p_right:
		sw $t1, 8($t5)
		j next_p
draw_p_middle:
		sw $t1, 4($t5)
next_p:
		addi $t6, $t6, 1
		j draw_p
	
draw_r_restart:
		# R at x=16
		li $t3, 16
		sll $t4, $t2, 6
		add $t4, $t4, $t3
		sll $t4, $t4, 2
		add $t5, $t0, $t4
		sw $t1, 0($t5)
		sw $t1, 4($t5)
	
		li $t6, 1
draw_r_rest:
		bge $t6, 4, draw_equals
		add $t7, $t2, $t6
		sll $t4, $t7, 6
		add $t4, $t4, $t3
		sll $t4, $t4, 2
		add $t5, $t0, $t4
		sw $t1, 0($t5)
		beq $t6, 1, draw_r_rest_right
		beq $t6, 2, draw_r_rest_middle
		beq $t6, 3, draw_r_rest_leg
		j next_r_rest
draw_r_rest_right:
		sw $t1, 8($t5)
		j next_r_rest
draw_r_rest_middle:
		sw $t1, 4($t5)
		j next_r_rest
draw_r_rest_leg:
		sw $t1, 8($t5)
next_r_rest:
		addi $t6, $t6, 1
		j draw_r_rest
	
draw_equals:
		li $t3, 20
		addi $t7, $t2, 1
		sll $t4, $t7, 6
		add $t4, $t4, $t3
		sll $t4, $t4, 2
		add $t5, $t0, $t4
		sw $t1, 0($t5)
		sw $t1, 4($t5)
	
		addi $t7, $t2, 2
		sll $t4, $t7, 6
		add $t4, $t4, $t3
		sll $t4, $t4, 2
		add $t5, $t0, $t4
		sw $t1, 0($t5)
		sw $t1, 4($t5)

		li $t2, 44
		li $t3, 8

		li $t6, 0
draw_restart_word:
		bge $t6, 30, draw_final_score
		add $t7, $t3, $t6
		sll $t4, $t2, 6
		add $t4, $t4, $t7
		sll $t4, $t4, 2
		add $t5, $t0, $t4
		sw $t1, 0($t5)
		addi $t6, $t6, 2
		j draw_restart_word
        
        draw_final_score:
    		lw $a0, total_score
    		li $a1, 15  # x
    		li $a2, 50  # y
    		jal draw_number_compact
    
    	game_over_screen_complete:
        	lw $ra, 0($sp)
        	addi $sp, $sp, 4
        	jr $ra

init_game_state:
    	addi $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	sw $zero, game_over
    	sw $zero, game_paused
    	sw $zero, total_score
    	sw $zero, lines_cleared
    	sw $zero, drop_counter

    	li $t0, 30
    	sw $t0, drop_speed

    	li $v0, 30
    	syscall
    	move $t0, $a0
    
    	li $t0, 1
    	sw $t0, NEXT_PIECE

    	li $t0, -1
    	sw $t0, last_piece_x
    	sw $t0, last_piece_y
    	sw $t0, last_piece_rotation
    
    	lw $ra, 0($sp)
    	addi $sp, $sp, 4
    	jr $ra

exit_game:
    	li $v0, 10
    	syscall
