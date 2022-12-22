	.file	"exilium.c"
	.text
LC0:
	.ascii "digi_card\0"
LC1:
	.ascii "-1\0"
LC2:
	.ascii "\0"
LC3:
	.ascii "midi_card\0"
LC4:
	.ascii "quality\0"
LC5:
	.ascii "0\0"
LC6:
	.ascii "Qual:\0"
	.align 32
LC7:
	.ascii "Sample mixing quality (0 = fast mixing of 8 bit data into 16 bit buffers, 1 = true 16 bit mixing, 2 = interpolated 16 bit mixing)\0"
LC8:
	.ascii "digi_volume\0"
LC9:
	.ascii "Vol:\0"
	.align 32
LC10:
	.ascii "Digital sound volume (0 to 255)\0"
LC11:
	.ascii "midi_volume\0"
LC12:
	.ascii "MIDI music volume (0 to 255)\0"
LC13:
	.ascii "digi_voices\0"
LC14:
	.ascii "Chan:\0"
	.align 32
LC15:
	.ascii "Number of channels reserved for playing digital sounds (higher values increase polyphony but degrade speed and quality)\0"
LC16:
	.ascii "midi_voices\0"
	.align 32
LC17:
	.ascii "Number of channels reserved for playing MIDI music (higher values increase polyphony but degrade speed and quality)\0"
LC18:
	.ascii "flip_pan\0"
LC19:
	.ascii "Pan:\0"
	.align 32
LC20:
	.ascii "Reverses the left/right stereo placement\0"
LC21:
	.ascii "patches\0"
LC22:
	.ascii "Patches:\0"
LC23:
	.ascii "CFG;DAT\0"
	.align 32
LC24:
	.ascii "MIDI patch set (GUS format default.cfg or Allegro format patches.dat)\0"
	.data
	.align 32
_parameters:
	.long	LC0
	.long	3
	.ascii "\0"
	.space 511
	.long	LC1
	.long	0
	.long	LC2
	.long	0
	.long	0
	.long	LC2
	.long	LC3
	.long	3
	.ascii "\0"
	.space 511
	.long	LC1
	.long	0
	.long	LC2
	.long	0
	.long	0
	.long	LC2
	.long	LC4
	.long	1
	.ascii "\0"
	.space 511
	.long	LC5
	.long	0
	.long	LC6
	.long	0
	.long	0
	.long	LC7
	.long	LC8
	.long	1
	.ascii "\0"
	.space 511
	.long	LC1
	.long	0
	.long	LC9
	.long	0
	.long	0
	.long	LC10
	.long	LC11
	.long	1
	.ascii "\0"
	.space 511
	.long	LC1
	.long	0
	.long	LC9
	.long	0
	.long	0
	.long	LC12
	.long	LC13
	.long	1
	.ascii "\0"
	.space 511
	.long	LC1
	.long	0
	.long	LC14
	.long	0
	.long	0
	.long	LC15
	.long	LC16
	.long	1
	.ascii "\0"
	.space 511
	.long	LC1
	.long	0
	.long	LC14
	.long	0
	.long	0
	.long	LC17
	.long	LC18
	.long	4
	.ascii "\0"
	.space 511
	.long	LC5
	.long	0
	.long	LC19
	.long	0
	.long	0
	.long	LC20
	.long	LC21
	.long	5
	.ascii "\0"
	.space 511
	.long	LC2
	.long	0
	.long	LC22
	.long	LC23
	.long	0
	.long	LC24
	.long	0
	.long	0
	.ascii "\0"
	.space 511
	.long	LC2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
LC25:
	.ascii "11\0"
	.data
	.align 4
_digi_param.0:
	.long	LC25
	.long	LC8
	.long	0
	.align 4
_midi_param.1:
	.long	LC25
	.long	LC11
	.long	0
	.text
LC31:
	.ascii "22\0"
	.data
	.align 4
_param.2:
	.long	LC31
	.long	LC16
	.long	LC11
	.long	LC2
	.long	LC21
	.long	0
.lcomm _dialog_count,16
.lcomm _scroller_time,16
.lcomm _scroller_pos,16
	.align 4
_scroller_alpha:
	.long	256
	.text
LC33:
	.ascii "\0\0\0\0"
	.data
	.align 4
_scroller_string:
	.long	LC33
	.align 4
_wanted_scroller:
	.long	LC33
.lcomm _scroller_string_pos,16
.lcomm _popup_bitmap,16
.lcomm _popup_bitmap2,16
.lcomm _freq.3,16
	.align 32
_keyboard_type:
	.ascii "\0\0\0\0"
	.space 252
.lcomm _num_keyboard_layouts,16
	.align 32
_language_type:
	.ascii "\0\0\0\0"
	.space 252
.lcomm _num_language_layouts,16
	.align 32
_backup_str:
	.ascii "Go back to the previous menu\0"
	.space 227
	.align 32
_digi_desc:
	.ascii "\0\0\0\0"
	.space 252
	.align 32
_midi_desc:
	.ascii "\0\0\0\0"
	.space 252
	.text
LC26:
	.ascii "Autodetect\0"
	.align 32
LC53:
	.ascii "Attempt to autodetect your soundcard (ie. guess :-)\0"
LC54:
	.ascii "Test\0"
LC55:
	.ascii "Test the current settings\0"
LC56:
	.ascii "Digital Driver\0"
	.align 32
LC57:
	.ascii "Manually select a driver for playing digital samples\0"
LC58:
	.ascii "Midi Driver\0"
	.align 32
LC59:
	.ascii "Manually select a driver for playing MIDI music\0"
LC60:
	.ascii "Locale\0"
	.align 32
LC61:
	.ascii "Select a keyboard layout and system language\0"
LC62:
	.ascii "Joystick\0"
LC63:
	.ascii "Calibrate your joystick\0"
LC64:
	.ascii "Mouse\0"
LC65:
	.ascii "Configure your mouse\0"
LC66:
	.ascii "Save and Exit\0"
	.align 32
LC67:
	.ascii "Exit from the program, saving the current settings into the file 'allegro.cfg'\0"
LC68:
	.ascii "Just Exit\0"
	.align 32
LC69:
	.ascii "Exit from the program, without saving the current settings\0"
	.data
	.align 32
_main_dlg:
	.long	_d_button_proc
	.long	30
	.long	32
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC26
	.long	0
	.long	LC53
	.long	_d_button_proc
	.long	166
	.long	32
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC54
	.long	0
	.long	LC55
	.long	_d_button_proc
	.long	30
	.long	60
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC56
	.long	0
	.long	LC57
	.long	_d_button_proc
	.long	166
	.long	60
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC58
	.long	0
	.long	LC59
	.long	_d_button_proc
	.long	30
	.long	88
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC60
	.long	0
	.long	LC61
	.long	_d_button_proc
	.long	166
	.long	88
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC62
	.long	0
	.long	LC63
	.long	_d_button_proc
	.long	30
	.long	116
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC64
	.long	0
	.long	LC65
	.long	_d_button_proc
	.long	30
	.long	144
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC66
	.long	0
	.long	LC67
	.long	_d_button_proc
	.long	166
	.long	144
	.long	125
	.long	23
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC68
	.long	0
	.long	LC69
	.long	_scroller_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_d_yield_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
LC70:
	.ascii "MIDI\0"
LC71:
	.ascii "Left\0"
LC72:
	.ascii "Centre\0"
LC73:
	.ascii "Right\0"
LC74:
	.ascii "Exit\0"
	.data
	.align 32
_test_dlg:
	.long	_d_button_proc
	.long	100
	.long	50
	.long	121
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC70
	.long	0
	.long	_midi_desc
	.long	_d_button_proc
	.long	30
	.long	87
	.long	81
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC71
	.long	0
	.long	_digi_desc
	.long	_d_button_proc
	.long	120
	.long	87
	.long	81
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC72
	.long	0
	.long	_digi_desc
	.long	_d_button_proc
	.long	210
	.long	87
	.long	81
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC73
	.long	0
	.long	_digi_desc
	.long	_d_button_proc
	.long	100
	.long	124
	.long	121
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC74
	.long	0
	.long	_backup_str
	.long	_scroller_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_d_yield_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
LC75:
	.ascii "OK\0"
LC76:
	.ascii "Use this driver\0"
LC77:
	.ascii "Cancel\0"
	.data
	.align 32
_card_dlg:
	.long	_d_button_proc
	.long	30
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC75
	.long	0
	.long	LC76
	.long	_d_button_proc
	.long	166
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC77
	.long	0
	.long	_backup_str
	.long	_card_proc
	.long	20
	.long	36
	.long	281
	.long	84
	.long	255
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	_card_getter
	.long	0
	.long	0
	.long	_scroller_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_d_yield_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.align 32
LC78:
	.ascii "Use this keyboard layout and language\0"
LC79:
	.ascii "Select a keyboard layout\0"
	.align 32
LC80:
	.ascii "Select language for system messages\0"
LC81:
	.ascii "Keyboard\0"
LC82:
	.ascii "Language\0"
	.data
	.align 32
_locale_dlg:
	.long	_d_button_proc
	.long	30
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC75
	.long	0
	.long	LC78
	.long	_d_button_proc
	.long	166
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC77
	.long	0
	.long	_backup_str
	.long	_d_list_proc
	.long	8
	.long	50
	.long	147
	.long	68
	.long	255
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	_keyboard_getter
	.long	0
	.long	LC79
	.long	_d_list_proc
	.long	166
	.long	50
	.long	147
	.long	68
	.long	255
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	_language_getter
	.long	0
	.long	LC80
	.long	_d_ctext_proc
	.long	81
	.long	30
	.long	0
	.long	0
	.long	16
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	LC81
	.long	0
	.long	0
	.long	_d_ctext_proc
	.long	239
	.long	30
	.long	0
	.long	0
	.long	16
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	LC82
	.long	0
	.long	0
	.long	_scroller_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_d_yield_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
LC83:
	.ascii "Use this joystick type\0"
LC84:
	.ascii "Select a type of joystick\0"
	.data
	.align 32
_joystick_dlg:
	.long	_d_button_proc
	.long	30
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC75
	.long	0
	.long	LC83
	.long	_d_button_proc
	.long	166
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC77
	.long	0
	.long	_backup_str
	.long	_d_list_proc
	.long	60
	.long	36
	.long	201
	.long	84
	.long	255
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	_joystick_getter
	.long	0
	.long	LC84
	.long	_scroller_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_d_yield_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
LC85:
	.ascii "Use this mouse type\0"
LC86:
	.ascii "Select a type of mouse\0"
	.data
	.align 32
_mouse_dlg:
	.long	_d_button_proc
	.long	30
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC75
	.long	0
	.long	LC85
	.long	_d_button_proc
	.long	166
	.long	132
	.long	125
	.long	25
	.long	-1
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	LC77
	.long	0
	.long	_backup_str
	.long	_d_list_proc
	.long	70
	.long	36
	.long	181
	.long	84
	.long	255
	.long	16
	.long	0
	.long	1
	.long	0
	.long	0
	.long	_mouse_getter
	.long	0
	.long	LC86
	.long	_scroller_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_d_yield_proc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
LC99:
	.ascii "#\0"
LC111:
	.ascii "allegro.cfg\0"
LC87:
	.ascii "sound\0"
LC112:
	.ascii "keyboard\0"
LC113:
	.ascii "system\0"
LC118:
	.ascii "us\0"
LC114:
	.ascii "language\0"
LC119:
	.ascii "en\0"
LC116:
	.ascii "setup.dat\0"
LC117:
	.ascii "Error loading setup.dat\0"
	.p2align 4,,15
.globl _setup_main
	.def	_setup_main;	.scl	2;	.type	32;	.endef
_setup_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1100, %esp
	movl	__imp__black_palette, %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC99, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	call	_load_datafile
	movl	%eax, _setup_data
	testl	%eax, %eax
	je	L1173
L894:
	movl	__imp__gfx_driver, %edx
	movl	$-32, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L896
	movl	108(%eax), %ecx
	subl	$32, %ecx
L896:
	movl	%ecx, 12(%esp)
	movl	(%edx), %eax
	movl	$-1, %edx
	testl	%eax, %eax
	je	L898
	movl	104(%eax), %edx
	decl	%edx
L898:
	movl	%edx, 8(%esp)
	movl	$20, 4(%esp)
	movl	$0, (%esp)
	call	_set_mouse_range
	movl	_setup_data, %ebx
	movl	__imp__font, %ecx
	movl	16(%ebx), %esi
	xorl	%ebx, %ebx
	movl	%esi, (%ecx)
	movl	$_scroller_msg, %esi
	.p2align 4,,15
L899:
	movl	__imp__gfx_driver, %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L903
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L1174
L905:
	sarl	$3, %eax
	addl	$2, %eax
	cmpl	%eax, %ebx
	jge	L900
L906:
	movl	%esi, (%esp)
	movl	__imp__usetc, %edi
	incl	%ebx
	movl	$32, 4(%esp)
	call	*(%edi)
	addl	%eax, %esi
	jmp	L899
L900:
	movl	(%edx), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	L909
	movl	108(%eax), %ecx
L909:
	movl	%ecx, 4(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L911
	movl	104(%eax), %edx
L911:
	movl	%edx, (%esp)
	call	_create_bitmap
	movl	%eax, _buffer
	movl	$7457, 4(%esp)
	movl	$_inc_scroller_time, (%esp)
	call	_install_int_ex
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC111, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	call	_set_config_file
	movl	_parameters, %eax
	movl	$_parameters, %edx
	movl	%edx, -1052(%ebp)
	testl	%eax, %eax
	je	L1124
	movl	%eax, %edi
	.p2align 4,,15
L935:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1175
L916:
	movl	-1052(%ebp), %ebx
	movl	%edx, (%ebx)
	movl	__imp__usetc, %esi
	addl	$8, %ebx
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	*(%esi)
	movl	-1052(%ebp), %ecx
	movl	520(%ecx), %edi
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1176
L919:
	movl	-1052(%ebp), %ecx
	movl	528(%ecx), %edi
	movl	%edx, 520(%ecx)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1177
L922:
	movl	-1052(%ebp), %esi
	movl	532(%esi), %edi
	movl	%edx, 528(%esi)
	testl	%edi, %edi
	jne	L1178
L924:
	movl	-1052(%ebp), %eax
	movl	536(%eax), %edi
	testl	%edi, %edi
	jne	L1179
L928:
	movl	-1052(%ebp), %ecx
	movl	540(%ecx), %edi
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1180
L933:
	movl	-1052(%ebp), %ebx
	movl	%edx, 540(%ebx)
	addl	$544, %ebx
	movl	(%ebx), %esi
	movl	%ebx, -1052(%ebp)
	testl	%esi, %esi
	movl	%esi, %edi
	jne	L935
	movl	_parameters, %edx
	testl	%edx, %edx
	je	L1124
	xorl	%ebx, %ebx
	.p2align 4,,15
L941:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	leal	_parameters+8(%ebx), %esi
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	_parameters+520(%ebx), %ecx
	movl	_parameters(%ebx), %edi
	addl	$544, %ebx
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%esi, (%esp)
	call	_ustrzcpy
	movl	_parameters(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L941
L1124:
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %esi
	movl	$1668641326, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC112, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %edi
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC113, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	__imp__empty_string, %ebx
	movl	%edi, 4(%esp)
	movl	%ebx, 8(%esp)
	xorl	%ebx, %ebx
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	$_keyboard_type, (%esp)
	call	_ustrzcpy
	movzbl	_keyboard_type, %eax
	testb	%al, %al
	je	L1149
	.p2align 4,,15
L947:
	movsbl	%al,%ecx
	movl	%ecx, (%esp)
	call	_uisspace
	testl	%eax, %eax
	je	L1150
	incl	%ebx
	movzbl	_keyboard_type(%ebx), %eax
	testb	%al, %al
	jne	L947
L1153:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC118, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	$_keyboard_type, (%esp)
	call	_ustrzcpy
L948:
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC114, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %edi
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC113, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	__imp__empty_string, %ebx
	movl	%edi, 4(%esp)
	movl	%ebx, 8(%esp)
	xorl	%ebx, %ebx
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	$_language_type, (%esp)
	call	_ustrzcpy
	movzbl	_language_type, %eax
	testb	%al, %al
	je	L1151
	.p2align 4,,15
L954:
	movsbl	%al,%ecx
	movl	%ecx, (%esp)
	call	_uisspace
	testl	%eax, %eax
	je	L1152
	incl	%ebx
	movzbl	_language_type(%ebx), %eax
	testb	%al, %al
	jne	L954
L1154:
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC119, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	$_language_type, (%esp)
	call	_ustrzcpy
L955:
	call	_find_sound_drivers
	movl	$0, 4(%esp)
	movl	__imp__empty_string, %edx
	movl	%edx, (%esp)
	call	_set_config_data
	movl	_parameters, %esi
	testl	%esi, %esi
	je	L1128
	xorl	%ebx, %ebx
	.p2align 4,,15
L960:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	leal	_parameters+8(%ebx), %esi
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	_parameters(%ebx), %ecx
	addl	$544, %ebx
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	call	_set_config_string
	movl	_parameters(%ebx), %edi
	testl	%edi, %edi
	jne	L960
L1128:
	movl	_digi_cards, %ebx
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	L1130
	xorl	%ebx, %ebx
	.p2align 4,,15
L967:
	movl	_digi_cards(%ebx), %edx
	movl	%edx, (%esp)
	call	_detect_digi_driver
	testl	%eax, %eax
	sete	%cl
	incl	%esi
	movzbl	%cl, %edi
	decl	%edi
	movl	%edi, _digi_cards+16(%ebx)
	addl	$20, %ebx
	movl	_digi_cards(%ebx), %eax
	testl	%eax, %eax
	jne	L967
L1130:
	movl	_midi_cards, %eax
	leal	(%esi,%esi,4), %ebx
	movl	$-1, %edi
	movl	%edi, _digi_cards+16(,%ebx,4)
	xorl	%esi, %esi
	testl	%eax, %eax
	je	L1132
	xorl	%ebx, %ebx
	.p2align 4,,15
L974:
	movl	_midi_cards(%ebx), %edi
	movl	%edi, (%esp)
	call	_detect_midi_driver
	testl	%eax, %eax
	sete	%dl
	incl	%esi
	movzbl	%dl, %ecx
	decl	%ecx
	movl	%ecx, _midi_cards+16(%ebx)
	addl	$20, %ebx
	movl	_midi_cards(%ebx), %edx
	testl	%edx, %edx
	jne	L974
L1132:
	movl	$1668641326, 8(%esp)
	leal	(%esi,%esi,4), %ebx
	movl	$-1, %esi
	movl	%esi, _midi_cards+16(,%ebx,4)
	movl	$1095975736, 4(%esp)
	movl	$_backup_str, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	jne	L1181
L976:
	movl	_main_dlg, %eax
	movl	$_main_dlg, %edx
	movl	%edx, -1056(%ebp)
	testl	%eax, %eax
	je	L1134
	.p2align 4,,15
L996:
	cmpl	$_d_button_proc, %eax
	je	L981
	cmpl	$_d_ctext_proc, %eax
	je	L981
	cmpl	$_d_list_proc, %eax
	je	L1182
L990:
	addl	$56, -1056(%ebp)
	movl	-1056(%ebp), %edi
	movl	(%edi), %eax
	testl	%eax, %eax
	jne	L996
L1134:
	movl	$_test_dlg, %eax
	movl	%eax, -1060(%ebp)
	movl	_test_dlg, %eax
	testl	%eax, %eax
	je	L1136
	.p2align 4,,15
L1017:
	cmpl	$_d_button_proc, %eax
	je	L1002
	cmpl	$_d_ctext_proc, %eax
	je	L1002
	cmpl	$_d_list_proc, %eax
	je	L1183
L1011:
	addl	$56, -1060(%ebp)
	movl	-1060(%ebp), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	jne	L1017
L1136:
	movl	$_card_dlg, %eax
	movl	%eax, -1064(%ebp)
	movl	_card_dlg, %eax
	testl	%eax, %eax
	je	L1138
	.p2align 4,,15
L1038:
	cmpl	$_d_button_proc, %eax
	je	L1023
	cmpl	$_d_ctext_proc, %eax
	je	L1023
	cmpl	$_d_list_proc, %eax
	je	L1184
L1032:
	addl	$56, -1064(%ebp)
	movl	-1064(%ebp), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	jne	L1038
L1138:
	movl	$_locale_dlg, %eax
	movl	%eax, -1068(%ebp)
	movl	_locale_dlg, %eax
	testl	%eax, %eax
	je	L1140
	.p2align 4,,15
L1059:
	cmpl	$_d_button_proc, %eax
	je	L1044
	cmpl	$_d_ctext_proc, %eax
	je	L1044
	cmpl	$_d_list_proc, %eax
	je	L1185
L1053:
	addl	$56, -1068(%ebp)
	movl	-1068(%ebp), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L1059
L1140:
	movl	$_joystick_dlg, %eax
	movl	%eax, -1072(%ebp)
	movl	_joystick_dlg, %eax
	testl	%eax, %eax
	je	L1142
	.p2align 4,,15
L1080:
	cmpl	$_d_button_proc, %eax
	je	L1065
	cmpl	$_d_ctext_proc, %eax
	je	L1065
	cmpl	$_d_list_proc, %eax
	je	L1186
L1074:
	addl	$56, -1072(%ebp)
	movl	-1072(%ebp), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	jne	L1080
L1142:
	movl	_mouse_dlg, %eax
	movl	$_mouse_dlg, %edx
	movl	%edx, -1076(%ebp)
	testl	%eax, %eax
	je	L1144
	.p2align 4,,15
L1101:
	cmpl	$_d_button_proc, %eax
	je	L1086
	cmpl	$_d_ctext_proc, %eax
	je	L1086
	cmpl	$_d_list_proc, %eax
	je	L1187
L1095:
	addl	$56, -1076(%ebp)
	movl	-1076(%ebp), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	jne	L1101
L1144:
	movl	$0, 8(%esp)
	movl	$_main_handler, 4(%esp)
	movl	$_main_dlg, (%esp)
	call	_activate_dialog
	incl	_dialog_count
	.p2align 4,,15
L1103:
	call	_update
	testl	%eax, %eax
	jne	L1103
	movl	$0, 4(%esp)
	xorl	%ebx, %ebx
	movl	$-1, (%esp)
	call	_freq_getter
	movl	_buffer, %edx
	movl	%edx, (%esp)
	call	_destroy_bitmap
	cmpl	_num_keyboard_layouts, %ebx
	jl	L1111
L1146:
	xorl	%ebx, %ebx
	cmpl	_num_language_layouts, %ebx
	jl	L1116
L1148:
	movl	__imp__gfx_driver, %edx
	movl	$-1, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L1118
	movl	108(%eax), %ecx
	decl	%ecx
L1118:
	movl	%ecx, 12(%esp)
	movl	(%edx), %eax
	movl	$-1, %edx
	testl	%eax, %eax
	je	L1120
	movl	104(%eax), %edx
	decl	%edx
L1120:
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_set_mouse_range
	movl	_setup_data, %ebx
	movl	%ebx, (%esp)
	call	_unload_datafile
	movl	$_inc_scroller_time, (%esp)
	call	_remove_int
	xorl	%eax, %eax
L891:
	addl	$1100, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1116:
	movl	_language_layouts(,%ebx,4), %edx
	movl	%edx, (%esp)
	call	_free
	movl	_language_names(,%ebx,4), %ecx
	incl	%ebx
	movl	%ecx, (%esp)
	call	_free
	cmpl	_num_language_layouts, %ebx
	jl	L1116
	jmp	L1148
	.p2align 4,,7
L1111:
	movl	_keyboard_layouts(,%ebx,4), %edi
	movl	%edi, (%esp)
	call	_free
	movl	_keyboard_names(,%ebx,4), %esi
	incl	%ebx
	movl	%esi, (%esp)
	call	_free
	cmpl	_num_keyboard_layouts, %ebx
	jl	L1111
	jmp	L1146
L1187:
	movl	-1076(%ebp), %esi
	movl	52(%esi), %edi
	testl	%edi, %edi
L1172:
	je	L1095
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1188
L1099:
	movl	-1076(%ebp), %edi
	movl	%edx, 52(%edi)
	jmp	L1095
L1188:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1099
	.p2align 4,,7
L1086:
	movl	-1076(%ebp), %ecx
	movl	44(%ecx), %edi
	testl	%edi, %edi
	jne	L1189
L1087:
	movl	-1076(%ebp), %eax
	movl	52(%eax), %edi
	testl	%edi, %edi
	je	L1095
	cmpl	$_backup_str, %edi
	je	L1095
	cmpl	$_digi_desc, %edi
	je	L1095
	cmpl	$_midi_desc, %edi
	jmp	L1172
L1189:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1190
L1089:
	movl	-1076(%ebp), %ebx
	movl	%edx, 44(%ebx)
	jmp	L1087
L1190:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1089
L1186:
	movl	-1072(%ebp), %ebx
	movl	52(%ebx), %edi
	testl	%edi, %edi
L1171:
	je	L1074
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1191
L1078:
	movl	-1072(%ebp), %edi
	movl	%edx, 52(%edi)
	jmp	L1074
L1191:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1078
	.p2align 4,,7
L1065:
	movl	-1072(%ebp), %edx
	movl	44(%edx), %edi
	testl	%edi, %edi
	jne	L1192
L1066:
	movl	-1072(%ebp), %ecx
	movl	52(%ecx), %edi
	testl	%edi, %edi
	je	L1074
	cmpl	$_backup_str, %edi
	je	L1074
	cmpl	$_digi_desc, %edi
	je	L1074
	cmpl	$_midi_desc, %edi
	jmp	L1171
L1192:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1193
L1068:
	movl	-1072(%ebp), %esi
	movl	%edx, 44(%esi)
	jmp	L1066
L1193:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1068
L1185:
	movl	-1068(%ebp), %ecx
	movl	52(%ecx), %edi
	testl	%edi, %edi
L1170:
	je	L1053
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1194
L1057:
	movl	-1068(%ebp), %edi
	movl	%edx, 52(%edi)
	jmp	L1053
L1194:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1057
	.p2align 4,,7
L1044:
	movl	-1068(%ebp), %edx
	movl	44(%edx), %edi
	testl	%edi, %edi
	jne	L1195
L1045:
	movl	-1068(%ebp), %esi
	movl	52(%esi), %edi
	testl	%edi, %edi
	je	L1053
	cmpl	$_backup_str, %edi
	je	L1053
	cmpl	$_digi_desc, %edi
	je	L1053
	cmpl	$_midi_desc, %edi
	jmp	L1170
L1195:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1196
L1047:
	movl	-1068(%ebp), %ebx
	movl	%edx, 44(%ebx)
	jmp	L1045
L1196:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1047
L1184:
	movl	-1064(%ebp), %esi
	movl	52(%esi), %edi
	testl	%edi, %edi
L1169:
	je	L1032
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1197
L1036:
	movl	-1064(%ebp), %edi
	movl	%edx, 52(%edi)
	jmp	L1032
L1197:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1036
	.p2align 4,,7
L1023:
	movl	-1064(%ebp), %edx
	movl	44(%edx), %edi
	testl	%edi, %edi
	jne	L1198
L1024:
	movl	-1064(%ebp), %ebx
	movl	52(%ebx), %edi
	testl	%edi, %edi
	je	L1032
	cmpl	$_backup_str, %edi
	je	L1032
	cmpl	$_digi_desc, %edi
	je	L1032
	cmpl	$_midi_desc, %edi
	jmp	L1169
L1198:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1199
L1026:
	movl	-1064(%ebp), %ecx
	movl	%edx, 44(%ecx)
	jmp	L1024
L1199:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1026
L1183:
	movl	-1060(%ebp), %ebx
	movl	52(%ebx), %edi
	testl	%edi, %edi
L1168:
	je	L1011
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1200
L1015:
	movl	-1060(%ebp), %edi
	movl	%edx, 52(%edi)
	jmp	L1011
L1200:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1015
	.p2align 4,,7
L1002:
	movl	-1060(%ebp), %edx
	movl	44(%edx), %edi
	testl	%edi, %edi
	jne	L1201
L1003:
	movl	-1060(%ebp), %ecx
	movl	52(%ecx), %edi
	testl	%edi, %edi
	je	L1011
	cmpl	$_backup_str, %edi
	je	L1011
	cmpl	$_digi_desc, %edi
	je	L1011
	cmpl	$_midi_desc, %edi
	jmp	L1168
L1201:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1202
L1005:
	movl	-1060(%ebp), %esi
	movl	%edx, 44(%esi)
	jmp	L1003
L1202:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L1005
L1182:
	movl	-1056(%ebp), %ecx
	movl	52(%ecx), %edi
	testl	%edi, %edi
L1167:
	je	L990
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1203
L994:
	movl	-1056(%ebp), %ebx
	movl	%edx, 52(%ebx)
	jmp	L990
L1203:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L994
	.p2align 4,,7
L981:
	movl	-1056(%ebp), %ebx
	movl	44(%ebx), %edi
	testl	%edi, %edi
	jne	L1204
L982:
	movl	-1056(%ebp), %esi
	movl	52(%esi), %edi
	testl	%edi, %edi
	je	L990
	cmpl	$_backup_str, %edi
	je	L990
	cmpl	$_digi_desc, %edi
	je	L990
	cmpl	$_midi_desc, %edi
	jmp	L1167
L1204:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1205
L984:
	movl	-1056(%ebp), %edi
	movl	%edx, 44(%edi)
	jmp	L982
L1205:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L984
L1181:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$_backup_str, (%esp)
	call	_do_uconvert
	movl	$256, 4(%esp)
	leal	-792(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$_backup_str, (%esp)
	call	_ustrzcpy
	jmp	L976
L1152:
	movzbl	_language_type(%ebx), %eax
L950:
	testb	%al, %al
	jne	L955
	jmp	L1154
L1151:
	movzbl	_language_type, %eax
	jmp	L950
L1150:
	movzbl	_keyboard_type(%ebx), %eax
L943:
	testb	%al, %al
	jne	L948
	jmp	L1153
L1149:
	movzbl	_keyboard_type, %eax
	jmp	L943
L1180:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L933
L1179:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1206
L930:
	movl	-1052(%ebp), %ebx
	movl	%edx, 536(%ebx)
	jmp	L928
L1206:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L930
L1178:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L1207
L926:
	movl	-1052(%ebp), %edi
	movl	%edx, 532(%edi)
	jmp	L924
L1207:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L926
L1177:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L922
L1176:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L919
L1175:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L916
	.p2align 4,,7
L1174:
	addl	$7, %eax
	jmp	L905
	.p2align 4,,7
L903:
	cmpl	$1, %ebx
	jle	L906
	jmp	L900
L1173:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	leal	-536(%ebp), %ebx
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC116, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	$512, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, (%esp)
	call	_find_allegro_resource
	testl	%eax, %eax
	je	L1208
L892:
	movl	_setup_data, %ecx
	testl	%ecx, %ecx
	jne	L894
	movl	__imp__default_palette, %edx
	leal	-1048(%ebp), %edi
	leal	-792(%ebp), %ebx
	movl	%edx, (%esp)
	call	_set_palette
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC75, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %esi
	movl	$1668641326, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC117, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	$0, 24(%esp)
	movl	$13, 20(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	_alert
	movl	$1, %eax
	jmp	L891
L1208:
	movl	%ebx, (%esp)
	call	_load_datafile
	movl	%eax, _setup_data
	jmp	L892
.globl _menuArticulosDesplegado
	.bss
_menuArticulosDesplegado:
	.space 1
.globl _menuBuscar
_menuBuscar:
	.space 1
.globl _parametroSetup
_parametroSetup:
	.space 1
.globl _parametroNo
_parametroNo:
	.space 1
.globl _parametro8
_parametro8:
	.space 1
.globl _palancaJuegos
_palancaJuegos:
	.space 1
.globl _crono
	.align 4
_crono:
	.space 4
.globl _numVolumenActual
	.data
	.align 2
_numVolumenActual:
	.word	230
.globl _sonido
	.bss
_sonido:
	.space 1
.globl _raton
_raton:
	.space 1
.globl _driverSonido
_driverSonido:
	.space 1
.globl _fondo
	.align 4
_fondo:
	.space 4
.globl _letras
	.align 4
_letras:
	.space 4
.globl _videoTemporal
	.align 4
_videoTemporal:
	.space 4
.globl _auxBitmap
	.align 4
_auxBitmap:
	.space 4
.globl _parametroNoSonido
	.align 4
_parametroNoSonido:
	.space 4
.globl _tipoPantalla
	.align 4
_tipoPantalla:
	.space 4
.globl _parametroIntro
	.align 4
_parametroIntro:
	.space 4
	.text
LC120:
	.ascii "&Aceptar\0"
LC121:
	.ascii "VENTANA\0"
LC122:
	.ascii "PORTADA\0"
LC123:
	.ascii "SETUP\0"
LC124:
	.ascii "INTRO\0"
.globl _dialogo
	.data
	.align 32
_dialogo:
	.long	_d_shadow_box_proc
	.long	5
	.long	10
	.long	100
	.long	70
	.long	0
	.long	237
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_d_button_proc
	.long	30
	.long	71
	.long	100
	.long	20
	.long	0
	.long	243
	.long	1
	.long	1
	.long	0
	.long	0
	.long	LC120
	.long	0
	.long	0
	.long	_d_check_proc
	.long	10
	.long	15
	.long	75
	.long	10
	.long	0
	.long	237
	.long	0
	.long	0
	.long	0
	.long	0
	.long	LC121
	.long	0
	.long	0
	.long	_d_check_proc
	.long	15
	.long	30
	.long	75
	.long	10
	.long	0
	.long	237
	.long	0
	.long	2
	.long	0
	.long	0
	.long	LC122
	.long	0
	.long	0
	.long	_d_check_proc
	.long	20
	.long	45
	.long	60
	.long	10
	.long	0
	.long	237
	.long	0
	.long	0
	.long	0
	.long	0
	.long	LC123
	.long	0
	.long	0
	.long	_d_check_proc
	.long	25
	.long	60
	.long	60
	.long	10
	.long	0
	.long	237
	.long	0
	.long	0
	.long	0
	.long	0
	.long	LC124
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
LC125:
	.ascii "/?\0"
LC126:
	.ascii "?\0"
LC134:
	.ascii "config.dat\0"
LC136:
	.ascii "datos.dat\0"
LC137:
	.ascii "sliders3.dat\0"
LC128:
	.ascii "setup\0"
LC129:
	.ascii "no\0"
LC131:
	.ascii "8\0"
LC132:
	.ascii "nosonido\0"
LC133:
	.ascii "NOSONIDO\0"
LC130:
	.ascii "NO\0"
LC127:
	.ascii "Diskmag Exilium 3\0"
	.align 32
LC135:
	.ascii "Error en modo de video\12Cambie driver grafico en CFG\12O pruebe en escala de grises\12\0"
	.p2align 4,,15
.globl __mangled_main
	.def	__mangled_main;	.scl	2;	.type	32;	.endef
__mangled_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	cmpl	$1, 8(%ebp)
	jle	L1210
	cld
	movl	12(%ebp), %edx
	movl	$LC125, %esi
	movl	$3, %ecx
	movl	4(%edx), %ebx
	movl	%ebx, %edi
	repe
	cmpsb
	je	L1212
	movl	$LC126, %esi
	movl	$2, %ecx
	movl	%ebx, %edi
	repe
	cmpsb
	jne	L1210
L1212:
	call	_MostrarLineaComandos
L1209:
	addl	$44, %esp
	xorl	%eax, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1210:
	call	__errno
	movl	%eax, 4(%esp)
	movl	$_atexit, 8(%esp)
	movl	$0, (%esp)
	call	_install_allegro
	movl	$1095975736, (%esp)
	call	_set_uformat
	call	_install_keyboard
	call	_install_mouse
	movl	%eax, _valorRaton
	incl	%eax
	cmpl	$1, %eax
	seta	%bl
	negb	%bl
	movb	%bl, _raton
	call	_install_timer
	movl	__imp__system_driver, %edx
	movl	(%edx), %eax
	movl	32(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1281
L1216:
	movl	$-1, (%esp)
	call	_install_joystick
	testl	%eax, %eax
	jne	L1217
	movl	__imp__num_joysticks, %edi
	movl	(%edi), %esi
	testl	%esi, %esi
	setne	%cl
	negb	%cl
	movb	%cl, _palancaJuegos
L1220:
	movl	8(%ebp), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movw	%bx, _i
	testl	%edx, %edx
	jg	L1232
L1275:
	movl	$_cadenaClave, (%esp)
	call	_GeneraClave
	movl	$_cadenaClave, (%esp)
	call	_packfile_password
	movl	$_configuracion, 4(%esp)
	movl	$LC134, (%esp)
	call	_LeerArchivoDatos
	movl	$0, (%esp)
	call	_packfile_password
	cmpl	$1, 8(%ebp)
	je	L1282
L1233:
	movl	_parametroNoSonido, %edi
	testl	%edi, %edi
	je	L1283
L1244:
	movb	$-1, _driverSonido
	movb	$-1, _sonido
L1247:
	cmpb	$0, _parametroSetup
	je	L1248
	movl	$0, 16(%esp)
	movl	_tipoPantalla, %edx
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	%edx, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	je	L1249
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	$1396786757, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	jne	L1280
L1249:
	movl	$1, (%esp)
	call	_set_display_switch_mode
	call	_setup_main
L1279:
	call	_allegro_exit
	jmp	L1209
	.p2align 4,,7
L1248:
	movl	$_cadenaClave, (%esp)
	call	_packfile_password
	movl	$_datafile, 4(%esp)
	movl	$LC136, (%esp)
	call	_LeerArchivoDatos
	movl	$_revista, 4(%esp)
	movl	$LC137, (%esp)
	call	_LeerArchivoDatos
	movl	$0, (%esp)
	call	_packfile_password
	movl	$0, (%esp)
	call	_set_color_conversion
	cmpb	$0, _parametroNo
	je	L1284
L1251:
	cmpl	$-1, _parametroIntro
	je	L1285
L1252:
	cmpb	$0, _parametro8
	je	L1253
	movl	$8, (%esp)
	call	_set_color_depth
	movl	$-1, %eax
	movw	%ax, _grises
L1254:
	movl	$480, 4(%esp)
	movl	$640, (%esp)
	call	_create_bitmap
	movl	%eax, _letras
	testl	%eax, %eax
	je	L1286
L1255:
	movl	$480, 4(%esp)
	movl	$640, (%esp)
	call	_create_bitmap
	movl	%eax, _auxBitmap
	testl	%eax, %eax
	je	L1287
L1256:
	movl	$480, 4(%esp)
	movl	$640, (%esp)
	call	_create_bitmap
	movl	%eax, _videoTemporal
	testl	%eax, %eax
	je	L1288
L1257:
	movl	_letras, %ebx
	movl	28(%ebx), %edi
	movl	4(%edi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	*156(%edi)
	movl	$0, 16(%esp)
	movl	_tipoPantalla, %esi
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	%esi, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	je	L1260
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	$1396786757, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	jne	L1280
L1260:
	movl	$1, (%esp)
	call	_set_display_switch_mode
	cmpw	$0, _grises
	je	L1262
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movw	%ax, _i
	.p2align 4,,15
L1267:
	movswl	%cx,%esi
	leal	1(%ecx), %eax
	movl	%esi, %ebx
	sarl	$2, %ebx
	movl	%eax, %ecx
	cmpw	$255, %ax
	movb	%bl, _paletaGris+2(,%esi,4)
	movb	%bl, _paletaGris+1(,%esi,4)
	movb	%bl, _paletaGris(,%esi,4)
	jle	L1267
	movw	%ax, _i
	movl	$_paletaGris, (%esp)
	call	_set_palette
L1262:
	call	_GeneraColores
	cmpb	$0, _raton
	jne	L1289
L1268:
	movl	_configuracion, %edx
	movl	48(%edx), %edi
	movl	%edi, _fondo
	call	_ActivaMOD
	movl	$_losArticulos, (%esp)
	call	_InicializarLosArticulos
	movl	$_losArticulos, (%esp)
	movl	_revista, %ecx
	movl	%ecx, 4(%esp)
	call	_LeerArticulos
	call	_InicializarArticulo
	movl	_losArticulos+4, %ebx
	movl	%ebx, (%esp)
	call	_MostrarArticulo
	call	_ControlaEventos
	cmpb	$0, _driverSonido
	jne	L1290
L1269:
	cmpb	$0, _parametroNo
	je	L1291
L1270:
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$25, 8(%esp)
	movl	$80, 4(%esp)
	movl	$-1, (%esp)
	call	_set_gfx_mode
	call	_EliminarArticulo
	movl	$_losArticulos, (%esp)
	call	_EliminarLosArticulos
	movl	_configuracion, %ebx
	movl	%ebx, (%esp)
	call	_unload_datafile
	movl	_revista, %esi
	movl	%esi, (%esp)
	call	_unload_datafile
	movl	_datafile, %edx
	movl	%edx, (%esp)
	call	_unload_datafile
	movl	_auxBitmap, %edi
	movl	%edi, (%esp)
	call	_destroy_bitmap
	movl	_letras, %ecx
	movl	%ecx, (%esp)
	call	_destroy_bitmap
	movl	_videoTemporal, %ebx
	movl	%ebx, (%esp)
	call	_destroy_bitmap
	cmpb	$0, _raton
	jne	L1292
L1271:
	cmpb	$0, _palancaJuegos
	jne	L1293
L1272:
	cmpb	$0, _raton
	jne	L1294
L1273:
	call	_remove_keyboard
	jmp	L1279
L1294:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$0, (%esp)
	call	_set_mouse_sprite
	call	_remove_mouse
	jmp	L1273
L1293:
	call	_remove_joystick
	jmp	L1272
L1292:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L1271
L1291:
	movl	_configuracion, %esi
	movl	%esi, (%esp)
	call	_Despedida
	jmp	L1270
L1290:
	call	_DestruyeMOD
	jmp	L1269
L1289:
	movl	$0, (%esp)
	call	_show_mouse
	movl	_configuracion, %esi
	movl	128(%esi), %edx
	movl	%edx, (%esp)
	call	_set_mouse_sprite
	movl	$1, 4(%esp)
	movl	$17, (%esp)
	call	_set_mouse_sprite_focus
	movl	$412, 4(%esp)
	movl	$480, (%esp)
	call	_position_mouse
	movl	__imp__screen, %edi
	movl	(%edi), %ecx
	movl	%ecx, (%esp)
	call	_show_mouse
	jmp	L1268
L1288:
	call	_MostrarErrorMemoria
	jmp	L1257
L1287:
	call	_MostrarErrorMemoria
	jmp	L1256
L1286:
	call	_MostrarErrorMemoria
	jmp	L1255
L1253:
	movl	$16, (%esp)
	call	_set_color_depth
	xorl	%ecx, %ecx
	movw	%cx, _grises
	jmp	L1254
L1285:
	call	_MuestraIntro
	jmp	L1252
L1284:
	movl	_configuracion, %ebx
	movl	%ebx, (%esp)
	call	_Presentacion
	jmp	L1251
L1283:
	movl	$0, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	_install_sound
	testl	%eax, %eax
	je	L1244
	movb	$0, _driverSonido
	movb	$0, _sonido
	jmp	L1247
L1282:
	movl	$8, (%esp)
	call	_set_color_depth
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$200, 8(%esp)
	movl	$320, 4(%esp)
	movl	$2, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	je	L1234
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$200, 8(%esp)
	movl	$320, 4(%esp)
	movl	$1396786757, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	jne	L1280
L1234:
	movl	_configuracion, %esi
	movl	288(%esi), %ecx
	movl	%ecx, (%esp)
	call	_set_palette
	movl	$200, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_configuracion, %edi
	movl	$320, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	96(%edi), %esi
	movl	%esi, (%esp)
	call	_blit
	movl	$-1, 4(%esp)
	movl	$_dialogo, (%esp)
	call	_do_dialog
	movl	%eax, _ret
	xorl	%ecx, %ecx
	cmpl	$2, _dialogo+144
	sete	%cl
	incl	%ecx
	cmpl	$2, _dialogo+200
	movl	%ecx, _tipoPantalla
	setne	%bl
	negb	%bl
	cmpl	$2, _dialogo+256
	movb	%bl, _parametroNo
	setne	%dl
	xorl	%ecx, %ecx
	decb	%dl
	cmpl	$2, _dialogo+312
	movb	%dl, _parametroSetup
	setne	%cl
	decl	%ecx
	movl	%ecx, _parametroIntro
	jmp	L1233
	.p2align 4,,7
L1232:
	movl	$LC128, 4(%esp)
	movl	12(%ebp), %eax
	movswl	%cx,%esi
	movl	(%eax,%esi,4), %ecx
	movl	%ecx, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1295
L1226:
	movb	$-1, _parametroSetup
L1225:
	movswl	_i,%edi
	movl	$LC129, 4(%esp)
	movl	12(%ebp), %eax
	movl	(%eax,%edi,4), %esi
	movl	%esi, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1296
L1228:
	movb	$-1, _parametroNo
L1227:
	movswl	_i,%ebx
	movl	$LC131, 4(%esp)
	movl	12(%ebp), %eax
	movl	(%eax,%ebx,4), %edi
	movl	%edi, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1229
	movb	$-1, _parametro8
L1229:
	movswl	_i,%esi
	movl	$LC132, 4(%esp)
	movl	12(%ebp), %edi
	movl	(%edi,%esi,4), %ecx
	movl	%ecx, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1297
L1231:
	movl	$-1, %edx
	movl	%edx, _parametroNoSonido
L1223:
	movzwl	_i, %ebx
	leal	1(%ebx), %edi
	movswl	%di,%esi
	cmpl	8(%ebp), %esi
	movl	%edi, %ecx
	movw	%di, _i
	jl	L1232
	jmp	L1275
	.p2align 4,,7
L1297:
	movswl	_i,%ecx
	movl	$LC133, 4(%esp)
	movl	12(%ebp), %eax
	movl	(%eax,%ecx,4), %ebx
	movl	%ebx, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1223
	jmp	L1231
	.p2align 4,,7
L1296:
	movswl	_i,%ecx
	movl	$LC130, 4(%esp)
	movl	12(%ebp), %esi
	movl	(%esi,%ecx,4), %ebx
	movl	%ebx, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1227
	jmp	L1228
	.p2align 4,,7
L1295:
	movswl	_i,%ebx
	movl	$LC123, 4(%esp)
	movl	12(%ebp), %ecx
	movl	(%ecx,%ebx,4), %edi
	movl	%edi, (%esp)
	call	_stricmp
	testl	%eax, %eax
	jne	L1225
	jmp	L1226
	.p2align 4,,7
L1217:
	movb	$0, _palancaJuegos
	jmp	L1220
L1281:
	movl	$LC127, (%esp)
	call	*32(%eax)
	jmp	L1216
L1280:
	movl	$LC135, (%esp)
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
	.p2align 4,,15
.globl _ScrollArriba
	.def	_ScrollArriba;	.scl	2;	.type	32;	.endef
_ScrollArriba:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movzwl	_elArticulo+2, %edx
	cmpw	%dx, _elArticulo+4
	jge	L1298
	cmpw	$0, _grises
	je	L1337
L1300:
	movl	$320, 28(%esp)
	movl	_videoTemporal, %ebx
	movl	_fondo, %esi
	movl	$640, 24(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	movl	$80, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	call	_blit
	movl	$260, 28(%esp)
	movl	_letras, %ecx
	movl	$640, 24(%esp)
	movl	$90, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	%ecx, (%esp)
	movl	$0, 16(%esp)
	movl	$140, 12(%esp)
	movl	$0, 8(%esp)
	call	_blit
	movl	_letras, %edi
	movl	28(%edi), %ebx
	movl	4(%ebx), %edx
	movl	$400, 16(%esp)
	movl	$639, 12(%esp)
	movl	%edx, 20(%esp)
	movl	$350, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%ebx)
	movzwl	_elArticulo+4, %edx
	movl	$290, -16(%ebp)
	movswl	%dx,%esi
	subl	$3, %esi
	movl	%esi, -20(%ebp)
	movl	-20(%ebp), %eax
	sall	$3, %esi
	subl	%eax, %esi
	sall	$2, %esi
	movl	%esi, -36(%ebp)
	.p2align 4,,15
L1327:
	movl	-36(%ebp), %eax
	movl	_elArticulo+28(%eax), %edi
	testl	%edi, %edi
	je	L1305
	addl	$10, -16(%ebp)
	movl	%eax, %edx
	movl	_elArticulo+16(%eax), %eax
	cmpl	$1, %eax
	je	L1313
	cmpl	$1, %eax
	jb	L1315
	cmpl	$2, %eax
	je	L1311
	cmpl	$3, %eax
	je	L1336
L1308:
	movl	-36(%ebp), %edx
	movl	_elArticulo+32(%edx), %edi
	testl	%edi, %edi
	jne	L1338
L1319:
	movl	-36(%ebp), %ebx
	movzwl	_elArticulo+24(%ebx), %eax
	testw	%ax, %ax
	je	L1333
	cmpw	$0, _grises
	je	L1339
	movl	$_elArticulo+8, %esi
L1326:
	movl	$10, 28(%esp)
	cwtl
	movl	-16(%ebp), %edx
	movl	86800(%esi,%eax,4), %edi
	movzbl	_elArticulo+20(%ebx), %esi
	movl	(%edi), %ecx
	movl	%edx, 20(%esp)
	movswl	_elArticulo+22(%ebx),%edx
	movl	%ecx, 24(%esp)
	leal	4(,%esi,8), %ecx
	movl	_letras, %esi
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_blit
L1333:
	movzwl	_elArticulo+4, %edx
L1305:
	incl	-20(%ebp)
	movswl	%dx,%ebx
	addl	$6, %ebx
	addl	$28, -36(%ebp)
	cmpl	%ebx, -20(%ebp)
	jl	L1327
	movl	$480, 28(%esp)
	leal	5(%edx), %ecx
	movl	_letras, %esi
	movw	%cx, _elArticulo+4
	movl	_videoTemporal, %edx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 4(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	_masked_blit
	movl	_letras, %edi
	movl	%edi, (%esp)
	call	_MostrarInfoArticulo
	cmpb	$0, _raton
	je	L1328
	movl	$0, (%esp)
	call	_show_mouse
	movl	$350, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %esi
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	__imp__screen, %edi
	movl	(%edi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	.p2align 4,,15
L1298:
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1328:
	movl	$350, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %ebx
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%esi), %edi
	movl	%ebx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	jmp	L1298
L1339:
	cwtl
	movl	$_elArticulo+8, %esi
	movl	86880(%esi,%eax,4), %ecx
	movl	%ecx, (%esp)
	call	_select_palette
	movl	-36(%ebp), %edi
	movzwl	_elArticulo+24(%edi), %eax
	jmp	L1326
	.p2align 4,,7
L1338:
	movl	_elArticulo+28(%edx), %esi
	movl	%esi, (%esp)
	call	_strlen
	movl	-36(%ebp), %ecx
	sall	$3, %eax
	movswl	%ax,%esi
	movl	_elArticulo+32(%ecx), %edi
	testl	%edi, %edi
	je	L1319
	.p2align 4,,15
L1324:
	movswl	4(%edi),%edx
	movl	_datafile, %ecx
	movl	__imp___textmode, %eax
	sall	$4, %edx
	movl	(%ecx,%edx), %ebx
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	movl	(%eax), %eax
	movl	%ecx, -32(%ebp)
	leal	4(%esi), %ecx
	movl	%eax, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%edx, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	_letras, %ecx
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_textout_ex
	movl	8(%edi), %ebx
	movl	%ebx, (%esp)
	call	_strlen
	movl	12(%edi), %edi
	leal	(%esi,%eax,8), %edx
	movswl	%dx,%esi
	testl	%edi, %edi
	jne	L1324
	jmp	L1319
	.p2align 4,,7
L1336:
	movswl	_elArticulo+12(%edx),%esi
	movl	_datafile, %ecx
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$4, %esi
	movl	(%ecx,%esi), %ebx
	movl	__imp___textmode, %esi
	movl	_elArticulo+8(%edx), %ecx
	movl	(%esi), %edx
	movl	%eax, 16(%esp)
	movl	_letras, %eax
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$4, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
L1335:
	movl	%eax, (%esp)
	call	_textout_ex
	jmp	L1308
L1311:
	movl	-36(%ebp), %esi
	movl	_datafile, %ecx
	movl	-36(%ebp), %edx
	movswl	_elArticulo+12(%esi),%ebx
	movl	-16(%ebp), %eax
	sall	$4, %ebx
	movl	(%ecx,%ebx), %esi
	movl	__imp___textmode, %ebx
	movl	_elArticulo+8(%edx), %ecx
	movl	(%ebx), %edx
	movl	%edi, 8(%esp)
	movl	_letras, %edi
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$319, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	jmp	L1308
	.p2align 4,,7
L1315:
	movl	_letras, %ebx
	movl	-36(%ebp), %eax
	movl	_datafile, %edx
	movl	%ebx, -24(%ebp)
	movswl	_elArticulo+12(%eax),%ebx
	movl	%ebx, %ecx
	sall	$4, %ecx
	movl	(%edx,%ecx), %esi
	movl	%ebx, 4(%esp)
	movl	$635, %ebx
	movl	%esi, -28(%ebp)
	movl	%edi, (%esp)
	call	_JustificacionDerecha
	movl	-36(%ebp), %ecx
	subl	%eax, %ebx
	movl	__imp___textmode, %edx
	movl	-24(%ebp), %eax
	movl	_elArticulo+8(%ecx), %esi
	movl	(%edx), %ecx
	movl	%edi, 8(%esp)
	movl	-16(%ebp), %edx
	movl	-28(%ebp), %edi
	movl	%ecx, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%edi, 4(%esp)
	jmp	L1335
L1313:
	movl	-36(%ebp), %edx
	jmp	L1336
L1337:
	movl	_configuracion, %ecx
	movl	256(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L1300
	.p2align 4,,15
.globl _ScrollAbajo
	.def	_ScrollAbajo;	.scl	2;	.type	32;	.endef
_ScrollAbajo:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	cmpw	$29, _elArticulo+4
	jg	L1379
L1340:
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1379:
	movl	_auxBitmap, %ecx
	movl	28(%ecx), %ebx
	movl	4(%ebx), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	*156(%ebx)
	cmpw	$0, _grises
	je	L1380
L1344:
	movl	$320, 28(%esp)
	movl	_videoTemporal, %esi
	movl	_fondo, %ebx
	movl	$640, 24(%esp)
	movl	%esi, 4(%esp)
	movl	$80, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, (%esp)
	call	_blit
	movl	$250, 28(%esp)
	movl	_auxBitmap, %edx
	movl	_letras, %edi
	movl	$640, 24(%esp)
	movl	%edx, 4(%esp)
	movl	$140, 20(%esp)
	movl	$0, 16(%esp)
	movl	$90, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edi, (%esp)
	call	_blit
	movzwl	_elArticulo+4, %edx
	movl	$80, -16(%ebp)
	movswl	%dx,%esi
	subl	$34, %esi
	movl	%esi, -20(%ebp)
	movl	-20(%ebp), %ecx
	sall	$3, %esi
	subl	%ecx, %esi
	sall	$2, %esi
	movl	%esi, -36(%ebp)
	.p2align 4,,15
L1369:
	movl	-36(%ebp), %eax
	movl	_elArticulo+28(%eax), %edi
	testl	%edi, %edi
	je	L1347
	addl	$10, -16(%ebp)
	movl	%eax, %edx
	movl	_elArticulo+16(%eax), %eax
	cmpl	$1, %eax
	je	L1355
	cmpl	$1, %eax
	jb	L1357
	cmpl	$2, %eax
	je	L1353
	cmpl	$3, %eax
	je	L1378
L1350:
	movl	-36(%ebp), %edx
	movl	_elArticulo+32(%edx), %edi
	testl	%edi, %edi
	jne	L1381
L1361:
	movl	-36(%ebp), %ebx
	movzwl	_elArticulo+24(%ebx), %eax
	testw	%ax, %ax
	je	L1375
	cmpw	$0, _grises
	je	L1382
	movl	$_elArticulo+8, %esi
L1368:
	movl	$10, 28(%esp)
	cwtl
	movl	-16(%ebp), %edx
	movl	86800(%esi,%eax,4), %edi
	movzbl	_elArticulo+20(%ebx), %esi
	movl	(%edi), %ecx
	movl	%edx, 20(%esp)
	movswl	_elArticulo+22(%ebx),%edx
	movl	%ecx, 24(%esp)
	leal	4(,%esi,8), %ecx
	movl	_auxBitmap, %esi
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_blit
L1375:
	movzwl	_elArticulo+4, %edx
L1347:
	incl	-20(%ebp)
	movswl	%dx,%ebx
	subl	$29, %ebx
	addl	$28, -36(%ebp)
	cmpl	%ebx, -20(%ebp)
	jl	L1369
	movl	$480, 28(%esp)
	leal	-5(%edx), %ecx
	movl	_auxBitmap, %esi
	movw	%cx, _elArticulo+4
	movl	_videoTemporal, %edx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 4(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	_masked_blit
	movl	_auxBitmap, %edi
	movl	%edi, (%esp)
	call	_MostrarInfoArticulo
	cmpb	$0, _raton
	je	L1370
	movl	$0, (%esp)
	call	_show_mouse
	movl	$350, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %esi
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	__imp__screen, %edi
	movl	(%edi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
L1371:
	movl	$320, 28(%esp)
	movl	_letras, %ecx
	movl	_auxBitmap, %edx
	movl	$640, 24(%esp)
	movl	$80, 20(%esp)
	movl	$0, 16(%esp)
	movl	$80, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_blit
	jmp	L1340
L1370:
	movl	$350, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %ebx
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%esi), %edi
	movl	%ebx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	jmp	L1371
L1382:
	cwtl
	movl	$_elArticulo+8, %esi
	movl	86880(%esi,%eax,4), %ecx
	movl	%ecx, (%esp)
	call	_select_palette
	movl	-36(%ebp), %edi
	movzwl	_elArticulo+24(%edi), %eax
	jmp	L1368
	.p2align 4,,7
L1381:
	movl	_elArticulo+28(%edx), %ecx
	movl	%ecx, (%esp)
	call	_strlen
	movl	-36(%ebp), %ebx
	sall	$3, %eax
	movswl	%ax,%esi
	movl	_elArticulo+32(%ebx), %edi
	testl	%edi, %edi
	je	L1361
	.p2align 4,,15
L1366:
	movswl	4(%edi),%edx
	movl	_datafile, %ecx
	movl	__imp___textmode, %eax
	sall	$4, %edx
	movl	(%ecx,%edx), %ebx
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	movl	(%eax), %eax
	movl	%ecx, -32(%ebp)
	leal	4(%esi), %ecx
	movl	%eax, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%edx, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	_auxBitmap, %ecx
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_textout_ex
	movl	8(%edi), %ebx
	movl	%ebx, (%esp)
	call	_strlen
	movl	12(%edi), %edi
	leal	(%esi,%eax,8), %edx
	movswl	%dx,%esi
	testl	%edi, %edi
	jne	L1366
	jmp	L1361
	.p2align 4,,7
L1378:
	movswl	_elArticulo+12(%edx),%ebx
	movl	_datafile, %ecx
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$4, %ebx
	movl	(%ecx,%ebx), %esi
	movl	__imp___textmode, %ebx
	movl	_elArticulo+8(%edx), %ecx
	movl	(%ebx), %edx
	movl	%eax, 16(%esp)
	movl	_auxBitmap, %eax
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$4, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
L1377:
	movl	%eax, (%esp)
	call	_textout_ex
	jmp	L1350
L1353:
	movl	-36(%ebp), %ebx
	movl	_datafile, %esi
	movl	-36(%ebp), %edx
	movswl	_elArticulo+12(%ebx),%ecx
	movl	-16(%ebp), %eax
	sall	$4, %ecx
	movl	(%esi,%ecx), %ebx
	movl	__imp___textmode, %ecx
	movl	_elArticulo+8(%edx), %esi
	movl	(%ecx), %edx
	movl	_auxBitmap, %ecx
	movl	%esi, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	jmp	L1350
	.p2align 4,,7
L1357:
	movl	_auxBitmap, %esi
	movl	-36(%ebp), %eax
	movl	_datafile, %edx
	movl	%esi, -24(%ebp)
	movswl	_elArticulo+12(%eax),%esi
	movl	%esi, %ecx
	sall	$4, %ecx
	movl	(%edx,%ecx), %ebx
	movl	%esi, 4(%esp)
	movl	$635, %esi
	movl	%ebx, -28(%ebp)
	movl	%edi, (%esp)
	call	_JustificacionDerecha
	movl	-36(%ebp), %ecx
	subl	%eax, %esi
	movl	__imp___textmode, %edx
	movl	-24(%ebp), %eax
	movl	_elArticulo+8(%ecx), %ebx
	movl	(%edx), %ecx
	movl	%edi, 8(%esp)
	movl	-16(%ebp), %edx
	movl	-28(%ebp), %edi
	movl	%ecx, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 4(%esp)
	jmp	L1377
L1355:
	movl	-36(%ebp), %edx
	jmp	L1378
L1380:
	movl	_configuracion, %ebx
	movl	256(%ebx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L1344
	.p2align 4,,15
.globl _LeerArchivoDatos
	.def	_LeerArchivoDatos;	.scl	2;	.type	32;	.endef
_LeerArchivoDatos:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$136, %esp
	movl	%ebx, -4(%ebp)
	movl	8(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_load_datafile
	movl	12(%ebp), %ecx
	testl	%eax, %eax
	movl	%eax, (%ecx)
	je	L1385
	movl	-4(%ebp), %ebx
	movl	%ebp, %esp
	popl	%ebp
	ret
L1385:
	movl	%ebx, 4(%esp)
	leal	-120(%ebp), %ebx
	movl	$1869771333, -120(%ebp)
	movl	$1701585010, -116(%ebp)
	movl	$1684956537, -112(%ebp)
	movl	$1818566767, -108(%ebp)
	movl	$1668440352, -104(%ebp)
	movl	$1870031208, -100(%ebp)
	movl	$543515680, -96(%ebp)
	movl	$1869898084, -92(%ebp)
	movl	$2112115, -88(%ebp)
	movl	%ebx, (%esp)
	call	_strcat
	movl	%ebx, (%esp)
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
LC138:
	.ascii "ROJO\0"
LC151:
	.ascii "COLOR\0"
LC152:
	.ascii "GRANDE\0"
LC153:
	.ascii "NORMAL\0"
LC154:
	.ascii "PC\0"
LC155:
	.ascii "PCT\0"
LC156:
	.ascii "XM\0"
LC157:
	.ascii "XMB\0"
LC158:
	.ascii "XMI\0"
LC159:
	.ascii "CHAR11\0"
LC160:
	.ascii "CHAR11B\0"
LC161:
	.ascii "CHAR11I\0"
LC162:
	.ascii "CHAR11BI\0"
LC163:
	.ascii "CHAR14\0"
LC164:
	.ascii "CHAR14B\0"
LC165:
	.ascii "CHAR14I\0"
LC166:
	.ascii "CHAR14BI\0"
LC167:
	.ascii "DERECHA\0"
LC168:
	.ascii "IZQUIERDA\0"
LC169:
	.ascii "CENTRO\0"
LC139:
	.ascii "VERDE\0"
LC140:
	.ascii "AZUL\0"
LC141:
	.ascii "NEGRO\0"
LC142:
	.ascii "BLANCO\0"
LC143:
	.ascii "MARRON\0"
LC144:
	.ascii "AMARILLO\0"
LC145:
	.ascii "VIOLETA\0"
LC146:
	.ascii "VERDEFOSFORITO\0"
LC147:
	.ascii "AZULCLARO\0"
LC148:
	.ascii "NARANJA\0"
LC149:
	.ascii "GRIS\0"
LC150:
	.ascii "GRISCLARO\0"
	.p2align 4,,15
.globl _BuscarItem
	.def	_BuscarItem;	.scl	2;	.type	32;	.endef
_BuscarItem:
	pushl	%ebp
	movl	$10076, %eax
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	__alloca
	xorl	%eax, %eax
	movl	$99, %edx
	xorl	%edi, %edi
	movl	%eax, -10044(%ebp)
	leal	-10024(%ebp), %eax
	movl	%edx, -10040(%ebp)
	.p2align 4,,15
L1391:
	movb	$0, (%eax)
	addl	$100, %eax
	decl	-10040(%ebp)
	jns	L1391
	movl	-10044(%ebp), %ebx
	xorl	%esi, %esi
	movl	%esi, -10040(%ebp)
	leal	(%ebx,%ebx,4), %ecx
	leal	(%ecx,%ecx,4), %edx
	leal	0(,%edx,4), %esi
	movl	%esi, %ebx
L1392:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	incl	%eax
	cmpl	%eax, -10040(%ebp)
	jae	L1456
	movl	8(%ebp), %ecx
	movl	-10040(%ebp), %eax
	movzbl	(%eax,%ecx), %edx
	testb	%dl, %dl
	je	L1397
	cmpb	$32, %dl
	je	L1397
	cmpb	$61, %dl
	je	L1397
	leal	(%edi,%esi), %ecx
	incl	%edi
	movb	%dl, -10024(%ebp,%ecx)
L1394:
	incl	-10040(%ebp)
	jmp	L1392
L1397:
	leal	(%edi,%ebx), %ecx
	xorl	%eax, %eax
	xorl	%edi, %edi
	movb	%al, -10024(%ebp,%ecx)
	addl	$100, %ebx
	addl	$100, %esi
	incl	-10044(%ebp)
	jmp	L1394
L1456:
	xorl	%edx, %edx
	movl	-10044(%ebp), %edi
	movl	%edx, -10040(%ebp)
	cmpl	%edi, -10040(%ebp)
	jge	L1453
	leal	-10024(%ebp), %ecx
	xorl	%ebx, %ebx
	leal	-24(%ebp), %esi
	movl	%ecx, -10056(%ebp)
	movl	%esi, -10060(%ebp)
	movl	%ebx, -10064(%ebp)
L1449:
	cld
	movl	-10056(%ebp), %edi
	movl	$5, %ecx
	movl	$LC138, %esi
	repe
	cmpsb
	jne	L1404
	movl	_color_rojo, %eax
L1454:
	movl	12(%ebp), %edx
	movl	%eax, (%edx)
L1405:
	cld
	movl	-10060(%ebp), %ebx
	movl	$6, %ecx
	movl	-10056(%ebp), %edi
	movl	$LC151, %esi
	movl	%ebx, -10052(%ebp)
	repe
	cmpsb
	je	L1457
L1429:
	cld
	movl	-10056(%ebp), %esi
	movl	$7, %ecx
	movl	$LC152, %edi
	repe
	cmpsb
	jne	L1430
	movl	12(%ebp), %ebx
	movw	$8, 4(%ebx)
L1430:
	cld
	movl	-10056(%ebp), %esi
	movl	$7, %ecx
	movl	$LC153, %edi
	repe
	cmpsb
	jne	L1431
	movl	12(%ebp), %esi
	movw	$9, 4(%esi)
L1431:
	cld
	movl	-10056(%ebp), %esi
	movl	$3, %ecx
	movl	$LC154, %edi
	repe
	cmpsb
	jne	L1432
	movl	12(%ebp), %ecx
	movw	$10, 4(%ecx)
L1432:
	cld
	movl	-10056(%ebp), %esi
	movl	$4, %ecx
	movl	$LC155, %edi
	repe
	cmpsb
	jne	L1433
	movl	12(%ebp), %edx
	movw	$11, 4(%edx)
L1433:
	cld
	movl	-10056(%ebp), %esi
	movl	$3, %ecx
	movl	$LC156, %edi
	repe
	cmpsb
	jne	L1434
	movl	12(%ebp), %edi
	movw	$12, 4(%edi)
L1434:
	cld
	movl	-10056(%ebp), %esi
	movl	$4, %ecx
	movl	$LC157, %edi
	repe
	cmpsb
	jne	L1435
	movl	12(%ebp), %eax
	movw	$13, 4(%eax)
L1435:
	cld
	movl	-10056(%ebp), %esi
	movl	$4, %ecx
	movl	$LC158, %edi
	repe
	cmpsb
	jne	L1436
	movl	12(%ebp), %ebx
	movw	$14, 4(%ebx)
L1436:
	cld
	movl	-10056(%ebp), %esi
	movl	$7, %ecx
	movl	$LC159, %edi
	repe
	cmpsb
	jne	L1437
	movl	12(%ebp), %esi
	movw	$0, 4(%esi)
L1437:
	cld
	movl	-10056(%ebp), %esi
	movl	$8, %ecx
	movl	$LC160, %edi
	repe
	cmpsb
	jne	L1438
	movl	12(%ebp), %ecx
	movw	$1, 4(%ecx)
L1438:
	cld
	movl	-10052(%ebp), %ebx
	movl	$8, %edx
	movl	$LC161, %edi
	movl	%edx, %ecx
	subl	$10000, %ebx
	movl	%ebx, %esi
	repe
	cmpsb
	jne	L1439
	movl	12(%ebp), %edi
	movw	$3, 4(%edi)
L1439:
	cld
	movl	$9, %edx
	movl	%ebx, %esi
	movl	$LC162, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1440
	movl	12(%ebp), %esi
	movw	$2, 4(%esi)
L1440:
	cld
	movl	$7, %edx
	movl	%ebx, %esi
	movl	$LC163, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1441
	movl	12(%ebp), %ecx
	movw	$4, 4(%ecx)
L1441:
	cld
	movl	$8, %edx
	movl	%ebx, %esi
	movl	$LC164, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1442
	movl	12(%ebp), %edi
	movw	$5, 4(%edi)
L1442:
	cld
	movl	$8, %edx
	movl	%ebx, %esi
	movl	$LC165, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1443
	movl	12(%ebp), %esi
	movw	$7, 4(%esi)
L1443:
	cld
	movl	$9, %edx
	movl	%ebx, %esi
	movl	$LC166, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1444
	movl	12(%ebp), %ecx
	movw	$6, 4(%ecx)
L1444:
	cld
	movl	$3, %edx
	movl	%ebx, %esi
	movl	$LC130, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1445
	movl	12(%ebp), %edi
	movl	$3, 8(%edi)
L1445:
	cld
	movl	$8, %edx
	movl	%ebx, %esi
	movl	$LC167, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1446
	movl	12(%ebp), %esi
	movl	$0, 8(%esi)
L1446:
	cld
	movl	$10, %edx
	movl	%ebx, %esi
	movl	$LC168, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1447
	movl	12(%ebp), %ecx
	movl	$1, 8(%ecx)
L1447:
	cld
	movl	$7, %edx
	movl	%ebx, %esi
	movl	$LC169, %edi
	movl	%edx, %ecx
	repe
	cmpsb
	jne	L1402
	movl	12(%ebp), %ebx
	movl	$2, 8(%ebx)
L1402:
	incl	-10040(%ebp)
	movl	-10044(%ebp), %eax
	addl	$100, -10064(%ebp)
	addl	$100, -10060(%ebp)
	addl	$100, -10056(%ebp)
	cmpl	%eax, -10040(%ebp)
	jl	L1449
L1453:
	addl	$10076, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1457:
	movl	-10064(%ebp), %eax
	leal	-10028(%ebp), %esi
	movl	%esi, 4(%esp)
	leal	-10024(%eax,%ebp), %ebx
	leal	100(%ebx), %edi
	movl	%edi, (%esp)
	call	_strtod
	fnstcw	-10030(%ebp)
	leal	200(%ebx), %edx
	addl	$300, %ebx
	movzwl	-10030(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	orw	$3072, %cx
	movw	%cx, -10032(%ebp)
	fldcw	-10032(%ebp)
	fistpl	-10048(%ebp)
	fldcw	-10030(%ebp)
	call	_strtod
	fnstcw	-10030(%ebp)
	movzwl	-10030(%ebp), %edi
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	orw	$3072, %di
	movw	%di, -10032(%ebp)
	fldcw	-10032(%ebp)
	fistpl	-10036(%ebp)
	fldcw	-10030(%ebp)
	movl	-10036(%ebp), %edi
	call	_strtod
	fnstcw	-10030(%ebp)
	movl	-10048(%ebp), %eax
	movzwl	-10030(%ebp), %ecx
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	orw	$3072, %cx
	movw	%cx, -10032(%ebp)
	fldcw	-10032(%ebp)
	fistpl	8(%esp)
	fldcw	-10030(%ebp)
	call	_makecol
	movl	12(%ebp), %esi
	movl	%eax, (%esi)
	jmp	L1429
L1404:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC139, %esi
	movl	$6, %ecx
	repe
	cmpsb
	jne	L1406
	movl	_color_verde, %eax
L1455:
	movl	12(%ebp), %edi
	movl	%eax, (%edi)
	jmp	L1405
L1406:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC140, %esi
	movl	$5, %ecx
	repe
	cmpsb
	jne	L1408
	movl	_color_azul, %eax
	jmp	L1454
L1408:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC141, %esi
	movl	$6, %ecx
	repe
	cmpsb
	jne	L1410
	movl	_color_negro, %eax
	jmp	L1455
L1410:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC142, %esi
	movl	$7, %ecx
	repe
	cmpsb
	jne	L1412
	movl	_color_blanco, %eax
	jmp	L1454
L1412:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC143, %esi
	movl	$7, %ecx
	repe
	cmpsb
	jne	L1414
	movl	_color_marron, %eax
	jmp	L1455
L1414:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC144, %esi
	movl	$9, %ecx
	repe
	cmpsb
	jne	L1416
	movl	_color_amarillo, %eax
	jmp	L1454
L1416:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC145, %esi
	movl	$8, %ecx
	repe
	cmpsb
	jne	L1418
	movl	_color_violeta, %eax
	jmp	L1455
L1418:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC146, %esi
	movl	$15, %ecx
	repe
	cmpsb
	jne	L1420
	movl	_color_verdeFosforito, %eax
	jmp	L1454
L1420:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC147, %esi
	movl	$10, %ecx
	repe
	cmpsb
	jne	L1422
	movl	_color_azulClaro, %eax
	jmp	L1455
L1422:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC148, %esi
	movl	$8, %ecx
	repe
	cmpsb
	jne	L1424
	movl	_color_naranja, %eax
	jmp	L1454
L1424:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC149, %esi
	movl	$5, %ecx
	repe
	cmpsb
	jne	L1426
	movl	_color_gris, %eax
	jmp	L1455
L1426:
	cld
	movl	-10056(%ebp), %edi
	movl	$LC150, %esi
	movl	$10, %ecx
	repe
	cmpsb
	jne	L1405
	movl	_color_grisClaro, %eax
	jmp	L1454
	.align 32
LC173:
	.ascii "Error leyendo indice de la paleta de la foto\12\0"
LC172:
	.ascii "Error leyendo indice de foto\12\0"
LC174:
	.ascii "Error en articulo\12\0"
	.p2align 4,,15
.globl _MostrarArticulo
	.def	_MostrarArticulo;	.scl	2;	.type	32;	.endef
_MostrarArticulo:
	pushl	%ebp
	movl	$52684, %eax
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	__alloca
	xorl	%edx, %edx
	movl	%edx, -52572(%ebp)
	movl	8(%ebp), %edx
	testl	%edx, %edx
	je	L1459
	movb	$0, -52536(%ebp)
	leal	-52024(%ebp), %eax
	movl	$99, %ebx
	.p2align 4,,15
L1464:
	movb	$0, (%eax)
	addl	$500, %eax
	decl	%ebx
	jns	L1464
	movl	_letras, %edi
	movl	28(%edi), %esi
	movl	$2, %edi
	movl	4(%esi), %ebx
	xorl	%esi, %esi
	movl	%ebx, (%esp)
	call	_text_mode
	movb	$0, -52024(%ebp)
	movl	_color_blanco, %ecx
	xorl	%eax, %eax
	movl	%edi, -2016(%ebp)
	movl	8(%ebp), %ebx
	movl	$10, %edx
	movl	%eax, -52576(%ebp)
	movl	$7, %edi
	movl	%ecx, -2024(%ebp)
	movl	(%ebx), %ecx
	movw	%dx, -2020(%ebp)
	movw	%si, _elArticulo+2
	movl	%ecx, %eax
	movzbl	7(%ecx), %ebx
	cmpb	$93, %bl
	je	L1467
	cmpb	$10, %bl
	je	L1467
L1471:
	cmpb	$13, %bl
	je	L1470
	movl	-52576(%ebp), %ecx
	movb	%bl, -52024(%ebp,%ecx)
	incl	%ecx
	movl	%ecx, -52576(%ebp)
L1470:
	incl	%edi
	movzbl	(%edi,%eax), %ebx
	cmpb	$93, %bl
	je	L1467
	cmpb	$10, %bl
	jne	L1471
L1467:
	movl	-52576(%ebp), %edx
	xorl	%eax, %eax
	leal	-52540(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movb	%al, -52024(%ebp,%edx)
	leal	-52024(%ebp), %eax
	movl	%eax, (%esp)
	call	_strtod
	fnstcw	-52542(%ebp)
	movl	8(%ebp), %ebx
	movzwl	-52542(%ebp), %esi
	movb	$0, -52024(%ebp)
	fstl	-52568(%ebp)
	orw	$3072, %si
	movw	%si, -52544(%ebp)
	fldcw	-52544(%ebp)
	fistpl	-52548(%ebp)
	fldcw	-52542(%ebp)
	movl	-52548(%ebp), %edx
	movb	%dl, _elArticulo
	movl	(%ebx), %edx
	movl	%edx, %eax
	cmpb	$10, (%edi,%edx)
	je	L1604
L1475:
	incl	%edi
	cmpb	$10, (%edi,%eax)
	jne	L1475
L1604:
	fldl	-52568(%ebp)
	incl	%edi
	movl	$1, %ebx
	movl	%ebx, -52576(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jb	L1606
	.p2align 4,,15
L1508:
	xorl	%eax, %eax
	.p2align 4,,15
L1484:
	movzbl	(%edi,%edx), %ebx
	cmpb	$32, %bl
	je	L1483
	cmpb	$13, %bl
	je	L1483
	movb	%bl, -52024(%ebp,%eax)
	incl	%eax
L1483:
	incl	%edi
	cmpb	$32, %bl
	jne	L1484
	movl	_revista, %ecx
	xorl	%ebx, %ebx
	movb	%bl, -52024(%ebp,%eax)
	leal	-52024(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_find_datafile_object
	movl	%eax, -52556(%ebp)
	testl	%eax, %eax
	je	L1635
	movl	8(%ebp), %esi
	xorl	%eax, %eax
	movl	(%esi), %edx
	.p2align 4,,15
L1490:
	movzbl	(%edi,%edx), %ebx
	cmpb	$32, %bl
	je	L1489
	cmpb	$13, %bl
	je	L1489
	movb	%bl, -52024(%ebp,%eax)
	incl	%eax
L1489:
	incl	%edi
	cmpb	$32, %bl
	jne	L1490
	xorl	%edx, %edx
	leal	-52024(%ebp), %ecx
	movb	%dl, -52024(%ebp,%eax)
	movl	_revista, %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_find_datafile_object
	testl	%eax, %eax
	movl	%eax, %esi
	je	L1636
	movl	8(%ebp), %ebx
	xorl	%eax, %eax
	movl	(%ebx), %edx
	.p2align 4,,15
L1496:
	movzbl	(%edi,%edx), %ebx
	cmpb	$13, %bl
	je	L1495
	movb	%bl, -52024(%ebp,%eax)
	incl	%eax
L1495:
	incl	%edi
	cmpb	$32, %bl
	jne	L1496
	xorl	%ebx, %ebx
	leal	-52540(%ebp), %edx
	movb	%bl, -52024(%ebp,%eax)
	leal	-52024(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strtod
	fnstcw	-52542(%ebp)
	movl	8(%ebp), %ebx
	xorl	%eax, %eax
	movzwl	-52542(%ebp), %ecx
	orw	$3072, %cx
	movw	%cx, -52544(%ebp)
	movl	(%ebx), %edx
	fldcw	-52544(%ebp)
	fistpl	-52560(%ebp)
	fldcw	-52542(%ebp)
	.p2align 4,,15
L1501:
	movzbl	(%edi,%edx), %ebx
	cmpb	$13, %bl
	je	L1500
	movb	%bl, -52024(%ebp,%eax)
	incl	%eax
L1500:
	incl	%edi
	cmpb	$10, %bl
	jne	L1501
	xorl	%ebx, %ebx
	leal	-52540(%ebp), %ecx
	movb	%bl, -52024(%ebp,%eax)
	leal	-52024(%ebp), %ebx
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	_strtod
	fnstcw	-52542(%ebp)
	movl	-52556(%ebp), %eax
	movzwl	-52542(%ebp), %edx
	orw	$3072, %dx
	movw	%dx, -52544(%ebp)
	movl	$_elArticulo+8, %edx
	fldcw	-52544(%ebp)
	fistpl	-52548(%ebp)
	fldcw	-52542(%ebp)
	movl	(%esi), %ecx
	movl	-52576(%ebp), %esi
	movl	-52548(%ebp), %ebx
	movl	%ecx, 86880(%edx,%esi,4)
	movl	(%eax), %esi
	movl	-52576(%ebp), %eax
	movl	4(%esi), %ecx
	movl	%esi, 86800(%edx,%eax,4)
	movl	$1717986919, %eax
	imull	%ecx
	movl	%ecx, %eax
	movl	%edx, %esi
	sarl	$2, %esi
	cltd
	subl	%edx, %esi
	movl	%esi, %edx
	leal	(%esi,%esi,4), %esi
	addl	%esi, %esi
	subl	%esi, %ecx
	movl	%ecx, -52636(%ebp)
	testl	%ecx, %ecx
	jle	L1502
	movl	$1, %esi
	movl	%esi, -52636(%ebp)
L1502:
	movl	-52636(%ebp), %eax
	xorl	%ecx, %ecx
	movl	%ecx, -52580(%ebp)
	leal	(%eax,%edx), %esi
	cmpl	%esi, -52580(%ebp)
	jge	L1616
	leal	0(,%ebx,8), %edx
	xorl	%esi, %esi
	subl	%ebx, %edx
	leal	0(,%edx,4), %ebx
	.p2align 4,,15
L1507:
	movzbl	-52560(%ebp), %ecx
	movw	%si, _elArticulo+22(%ebx)
	addl	$10, %esi
	movl	-52576(%ebp), %eax
	incl	-52580(%ebp)
	movl	-52576(%ebp), %edx
	movb	%cl, _elArticulo+20(%ebx)
	movw	%ax, _elArticulo+24(%ebx)
	movl	$_elArticulo+8, %eax
	addl	$28, %ebx
	movl	86800(%eax,%edx,4), %ecx
	movl	$1717986919, %eax
	movl	4(%ecx), %edx
	movl	%edx, -52640(%ebp)
	movl	-52640(%ebp), %ecx
	imull	-52640(%ebp)
	sarl	$31, %ecx
	sarl	$2, %edx
	subl	%ecx, %edx
	movl	-52636(%ebp), %ecx
	addl	%ecx, %edx
	cmpl	%edx, -52580(%ebp)
	jl	L1507
L1616:
	incl	-52576(%ebp)
	fldl	-52568(%ebp)
	fildl	-52576(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jb	L1606
	movl	8(%ebp), %esi
	movl	(%esi), %edx
	jmp	L1508
L1606:
	movb	$0, -52024(%ebp)
	movl	8(%ebp), %ebx
	xorl	%esi, %esi
	movl	%esi, -52576(%ebp)
	movl	8(%ebx), %eax
	cmpl	%eax, %edi
	jge	L1618
	xorl	%edx, %edx
	movl	$_elArticulo+28, %ecx
	movl	%edx, -52620(%ebp)
	movl	%ecx, -52624(%ebp)
L1560:
	movl	8(%ebp), %ebx
	movl	(%ebx), %edx
	movzbl	(%edi,%edx), %ebx
	cmpb	$13, %bl
	je	L1512
	cmpb	$91, %bl
	je	L1637
	cmpb	$10, %bl
	je	L1599
	cmpb	$13, %bl
	je	L1512
	movl	-52572(%ebp), %edx
	movl	-52576(%ebp), %eax
	imull	$500, %edx, %edx
	addl	%eax, %edx
	movb	%bl, -52024(%ebp,%edx)
L1631:
	incl	-52576(%ebp)
L1512:
	cmpb	$10, %bl
	je	L1599
L1527:
	movl	8(%ebp), %esi
	incl	%edi
	movl	8(%esi), %eax
	cmpl	%eax, %edi
	jl	L1560
L1618:
	movl	_letras, %edi
	movl	$80, %ebx
	movl	28(%edi), %esi
	movl	4(%esi), %eax
	movl	%edi, (%esp)
	movl	$29, %edi
	movl	%eax, 20(%esp)
	movl	$479, 16(%esp)
	movl	$639, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	*56(%esi)
	movl	%ebx, -52552(%ebp)
	xorl	%ecx, %ecx
	movl	%ecx, -52608(%ebp)
	movl	%edi, -52580(%ebp)
	.p2align 4,,15
L1593:
	movl	-52608(%ebp), %eax
	movl	_elArticulo+28(%eax), %edi
	testl	%edi, %edi
	je	L1565
	addl	$10, -52552(%ebp)
	movl	%eax, %edx
	movl	_elArticulo+16(%eax), %eax
	cmpl	$1, %eax
	je	L1579
	cmpl	$1, %eax
	jb	L1587
	cmpl	$2, %eax
	je	L1577
	cmpl	$3, %eax
	je	L1638
L1568:
	movl	-52608(%ebp), %ebx
	movzwl	_elArticulo+24(%ebx), %eax
	testw	%ax, %ax
	je	L1565
	cmpw	$0, _grises
	je	L1639
L1592:
	movl	$10, 28(%esp)
	cwtl
	movl	_elArticulo+86808(,%eax,4), %edi
	movzbl	_elArticulo+20(%ebx), %esi
	movl	-52552(%ebp), %eax
	movl	(%edi), %ecx
	movl	$0, 8(%esp)
	leal	4(,%esi,8), %edx
	movl	%ecx, 24(%esp)
	movswl	_elArticulo+22(%ebx),%ecx
	movl	_letras, %ebx
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_blit
	.p2align 4,,15
L1565:
	addl	$28, -52608(%ebp)
	decl	-52580(%ebp)
	jns	L1593
	cmpw	$0, _grises
	movl	$29, %ebx
	movw	%bx, _elArticulo+4
	je	L1640
L1594:
	movl	$321, 28(%esp)
	movl	_videoTemporal, %edi
	movl	_fondo, %ebx
	movl	$640, 24(%esp)
	movl	$80, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_blit
	call	_MostrarBotones
	movl	$480, 28(%esp)
	movl	_videoTemporal, %ecx
	movl	_letras, %esi
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	_masked_blit
	cmpw	$0, _grises
	je	L1641
L1595:
	movl	$80, 28(%esp)
	movl	_videoTemporal, %esi
	movl	_configuracion, %edx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	80(%edx), %edi
	movl	%edi, (%esp)
	call	_blit
	movl	_letras, %ebx
	movl	%ebx, (%esp)
	call	_MostrarTitulo
	movl	_letras, %ecx
	movl	%ecx, (%esp)
	call	_MostrarInfoArticulo
	cmpb	$0, _raton
	jne	L1642
L1596:
	movl	$480, 28(%esp)
	movl	__imp__screen, %edi
	movl	_videoTemporal, %ecx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edi), %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_blit
	cmpb	$0, _raton
	jne	L1643
L1458:
	addl	$52684, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1643:
	movl	__imp__screen, %esi
	movl	(%esi), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L1458
L1642:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L1596
L1641:
	movl	_configuracion, %esi
	movl	272(%esi), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L1595
L1640:
	movl	_configuracion, %edx
	movl	256(%edx), %edi
	movl	%edi, (%esp)
	call	_select_palette
	jmp	L1594
L1639:
	cwtl
	movl	_elArticulo+86888(,%eax,4), %esi
	movl	%esi, (%esp)
	call	_select_palette
	movl	-52608(%ebp), %edi
	movzwl	_elArticulo+24(%edi), %eax
	jmp	L1592
L1638:
	movswl	_elArticulo+12(%edx),%esi
	movl	_datafile, %ecx
	movl	-52608(%ebp), %edx
	sall	$4, %esi
	movl	(%ecx,%esi), %ebx
	movl	_elArticulo+8(%edx), %ecx
	movl	__imp___textmode, %esi
	movl	(%esi), %edx
	movl	-52552(%ebp), %esi
	movl	%ecx, 20(%esp)
	movl	_letras, %ecx
	movl	%edx, 24(%esp)
	movl	%esi, 16(%esp)
	movl	%ecx, (%esp)
	movl	$4, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	call	_textout_ex
	movl	-52608(%ebp), %ecx
	movl	_elArticulo+32(%ecx), %edx
	testl	%edx, %edx
	je	L1568
	movl	_elArticulo+28(%ecx), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	-52608(%ebp), %edx
	leal	0(,%eax,8), %edi
	movl	_elArticulo+32(%edx), %ebx
	movl	%ebx, -52584(%ebp)
	testl	%ebx, %ebx
	je	L1568
L1576:
	movl	-52584(%ebp), %ebx
	movl	_datafile, %ecx
	movl	-52584(%ebp), %edx
	movswl	4(%ebx),%esi
	sall	$4, %esi
	movl	(%ecx,%esi), %ebx
	movl	-52584(%ebp), %esi
	movl	(%edx), %ecx
	movl	8(%esi), %eax
	leal	4(%edi), %esi
	movl	%eax, -52596(%ebp)
	movl	__imp___textmode, %eax
	movl	(%eax), %edx
	movl	%ecx, 20(%esp)
	movl	-52596(%ebp), %eax
	movl	-52552(%ebp), %ecx
	movl	%edx, 24(%esp)
	movl	_letras, %edx
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	_textout_ex
	movl	-52584(%ebp), %ebx
	movl	8(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_strlen
	movl	-52584(%ebp), %esi
	leal	(%edi,%eax,8), %edi
	movl	12(%esi), %eax
	movl	%eax, -52584(%ebp)
	testl	%eax, %eax
	jne	L1576
	jmp	L1568
L1577:
	movl	-52608(%ebp), %esi
	movl	_datafile, %ecx
	movl	-52608(%ebp), %edx
	movswl	_elArticulo+12(%esi),%ebx
	movl	-52552(%ebp), %eax
	sall	$4, %ebx
	movl	(%ecx,%ebx), %esi
	movl	__imp___textmode, %ebx
	movl	_elArticulo+8(%edx), %ecx
	movl	(%ebx), %edx
	movl	%edi, 8(%esp)
	movl	_letras, %edi
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$319, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	jmp	L1568
L1587:
	movl	-52608(%ebp), %edx
	movl	_datafile, %eax
	movl	_letras, %ebx
	movswl	_elArticulo+12(%edx),%esi
	movl	%esi, %edx
	sall	$4, %edx
	movl	(%eax,%edx), %ecx
	movl	%esi, 4(%esp)
	movl	$635, %esi
	movl	%ecx, -52604(%ebp)
	movl	%edi, (%esp)
	call	_JustificacionDerecha
	movl	-52608(%ebp), %ecx
	subl	%eax, %esi
	movl	__imp___textmode, %eax
	movl	_elArticulo+8(%ecx), %edx
	movl	(%eax), %ecx
	movl	%edi, 8(%esp)
	movl	-52604(%ebp), %edi
	movl	%edx, 20(%esp)
	movl	-52552(%ebp), %edx
	movl	%ecx, 24(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_textout_ex
	jmp	L1568
L1579:
	movl	-52608(%ebp), %ebx
	movl	_datafile, %ecx
	movl	-52608(%ebp), %esi
	movswl	_elArticulo+12(%ebx),%edx
	movl	-52552(%ebp), %eax
	sall	$4, %edx
	movl	(%ecx,%edx), %ebx
	movl	__imp___textmode, %edx
	movl	_elArticulo+8(%esi), %ecx
	movl	(%edx), %esi
	movl	_letras, %edx
	movl	%ecx, 20(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 16(%esp)
	movl	$4, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	_textout_ex
	movl	-52608(%ebp), %ecx
	movl	_elArticulo+32(%ecx), %edi
	testl	%edi, %edi
	je	L1568
	movl	_elArticulo+28(%ecx), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	-52608(%ebp), %ecx
	leal	0(,%eax,8), %edi
	movl	_elArticulo+32(%ecx), %esi
	movl	%esi, -52584(%ebp)
	testl	%esi, %esi
	je	L1568
L1586:
	movl	-52584(%ebp), %ebx
	movl	_datafile, %ecx
	movl	-52584(%ebp), %edx
	movswl	4(%ebx),%esi
	sall	$4, %esi
	movl	(%ecx,%esi), %ebx
	movl	-52584(%ebp), %esi
	movl	(%edx), %ecx
	movl	8(%esi), %eax
	leal	4(%edi), %esi
	movl	%eax, -52600(%ebp)
	movl	__imp___textmode, %eax
	movl	(%eax), %edx
	movl	%ecx, 20(%esp)
	movl	-52600(%ebp), %eax
	movl	-52552(%ebp), %ecx
	movl	%edx, 24(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	_letras, %ecx
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_textout_ex
	movl	-52584(%ebp), %esi
	movl	8(%esi), %ebx
	movl	%ebx, (%esp)
	call	_strlen
	movl	-52584(%ebp), %edx
	leal	(%edi,%eax,8), %edi
	movl	12(%edx), %eax
	movl	%eax, -52584(%ebp)
	testl	%eax, %eax
	jne	L1586
	jmp	L1568
L1599:
	movl	-52572(%ebp), %ebx
	xorl	%eax, %eax
	movl	-52576(%ebp), %edx
	imull	$500, %ebx, %ebx
	addl	%edx, %ebx
	movb	%al, -52024(%ebp,%ebx)
	movl	-52620(%ebp), %ebx
	movzbl	_elArticulo+20(%ebx), %ecx
	movzwl	_elArticulo+22(%ebx), %esi
	movzwl	_elArticulo+24(%ebx), %edx
	movb	%cl, -2012(%ebp)
	movl	-2024(%ebp), %ecx
	movw	%si, -2010(%ebp)
	movl	-2020(%ebp), %esi
	movw	%dx, -2008(%ebp)
	movl	-2016(%ebp), %edx
	movl	%ecx, _elArticulo+8(%ebx)
	movl	-2012(%ebp), %ecx
	movl	%esi, _elArticulo+12(%ebx)
	movl	-2008(%ebp), %esi
	movl	%ecx, _elArticulo+20(%ebx)
	leal	-52024(%ebp), %ecx
	movl	%edx, _elArticulo+16(%ebx)
	movl	%esi, _elArticulo+24(%ebx)
	.p2align 4,,15
L1529:
	movl	(%ecx), %esi
	addl	$4, %ecx
	leal	-16843009(%esi), %edx
	notl	%esi
	andl	%esi, %edx
	andl	$-2139062144, %edx
	je	L1529
	testl	$32896, %edx
	jne	L1531
	shrl	$16, %edx
	addl	$2, %ecx
L1531:
	addb	%dl, %dl
	leal	-52024(%ebp), %ebx
	sbbl	$3, %ecx
	subl	%ebx, %ecx
	cmpl	$79, %ecx
	jbe	L1528
	movb	$0, -51945(%ebp)
L1528:
	movl	-52572(%ebp), %eax
	xorl	%ecx, %ecx
	movl	%ecx, -52588(%ebp)
	testl	%eax, %eax
	jle	L1532
	movl	-52572(%ebp), %edx
	xorl	%esi, %esi
	cmpl	%edx, %esi
	jg	L1621
	movl	%edx, %ebx
	leal	-52024(%ebp), %esi
	incl	%ebx
L1537:
	movl	%esi, (%esp)
	addl	$500, %esi
	call	_strlen
	movl	-52588(%ebp), %ecx
	addl	%ecx, %eax
	cwtl
	movl	%eax, -52588(%ebp)
	decl	%ebx
	jne	L1537
L1621:
	movl	-52572(%ebp), %edx
	testl	%edx, %edx
	je	L1538
	movl	-52588(%ebp), %ebx
	movl	$79, %ecx
	movl	%ecx, %eax
	movl	%ecx, %esi
	subl	%ebx, %eax
	cltd
	idivl	-52572(%ebp)
	cwtl
	subl	%eax, %esi
	movl	%eax, -52588(%ebp)
	movl	%esi, %eax
	cltd
	idivl	-52572(%ebp)
	movswl	%dx,%ebx
	movl	%ebx, -52592(%ebp)
L1539:
	leal	-52024(%ebp), %ecx
	.p2align 4,,15
L1540:
	movl	(%ecx), %ebx
	addl	$4, %ecx
	leal	-16843009(%ebx), %edx
	notl	%ebx
	andl	%ebx, %edx
	andl	$-2139062144, %edx
	je	L1540
	testl	$32896, %edx
	jne	L1542
	shrl	$16, %edx
	addl	$2, %ecx
L1542:
	addb	%dl, %dl
	movl	-52588(%ebp), %esi
	leal	-52024(%ebp), %ebx
	sbbl	$3, %ecx
	movl	-2016(%ebp), %edx
	subl	%ebx, %ecx
	leal	(%esi,%ecx), %eax
	cwtl
	movswl	-2020(%ebp),%ecx
	movl	%eax, 12(%esp)
	leal	-52024(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
L1632:
	call	_HacerJustificacion
	movl	-52624(%ebp), %ebx
	leal	-52024(%ebp), %ecx
	.p2align 4,,15
L1547:
	movl	(%ecx), %esi
	addl	$4, %ecx
	leal	-16843009(%esi), %edx
	notl	%esi
	andl	%esi, %edx
	andl	$-2139062144, %edx
	je	L1547
	testl	$32896, %edx
	jne	L1549
	shrl	$16, %edx
	addl	$2, %ecx
L1549:
	addb	%dl, %dl
	leal	-52024(%ebp), %eax
	sbbl	$3, %ecx
	subl	%eax, %ecx
	leal	1(%ecx), %esi
	movl	%esi, (%esp)
	call	_malloc
	movl	%eax, (%ebx)
	leal	-52024(%ebp), %edx
	movl	-52620(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	_elArticulo+28(%eax), %ecx
	movl	%ecx, (%esp)
	call	_strcpy
	movl	-52572(%ebp), %ebx
	testl	%ebx, %ebx
	jle	L1550
	movl	$16, (%esp)
	call	_malloc
	movl	%eax, -52584(%ebp)
	movl	-52620(%ebp), %ebx
	movl	%eax, _elArticulo+32(%ebx)
	movl	$1, %ebx
	cmpl	-52572(%ebp), %ebx
	jg	L1550
	leal	-4(%ebp), %edx
	movl	$500, %ecx
	leal	-52024(%ebp), %esi
	movl	%edx, -52612(%ebp)
	addl	$500, %esi
	movl	%ecx, -52616(%ebp)
L1559:
	movl	%esi, (%esp)
	call	_strlen
	cmpl	$79, %eax
	jbe	L1555
	movl	-52616(%ebp), %ecx
	xorl	%edx, %edx
	movb	%dl, -51945(%ebp,%ecx)
L1555:
	cmpl	-52572(%ebp), %ebx
	je	L1644
	movl	%esi, (%esp)
	call	_strlen
	movl	-52588(%ebp), %edx
	movl	-52612(%ebp), %ecx
	addl	%edx, %eax
	cwtl
	movl	%eax, 12(%esp)
	movl	-1992(%ecx), %edx
	movl	%edx, 8(%esp)
	movswl	-1996(%ecx),%eax
L1633:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_HacerJustificacion
	movl	%esi, (%esp)
	call	_strlen
	incl	%eax
	movl	%eax, (%esp)
	call	_malloc
	movl	-52584(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%esi, 4(%esp)
	movl	8(%ecx), %edx
	movl	%edx, (%esp)
	call	_strcpy
	cmpl	-52572(%ebp), %ebx
	movl	-52584(%ebp), %ecx
	movl	-52612(%ebp), %edx
	movl	$0, 12(%ecx)
	movl	-2000(%edx), %eax
	movl	-52584(%ebp), %ecx
	movl	%eax, (%ecx)
	movzwl	-1996(%edx), %eax
	movw	%ax, 4(%ecx)
	jl	L1645
L1553:
	addl	$500, -52616(%ebp)
	incl	%ebx
	addl	$500, %esi
	addl	$20, -52612(%ebp)
	cmpl	-52572(%ebp), %ebx
	jle	L1559
L1550:
	movzwl	_elArticulo+2, %edx
	xorl	%ebx, %ebx
	movl	-52572(%ebp), %eax
	addl	$28, -52624(%ebp)
	addl	$28, -52620(%ebp)
	leal	(%eax,%eax,4), %ecx
	incl	%edx
	movl	%ebx, -52576(%ebp)
	leal	-24(%ebp,%ecx,4), %esi
	leal	-2000(%esi), %ecx
	movw	%dx, _elArticulo+2
	movl	-2000(%esi), %edx
	movl	%edx, -2024(%ebp)
	movl	4(%ecx), %ebx
	movl	%ebx, -2020(%ebp)
	movl	8(%ecx), %esi
	movl	%esi, -2016(%ebp)
	movl	12(%ecx), %edx
	xorl	%esi, %esi
	movl	%edx, -2012(%ebp)
	movl	16(%ecx), %ebx
	movl	%esi, -52572(%ebp)
	movl	%ebx, -2008(%ebp)
	jmp	L1527
L1645:
	movl	$16, (%esp)
	call	_malloc
	movl	$0, 8(%eax)
	movl	-52584(%ebp), %ecx
	movl	%eax, -52584(%ebp)
	movl	%eax, 12(%ecx)
	movl	$0, 12(%eax)
	jmp	L1553
L1644:
	movl	%esi, (%esp)
	call	_strlen
	movl	-52588(%ebp), %edx
	movl	-52592(%ebp), %ecx
	addl	%edx, %eax
	addl	%ecx, %eax
	cwtl
	movl	%eax, 12(%esp)
	movl	-52572(%ebp), %eax
	leal	(%eax,%eax,4), %edx
	leal	-2024(%ebp,%edx,4), %ecx
	movl	8(%ecx), %edx
	movl	%edx, 8(%esp)
	movswl	4(%ecx),%eax
	jmp	L1633
L1538:
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%esi, -52588(%ebp)
	movl	%edx, -52592(%ebp)
	jmp	L1539
L1532:
	movswl	-2020(%ebp),%edx
	leal	-52024(%ebp), %ecx
	movl	$79, 12(%esp)
	movl	-2016(%ebp), %esi
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	jmp	L1632
L1637:
	incl	%edi
	cmpl	%eax, %edi
	jge	L1512
	movzbl	(%edi,%edx), %ebx
	cmpb	$91, %bl
	je	L1646
	xorl	%eax, %eax
	cmpb	$93, %bl
	je	L1519
	cmpb	$10, %bl
	je	L1519
L1523:
	cmpb	$13, %bl
	je	L1522
	movb	%bl, -52536(%ebp,%eax)
	incl	%eax
L1522:
	incl	%edi
	movzbl	(%edi,%edx), %ebx
	cmpb	$93, %bl
	je	L1519
	cmpb	$10, %bl
	jne	L1523
L1519:
	xorl	%ecx, %ecx
	movb	%cl, -52536(%ebp,%eax)
	movl	-52572(%ebp), %eax
	leal	(%eax,%eax,4), %ecx
	leal	0(,%ecx,4), %esi
	leal	-2024(%esi,%ebp), %edx
	leal	-52536(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_BuscarItem
	movb	$0, -52536(%ebp)
	movl	-52572(%ebp), %eax
	xorl	%ecx, %ecx
	movl	-52576(%ebp), %edx
	imull	$500, %eax, %eax
	addl	%edx, %eax
	movb	%cl, -52024(%ebp,%eax)
	leal	-24(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%ecx, -52576(%ebp)
	addl	%edx, %esi
	movl	-2000(%esi), %eax
	leal	-2000(%esi), %edx
	leal	-1980(%esi), %ecx
	movl	%eax, -1980(%esi)
	movl	4(%edx), %esi
	movl	%esi, 4(%ecx)
	movl	8(%edx), %esi
	movl	%esi, 8(%ecx)
	movl	12(%edx), %esi
	movl	%esi, 12(%ecx)
	movl	16(%edx), %esi
	movl	%esi, 16(%ecx)
	incl	-52572(%ebp)
	jmp	L1512
L1646:
	movl	-52572(%ebp), %edx
	movb	$91, %al
	movl	-52576(%ebp), %ecx
	imull	$500, %edx, %edx
	addl	%ecx, %edx
	movb	%al, -52024(%ebp,%edx)
	jmp	L1631
L1636:
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$25, 8(%esp)
	movl	$80, 4(%esp)
	movl	$-1, (%esp)
	call	_set_gfx_mode
	movl	$LC173, (%esp)
L1634:
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
L1635:
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$25, 8(%esp)
	movl	$80, 4(%esp)
	movl	$-1, (%esp)
	call	_set_gfx_mode
	movl	$LC172, (%esp)
	jmp	L1634
L1459:
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$25, 8(%esp)
	movl	$80, 4(%esp)
	movl	$-1, (%esp)
	call	_set_gfx_mode
	movl	$LC174, (%esp)
	jmp	L1634
	.p2align 4,,15
.globl _InicializarArticulo
	.def	_InicializarArticulo;	.scl	2;	.type	32;	.endef
_InicializarArticulo:
	pushl	%ebp
	movl	_color_blanco, %ecx
	xorl	%eax, %eax
	movl	%esp, %ebp
	movl	$3099, %edx
	.p2align 4,,15
L1652:
	movl	$0, _elArticulo+28(%eax)
	movl	%ecx, _elArticulo+8(%eax)
	movw	$10, _elArticulo+12(%eax)
	movl	$2, _elArticulo+16(%eax)
	movw	$0, _elArticulo+24(%eax)
	movl	$0, _elArticulo+32(%eax)
	addl	$28, %eax
	decl	%edx
	jns	L1652
	movb	$0, _elArticulo
	xorl	%edx, %edx
	movl	$_elArticulo+8, %eax
L1657:
	xorl	%ecx, %ecx
	movl	%ecx, 86800(%eax,%edx,4)
	incl	%edx
	cmpl	$19, %edx
	jle	L1657
	popl	%ebp
	ret
	.p2align 4,,15
.globl _EliminarArticulo
	.def	_EliminarArticulo;	.scl	2;	.type	32;	.endef
_EliminarArticulo:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	$3099, -16(%ebp)
	.p2align 4,,15
L1671:
	movl	_elArticulo+28(%edi), %edx
	movl	%edx, (%esp)
	call	_free
	movl	_elArticulo+32(%edi), %esi
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%eax, _elArticulo+28(%edi)
	movl	%edx, _elArticulo+32(%edi)
	testl	%esi, %esi
	je	L1675
	.p2align 4,,15
L1670:
	movl	8(%esi), %ecx
	movl	%esi, %ebx
	movl	%ecx, (%esp)
	call	_free
	movl	$0, 8(%esi)
	movl	12(%esi), %esi
	movl	%ebx, (%esp)
	call	_free
	testl	%esi, %esi
	jne	L1670
L1675:
	addl	$28, %edi
	decl	-16(%ebp)
	jns	L1671
	movb	$0, _elArticulo
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 32
LC178:
	.ascii "Error leyendo los indices de articulos\12\0"
	.p2align 4,,15
.globl _LeerArticulos
	.def	_LeerArticulos;	.scl	2;	.type	32;	.endef
_LeerArticulos:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$588, %esp
	movl	$11, %ebx
	movb	$0, -536(%ebp)
	movl	_configuracion, %edx
	movl	8(%ebp), %esi
	movl	%eax, -552(%ebp)
	movl	464(%edx), %ecx
	movzbl	11(%ecx), %eax
	cmpb	$93, %al
	je	L1678
	cmpb	$10, %al
	je	L1678
L1682:
	cmpb	$13, %al
	je	L1681
	movl	-552(%ebp), %edi
	movb	%al, -536(%ebp,%edi)
	incl	%edi
	movl	%edi, -552(%ebp)
L1681:
	movl	464(%edx), %ecx
	incl	%ebx
	movzbl	(%ebx,%ecx), %eax
	cmpb	$93, %al
	je	L1678
	cmpb	$10, %al
	jne	L1682
L1678:
	movl	-552(%ebp), %ecx
	leal	-540(%ebp), %edi
	xorl	%eax, %eax
	movl	%edi, 4(%esp)
	leal	-536(%ebp), %edi
	movb	%al, -536(%ebp,%ecx)
	movl	%edi, (%esp)
	call	_strtod
	fnstcw	-542(%ebp)
	movzwl	-542(%ebp), %ecx
	orw	$3072, %cx
	movw	%cx, -544(%ebp)
	fldcw	-544(%ebp)
	fistpl	-556(%ebp)
	fldcw	-542(%ebp)
	movzbl	-556(%ebp), %edx
	movb	%dl, (%esi)
	movl	_configuracion, %edx
	movb	$0, -536(%ebp)
	movl	464(%edx), %eax
	cmpb	$10, (%ebx,%eax)
	je	L1726
L1686:
	incl	%ebx
	cmpb	$10, (%ebx,%eax)
	jne	L1686
L1726:
	movl	$1, %eax
	movl	-556(%ebp), %ecx
	incl	%ebx
	movl	%eax, -552(%ebp)
	cmpl	%ecx, -552(%ebp)
	jg	L1728
	addl	$4, %esi
	.p2align 4,,15
L1723:
	xorl	%ecx, %ecx
	.p2align 4,,15
L1695:
	movl	464(%edx), %eax
	movzbl	(%ebx,%eax), %eax
	cmpb	$32, %al
	je	L1694
	cmpb	$10, %al
	je	L1694
	cmpb	$13, %al
	je	L1694
	movb	%al, -536(%ebp,%ecx)
	incl	%ecx
L1694:
	incl	%ebx
	cmpb	$32, %al
	jne	L1695
	movl	%edi, 4(%esp)
	xorl	%edx, %edx
	movb	%dl, -536(%ebp,%ecx)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	_find_datafile_object
	testl	%eax, %eax
	je	L1742
	movl	%edi, 4(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_find_datafile_object
	movl	%eax, (%esi)
	movl	_configuracion, %edx
	xorl	%ecx, %ecx
	movb	$0, -536(%ebp)
	.p2align 4,,15
L1702:
	movl	464(%edx), %eax
	movzbl	(%ebx,%eax), %eax
	cmpb	$10, %al
	je	L1701
	cmpb	$13, %al
	je	L1701
	movb	%al, -536(%ebp,%ecx)
	incl	%ecx
L1701:
	incl	%ebx
	cmpb	$10, %al
	jne	L1702
	xorl	%edx, %edx
	movb	%dl, -536(%ebp,%ecx)
	leal	1(%ecx), %edx
	movl	%edx, (%esp)
	call	_malloc
	movl	%eax, 720(%esi)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, -536(%ebp)
	movl	_configuracion, %edx
	xorl	%ecx, %ecx
	.p2align 4,,15
L1707:
	movl	464(%edx), %eax
	movzbl	(%ebx,%eax), %eax
	cmpb	$10, %al
	je	L1706
	cmpb	$13, %al
	je	L1706
	movb	%al, -536(%ebp,%ecx)
	incl	%ecx
L1706:
	incl	%ebx
	cmpb	$10, %al
	jne	L1707
	xorl	%edx, %edx
	movb	%dl, -536(%ebp,%ecx)
	leal	1(%ecx), %edx
	movl	%edx, (%esp)
	call	_malloc
	movl	%eax, 240(%esi)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, -536(%ebp)
	movl	_configuracion, %edx
	xorl	%ecx, %ecx
	.p2align 4,,15
L1712:
	movl	464(%edx), %eax
	movzbl	(%ebx,%eax), %eax
	cmpb	$10, %al
	je	L1711
	cmpb	$13, %al
	je	L1711
	movb	%al, -536(%ebp,%ecx)
	incl	%ecx
L1711:
	incl	%ebx
	cmpb	$10, %al
	jne	L1712
	xorl	%edx, %edx
	movb	%dl, -536(%ebp,%ecx)
	leal	1(%ecx), %edx
	movl	%edx, (%esp)
	call	_malloc
	movl	%eax, 480(%esi)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, -536(%ebp)
	movl	_configuracion, %edx
	xorl	%ecx, %ecx
	.p2align 4,,15
L1717:
	movl	464(%edx), %eax
	movzbl	(%ebx,%eax), %eax
	cmpb	$10, %al
	je	L1716
	cmpb	$13, %al
	je	L1716
	movb	%al, -536(%ebp,%ecx)
	incl	%ecx
L1716:
	incl	%ebx
	cmpb	$10, %al
	jne	L1717
	xorl	%edx, %edx
	movb	%dl, -536(%ebp,%ecx)
	leal	1(%ecx), %edx
	movl	%edx, (%esp)
	call	_malloc
	movl	%eax, 960(%esi)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, -536(%ebp)
	movl	_configuracion, %edx
	xorl	%ecx, %ecx
	.p2align 4,,15
L1722:
	movl	464(%edx), %eax
	movzbl	(%ebx,%eax), %eax
	cmpb	$10, %al
	je	L1721
	cmpb	$13, %al
	je	L1721
	movb	%al, -536(%ebp,%ecx)
	incl	%ecx
L1721:
	incl	%ebx
	cmpb	$10, %al
	jne	L1722
	xorl	%edx, %edx
	movb	%dl, -536(%ebp,%ecx)
	leal	1(%ecx), %edx
	movl	%edx, (%esp)
	call	_malloc
	movl	%eax, 1200(%esi)
	addl	$4, %esi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	incl	-552(%ebp)
	movl	-556(%ebp), %eax
	movb	$0, -536(%ebp)
	cmpl	%eax, -552(%ebp)
	jg	L1728
	movl	_configuracion, %edx
	jmp	L1723
L1728:
	addl	$588, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1742:
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$25, 8(%esp)
	movl	$80, 4(%esp)
	movl	$-1, (%esp)
	call	_set_gfx_mode
	movl	$LC178, (%esp)
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
	.p2align 4,,15
.globl _InicializarLosArticulos
	.def	_InicializarLosArticulos;	.scl	2;	.type	32;	.endef
_InicializarLosArticulos:
	pushl	%ebp
	xorl	%ecx, %ecx
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movb	$0, (%edx)
	movb	$0, 1(%edx)
	.p2align 4,,15
L1748:
	movzbl	%cl, %eax
	incb	%cl
	cmpb	$59, %cl
	movl	$0, 4(%edx,%eax,4)
	movl	$0, 724(%edx,%eax,4)
	movl	$0, 244(%edx,%eax,4)
	movl	$0, 484(%edx,%eax,4)
	movl	$0, 964(%edx,%eax,4)
	movl	$0, 1204(%edx,%eax,4)
	jbe	L1748
	popl	%ebp
	ret
	.p2align 4,,15
.globl _EliminarLosArticulos
	.def	_EliminarLosArticulos;	.scl	2;	.type	32;	.endef
_EliminarLosArticulos:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	pushl	%ebx
	xorl	%edx, %edx
	subl	$4, %esp
	movl	8(%ebp), %ebx
	movb	$0, (%ebx)
	movb	$0, 1(%ebx)
	movw	%ax, _i
	.p2align 4,,15
L1756:
	movswl	%dx,%ecx
	xorl	%eax, %eax
	movl	724(%ebx,%ecx,4), %edx
	movl	%eax, 4(%ebx,%ecx,4)
	movl	%edx, (%esp)
	call	_free
	movswl	_i,%ecx
	movl	244(%ebx,%ecx,4), %edx
	movl	%edx, (%esp)
	call	_free
	movswl	_i,%ecx
	movl	484(%ebx,%ecx,4), %edx
	movl	%edx, (%esp)
	call	_free
	movswl	_i,%ecx
	movl	964(%ebx,%ecx,4), %edx
	movl	%edx, (%esp)
	call	_free
	movswl	_i,%ecx
	movl	1204(%ebx,%ecx,4), %edx
	movl	%edx, (%esp)
	call	_free
	movzwl	_i, %edx
	xorl	%ecx, %ecx
	movswl	%dx,%eax
	movl	%ecx, 724(%ebx,%eax,4)
	xorl	%ecx, %ecx
	movl	%ecx, 244(%ebx,%eax,4)
	xorl	%ecx, %ecx
	movl	%ecx, 484(%ebx,%eax,4)
	xorl	%ecx, %ecx
	movl	%ecx, 964(%ebx,%eax,4)
	xorl	%ecx, %ecx
	movl	%ecx, 1204(%ebx,%eax,4)
	leal	1(%edx), %ecx
	cmpw	$59, %cx
	movw	%cx, _i
	movl	%ecx, %edx
	jle	L1756
	popl	%eax
	popl	%ebx
	popl	%ebp
	ret
	.p2align 4,,15
.globl _ControlaEventos
	.def	_ControlaEventos;	.scl	2;	.type	32;	.endef
_ControlaEventos:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	leal	-28(%ebp), %edi
	pushl	%esi
	leal	-13(%ebp), %esi
	pushl	%ebx
	subl	$44, %esp
	movl	%esi, %ebx
	movb	$0, -13(%ebp)
	movl	__imp__mouse_z, %ecx
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	(%ecx), %edx
	movl	%edx, -20(%ebp)
	.p2align 4,,15
L1763:
	movl	%esi, (%esp)
	movl	%ebx, %esi
	call	_ControlaEventoTeclado
	movl	%ebx, 12(%esp)
	leal	-20(%ebp), %ecx
	leal	-24(%ebp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	_ControlaEventoRaton
	call	_ControlaEventoJoystick
	cmpb	$0, -13(%ebp)
	je	L1763
	cmpb	$0, _driverSonido
	jne	L1767
L1759:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1767:
	movl	$0, 16(%esp)
	movl	_configuracion, %esi
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	416(%esi), %ebx
	movl	%ebx, (%esp)
	call	_play_sample
	movl	$1300, (%esp)
	call	_rest
	jmp	L1759
LC180:
	.ascii "Seccion\0"
LC181:
	.ascii "Titulo\0"
LC182:
	.ascii "Autor\0"
LC183:
	.ascii "Correo\0"
LC184:
	.ascii "Web\0"
	.p2align 4,,15
.globl _MostrarTitulo
	.def	_MostrarTitulo;	.scl	2;	.type	32;	.endef
_MostrarTitulo:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	8(%ebp), %edi
	movl	$255, 8(%esp)
	movl	$255, 4(%esp)
	movl	$128, (%esp)
	call	_makecol
	movl	28(%edi), %ecx
	movl	%eax, %esi
	movl	4(%ecx), %ebx
	movl	$80, 16(%esp)
	movl	$473, 12(%esp)
	movl	%ebx, 20(%esp)
	movl	$60, 8(%esp)
	movl	$10, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%ecx)
	movl	_datafile, %edx
	movl	__imp___textmode, %ebx
	movl	192(%edx), %ecx
	movl	(%ebx), %edx
	movl	%esi, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$30, 16(%esp)
	movl	$10, 12(%esp)
	movl	$LC180, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movzbl	_losArticulos+1, %eax
	movl	_datafile, %ebx
	movl	192(%ebx), %ecx
	movl	$_losArticulos+4, %ebx
	movl	240(%ebx,%eax,4), %edx
	movl	__imp___textmode, %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 24(%esp)
	movl	_color_blanco, %eax
	movl	$30, 16(%esp)
	movl	$74, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movl	_datafile, %edx
	movl	__imp___textmode, %eax
	movl	192(%edx), %ecx
	movl	(%eax), %edx
	movl	%esi, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$40, 16(%esp)
	movl	$10, 12(%esp)
	movl	$LC181, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movzbl	_losArticulos+1, %eax
	movl	_datafile, %edx
	movl	192(%edx), %ecx
	movl	720(%ebx,%eax,4), %edx
	movl	__imp___textmode, %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 24(%esp)
	movl	_color_blanco, %eax
	movl	$40, 16(%esp)
	movl	$74, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movl	_datafile, %edx
	movl	__imp___textmode, %eax
	movl	192(%edx), %ecx
	movl	(%eax), %edx
	movl	%esi, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$50, 16(%esp)
	movl	$10, 12(%esp)
	movl	$LC182, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movzbl	_losArticulos+1, %eax
	movl	_datafile, %edx
	movl	192(%edx), %ecx
	movl	480(%ebx,%eax,4), %edx
	movl	__imp___textmode, %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 24(%esp)
	movl	_color_blanco, %eax
	movl	$50, 16(%esp)
	movl	$74, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movl	_datafile, %edx
	movl	__imp___textmode, %eax
	movl	192(%edx), %ecx
	movl	(%eax), %edx
	movl	%esi, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$60, 16(%esp)
	movl	$10, 12(%esp)
	movl	$LC183, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movzbl	_losArticulos+1, %eax
	movl	_datafile, %edx
	movl	192(%edx), %ecx
	movl	1200(%ebx,%eax,4), %edx
	movl	__imp___textmode, %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 24(%esp)
	movl	_color_blanco, %eax
	movl	$60, 16(%esp)
	movl	$74, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movl	_datafile, %edx
	movl	__imp___textmode, %eax
	movl	192(%edx), %ecx
	movl	(%eax), %edx
	movl	%esi, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$70, 16(%esp)
	movl	$10, 12(%esp)
	movl	$LC184, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movzbl	_losArticulos+1, %edx
	movl	_datafile, %ecx
	movl	192(%ecx), %esi
	movl	960(%ebx,%edx,4), %ecx
	movl	__imp___textmode, %edx
	movl	(%edx), %ebx
	movl	$70, 16(%esp)
	movl	_color_blanco, %edx
	movl	$74, 12(%esp)
	movl	%ebx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	cmpw	$0, _grises
	je	L1782
L1781:
	movl	$50, 28(%esp)
	movl	_videoTemporal, %edx
	movl	_configuracion, %esi
	movl	$474, 24(%esp)
	movl	%edx, 4(%esp)
	movl	$30, 20(%esp)
	movl	$10, 16(%esp)
	movl	$30, 12(%esp)
	movl	$10, 8(%esp)
	movl	80(%esi), %ebx
	movl	%ebx, (%esp)
	call	_blit
	movl	%edi, (%esp)
	movl	_videoTemporal, %ecx
	movl	$50, 28(%esp)
	movl	$474, 24(%esp)
	movl	$30, 20(%esp)
	movl	$10, 16(%esp)
	movl	$30, 12(%esp)
	movl	$10, 8(%esp)
	movl	%ecx, 4(%esp)
	call	_masked_blit
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1782:
	movl	_configuracion, %edx
	movl	272(%edx), %esi
	movl	%esi, (%esp)
	call	_select_palette
	jmp	L1781
LC185:
	.ascii "%d/%d pag\0"
	.p2align 4,,15
.globl _MostrarInfoArticulo
	.def	_MostrarInfoArticulo;	.scl	2;	.type	32;	.endef
_MostrarInfoArticulo:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	$-2004318071, %edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movswl	_elArticulo+4,%esi
	movswl	_elArticulo+2,%ebx
	movl	%esi, %eax
	imull	%edi
	movl	%ebx, %eax
	leal	(%esi,%edx), %ecx
	movl	%esi, %edx
	sarl	$4, %ecx
	sarl	$31, %edx
	subl	%edx, %ecx
	movl	%ecx, %esi
	imull	%edi
	movl	%ebx, %eax
	sarl	$31, %eax
	addl	%ebx, %edx
	sarl	$4, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	imull	%edi
	movl	%ebx, %edi
	sarl	$31, %edi
	addl	%ebx, %edx
	sarl	$4, %edx
	subl	%edi, %edx
	movl	%edx, %edi
	sall	$4, %edi
	subl	%edx, %edi
	addl	%edi, %edi
	cmpl	%edi, %ebx
	jne	L1785
	cmpl	$29, %ebx
	jg	L1784
L1785:
	incl	%ebx
L1784:
	movl	$-2004318071, %eax
	movl	%ecx, %edi
	imull	%ecx
	sarl	$31, %edi
	leal	(%edx,%ecx), %edx
	sarl	$4, %edx
	subl	%edi, %edx
	movl	%edx, %edi
	sall	$4, %edi
	subl	%edx, %edi
	addl	%edi, %edi
	cmpl	%edi, %ecx
	jne	L1787
	cmpl	$29, %ecx
	jg	L1786
L1787:
	leal	1(%ecx), %esi
L1786:
	cmpl	%ebx, %esi
	jle	L1788
	movl	%ebx, %esi
L1788:
	movl	8(%ebp), %ecx
	movl	28(%ecx), %edi
	movl	8(%ebp), %ecx
	movl	4(%edi), %edx
	movl	%ecx, (%esp)
	movl	$75, 16(%esp)
	movl	%edx, 20(%esp)
	movl	$639, 12(%esp)
	movl	$45, 8(%esp)
	movl	$540, 4(%esp)
	call	*56(%edi)
	movl	%esi, 24(%esp)
	movl	_color_blanco, %edx
	movl	_datafile, %esi
	movl	%ebx, 28(%esp)
	movl	8(%ebp), %ecx
	movl	$LC185, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$45, 12(%esp)
	movl	$540, 8(%esp)
	movl	128(%esi), %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_textprintf
	cmpw	$0, _grises
	je	L1792
L1791:
	movl	$30, 28(%esp)
	movl	_videoTemporal, %esi
	movl	_configuracion, %ebx
	movl	$100, 24(%esp)
	movl	%esi, 4(%esp)
	movl	$45, 20(%esp)
	movl	$540, 16(%esp)
	movl	$45, 12(%esp)
	movl	$540, 8(%esp)
	movl	80(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	$30, 28(%esp)
	movl	8(%ebp), %edi
	movl	_videoTemporal, %edx
	movl	$100, 24(%esp)
	movl	%edi, (%esp)
	movl	$45, 20(%esp)
	movl	$540, 16(%esp)
	movl	$45, 12(%esp)
	movl	$540, 8(%esp)
	movl	%edx, 4(%esp)
	call	_masked_blit
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1792:
	movl	_configuracion, %esi
	movl	272(%esi), %ebx
	movl	%ebx, (%esp)
	call	_select_palette
	jmp	L1791
	.p2align 4,,15
.globl _MostrarBotones
	.def	_MostrarBotones;	.scl	2;	.type	32;	.endef
_MostrarBotones:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	cmpw	$0, _grises
	je	L1805
L1794:
	movl	$80, 28(%esp)
	movl	_videoTemporal, %esi
	movl	_configuracion, %ebx
	movl	$640, 24(%esp)
	movl	$400, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_blit
	cmpb	$0, _sonido
	je	L1796
	cmpb	$0, _driverSonido
	jne	L1793
L1796:
	movl	$0, -16(%ebp)
	.p2align 4,,15
L1803:
	movl	$0, 8(%esp)
	movl	_videoTemporal, %ebx
	movl	-16(%ebp), %edi
	movl	$0, 4(%esp)
	movl	-16(%ebp), %esi
	movl	$255, (%esp)
	addl	$122, %edi
	addl	$136, %esi
	call	_makecol
	movl	28(%ebx), %ecx
	movl	%eax, 20(%esp)
	movl	%ebx, (%esp)
	movl	$467, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$449, 8(%esp)
	movl	%edi, 4(%esp)
	call	*52(%ecx)
	movl	$0, 8(%esp)
	movl	_videoTemporal, %ebx
	movl	$0, 4(%esp)
	movl	$255, (%esp)
	call	_makecol
	movl	28(%ebx), %ecx
	movl	%eax, 20(%esp)
	movl	$449, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$467, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*52(%ecx)
	incl	-16(%ebp)
	cmpl	$2, -16(%ebp)
	jle	L1803
L1793:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1805:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L1794
	.p2align 4,,15
.globl _JustificacionDerecha
	.def	_JustificacionDerecha;	.scl	2;	.type	32;	.endef
_JustificacionDerecha:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	%ebx, -4(%ebp)
	movl	8(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_strlen
	testl	%eax, %eax
	movl	%eax, %edx
	jle	L1807
	cmpb	$32, (%eax,%ebx)
	je	L1812
L1807:
	cmpl	$8, 12(%ebp)
	je	L1818
	sall	$3, %edx
L1813:
	movl	-4(%ebp), %ebx
	movl	%edx, %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L1818:
	leal	(%edx,%edx), %ecx
	leal	(%ecx,%edx,8), %edx
	jmp	L1813
	.p2align 4,,7
L1812:
	decl	%edx
	cmpb	$32, (%edx,%ebx)
	jne	L1807
	testl	%edx, %edx
	jns	L1812
	jmp	L1807
	.p2align 4,,15
.globl _ScrollArriba30Lineas
	.def	_ScrollArriba30Lineas;	.scl	2;	.type	32;	.endef
_ScrollArriba30Lineas:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movzwl	_elArticulo+2, %edx
	cmpw	%dx, _elArticulo+4
	jge	L1819
	cmpw	$0, _grises
	je	L1858
L1821:
	movl	$320, 28(%esp)
	movl	_videoTemporal, %ebx
	movl	_fondo, %ecx
	movl	$640, 24(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	movl	$80, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	call	_blit
	movl	_letras, %edi
	movl	28(%edi), %esi
	movl	4(%esi), %edx
	movl	$400, 16(%esp)
	movl	$639, 12(%esp)
	movl	%edx, 20(%esp)
	movl	$90, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%esi)
	movzwl	_elArticulo+4, %edx
	movl	$80, -16(%ebp)
	movswl	%dx,%ebx
	incl	%ebx
	movl	%ebx, -20(%ebp)
	movl	-20(%ebp), %eax
	sall	$3, %ebx
	subl	%eax, %ebx
	sall	$2, %ebx
	movl	%ebx, -36(%ebp)
	.p2align 4,,15
L1848:
	movl	-36(%ebp), %eax
	movl	_elArticulo+28(%eax), %edi
	testl	%edi, %edi
	je	L1826
	addl	$10, -16(%ebp)
	movl	%eax, %edx
	movl	_elArticulo+16(%eax), %eax
	cmpl	$1, %eax
	je	L1834
	cmpl	$1, %eax
	jb	L1836
	cmpl	$2, %eax
	je	L1832
	cmpl	$3, %eax
	je	L1857
L1829:
	movl	-36(%ebp), %edx
	movl	_elArticulo+32(%edx), %edi
	testl	%edi, %edi
	jne	L1859
L1840:
	movl	-36(%ebp), %ebx
	movzwl	_elArticulo+24(%ebx), %eax
	testw	%ax, %ax
	je	L1854
	cmpw	$0, _grises
	je	L1860
	movl	$_elArticulo+8, %esi
L1847:
	movl	$10, 28(%esp)
	cwtl
	movl	-16(%ebp), %edx
	movl	86800(%esi,%eax,4), %edi
	movzbl	_elArticulo+20(%ebx), %esi
	movl	(%edi), %ecx
	movl	%edx, 20(%esp)
	movswl	_elArticulo+22(%ebx),%edx
	movl	%ecx, 24(%esp)
	leal	4(,%esi,8), %ecx
	movl	_letras, %esi
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_blit
L1854:
	movzwl	_elArticulo+4, %edx
L1826:
	incl	-20(%ebp)
	movswl	%dx,%ebx
	addl	$31, %ebx
	addl	$28, -36(%ebp)
	cmpl	%ebx, -20(%ebp)
	jl	L1848
	movl	$480, 28(%esp)
	leal	30(%edx), %ecx
	movl	_letras, %esi
	movw	%cx, _elArticulo+4
	movl	_videoTemporal, %edx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 4(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	_masked_blit
	movl	_letras, %edi
	movl	%edi, (%esp)
	call	_MostrarInfoArticulo
	cmpb	$0, _raton
	je	L1849
	movl	$0, (%esp)
	call	_show_mouse
	movl	$350, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %esi
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	__imp__screen, %edi
	movl	(%edi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	.p2align 4,,15
L1819:
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1849:
	movl	$350, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %ebx
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%esi), %edi
	movl	%ebx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	jmp	L1819
L1860:
	cwtl
	movl	$_elArticulo+8, %esi
	movl	86880(%esi,%eax,4), %ecx
	movl	%ecx, (%esp)
	call	_select_palette
	movl	-36(%ebp), %edi
	movzwl	_elArticulo+24(%edi), %eax
	jmp	L1847
	.p2align 4,,7
L1859:
	movl	_elArticulo+28(%edx), %ecx
	movl	%ecx, (%esp)
	call	_strlen
	movl	-36(%ebp), %ebx
	sall	$3, %eax
	movswl	%ax,%esi
	movl	_elArticulo+32(%ebx), %edi
	testl	%edi, %edi
	je	L1840
	.p2align 4,,15
L1845:
	movswl	4(%edi),%edx
	movl	_datafile, %ecx
	movl	__imp___textmode, %eax
	sall	$4, %edx
	movl	(%ecx,%edx), %ebx
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	movl	(%eax), %eax
	movl	%ecx, -32(%ebp)
	leal	4(%esi), %ecx
	movl	%eax, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%edx, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	_letras, %ecx
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_textout_ex
	movl	8(%edi), %ebx
	movl	%ebx, (%esp)
	call	_strlen
	movl	12(%edi), %edi
	leal	(%esi,%eax,8), %edx
	movswl	%dx,%esi
	testl	%edi, %edi
	jne	L1845
	jmp	L1840
	.p2align 4,,7
L1857:
	movswl	_elArticulo+12(%edx),%ebx
	movl	_datafile, %ecx
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$4, %ebx
	movl	(%ecx,%ebx), %esi
	movl	__imp___textmode, %ebx
	movl	_elArticulo+8(%edx), %ecx
	movl	(%ebx), %edx
	movl	%eax, 16(%esp)
	movl	_letras, %eax
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$4, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
L1856:
	movl	%eax, (%esp)
	call	_textout_ex
	jmp	L1829
L1832:
	movl	-36(%ebp), %ebx
	movl	_datafile, %ecx
	movl	-36(%ebp), %edx
	movswl	_elArticulo+12(%ebx),%esi
	movl	-16(%ebp), %eax
	sall	$4, %esi
	movl	(%ecx,%esi), %ebx
	movl	__imp___textmode, %esi
	movl	_elArticulo+8(%edx), %ecx
	movl	(%esi), %edx
	movl	_letras, %esi
	movl	%ecx, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_textout_centre_ex
	jmp	L1829
	.p2align 4,,7
L1836:
	movl	_letras, %esi
	movl	-36(%ebp), %eax
	movl	_datafile, %edx
	movl	%esi, -24(%ebp)
	movswl	_elArticulo+12(%eax),%esi
	movl	%esi, %ecx
	sall	$4, %ecx
	movl	(%edx,%ecx), %ebx
	movl	%esi, 4(%esp)
	movl	$635, %esi
	movl	%ebx, -28(%ebp)
	movl	%edi, (%esp)
	call	_JustificacionDerecha
	movl	-36(%ebp), %ecx
	subl	%eax, %esi
	movl	__imp___textmode, %edx
	movl	-24(%ebp), %eax
	movl	_elArticulo+8(%ecx), %ebx
	movl	(%edx), %ecx
	movl	%edi, 8(%esp)
	movl	-16(%ebp), %edx
	movl	-28(%ebp), %edi
	movl	%ecx, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 4(%esp)
	jmp	L1856
L1834:
	movl	-36(%ebp), %edx
	jmp	L1857
L1858:
	movl	_configuracion, %ecx
	movl	256(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L1821
	.p2align 4,,15
.globl _ScrollAbajo30Lineas
	.def	_ScrollAbajo30Lineas;	.scl	2;	.type	32;	.endef
_ScrollAbajo30Lineas:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movzwl	_elArticulo+4, %eax
	cmpw	$29, %ax
	jle	L1861
	cmpw	$59, %ax
	jg	L1863
	xorl	%eax, %eax
L1902:
	movw	%ax, _elArticulo+4
	cmpw	$0, _grises
	je	L1903
L1865:
	movl	$320, 28(%esp)
	movl	_videoTemporal, %ebx
	movl	_fondo, %ecx
	movl	$640, 24(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	movl	$80, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	call	_blit
	movl	_letras, %edi
	movl	28(%edi), %esi
	movl	4(%esi), %edx
	movl	$400, 16(%esp)
	movl	$639, 12(%esp)
	movl	%edx, 20(%esp)
	movl	$90, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%esi)
	movzwl	_elArticulo+4, %edx
	movl	$80, -16(%ebp)
	movswl	%dx,%ebx
	movl	%ebx, -20(%ebp)
	movl	-20(%ebp), %eax
	sall	$3, %ebx
	subl	%eax, %ebx
	sall	$2, %ebx
	movl	%ebx, -36(%ebp)
	.p2align 4,,15
L1892:
	movl	-36(%ebp), %eax
	movl	_elArticulo+28(%eax), %edi
	testl	%edi, %edi
	je	L1870
	addl	$10, -16(%ebp)
	movl	%eax, %edx
	movl	_elArticulo+16(%eax), %eax
	cmpl	$1, %eax
	je	L1878
	cmpl	$1, %eax
	jb	L1880
	cmpl	$2, %eax
	je	L1876
	cmpl	$3, %eax
	je	L1901
L1873:
	movl	-36(%ebp), %edx
	movl	_elArticulo+32(%edx), %ebx
	testl	%ebx, %ebx
	jne	L1904
L1884:
	movl	-36(%ebp), %ebx
	movzwl	_elArticulo+24(%ebx), %eax
	testw	%ax, %ax
	je	L1898
	cmpw	$0, _grises
	je	L1905
	movl	$_elArticulo+8, %esi
L1891:
	movl	$10, 28(%esp)
	cwtl
	movl	-16(%ebp), %edx
	movl	86800(%esi,%eax,4), %edi
	movzbl	_elArticulo+20(%ebx), %esi
	movl	(%edi), %ecx
	movl	%edx, 20(%esp)
	movswl	_elArticulo+22(%ebx),%edx
	movl	%ecx, 24(%esp)
	leal	4(,%esi,8), %ecx
	movl	_letras, %esi
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_blit
L1898:
	movzwl	_elArticulo+4, %edx
L1870:
	incl	-20(%ebp)
	movswl	%dx,%ebx
	addl	$30, %ebx
	addl	$28, -36(%ebp)
	cmpl	%ebx, -20(%ebp)
	jl	L1892
	movl	$480, 28(%esp)
	leal	29(%edx), %ecx
	movl	_letras, %esi
	movw	%cx, _elArticulo+4
	movl	_videoTemporal, %edx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 4(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	_masked_blit
	movl	_letras, %edi
	movl	%edi, (%esp)
	call	_MostrarInfoArticulo
	cmpb	$0, _raton
	je	L1893
	movl	$0, (%esp)
	call	_show_mouse
	movl	$350, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %esi
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	__imp__screen, %edi
	movl	(%edi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	.p2align 4,,15
L1861:
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1893:
	movl	$350, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %ebx
	movl	$640, 24(%esp)
	movl	$50, 20(%esp)
	movl	$0, 16(%esp)
	movl	$50, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%esi), %edi
	movl	%ebx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	jmp	L1861
L1905:
	cwtl
	movl	$_elArticulo+8, %esi
	movl	86880(%esi,%eax,4), %ecx
	movl	%ecx, (%esp)
	call	_select_palette
	movl	-36(%ebp), %edi
	movzwl	_elArticulo+24(%edi), %eax
	jmp	L1891
	.p2align 4,,7
L1904:
	movl	_elArticulo+28(%edx), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	-36(%ebp), %ecx
	sall	$3, %eax
	movswl	%ax,%esi
	movl	_elArticulo+32(%ecx), %edi
	testl	%edi, %edi
	je	L1884
	.p2align 4,,15
L1889:
	movswl	4(%edi),%edx
	movl	_datafile, %ecx
	movl	__imp___textmode, %eax
	sall	$4, %edx
	movl	(%ecx,%edx), %ebx
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	movl	(%eax), %eax
	movl	%ecx, -32(%ebp)
	leal	4(%esi), %ecx
	movl	%eax, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%edx, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	_letras, %ecx
	movl	%edx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_textout_ex
	movl	8(%edi), %ebx
	movl	%ebx, (%esp)
	call	_strlen
	movl	12(%edi), %edi
	leal	(%esi,%eax,8), %edx
	movswl	%dx,%esi
	testl	%edi, %edi
	jne	L1889
	jmp	L1884
	.p2align 4,,7
L1901:
	movswl	_elArticulo+12(%edx),%ebx
	movl	_datafile, %ecx
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$4, %ebx
	movl	(%ecx,%ebx), %esi
	movl	__imp___textmode, %ebx
	movl	_elArticulo+8(%edx), %ecx
	movl	(%ebx), %edx
	movl	%eax, 16(%esp)
	movl	_letras, %eax
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$4, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
L1900:
	movl	%eax, (%esp)
	call	_textout_ex
	jmp	L1873
L1876:
	movl	-36(%ebp), %ebx
	movl	_datafile, %ecx
	movl	-36(%ebp), %edx
	movswl	_elArticulo+12(%ebx),%esi
	movl	-16(%ebp), %eax
	sall	$4, %esi
	movl	(%ecx,%esi), %ebx
	movl	__imp___textmode, %esi
	movl	_elArticulo+8(%edx), %ecx
	movl	(%esi), %edx
	movl	_letras, %esi
	movl	%ecx, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_textout_centre_ex
	jmp	L1873
	.p2align 4,,7
L1880:
	movl	_letras, %esi
	movl	-36(%ebp), %eax
	movl	_datafile, %edx
	movl	%esi, -24(%ebp)
	movswl	_elArticulo+12(%eax),%esi
	movl	%esi, %ecx
	sall	$4, %ecx
	movl	(%edx,%ecx), %ebx
	movl	%esi, 4(%esp)
	movl	$635, %esi
	movl	%ebx, -28(%ebp)
	movl	%edi, (%esp)
	call	_JustificacionDerecha
	movl	-36(%ebp), %ecx
	subl	%eax, %esi
	movl	__imp___textmode, %edx
	movl	-24(%ebp), %eax
	movl	_elArticulo+8(%ecx), %ebx
	movl	(%edx), %ecx
	movl	%edi, 8(%esp)
	movl	-16(%ebp), %edx
	movl	-28(%ebp), %edi
	movl	%ecx, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 4(%esp)
	jmp	L1900
L1878:
	movl	-36(%ebp), %edx
	jmp	L1901
L1903:
	movl	_configuracion, %ecx
	movl	256(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L1865
L1863:
	subl	$59, %eax
	jmp	L1902
	.p2align 4,,15
.globl _AccionSonido
	.def	_AccionSonido;	.scl	2;	.type	32;	.endef
_AccionSonido:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	cmpb	$0, _driverSonido
	je	L1906
	cmpb	$0, _sonido
	je	L1908
	cmpw	$0, _grises
	movb	$0, _sonido
	je	L1923
L1909:
	movl	$30, 28(%esp)
	movl	_videoTemporal, %esi
	xorl	%edi, %edi
	movl	$30, 24(%esp)
	movl	_configuracion, %ebx
	movl	$440, 20(%esp)
	movl	$120, 16(%esp)
	movl	$40, 12(%esp)
	movl	$120, 8(%esp)
	movl	%esi, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_blit
	.p2align 4,,15
L1916:
	movl	_videoTemporal, %edx
	leal	122(%edi), %esi
	movl	_color_rojo, %eax
	leal	136(%edi), %ebx
	movl	28(%edx), %ecx
	incl	%edi
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	movl	$467, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$449, 8(%esp)
	movl	%esi, 4(%esp)
	call	*52(%ecx)
	movl	_videoTemporal, %edx
	movl	_color_rojo, %eax
	movl	28(%edx), %ecx
	movl	%eax, 20(%esp)
	movl	$449, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$467, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	*52(%ecx)
	cmpl	$2, %edi
	jle	L1916
	call	_midi_pause
L1917:
	cmpb	$0, _raton
	je	L1919
	movl	$0, (%esp)
	call	_show_mouse
	movl	$30, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %edx
	movl	$30, 24(%esp)
	movl	$440, 20(%esp)
	movl	$120, 16(%esp)
	movl	$440, 12(%esp)
	movl	$120, 8(%esp)
	movl	(%esi), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	(%ecx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	.p2align 4,,15
L1906:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1919:
	movl	$30, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %edi
	movl	$30, 24(%esp)
	movl	$440, 20(%esp)
	movl	$120, 16(%esp)
	movl	$440, 12(%esp)
	movl	$120, 8(%esp)
	movl	(%edx), %ecx
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	jmp	L1906
L1923:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L1909
	.p2align 4,,7
L1908:
	cmpw	$0, _grises
	movb	$-1, _sonido
	je	L1924
L1918:
	movl	$30, 28(%esp)
	movl	_videoTemporal, %esi
	movl	_configuracion, %ebx
	movl	$30, 24(%esp)
	movl	$440, 20(%esp)
	movl	$120, 16(%esp)
	movl	$40, 12(%esp)
	movl	$120, 8(%esp)
	movl	%esi, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_blit
	call	_midi_resume
	jmp	L1917
L1924:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edi
	movl	%edi, (%esp)
	call	_select_palette
	jmp	L1918
	.p2align 4,,15
.globl _SiguienteCancion
	.def	_SiguienteCancion;	.scl	2;	.type	32;	.endef
_SiguienteCancion:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpb	$0, _driverSonido
	je	L1925
	cmpb	$0, _sonido
	jne	L1940
L1925:
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L1940:
	call	_stop_midi
	movzwl	_numMidiActual, %eax
	cmpw	$5, %ax
	jle	L1927
	xorl	%edx, %edx
	xorl	%eax, %eax
	movw	%dx, _numMidiActual
L1928:
	cwtl
	cmpl	$5, %eax
	ja	L1930
	jmp	*L1937(,%eax,4)
	.p2align 2
	.align 4
L1937:
	.long	L1931
	.long	L1932
	.long	L1933
	.long	L1934
	.long	L1935
	.long	L1936
L1931:
	movl	_configuracion, %edx
	movl	144(%edx), %eax
L1939:
	movl	%eax, _archivoMidi
L1930:
	movl	$-1, 4(%esp)
	movl	_archivoMidi, %edx
	movl	%edx, (%esp)
	call	_play_midi
	jmp	L1925
L1932:
	movl	_configuracion, %ecx
	movl	160(%ecx), %eax
	jmp	L1939
L1933:
	movl	_configuracion, %edx
	movl	176(%edx), %eax
	jmp	L1939
L1934:
	movl	_configuracion, %ecx
	movl	192(%ecx), %eax
	jmp	L1939
L1935:
	movl	_configuracion, %edx
	movl	208(%edx), %eax
	jmp	L1939
L1936:
	movl	_configuracion, %ecx
	movl	224(%ecx), %eax
	jmp	L1939
L1927:
	testw	%ax, %ax
	jns	L1928
	movl	$5, %ecx
	movl	$5, %eax
	movw	%cx, _numMidiActual
	jmp	L1928
	.p2align 4,,15
.globl _HacerJustificacion
	.def	_HacerJustificacion;	.scl	2;	.type	32;	.endef
_HacerJustificacion:
	pushl	%ebp
	xorl	%edx, %edx
	movl	%esp, %ebp
	pushl	%edi
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	subl	$1084, %esp
	movl	8(%ebp), %ecx
	movswl	20(%ebp),%ebx
	movl	%edx, -1056(%ebp)
	movl	%ecx, (%esp)
	movl	%ebx, -1052(%ebp)
	xorl	%ebx, %ebx
	call	_strlen
	movl	%eax, %esi
	leal	-536(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	testl	%esi, %esi
	jle	L1941
	cmpb	$32, -536(%ebp)
	je	L2004
L1944:
	movl	%ebx, -1060(%ebp)
	cmpl	%esi, %ebx
	jge	L1993
	.p2align 4,,15
L1952:
	cmpb	$32, -536(%ebp,%ebx)
	je	L2005
L1951:
	incl	%ebx
	cmpl	%esi, %ebx
	jl	L1952
L1993:
	cmpl	$1, 16(%ebp)
	je	L2006
L1941:
	addl	$1084, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L2006:
	cmpl	$8, 12(%ebp)
	movl	-1052(%ebp), %eax
	je	L2007
L1954:
	movl	-1056(%ebp), %edi
	movl	%eax, %ebx
	subl	%esi, %ebx
	testl	%edi, %edi
	jne	L1958
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%ecx, -1064(%ebp)
	movl	%eax, -1068(%ebp)
L1959:
	xorl	%edx, %edx
	movl	-1060(%ebp), %edi
	cmpl	-1056(%ebp), %ebx
	jge	L1960
	cmpl	%esi, %edi
	movl	%edi, %ebx
	jge	L2001
	.p2align 4,,15
L1967:
	movzbl	-536(%ebp,%ebx), %eax
	cmpb	$32, %al
	je	L2008
L1965:
	movl	8(%ebp), %ecx
	movb	%al, (%edi,%ecx)
L1963:
	incl	%ebx
	incl	%edi
	cmpl	%esi, %ebx
	jl	L1967
L2001:
	movl	8(%ebp), %esi
	movb	$0, (%edi,%esi)
	jmp	L1941
L2008:
	cmpl	-1068(%ebp), %edx
	jge	L1965
	movl	8(%ebp), %eax
	incl	%edx
	movb	$32, (%edi,%eax)
	movb	$32, 1(%edi,%eax)
	incl	%edi
	jmp	L1963
L1960:
	xorl	%ebx, %ebx
	cmpl	-1056(%ebp), %edx
	jge	L1997
	movzbl	-1064(%ebp), %eax
	incb	%al
	.p2align 4,,15
L1973:
	movb	%al, -1048(%ebp,%ebx)
	incl	%ebx
	cmpl	-1056(%ebp), %ebx
	jl	L1973
L1997:
	xorl	%ebx, %ebx
	cmpl	-1068(%ebp), %ebx
	jge	L1999
	.p2align 4,,15
L1978:
	incb	-1048(%ebp,%ebx)
	incl	%ebx
	cmpl	-1068(%ebp), %ebx
	jl	L1978
L1999:
	movl	-1060(%ebp), %ebx
	cmpl	%esi, %ebx
	jge	L2001
	.p2align 4,,15
L1990:
	movzbl	-536(%ebp,%ebx), %eax
	cmpb	$32, %al
	je	L2009
	movl	8(%ebp), %ecx
	movb	%al, (%edi,%ecx)
L1981:
	incl	%ebx
	incl	%edi
	cmpl	%esi, %ebx
	jl	L1990
	jmp	L2001
L2009:
	movzbl	-1048(%ebp,%edx), %eax
	testl	%eax, %eax
	je	L2003
	.p2align 4,,15
L1988:
	movl	8(%ebp), %ecx
	movb	$32, (%edi,%ecx)
	incl	%edi
	decl	%eax
	jne	L1988
L2003:
	incl	%edx
	decl	%edi
	jmp	L1981
L1958:
	movl	%ebx, %eax
	cltd
	idivl	-1056(%ebp)
	movl	%edx, -1068(%ebp)
	movl	%eax, -1064(%ebp)
	jmp	L1959
L2007:
	subl	$15, %eax
	jmp	L1954
	.p2align 4,,7
L2005:
	incl	-1056(%ebp)
	jmp	L1951
L2004:
	cmpl	%esi, %edi
	jge	L1944
	.p2align 4,,15
L1947:
	incl	%ebx
	cmpb	$32, -536(%ebp,%ebx)
	jne	L1944
	cmpl	%esi, %ebx
	jl	L1947
	jmp	L1944
	.p2align 4,,15
.globl _GeneraColores
	.def	_GeneraColores;	.scl	2;	.type	32;	.endef
_GeneraColores:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$255, (%esp)
	call	_makecol
	movl	%eax, _color_rojo
	movl	$0, 8(%esp)
	movl	$180, 4(%esp)
	movl	$0, (%esp)
	call	_makecol
	movl	%eax, _color_verde
	movl	$255, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_makecol
	movl	%eax, _color_azul
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_makecol
	movl	%eax, _color_negro
	movl	$255, 8(%esp)
	movl	$255, 4(%esp)
	movl	$255, (%esp)
	call	_makecol
	movl	%eax, _color_blanco
	movl	$4, 8(%esp)
	movl	$139, 4(%esp)
	movl	$178, (%esp)
	call	_makecol
	movl	%eax, _color_marron
	movl	$17, 8(%esp)
	movl	$255, 4(%esp)
	movl	$252, (%esp)
	call	_makecol
	movl	%eax, _color_amarillo
	movl	$246, 8(%esp)
	movl	$128, 4(%esp)
	movl	$211, (%esp)
	call	_makecol
	movl	%eax, _color_violeta
	movl	$66, 8(%esp)
	movl	$255, 4(%esp)
	movl	$80, (%esp)
	call	_makecol
	movl	%eax, _color_verdeFosforito
	movl	$255, 8(%esp)
	movl	$226, 4(%esp)
	movl	$29, (%esp)
	call	_makecol
	movl	%eax, _color_azulClaro
	movl	$29, 8(%esp)
	movl	$125, 4(%esp)
	movl	$255, (%esp)
	call	_makecol
	movl	%eax, _color_naranja
	movl	$152, 8(%esp)
	movl	$148, 4(%esp)
	movl	$136, (%esp)
	call	_makecol
	movl	%eax, _color_gris
	movl	$231, 8(%esp)
	movl	$230, 4(%esp)
	movl	$222, (%esp)
	call	_makecol
	movl	%eax, _color_grisClaro
	leave
	ret
	.align 32
LC186:
	.ascii "Error en modo de video\12Cambie de driver grafico en CFG\12\0"
	.p2align 4,,15
.globl _Presentacion
	.def	_Presentacion;	.scl	2;	.type	32;	.endef
_Presentacion:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %esi
	movl	112(%esi), %ebx
	movl	$8, (%esp)
	call	_set_color_depth
	movl	$0, 16(%esp)
	movl	_tipoPantalla, %edx
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	%edx, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	je	L2012
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	$1396786757, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	jne	L2018
L2012:
	movl	$1, (%esp)
	call	_set_display_switch_mode
	movl	__imp__black_palette, %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	4(%ebx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%ebx), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	$1000, 4(%esp)
	xorl	%ecx, %ecx
	movl	%ecx, _crono
	movl	$_inc_crono, (%esp)
	call	_install_int
	movl	304(%esi), %edx
	movl	%edx, (%esp)
	call	_Desfundir
	.p2align 4,,15
L2014:
	movl	_crono, %ebx
	cmpl	$3, %ebx
	jg	L2015
	call	_keypressed
	testl	%eax, %eax
	je	L2014
L2015:
	call	_clear_keybuf
	call	_Fundir
	movl	$_inc_crono, (%esp)
	call	_remove_int
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	jmp	_clear_keybuf
L2018:
	movl	$LC186, (%esp)
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
	.p2align 4,,15
.globl _ActivaMOD
	.def	_ActivaMOD;	.scl	2;	.type	32;	.endef
_ActivaMOD:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpb	$0, _driverSonido
	jne	L2021
L2020:
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L2021:
	movl	_configuracion, %edx
	xorl	%ecx, %ecx
	movw	%cx, _numMidiActual
	movl	144(%edx), %ecx
	movswl	_numVolumenActual,%edx
	movl	%ecx, _archivoMidi
	movl	%edx, 4(%esp)
	movl	%edx, (%esp)
	call	_set_volume
	movl	$-1, 4(%esp)
	movl	_archivoMidi, %edx
	movl	%edx, (%esp)
	call	_play_midi
	jmp	L2020
	.p2align 4,,15
.globl _DestruyeMOD
	.def	_DestruyeMOD;	.scl	2;	.type	32;	.endef
_DestruyeMOD:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	jmp	_midi_pause
	.p2align 4,,15
.globl _Fundir
	.def	_Fundir;	.scl	2;	.type	32;	.endef
_Fundir:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	leal	-1032(%ebp), %esi
	pushl	%ebx
	subl	$1040, %esp
	movl	%esi, (%esp)
	call	_get_palette
	.p2align 4,,15
L2040:
	movb	$-1, %bl
	xorl	%eax, %eax
	.p2align 4,,15
L2034:
	movzbl	-1032(%ebp,%eax,4), %edx
	testb	%dl, %dl
	je	L2031
	decb	%dl
	xorl	%ebx, %ebx
	movb	%dl, -1032(%ebp,%eax,4)
L2031:
	movzbl	-1031(%ebp,%eax,4), %edx
	testb	%dl, %dl
	je	L2032
	decb	%dl
	xorl	%ebx, %ebx
	movb	%dl, -1031(%ebp,%eax,4)
L2032:
	movzbl	-1030(%ebp,%eax,4), %edx
	testb	%dl, %dl
	je	L2029
	decb	%dl
	xorl	%ebx, %ebx
	movb	%dl, -1030(%ebp,%eax,4)
L2029:
	incl	%eax
	cwtl
	cmpw	$255, %ax
	jle	L2034
	call	_vsync
	call	_vsync
	movl	%esi, (%esp)
	call	_set_palette
	testb	%bl, %bl
	je	L2040
	addl	$1040, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.p2align 4,,15
.globl _Desfundir
	.def	_Desfundir;	.scl	2;	.type	32;	.endef
_Desfundir:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	leal	-1048(%ebp), %edi
	pushl	%esi
	pushl	%ebx
	subl	$1068, %esp
	movl	8(%ebp), %esi
	movl	%edi, (%esp)
	call	_get_palette
	.p2align 4,,15
L2068:
	movb	$-1, -1049(%ebp)
	xorl	%eax, %eax
	.p2align 4,,15
L2062:
	movzbl	-1048(%ebp,%eax,4), %edx
	cmpb	(%esi,%eax,4), %dl
	je	L2059
	movb	$0, -1049(%ebp)
	incb	%dl
	movb	%dl, -1048(%ebp,%eax,4)
L2059:
	movzbl	-1047(%ebp,%eax,4), %edx
	cmpb	1(%esi,%eax,4), %dl
	je	L2060
	movb	$0, -1049(%ebp)
	incb	%dl
	movb	%dl, -1047(%ebp,%eax,4)
L2060:
	movzbl	-1046(%ebp,%eax,4), %edx
	cmpb	2(%esi,%eax,4), %dl
	je	L2057
	movb	$0, -1049(%ebp)
	incb	%dl
	movb	%dl, -1046(%ebp,%eax,4)
L2057:
	incl	%eax
	cwtl
	cmpw	$255, %ax
	jle	L2062
	xorl	%ebx, %ebx
	.p2align 4,,15
L2067:
	incb	%bl
	call	_vsync
	cmpb	$3, %bl
	jbe	L2067
	movl	%edi, (%esp)
	call	_set_palette
	cmpb	$0, -1049(%ebp)
	je	L2068
	addl	$1068, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 32
LC187:
	.ascii "Error en modo de video\12Cambie de driver grafico CFG\12\0"
	.p2align 4,,15
.globl _Despedida
	.def	_Despedida;	.scl	2;	.type	32;	.endef
_Despedida:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	8(%ebp), %edi
	movl	64(%edi), %edx
	movl	32(%edi), %eax
	movl	112(%edi), %ebx
	movl	%edx, -16(%ebp)
	movl	16(%edi), %esi
	movl	%eax, -20(%ebp)
	movl	$8, (%esp)
	call	_set_color_depth
	movl	$0, 16(%esp)
	movl	_tipoPantalla, %edx
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	%edx, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	je	L2076
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$480, 8(%esp)
	movl	$640, 4(%esp)
	movl	$1396786757, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	jne	L2082
L2076:
	movl	$1, (%esp)
	call	_set_display_switch_mode
	movl	__imp__black_palette, %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	4(%ebx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%ebx), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	4(%esi), %ebx
	movl	__imp__screen, %edx
	movl	%ebx, 28(%esp)
	movl	(%esi), %ecx
	movl	$26, 20(%esp)
	movl	$150, 16(%esp)
	movl	%ecx, 24(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edx), %ebx
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	call	_masked_blit
	movl	-20(%ebp), %esi
	movl	__imp__screen, %ebx
	movl	4(%esi), %ecx
	movl	%ecx, 28(%esp)
	movl	(%esi), %edx
	movl	$265, 20(%esp)
	movl	$438, 16(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ebx), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_masked_blit
	movl	-16(%ebp), %esi
	movl	__imp__screen, %ecx
	movl	4(%esi), %edx
	movl	%edx, 28(%esp)
	movl	(%esi), %ebx
	movl	$432, 20(%esp)
	movl	$4, 16(%esp)
	movl	%ebx, 24(%esp)
	xorl	%ebx, %ebx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	call	_masked_blit
	movl	%ebx, _crono
	movl	$1000, 4(%esp)
	movl	$_inc_crono, (%esp)
	call	_install_int
	movl	304(%edi), %ecx
	movl	%ecx, (%esp)
	call	_Desfundir
	.p2align 4,,15
L2078:
	movl	_crono, %edi
	cmpl	$6, %edi
	jg	L2079
	call	_keypressed
	testl	%eax, %eax
	je	L2078
L2079:
	call	_clear_keybuf
	call	_Fundir
	movl	$_inc_crono, 8(%ebp)
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_remove_int
L2082:
	movl	$LC187, (%esp)
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
	.p2align 4,,15
.globl _ReguladorVolumen
	.def	_ReguladorVolumen;	.scl	2;	.type	32;	.endef
_ReguladorVolumen:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movzbl	8(%ebp), %edx
	cmpb	$0, _driverSonido
	movb	%dl, -13(%ebp)
	jne	L2115
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L2115:
	movl	$50, 4(%esp)
	movl	$640, (%esp)
	call	_create_bitmap
	cmpb	$0, _raton
	movl	%eax, -20(%ebp)
	movswl	_numVolumenActual,%ebx
	je	L2085
	movl	$0, (%esp)
	call	_show_mouse
	movl	$50, 28(%esp)
	movl	__imp__screen, %edi
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$320, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	(%edi), %esi
	movl	%esi, (%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_show_mouse
L2086:
	movzbl	-13(%ebp), %eax
	testl	%eax, %eax
	je	L2088
	decl	%eax
	je	L2098
L2087:
	cmpb	$0, _raton
	movw	%bx, _numVolumenActual
	je	L2110
	movl	$0, (%esp)
	call	_show_mouse
	movl	$50, 28(%esp)
	movl	__imp__screen, %ecx
	movl	$640, 24(%esp)
	movl	$320, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %esi
	movl	%esi, (%esp)
	call	_blit
	movl	__imp__screen, %edi
	movl	(%edi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
L2111:
	movl	-20(%ebp), %edx
	movl	%edx, 8(%ebp)
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_destroy_bitmap
	.p2align 4,,7
L2110:
	movl	$50, 28(%esp)
	movl	__imp__screen, %esi
	movl	$640, 24(%esp)
	movl	$320, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	-20(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_blit
	jmp	L2111
L2098:
	movl	__imp__key, %esi
	movzbl	88(%esi), %ecx
	testb	%cl, %cl
	je	L2087
	leal	70(%ebx,%ebx), %esi
	movl	%esi, %edi
	.p2align 4,,15
L2107:
	cmpw	$5, %bx
	jle	L2102
	leal	-5(%ebx), %edx
	subl	$10, %edi
	movswl	%dx,%ebx
	subl	$10, %esi
L2102:
	cmpb	$0, _raton
	je	L2103
	movl	$0, (%esp)
	call	_show_mouse
	call	_vsync
	movl	$50, 28(%esp)
	movl	__imp__screen, %ecx
	movl	$640, 24(%esp)
	movl	$320, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	$365, 24(%esp)
	movl	_color_verdeFosforito, %edx
	movl	__imp__screen, %ecx
	movl	$45, 20(%esp)
	movl	%edx, 28(%esp)
	movl	$325, 16(%esp)
	movl	$45, 12(%esp)
	movl	$365, 8(%esp)
	movl	$5, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_triangle
	movl	__imp__screen, %ecx
	movl	_color_verdeFosforito, %eax
	movl	(%ecx), %edx
	movl	28(%edx), %ecx
	movl	%edx, (%esp)
	movl	%eax, 20(%esp)
	movl	$365, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$325, 8(%esp)
	movl	$70, 4(%esp)
	call	*56(%ecx)
	movl	__imp__screen, %edx
	movl	(%edx), %ecx
	movl	%ecx, (%esp)
	call	_show_mouse
L2105:
	movl	%ebx, 4(%esp)
	movl	%ebx, (%esp)
	call	_set_volume
	movl	__imp__key, %ecx
	movzbl	88(%ecx), %edx
	testb	%dl, %dl
	jne	L2107
	jmp	L2087
	.p2align 4,,7
L2103:
	call	_vsync
	movl	$50, 28(%esp)
	movl	__imp__screen, %ecx
	movl	$640, 24(%esp)
	movl	$320, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	$365, 24(%esp)
	movl	_color_verdeFosforito, %edx
	movl	__imp__screen, %ecx
	movl	$45, 20(%esp)
	movl	%edx, 28(%esp)
	movl	$325, 16(%esp)
	movl	$45, 12(%esp)
	movl	$365, 8(%esp)
	movl	$5, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_triangle
	movl	__imp__screen, %ecx
	movl	_color_verdeFosforito, %eax
	movl	(%ecx), %edx
	movl	28(%edx), %ecx
	movl	%eax, 20(%esp)
	movl	$365, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$325, 8(%esp)
	movl	$70, 4(%esp)
	movl	%edx, (%esp)
	call	*56(%ecx)
	jmp	L2105
	.p2align 4,,7
L2088:
	movl	__imp__key, %ecx
	movzbl	89(%ecx), %edx
	testb	%dl, %dl
	je	L2087
	leal	70(%ebx,%ebx), %esi
	movl	%esi, %edi
	.p2align 4,,15
L2097:
	cmpw	$250, %bx
	jg	L2092
	leal	5(%ebx), %edx
	addl	$10, %edi
	movswl	%dx,%ebx
	addl	$10, %esi
L2092:
	cmpb	$0, _raton
	je	L2093
	movl	$0, (%esp)
	call	_show_mouse
	call	_vsync
	movl	$365, 24(%esp)
	movl	_color_verdeFosforito, %edx
	movl	__imp__screen, %ecx
	movl	$45, 20(%esp)
	movl	%edx, 28(%esp)
	movl	$325, 16(%esp)
	movl	$45, 12(%esp)
	movl	$365, 8(%esp)
	movl	$5, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_triangle
	movl	__imp__screen, %ecx
	movl	_color_verdeFosforito, %eax
	movl	(%ecx), %edx
	movl	28(%edx), %ecx
	movl	%edx, (%esp)
	movl	%eax, 20(%esp)
	movl	$365, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$325, 8(%esp)
	movl	$70, 4(%esp)
	call	*56(%ecx)
	movl	__imp__screen, %edx
	movl	(%edx), %ecx
	movl	%ecx, (%esp)
	call	_show_mouse
L2095:
	movl	%ebx, 4(%esp)
	movl	%ebx, (%esp)
	call	_set_volume
	movl	__imp__key, %edx
	movzbl	89(%edx), %ecx
	testb	%cl, %cl
	jne	L2097
	jmp	L2087
	.p2align 4,,7
L2093:
	call	_vsync
	movl	$365, 24(%esp)
	movl	_color_verdeFosforito, %edx
	movl	__imp__screen, %ecx
	movl	$45, 20(%esp)
	movl	%edx, 28(%esp)
	movl	$325, 16(%esp)
	movl	$45, 12(%esp)
	movl	$365, 8(%esp)
	movl	$5, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_triangle
	movl	__imp__screen, %ecx
	movl	_color_verdeFosforito, %eax
	movl	(%ecx), %edx
	movl	28(%edx), %ecx
	movl	%eax, 20(%esp)
	movl	$365, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$325, 8(%esp)
	movl	$70, 4(%esp)
	movl	%edx, (%esp)
	call	*56(%ecx)
	jmp	L2095
	.p2align 4,,7
L2085:
	movl	$50, 28(%esp)
	movl	__imp__screen, %esi
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$320, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	(%esi), %ecx
	movl	%ecx, (%esp)
	call	_blit
	jmp	L2086
	.align 32
LC188:
	.ascii "\12 Diskmag Exilium issue #2   Grupo: SLIDERS   Fecha: 15-10-2003\12==============================================================\12\12 exilium [8|16] [no] [/?|?] [setup] [nosonido]\12\12   8       --> 8 bits de color\12  16       --> 16 bits de color\12  no       --> No visualiza la presentacion\12  setup    --> Muestra el menu de configuracion\12  nosonido --> Sin sonido\12  /?    --> Muestra ayuda\12\12Ejemplo: exilium 8 no        Sin prensentacion y 256 colores\12         exilium /?          Muestra esta ayuda\12         exilium setup       Carga el menu de configuracion\12\12Por defecto arranca en 16 bits de color y con presentacion\12\0"
	.p2align 4,,15
.globl _MostrarLineaComandos
	.def	_MostrarLineaComandos;	.scl	2;	.type	32;	.endef
_MostrarLineaComandos:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$LC188, (%esp)
	call	_allegro_message
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,15
.globl _GeneraClave
	.def	_GeneraClave;	.scl	2;	.type	32;	.endef
_GeneraClave:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movb	$111, (%edx)
	movb	$100, 1(%edx)
	movb	$105, 2(%edx)
	movb	$111, 3(%edx)
	movb	$97, 4(%edx)
	movb	$108, 5(%edx)
	movb	$111, 6(%edx)
	movb	$115, 7(%edx)
	movb	$108, 8(%edx)
	movb	$97, 9(%edx)
	movb	$109, 10(%edx)
	movb	$101, 11(%edx)
	movb	$114, 12(%edx)
	movb	$115, 13(%edx)
	movb	$0, 14(%edx)
	popl	%ebp
	ret
	.p2align 4,,15
.globl _AccionMenuDesplegable
	.def	_AccionMenuDesplegable;	.scl	2;	.type	32;	.endef
_AccionMenuDesplegable:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	cmpb	$0, _menuArticulosDesplegado
	jne	L2119
	cmpw	$0, _grises
	je	L2153
L2120:
	movl	$80, 28(%esp)
	movl	_videoTemporal, %esi
	movl	_configuracion, %ebx
	movl	$640, 24(%esp)
	movl	$400, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_blit
	cmpb	$0, _raton
	jne	L2154
L2121:
	xorl	%eax, %eax
	xorl	%edx, %edx
	movw	%ax, _i
	.p2align 4,,15
L2126:
	movl	$23, 28(%esp)
	movl	_videoTemporal, %ecx
	movswl	%dx,%ebx
	movl	$292, 24(%esp)
	movl	_configuracion, %edi
	addl	$416, %ebx
	movl	%ebx, 20(%esp)
	movl	%ecx, 4(%esp)
	movl	$168, 16(%esp)
	movl	$16, 12(%esp)
	movl	$168, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, (%esp)
	call	_blit
	movswl	_i,%ebx
	movl	$12, 28(%esp)
	movl	_videoTemporal, %edx
	movl	$110, 24(%esp)
	movl	_configuracion, %ecx
	movl	$260, 16(%esp)
	addl	$439, %ebx
	movl	%edx, 4(%esp)
	movl	%ebx, 20(%esp)
	movl	$39, 12(%esp)
	movl	$260, 8(%esp)
	movl	(%ecx), %edi
	movl	%edi, (%esp)
	call	_blit
	call	_vsync
	movl	$74, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %edx
	movl	$292, 24(%esp)
	movl	$416, 20(%esp)
	movl	$168, 16(%esp)
	movl	$416, 12(%esp)
	movl	$168, 8(%esp)
	movl	(%esi), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	_blit
	movzwl	_i, %ecx
	movb	$-1, _menuArticulosDesplegado
	leal	1(%ecx), %edi
	cmpw	$41, %di
	movw	%di, _i
	movl	%edi, %edx
	jle	L2126
	movzbl	_losArticulos+1, %ecx
	movl	$_losArticulos, %edx
	movl	_letras, %ebx
	movzbl	_losArticulos, %esi
	movl	_color_amarillo, %eax
	movl	_datafile, %edi
	movl	%ebx, -16(%ebp)
	movl	__imp___textmode, %ebx
	movl	%eax, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	%esi, -20(%ebp)
	movl	160(%edi), %esi
	movl	724(%edx,%ecx,4), %edi
	movl	%ecx, -24(%ebp)
	movl	_color_blanco, %edx
	movl	(%ebx), %ecx
	movl	%edi, 8(%esp)
	movl	$10, %edi
	movl	%esi, 4(%esp)
	movl	$1, %esi
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, (%esp)
	call	_textout_centre_ex
L2134:
	movl	-24(%ebp), %ecx
	leal	(%ecx,%esi), %edx
	cmpl	-20(%ebp), %edx
	jl	L2155
L2130:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2134
	movl	$480, 28(%esp)
	movl	_videoTemporal, %ecx
	movl	_letras, %edx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_masked_blit
	movl	$74, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_videoTemporal, %edi
	movl	$292, 24(%esp)
	movl	$416, 20(%esp)
	movl	$168, 16(%esp)
	movl	$416, 12(%esp)
	movl	$168, 8(%esp)
	movl	(%ebx), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	_blit
L2152:
	cmpb	$0, _raton
	jne	L2156
L2118:
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L2156:
	movl	__imp__screen, %edi
	movl	(%edi), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L2118
L2155:
	movl	__imp___textmode, %eax
	movl	_datafile, %ecx
	movl	(%eax), %eax
	movl	192(%ecx), %ebx
	movl	_losArticulos+724(,%edx,4), %ecx
	leal	420(%edi), %edx
	movl	%eax, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	-16(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	_textout_centre_ex
	jmp	L2130
L2154:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2121
L2153:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2120
	.p2align 4,,7
L2119:
	cmpb	$0, _raton
	jne	L2157
L2138:
	movl	$42, %eax
	movl	$42, %edx
	movw	%ax, _i
	.p2align 4,,15
L2143:
	movl	$292, 24(%esp)
	movswl	%dx,%esi
	movl	$74, %ecx
	movl	$168, 16(%esp)
	subl	%esi, %ecx
	movl	_videoTemporal, %edi
	movl	%ecx, 28(%esp)
	leal	416(%esi), %ebx
	movl	_configuracion, %ecx
	movl	%ebx, 20(%esp)
	addl	$16, %esi
	movl	%esi, 12(%esp)
	movl	%edi, 4(%esp)
	movl	$168, 8(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_blit
	movswl	_i,%ebx
	movl	$24, 28(%esp)
	movl	_videoTemporal, %esi
	movl	$292, 24(%esp)
	movl	_configuracion, %edi
	movl	$168, 16(%esp)
	addl	$416, %ebx
	movl	%ebx, 20(%esp)
	movl	%esi, 4(%esp)
	movl	$16, 12(%esp)
	movl	$168, 8(%esp)
	movl	(%edi), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movswl	_i,%edx
	movl	$12, 28(%esp)
	movl	_videoTemporal, %ebx
	movl	$110, 24(%esp)
	movl	_configuracion, %esi
	movl	$260, 16(%esp)
	addl	$439, %edx
	movl	%edx, 20(%esp)
	movl	%ebx, 4(%esp)
	movl	$39, 12(%esp)
	movl	$260, 8(%esp)
	movl	(%esi), %edi
	movl	%edi, (%esp)
	call	_blit
	call	_vsync
	movl	$74, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %ebx
	movl	$292, 24(%esp)
	movl	$416, 20(%esp)
	movl	$168, 16(%esp)
	movl	$416, 12(%esp)
	movl	$168, 8(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movzwl	_i, %esi
	movb	$0, _menuArticulosDesplegado
	leal	-1(%esi), %edi
	testw	%di, %di
	movw	%di, _i
	movl	%edi, %edx
	jns	L2143
	jmp	L2152
L2157:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2138
	.p2align 4,,15
.globl _AccionBarraDesplegable
	.def	_AccionBarraDesplegable;	.scl	2;	.type	32;	.endef
_AccionBarraDesplegable:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	_configuracion, %ecx
	movl	400(%ecx), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	movl	$80, 4(%esp)
	movl	$640, (%esp)
	call	_create_bitmap
	movl	%eax, -16(%ebp)
	movl	$80, 4(%esp)
	movl	$640, (%esp)
	call	_create_bitmap
	cmpb	$0, _raton
	movl	%eax, %edi
	jne	L2188
L2159:
	movl	$80, 28(%esp)
	movl	-16(%ebp), %edx
	movl	__imp__screen, %ecx
	movl	$640, 24(%esp)
	movl	%edx, 4(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %esi
	movl	%esi, (%esp)
	xorl	%esi, %esi
	call	_blit
	movl	$80, 28(%esp)
	movl	__imp__screen, %ebx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$400, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_blit
	.p2align 4,,15
L2166:
	call	_vsync
	movl	%esi, 12(%esp)
	movl	$79, %ebx
	movl	__imp__screen, %edx
	movl	$640, 24(%esp)
	subl	%esi, %ebx
	movl	%ebx, 28(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 8(%esp)
	movl	(%edx), %ecx
	movl	-16(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	_color_negro, %eax
	movl	(%ecx), %edx
	movl	28(%edx), %ecx
	movl	%eax, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ebx, 8(%esp)
	movl	$80, %ebx
	subl	%esi, %ebx
	movl	%edx, (%esp)
	movl	$640, 12(%esp)
	movl	$0, 4(%esp)
	call	*52(%ecx)
	movl	%ebx, 28(%esp)
	movl	__imp__screen, %ecx
	leal	400(%esi), %ebx
	movl	$640, 24(%esp)
	incl	%esi
	movl	%ebx, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	_color_negro, %eax
	movl	(%ecx), %edx
	movl	28(%edx), %ecx
	movl	%eax, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$640, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	*52(%ecx)
	cmpl	$79, %esi
	jle	L2166
	cmpw	$0, _grises
	je	L2189
L2167:
	movl	$25, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_configuracion, %esi
	movl	$24, 24(%esp)
	movl	$405, 20(%esp)
	movl	$519, 16(%esp)
	movl	$5, 12(%esp)
	movl	$519, 8(%esp)
	movl	(%ecx), %ebx
	movl	%ebx, 4(%esp)
	movl	(%esi), %edx
	movl	%edx, (%esp)
	call	_blit
	movzbl	_raton, %ecx
	testb	%cl, %cl
	movb	%cl, -17(%ebp)
	jne	L2190
L2168:
	movl	__imp__mouse_y, %edx
	movl	__imp__mouse_x, %ecx
	movl	__imp__mouse_b, %ebx
	.p2align 4,,15
L2187:
	movl	(%edx), %esi
	cmpl	$407, %esi
	jle	L2187
	movl	(%edx), %esi
	cmpl	$429, %esi
	jg	L2187
	movl	(%ecx), %esi
	cmpl	$520, %esi
	jle	L2187
	movl	(%ecx), %esi
	cmpl	$542, %esi
	jg	L2187
	movl	(%ebx), %eax
	testb	$1, %al
	je	L2187
L2172:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L2172
	cmpb	$0, -17(%ebp)
	jne	L2191
L2175:
	movl	__imp__screen, %ebx
	movl	_color_negro, %edx
	movl	(%ebx), %ecx
	movl	28(%ecx), %esi
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$430, 16(%esp)
	movl	$553, 12(%esp)
	movl	$405, 8(%esp)
	movl	$519, 4(%esp)
	call	*56(%esi)
	call	_clear_keybuf
	movl	_configuracion, %ebx
	xorl	%esi, %esi
	movl	400(%ebx), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
L2181:
	call	_vsync
	movl	$640, 24(%esp)
	movl	__imp__screen, %ecx
	movl	$79, %edx
	movl	$0, 20(%esp)
	leal	1(%esi), %ebx
	subl	%esi, %edx
	movl	%ebx, 28(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_blit
	movl	%ebx, 28(%esp)
	movl	__imp__screen, %ecx
	movl	$479, %edx
	movl	$640, 24(%esp)
	subl	%esi, %edx
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, %esi
	call	_blit
	cmpl	$79, %ebx
	jle	L2181
	cmpb	$0, _raton
	jne	L2192
L2182:
	movl	-16(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_destroy_bitmap
	movl	%edi, (%esp)
	call	_destroy_bitmap
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L2192:
	movl	__imp__screen, %esi
	movl	(%esi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	jmp	L2182
L2191:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2175
L2190:
	movl	__imp__screen, %ebx
	movl	(%ebx), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	movzbl	_raton, %edx
	movb	%dl, -17(%ebp)
	jmp	L2168
L2189:
	movl	_configuracion, %ebx
	movl	240(%ebx), %esi
	movl	%esi, (%esp)
	call	_select_palette
	jmp	L2167
L2188:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2159
	.p2align 4,,15
.globl _ControlaEventoRaton
	.def	_ControlaEventoRaton;	.scl	2;	.type	32;	.endef
_ControlaEventoRaton:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	movl	16(%ebp), %ecx
	cmpb	$0, _raton
	movl	20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%ecx, -16(%ebp)
	movl	12(%ebp), %esi
	movl	%edx, -20(%ebp)
	jne	L2473
L2193:
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L2473:
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	call	_get_mouse_mickeys
	movl	__imp__mouse_b, %edx
	movl	(%edx), %eax
	testb	$2, %al
	je	L2195
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L2195
	cmpb	$0, _menuArticulosDesplegado
	jne	L2196
	cmpb	$0, _menuBuscar
	jne	L2195
	testl	%eax, %eax
	jle	L2198
	movl	_configuracion, %edi
	movl	336(%edi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	call	_ScrollArriba
	movl	(%esi), %eax
L2198:
	testl	%eax, %eax
	js	L2474
	.p2align 4,,15
L2195:
	movl	__imp__mouse_z, %edx
	movl	-16(%ebp), %ebx
	movl	(%edx), %edi
	movl	(%ebx), %eax
	cmpl	%eax, %edi
	je	L2236
	cmpb	$0, _menuArticulosDesplegado
	jne	L2237
	cmpb	$0, _menuBuscar
	jne	L2241
	cmpl	%eax, %edi
	jg	L2475
L2239:
	cmpl	%eax, %edi
	jl	L2476
	.p2align 4,,15
L2241:
	movl	-16(%ebp), %edx
	movl	%edi, (%edx)
L2236:
	movl	__imp__mouse_b, %edx
	movl	(%edx), %eax
	testb	$4, %al
	je	L2277
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L2277
	cmpb	$0, _menuArticulosDesplegado
	je	L2277
	cmpb	$0, _menuBuscar
	jne	L2277
	testl	%eax, %eax
	jle	L2278
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	movl	_letras, %ebx
	movl	%ebx, -112(%ebp)
	movzbl	_losArticulos+1, %ecx
	movzbl	_losArticulos, %edi
	movzbl	%cl, %eax
	decl	%edi
	cmpl	%edi, %eax
	jl	L2477
L2462:
	movl	(%esi), %eax
L2278:
	testl	%eax, %eax
	js	L2478
L2464:
	movl	__imp__mouse_b, %edx
	.p2align 4,,15
L2277:
	movl	(%edx), %eax
	testb	$1, %al
	je	L2193
	movl	__imp__mouse_y, %ecx
	movl	(%ecx), %ebx
	movl	%ecx, %edx
	cmpl	$446, %ebx
	jle	L2313
	movl	(%ecx), %edi
	cmpl	$468, %edi
	jg	L2313
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %esi
	cmpl	$119, %esi
	jle	L2313
	movl	(%ebx), %edi
	cmpl	$142, %edi
	jg	L2313
	cmpb	$0, _driverSonido
	je	L2313
	cmpw	$0, _grises
	je	L2479
L2314:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$35, 28(%esp)
	movl	__imp__screen, %edi
	movl	_configuracion, %ebx
	movl	$35, 24(%esp)
	movl	$440, 20(%esp)
	movl	$116, 16(%esp)
	movl	$39, 12(%esp)
	movl	$115, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	(%ecx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	movl	_configuracion, %esi
	movl	448(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2315:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2315
	movl	$0, (%esp)
	call	_show_mouse
	movl	$36, 28(%esp)
	movl	$36, 24(%esp)
	movl	$439, 20(%esp)
	movl	$115, 16(%esp)
	movl	$39, 12(%esp)
	movl	$115, 8(%esp)
L2465:
	movl	__imp__screen, %edx
	movl	_configuracion, %ebx
	movl	(%edx), %ecx
	movl	%ecx, 4(%esp)
	movl	(%ebx), %edi
	movl	%edi, (%esp)
	call	_blit
	movl	__imp__screen, %esi
	movl	(%esi), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	movl	__imp__mouse_y, %ecx
L2318:
	movl	(%ecx), %esi
	cmpl	$446, %esi
	jle	L2384
	movl	(%ecx), %edi
	cmpl	$468, %edi
	jg	L2384
	movl	__imp__mouse_x, %edx
	movl	(%edx), %ebx
	cmpl	$119, %ebx
	jle	L2384
	movl	(%edx), %esi
	cmpl	$142, %esi
	jg	L2384
	cmpb	$0, _driverSonido
	jne	L2480
	.p2align 4,,15
L2384:
	movl	(%ecx), %edx
	cmpl	$433, %edx
	jle	L2386
	movl	(%ecx), %edi
	cmpl	$445, %edi
	jg	L2386
	movl	__imp__mouse_x, %edx
	movl	(%edx), %ebx
	cmpl	$294, %ebx
	jle	L2386
	movl	(%edx), %esi
	cmpl	$335, %esi
	jg	L2386
	cmpb	$0, _menuArticulosDesplegado
	jne	L2386
	cmpb	$0, _menuBuscar
	je	L2469
	.p2align 4,,15
L2386:
	movl	(%ecx), %edx
	cmpl	$473, %edx
	jle	L2388
	movl	(%ecx), %edi
	cmpl	$479, %edi
	jg	L2388
	movl	__imp__mouse_x, %edx
	movl	(%edx), %ebx
	cmpl	$294, %ebx
	jle	L2388
	movl	(%edx), %esi
	cmpl	$335, %esi
	jg	L2388
	cmpb	$0, _menuArticulosDesplegado
	je	L2388
	cmpb	$0, _menuBuscar
	je	L2469
	.p2align 4,,15
L2388:
	movl	(%ecx), %edi
	cmpl	$459, %edi
	jle	L2390
	movl	(%ecx), %ebx
	cmpl	$467, %ebx
	jg	L2390
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$446, %esi
	jle	L2390
	movl	(%edx), %edi
	cmpl	$454, %edi
	jg	L2390
	cmpb	$0, _menuArticulosDesplegado
	jne	L2481
	.p2align 4,,15
L2390:
	movl	(%ecx), %ebx
	cmpl	$466, %ebx
	jle	L2408
	movl	(%ecx), %edx
	cmpl	$477, %edx
	jg	L2408
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$446, %esi
	jle	L2408
	movl	(%edx), %edi
	cmpl	$454, %edi
	jg	L2408
	cmpb	$0, _menuArticulosDesplegado
	jne	L2482
	.p2align 4,,15
L2408:
	movl	(%ecx), %edi
	cmpl	$464, %edi
	jle	L2426
	movl	(%ecx), %ebx
	cmpl	$477, %ebx
	jg	L2426
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$174, %esi
	jle	L2426
	movl	(%edx), %edi
	cmpl	$182, %edi
	jg	L2426
	cmpb	$0, _menuArticulosDesplegado
	je	L2426
	cmpb	$0, _menuBuscar
	je	L2467
	.p2align 4,,15
L2426:
	movl	(%ecx), %edx
	cmpl	$419, %edx
	jle	L2428
	movl	(%ecx), %ebx
	cmpl	$430, %ebx
	jg	L2428
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$191, %esi
	jle	L2428
	movl	(%edx), %edi
	cmpl	$436, %edi
	jg	L2428
	cmpb	$0, _menuArticulosDesplegado
	je	L2428
	cmpb	$0, _menuBuscar
	je	L2467
	.p2align 4,,15
L2428:
	movl	(%ecx), %edx
	cmpl	$407, %edx
	jle	L2430
	movl	(%ecx), %ebx
	cmpl	$429, %ebx
	jg	L2430
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$520, %esi
	jle	L2430
	movl	(%edx), %edi
	cmpl	$542, %edi
	jle	L2483
	.p2align 4,,15
L2430:
	movl	(%ecx), %edx
	cmpl	$414, %edx
	jle	L2432
	movl	(%ecx), %ebx
	cmpl	$470, %ebx
	jg	L2432
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$17, %esi
	jle	L2432
	movl	(%edx), %edi
	cmpl	$70, %edi
	jg	L2432
	cmpb	$0, _menuArticulosDesplegado
	je	L2432
	cmpb	$0, _menuBuscar
	je	L2467
	.p2align 4,,15
L2432:
	movl	(%ecx), %edx
	cmpl	$409, %edx
	jle	L2434
	movl	(%ecx), %ebx
	cmpl	$436, %ebx
	jg	L2434
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$95, %esi
	jle	L2434
	movl	(%edx), %edi
	cmpl	$124, %edi
	jle	L2484
	.p2align 4,,15
L2434:
	movl	(%ecx), %edx
	cmpl	$419, %edx
	jle	L2436
	movl	(%ecx), %ebx
	cmpl	$464, %ebx
	jg	L2436
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$569, %esi
	jle	L2436
	movl	(%edx), %edi
	cmpl	$620, %edi
	jg	L2436
	movl	__imp__mouse_b, %edx
L2437:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2437
	movl	-20(%ebp), %eax
	movb	$-1, (%eax)
	jmp	L2193
	.p2align 4,,7
L2436:
	movl	(%ecx), %edx
	cmpl	$453, %edx
	jle	L2441
	movl	(%ecx), %ebx
	cmpl	$469, %ebx
	jg	L2441
	movl	__imp__mouse_x, %edx
	movl	(%edx), %esi
	cmpl	$494, %esi
	jle	L2441
	movl	(%edx), %edi
	cmpl	$511, %edi
	jle	L2485
	.p2align 4,,15
L2441:
	movl	(%ecx), %edx
	cmpl	$453, %edx
	jle	L2193
	movl	(%ecx), %ebx
	cmpl	$469, %ebx
	jg	L2193
	movl	__imp__mouse_x, %edx
	movl	(%edx), %ecx
	cmpl	$523, %ecx
	jle	L2193
	movl	(%edx), %esi
	cmpl	$540, %esi
	jg	L2193
	movzwl	_numMidiActual, %eax
	incl	%eax
L2466:
	movw	%ax, _numMidiActual
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_SiguienteCancion
L2485:
	movzwl	_numMidiActual, %eax
	decl	%eax
	jmp	L2466
L2484:
	movl	-20(%ebp), %ecx
	movl	%ecx, 8(%ebp)
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_AccionBuscar
L2467:
	movl	_configuracion, %ecx
	movl	384(%ecx), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	call	_AccionMenuDesplegable
	movl	_configuracion, %esi
	movl	320(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	call	_EliminarArticulo
	call	_InicializarArticulo
	movzbl	_losArticulos+1, %edx
	movl	_losArticulos+4(,%edx,4), %ecx
	movl	%ecx, 8(%ebp)
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_MostrarArticulo
L2483:
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_AccionBarraDesplegable
L2482:
	movl	_configuracion, %esi
	movl	336(%esi), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	movl	_letras, %ecx
	movl	%ecx, -164(%ebp)
	movzbl	_losArticulos+1, %ecx
	movzbl	_losArticulos, %ebx
	movzbl	%cl, %eax
	decl	%ebx
	cmpl	%ebx, %eax
	jge	L2193
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	-164(%ebp), %edi
	movl	28(%edi), %ecx
	movl	4(%ecx), %ebx
	movl	%edi, (%esp)
	movl	$459, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %esi
	movl	$_losArticulos, %ecx
	movl	_datafile, %edx
	movl	_color_blanco, %ebx
	movl	%esi, -176(%ebp)
	movl	160(%edx), %esi
	movzbl	_losArticulos, %eax
	movl	%eax, -168(%ebp)
	movzbl	_losArticulos+1, %edi
	movl	724(%ecx,%edi,4), %edx
	movl	%edi, -172(%ebp)
	movl	__imp___textmode, %edi
	movl	(%edi), %ecx
	movl	%esi, 4(%esp)
	movl	$1, %esi
	movl	%ecx, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-164(%ebp), %edi
	movl	%edi, (%esp)
	movl	$10, %edi
	call	_textout_centre_ex
L2419:
	movl	-172(%ebp), %eax
	leal	(%eax,%esi), %edx
	cmpl	-168(%ebp), %edx
	jl	L2486
L2415:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2419
	movl	_videoTemporal, %edi
	movl	_color_negro, %ecx
	movl	28(%edi), %esi
	movl	%ecx, 20(%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%esi)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-164(%ebp), %ebx
L2472:
	movl	%ebx, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2422
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ecx), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %ebx
	movl	%ebx, 8(%ebp)
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_show_mouse
L2422:
	movl	$39, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%esi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	jmp	L2193
L2486:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	leal	420(%edi), %edx
	movl	%eax, 24(%esp)
	movl	-176(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-164(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	jmp	L2415
L2481:
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	movl	_letras, %edx
	movl	%edx, -148(%ebp)
	movzbl	_losArticulos+1, %eax
	testb	%al, %al
	je	L2193
	decb	%al
	movb	%al, _losArticulos+1
	movl	28(%edx), %ecx
	movl	4(%ecx), %ebx
	movl	%edx, (%esp)
	movl	$459, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %esi
	movl	$_losArticulos, %ecx
	movl	_datafile, %edi
	movl	_color_blanco, %ebx
	movl	%esi, -160(%ebp)
	movl	160(%edi), %esi
	movzbl	_losArticulos, %eax
	movl	%eax, -152(%ebp)
	movzbl	_losArticulos+1, %edx
	movl	724(%ecx,%edx,4), %edi
	movl	%edx, -156(%ebp)
	movl	__imp___textmode, %edx
	movl	(%edx), %ecx
	movl	%edi, 8(%esp)
	movl	$10, %edi
	movl	%esi, 4(%esp)
	movl	$1, %esi
	movl	%ecx, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
L2401:
	movl	-156(%ebp), %eax
	leal	(%eax,%esi), %edx
	cmpl	-152(%ebp), %edx
	jl	L2487
L2397:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2401
	movl	_videoTemporal, %edi
	movl	_color_negro, %ecx
	movl	28(%edi), %esi
	movl	%ecx, 20(%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%esi)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-148(%ebp), %ebx
	jmp	L2472
L2487:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	leal	420(%edi), %edx
	movl	%eax, 24(%esp)
	movl	-160(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-148(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	jmp	L2397
L2469:
	movl	_configuracion, %edx
	movl	384(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_AccionMenuDesplegable
L2480:
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_AccionSonido
L2479:
	movl	_configuracion, %edx
	movl	240(%edx), %ecx
	movl	%ecx, (%esp)
	call	_select_palette
	jmp	L2314
	.p2align 4,,7
L2313:
	movl	(%edx), %ebx
	cmpl	$409, %ebx
	jle	L2319
	movl	(%edx), %esi
	cmpl	$436, %esi
	jg	L2319
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %edi
	cmpl	$95, %edi
	jle	L2319
	movl	(%ebx), %esi
	cmpl	$124, %esi
	jg	L2319
	cmpw	$0, _grises
	je	L2488
L2320:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$35, 28(%esp)
	movl	__imp__screen, %esi
	movl	_configuracion, %ebx
	movl	$35, 24(%esp)
	movl	$406, 20(%esp)
	movl	$95, 16(%esp)
	movl	$5, 12(%esp)
	movl	$94, 8(%esp)
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	movl	_configuracion, %edi
	movl	448(%edi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2321:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2321
	movl	$0, (%esp)
	call	_show_mouse
	movl	$36, 28(%esp)
	movl	$36, 24(%esp)
	movl	$405, 20(%esp)
	movl	$94, 16(%esp)
	movl	$5, 12(%esp)
	movl	$94, 8(%esp)
	jmp	L2465
L2488:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2320
	.p2align 4,,7
L2319:
	movl	(%edx), %ebx
	cmpl	$414, %ebx
	jle	L2325
	movl	(%edx), %edi
	cmpl	$470, %edi
	jg	L2325
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %esi
	cmpl	$17, %esi
	jle	L2325
	movl	(%ebx), %edi
	cmpl	$70, %edi
	jg	L2325
	cmpw	$0, _grises
	je	L2489
L2326:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$33, 28(%esp)
	movl	__imp__screen, %edi
	movl	_configuracion, %ebx
	movl	$39, 24(%esp)
	movl	$423, 20(%esp)
	movl	$26, 16(%esp)
	movl	$22, 12(%esp)
	movl	$25, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	movl	_configuracion, %esi
	movl	448(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2327:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2327
	movl	$0, (%esp)
	call	_show_mouse
	movl	$34, 28(%esp)
	movl	$40, 24(%esp)
	movl	$422, 20(%esp)
	movl	$25, 16(%esp)
	movl	$22, 12(%esp)
	movl	$25, 8(%esp)
	jmp	L2465
L2489:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2326
	.p2align 4,,7
L2325:
	movl	(%edx), %ebx
	cmpl	$419, %ebx
	jle	L2331
	movl	(%edx), %esi
	cmpl	$464, %esi
	jg	L2331
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %edi
	cmpl	$569, %edi
	jle	L2331
	movl	(%ebx), %esi
	cmpl	$620, %esi
	jg	L2331
	cmpw	$0, _grises
	je	L2490
L2332:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$42, 28(%esp)
	movl	__imp__screen, %esi
	movl	_configuracion, %ebx
	movl	$36, 24(%esp)
	movl	$418, 20(%esp)
	movl	$584, 16(%esp)
	movl	$17, 12(%esp)
	movl	$583, 8(%esp)
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	movl	_configuracion, %edi
	movl	448(%edi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2333:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2333
	movl	$0, (%esp)
	call	_show_mouse
	movl	$43, 28(%esp)
	movl	$37, 24(%esp)
	movl	$417, 20(%esp)
	movl	$583, 16(%esp)
	movl	$17, 12(%esp)
	movl	$583, 8(%esp)
	jmp	L2465
L2490:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2332
	.p2align 4,,7
L2331:
	movl	(%edx), %ebx
	cmpl	$453, %ebx
	jle	L2337
	movl	(%edx), %edi
	cmpl	$469, %edi
	jg	L2337
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %esi
	cmpl	$494, %esi
	jle	L2337
	movl	(%ebx), %edi
	cmpl	$511, %edi
	jg	L2337
	cmpw	$0, _grises
	je	L2491
L2338:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$16, 28(%esp)
	movl	__imp__screen, %edi
	movl	_configuracion, %ebx
	movl	$20, 24(%esp)
	movl	$455, 20(%esp)
	movl	$493, 16(%esp)
	movl	$54, 12(%esp)
	movl	$494, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	movl	_configuracion, %esi
	movl	448(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2339:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2339
	movl	$0, (%esp)
	call	_show_mouse
	movl	$17, 28(%esp)
	movl	$21, 24(%esp)
	movl	$454, 20(%esp)
	movl	$493, 16(%esp)
	movl	$54, 12(%esp)
	movl	$493, 8(%esp)
	jmp	L2465
L2491:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2338
	.p2align 4,,7
L2337:
	movl	(%edx), %ebx
	cmpl	$453, %ebx
	jle	L2343
	movl	(%edx), %esi
	cmpl	$469, %esi
	jg	L2343
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %edi
	cmpl	$523, %edi
	jle	L2343
	movl	(%ebx), %esi
	cmpl	$540, %esi
	jg	L2343
	cmpw	$0, _grises
	je	L2492
L2344:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$16, 28(%esp)
	movl	__imp__screen, %esi
	movl	_configuracion, %ebx
	movl	$16, 24(%esp)
	movl	$454, 20(%esp)
	movl	$525, 16(%esp)
	movl	$53, 12(%esp)
	movl	$524, 8(%esp)
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	movl	_configuracion, %edi
	movl	448(%edi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2345:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2345
	movl	$0, (%esp)
	call	_show_mouse
	movl	$17, 28(%esp)
	movl	$17, 24(%esp)
	movl	$453, 20(%esp)
	movl	$524, 16(%esp)
	movl	$53, 12(%esp)
	movl	$524, 8(%esp)
	jmp	L2465
L2492:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2344
	.p2align 4,,7
L2343:
	movl	(%edx), %ebx
	cmpl	$433, %ebx
	jle	L2349
	movl	(%edx), %edi
	cmpl	$445, %edi
	jg	L2349
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %esi
	cmpl	$294, %esi
	jle	L2349
	movl	(%ebx), %edi
	cmpl	$335, %edi
	jg	L2349
	cmpb	$0, _menuArticulosDesplegado
	jne	L2349
	cmpw	$0, _grises
	je	L2493
L2350:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$15, 28(%esp)
	movl	__imp__screen, %edi
	movl	_configuracion, %ebx
	movl	$40, 24(%esp)
	movl	$434, 20(%esp)
	movl	$296, 16(%esp)
	movl	$33, 12(%esp)
	movl	$295, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	movl	_configuracion, %esi
	movl	448(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2351:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2351
	movl	$0, (%esp)
	call	_show_mouse
	movl	$16, 28(%esp)
	movl	$41, 24(%esp)
	movl	$433, 20(%esp)
L2470:
	movl	$295, 16(%esp)
	movl	$33, 12(%esp)
	movl	$295, 8(%esp)
	jmp	L2465
L2493:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2350
	.p2align 4,,7
L2349:
	movl	(%edx), %ebx
	cmpl	$473, %ebx
	jle	L2355
	movl	(%edx), %esi
	cmpl	$479, %esi
	jg	L2355
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %edi
	cmpl	$294, %edi
	jle	L2355
	movl	(%ebx), %esi
	cmpl	$335, %esi
	jg	L2355
	cmpb	$0, _menuArticulosDesplegado
	je	L2355
	cmpw	$0, _grises
	je	L2494
L2356:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$15, 28(%esp)
	movl	__imp__screen, %esi
	movl	_configuracion, %ebx
	movl	$40, 24(%esp)
	movl	$473, 20(%esp)
	movl	$296, 16(%esp)
	movl	$33, 12(%esp)
	movl	$295, 8(%esp)
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	movl	_configuracion, %edi
	movl	448(%edi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2357:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2357
	movl	$0, (%esp)
	call	_show_mouse
	movl	$16, 28(%esp)
	movl	$41, 24(%esp)
	movl	$472, 20(%esp)
	jmp	L2470
L2494:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2356
	.p2align 4,,7
L2355:
	movl	(%edx), %ebx
	cmpl	$459, %ebx
	jle	L2361
	movl	(%edx), %edi
	cmpl	$467, %edi
	jg	L2361
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %esi
	cmpl	$446, %esi
	jle	L2361
	movl	(%ebx), %edi
	cmpl	$454, %edi
	jg	L2361
	cmpb	$0, _menuArticulosDesplegado
	je	L2361
	cmpw	$0, _grises
	je	L2495
L2362:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$8, 28(%esp)
	movl	__imp__screen, %edi
	movl	_configuracion, %ebx
	movl	$6, 24(%esp)
	movl	$458, 20(%esp)
	movl	$448, 16(%esp)
	movl	$18, 12(%esp)
	movl	$447, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	movl	_configuracion, %esi
	movl	448(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2363:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2363
	movl	$0, (%esp)
	call	_show_mouse
	movl	$9, 28(%esp)
	movl	$7, 24(%esp)
	movl	$459, 20(%esp)
	movl	$447, 16(%esp)
	movl	$18, 12(%esp)
L2471:
	movl	$447, 8(%esp)
	jmp	L2465
L2495:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2362
	.p2align 4,,7
L2361:
	movl	(%edx), %ebx
	cmpl	$466, %ebx
	jle	L2367
	movl	(%edx), %esi
	cmpl	$477, %esi
	jg	L2367
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %edi
	cmpl	$446, %edi
	jle	L2367
	movl	(%ebx), %esi
	cmpl	$454, %esi
	jg	L2367
	cmpb	$0, _menuArticulosDesplegado
	je	L2367
	cmpw	$0, _grises
	je	L2496
L2368:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$8, 28(%esp)
	movl	__imp__screen, %esi
	movl	_configuracion, %ebx
	movl	$6, 24(%esp)
	movl	$467, 20(%esp)
	movl	$448, 16(%esp)
	movl	$26, 12(%esp)
	movl	$447, 8(%esp)
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	movl	_configuracion, %edi
	movl	448(%edi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2369:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2369
	movl	$0, (%esp)
	call	_show_mouse
	movl	$9, 28(%esp)
	movl	$7, 24(%esp)
	movl	$467, 20(%esp)
	movl	$447, 16(%esp)
	movl	$26, 12(%esp)
	jmp	L2471
L2496:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2368
	.p2align 4,,7
L2367:
	movl	(%edx), %ebx
	cmpl	$464, %ebx
	jle	L2373
	movl	(%edx), %edi
	cmpl	$477, %edi
	jg	L2373
	movl	__imp__mouse_x, %ebx
	movl	(%ebx), %esi
	cmpl	$174, %esi
	jle	L2373
	movl	(%ebx), %edi
	cmpl	$182, %edi
	jg	L2373
	cmpb	$0, _menuArticulosDesplegado
	je	L2373
	cmpw	$0, _grises
	je	L2497
L2374:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$8, 28(%esp)
	movl	__imp__screen, %edi
	movl	_configuracion, %ebx
	movl	$9, 24(%esp)
	movl	$465, 20(%esp)
	movl	$175, 16(%esp)
	movl	$23, 12(%esp)
	movl	$174, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	movl	_configuracion, %esi
	movl	448(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2375:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2375
	movl	$0, (%esp)
	call	_show_mouse
	movl	$9, 28(%esp)
	movl	$10, 24(%esp)
	movl	$464, 20(%esp)
	movl	$174, 16(%esp)
	movl	$23, 12(%esp)
	movl	$174, 8(%esp)
	jmp	L2465
L2497:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2374
	.p2align 4,,7
L2373:
	movl	(%edx), %ebx
	cmpl	$407, %ebx
	jle	L2318
	movl	(%edx), %esi
	cmpl	$429, %esi
	jg	L2318
	movl	__imp__mouse_x, %edx
	movl	(%edx), %edi
	cmpl	$520, %edi
	jle	L2318
	movl	(%edx), %ebx
	cmpl	$542, %ebx
	jg	L2318
	cmpw	$0, _grises
	je	L2498
L2380:
	movl	$0, (%esp)
	call	_show_mouse
	movl	$23, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_configuracion, %esi
	movl	$22, 24(%esp)
	movl	$407, 20(%esp)
	movl	$521, 16(%esp)
	movl	$6, 12(%esp)
	movl	$520, 8(%esp)
	movl	(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	(%esi), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	movl	_configuracion, %edi
	movl	448(%edi), %esi
	movl	%esi, (%esp)
	call	_ReproduceSample
	movl	__imp__mouse_b, %edx
L2381:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2381
	movl	$0, (%esp)
	call	_show_mouse
	movl	$24, 28(%esp)
	movl	$23, 24(%esp)
	movl	$406, 20(%esp)
	movl	$520, 16(%esp)
	movl	$6, 12(%esp)
	movl	$520, 8(%esp)
	jmp	L2465
L2498:
	movl	_configuracion, %ecx
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_select_palette
	jmp	L2380
L2478:
	movl	_configuracion, %edx
	movl	336(%edx), %esi
	movl	%esi, (%esp)
	call	_ReproduceSample
	movzbl	_losArticulos+1, %eax
	movl	_letras, %edi
	testb	%al, %al
	je	L2464
	decb	%al
	movb	%al, _losArticulos+1
	movl	28(%edi), %ebx
	movl	4(%ebx), %ecx
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	%ecx, 20(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%ebx)
	movl	_color_amarillo, %esi
	movl	$_losArticulos, %ecx
	movl	_datafile, %edx
	movl	%esi, -140(%ebp)
	movl	160(%edx), %esi
	movzbl	_losArticulos, %eax
	movl	%eax, -132(%ebp)
	movzbl	_losArticulos+1, %ebx
	movl	724(%ecx,%ebx,4), %edx
	movl	%ebx, -136(%ebp)
	movl	__imp___textmode, %ecx
	movl	(%ecx), %ebx
	movl	%esi, 4(%esp)
	movl	_color_blanco, %ecx
	movl	$1, %esi
	movl	%ebx, 24(%esp)
	movl	$10, %ebx
	movl	%ecx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	movl	%ebx, -144(%ebp)
L2306:
	movl	-136(%ebp), %eax
	leal	(%eax,%esi), %edx
	cmpl	-132(%ebp), %edx
	jl	L2499
L2302:
	addl	$10, -144(%ebp)
	incl	%esi
	cmpl	$3, %esi
	jle	L2306
	movl	_videoTemporal, %ecx
	movl	_color_negro, %ebx
	movl	28(%ecx), %esi
	movl	%ecx, (%esp)
	movl	%ebx, 20(%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%esi)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2309
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ebx), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	jmp	L2464
L2309:
	movl	$39, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %edi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%esi), %edx
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	jmp	L2464
L2499:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	movl	-144(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-140(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	jmp	L2302
L2477:
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	-112(%ebp), %edx
	movl	28(%edx), %ecx
	movl	4(%ecx), %ebx
	movl	%edx, (%esp)
	movl	$459, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %edi
	movl	$_losArticulos, %edx
	movl	_datafile, %ecx
	movl	%edi, -124(%ebp)
	movl	160(%ecx), %edi
	movzbl	_losArticulos, %eax
	movl	%eax, -116(%ebp)
	movzbl	_losArticulos+1, %ebx
	movl	724(%edx,%ebx,4), %ecx
	movl	%ebx, -120(%ebp)
	movl	__imp___textmode, %ebx
	movl	(%ebx), %edx
	movl	$420, 16(%esp)
	movl	_color_blanco, %ebx
	movl	$319, 12(%esp)
	movl	%edx, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-112(%ebp), %edi
	movl	%edi, (%esp)
	movl	$1, %edi
	call	_textout_centre_ex
	movl	$10, -128(%ebp)
L2289:
	movl	-120(%ebp), %eax
	leal	(%eax,%edi), %edx
	cmpl	-116(%ebp), %edx
	jl	L2500
L2285:
	addl	$10, -128(%ebp)
	incl	%edi
	cmpl	$3, %edi
	jle	L2289
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edi
	movl	28(%ecx), %ebx
	movl	%edi, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-112(%ebp), %edi
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2292
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ecx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %edi
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	movl	__imp__screen, %ebx
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L2462
L2292:
	movl	$39, 28(%esp)
	movl	__imp__screen, %edi
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	jmp	L2462
L2500:
	movl	__imp___textmode, %eax
	movl	_datafile, %ecx
	movl	(%eax), %eax
	movl	192(%ecx), %ebx
	movl	_losArticulos+724(,%edx,4), %ecx
	movl	-128(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-124(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-112(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	jmp	L2285
L2476:
	movl	_configuracion, %ebx
	movl	336(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	call	_ScrollArriba
	jmp	L2241
L2475:
	movl	_configuracion, %edx
	movl	336(%edx), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	call	_ScrollAbajo
	movl	-16(%ebp), %ecx
	movl	(%ecx), %eax
	jmp	L2239
	.p2align 4,,7
L2237:
	cmpb	$0, _menuBuscar
	jne	L2241
	cmpl	%eax, %edi
	jg	L2501
L2243:
	cmpl	%eax, %edi
	jge	L2241
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	movl	_letras, %ebx
	movl	%ebx, -88(%ebp)
	movzbl	_losArticulos+1, %ecx
	movzbl	_losArticulos, %eax
	movzbl	%cl, %edx
	decl	%eax
	cmpl	%eax, %edx
	jge	L2241
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	28(%ebx), %ecx
	movl	4(%ecx), %edx
	movl	%ebx, (%esp)
	movl	$459, 16(%esp)
	movl	%edx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %ebx
	movl	$_losArticulos, %eax
	movl	_datafile, %edx
	movl	%ebx, -104(%ebp)
	movzbl	_losArticulos, %ecx
	movl	%ecx, -96(%ebp)
	movl	160(%edx), %ecx
	movzbl	_losArticulos+1, %ebx
	movl	724(%eax,%ebx,4), %edx
	movl	%ebx, -100(%ebp)
	movl	__imp___textmode, %eax
	movl	(%eax), %ebx
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ebx, 24(%esp)
	movl	_color_blanco, %ebx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, 20(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	movl	$1, -92(%ebp)
	movl	$10, -108(%ebp)
L2271:
	movl	-92(%ebp), %edx
	movl	-100(%ebp), %ebx
	addl	%ebx, %edx
	cmpl	-96(%ebp), %edx
	jl	L2502
L2267:
	incl	-92(%ebp)
	addl	$10, -108(%ebp)
	cmpl	$3, -92(%ebp)
	jle	L2271
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %ebx
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2274
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ecx), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	(%ecx), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	jmp	L2241
L2274:
	movl	$39, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ecx), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	_blit
	jmp	L2241
L2502:
	movl	__imp___textmode, %eax
	movl	_datafile, %ecx
	movl	(%eax), %eax
	movl	192(%ecx), %ebx
	movl	_losArticulos+724(,%edx,4), %ecx
	movl	-108(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-104(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	jmp	L2267
L2501:
	movl	_configuracion, %ebx
	movl	336(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	movl	_letras, %edx
	movl	%edx, -64(%ebp)
	movzbl	_losArticulos+1, %eax
	testb	%al, %al
	jne	L2503
L2461:
	movl	-16(%ebp), %ebx
	movl	(%ebx), %eax
	jmp	L2243
L2503:
	decb	%al
	movb	%al, _losArticulos+1
	movl	-64(%ebp), %edx
	movl	28(%edx), %ecx
	movl	4(%ecx), %ebx
	movl	%edx, (%esp)
	movl	$459, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %ebx
	movl	$_losArticulos, %eax
	movl	_datafile, %edx
	movl	%ebx, -80(%ebp)
	movzbl	_losArticulos, %ecx
	movl	%ecx, -72(%ebp)
	movl	160(%edx), %ecx
	movzbl	_losArticulos+1, %ebx
	movl	724(%eax,%ebx,4), %edx
	movl	%ebx, -76(%ebp)
	movl	__imp___textmode, %eax
	movl	(%eax), %ebx
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ebx, 24(%esp)
	movl	_color_blanco, %ebx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	movl	$1, -68(%ebp)
	movl	$10, -84(%ebp)
L2254:
	movl	-68(%ebp), %edx
	movl	-76(%ebp), %ecx
	addl	%ecx, %edx
	cmpl	-72(%ebp), %edx
	jl	L2504
L2250:
	incl	-68(%ebp)
	addl	$10, -84(%ebp)
	cmpl	$3, -68(%ebp)
	jle	L2254
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %ebx
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2257
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %ecx
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ecx), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	(%ecx), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	jmp	L2461
L2257:
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	-16(%ebp), %edx
	movl	(%edx), %eax
	jmp	L2243
L2504:
	movl	__imp___textmode, %eax
	movl	_datafile, %ecx
	movl	(%eax), %eax
	movl	192(%ecx), %ebx
	movl	_losArticulos+724(,%edx,4), %ecx
	movl	-84(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-80(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	jmp	L2250
L2474:
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	call	_ScrollAbajo
	jmp	L2195
	.p2align 4,,7
L2196:
	cmpb	$0, _menuBuscar
	jne	L2195
	testl	%eax, %eax
	jle	L2202
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	movl	_letras, %edi
	movl	%edi, -24(%ebp)
	movzbl	_losArticulos+1, %ecx
	movzbl	_losArticulos, %ebx
	movzbl	%cl, %eax
	decl	%ebx
	cmpl	%ebx, %eax
	jl	L2505
L2460:
	movl	(%esi), %eax
L2202:
	testl	%eax, %eax
	jns	L2195
	movl	_configuracion, %ecx
	movl	336(%ecx), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	movl	_letras, %edx
	movl	%edx, -44(%ebp)
	movzbl	_losArticulos+1, %eax
	testb	%al, %al
	je	L2195
	decb	%al
	movb	%al, _losArticulos+1
	movl	-44(%ebp), %edx
	movl	28(%edx), %ecx
	movl	4(%ecx), %ebx
	movl	%edx, (%esp)
	movl	$459, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %edi
	movl	$_losArticulos, %ecx
	movl	_datafile, %edx
	movl	%edi, -56(%ebp)
	movl	160(%edx), %edi
	movzbl	_losArticulos, %eax
	movl	%eax, -48(%ebp)
	movzbl	_losArticulos+1, %ebx
	movl	724(%ecx,%ebx,4), %edx
	movl	%ebx, -52(%ebp)
	movl	__imp___textmode, %ebx
	movl	(%ebx), %ecx
	movl	%edi, 4(%esp)
	movl	_color_blanco, %ebx
	movl	$1, %edi
	movl	%ecx, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	movl	$10, -60(%ebp)
L2230:
	movl	-52(%ebp), %eax
	leal	(%eax,%edi), %edx
	cmpl	-48(%ebp), %edx
	jl	L2506
L2226:
	addl	$10, -60(%ebp)
	incl	%edi
	cmpl	$3, %edi
	jle	L2230
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edi
	movl	28(%ecx), %ebx
	movl	%edi, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %edi
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2233
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ecx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %edi
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	movl	__imp__screen, %ebx
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L2195
L2233:
	movl	$39, 28(%esp)
	movl	__imp__screen, %edi
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	jmp	L2195
L2506:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	movl	-60(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	jmp	L2226
L2505:
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	-24(%ebp), %edx
	movl	28(%edx), %ecx
	movl	4(%ecx), %ebx
	movl	%edx, (%esp)
	movl	$459, 16(%esp)
	movl	%ebx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %edi
	movl	$_losArticulos, %edx
	movl	_datafile, %ecx
	movl	%edi, -36(%ebp)
	movl	160(%ecx), %edi
	movzbl	_losArticulos, %eax
	movl	%eax, -28(%ebp)
	movzbl	_losArticulos+1, %ebx
	movl	724(%edx,%ebx,4), %ecx
	movl	%ebx, -32(%ebp)
	movl	__imp___textmode, %edx
	movl	(%edx), %ebx
	movl	%edi, 4(%esp)
	movl	_color_blanco, %edx
	movl	$1, %edi
	movl	%ebx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_textout_centre_ex
	movl	$10, -40(%ebp)
L2213:
	movl	-32(%ebp), %eax
	leal	(%eax,%edi), %edx
	cmpl	-28(%ebp), %edx
	jl	L2507
L2209:
	addl	$10, -40(%ebp)
	incl	%edi
	cmpl	$3, %edi
	jle	L2213
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edi
	movl	28(%ecx), %ebx
	movl	%edi, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %edi
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2216
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ecx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %edi
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	movl	__imp__screen, %ebx
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L2460
L2216:
	movl	$39, 28(%esp)
	movl	__imp__screen, %edi
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	jmp	L2460
L2507:
	movl	__imp___textmode, %eax
	movl	_datafile, %ecx
	movl	(%eax), %eax
	movl	192(%ecx), %ebx
	movl	_losArticulos+724(,%edx,4), %ecx
	movl	-40(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-36(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-24(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	jmp	L2209
	.p2align 4,,15
.globl _ControlaEventoTeclado
	.def	_ControlaEventoTeclado;	.scl	2;	.type	32;	.endef
_ControlaEventoTeclado:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$120, %esp
	movl	%ebx, -12(%ebp)
	movl	8(%ebp), %ebx
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	call	_keypressed
	testl	%eax, %eax
	jne	L2624
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L2624:
	call	_readkey
	sarl	$8, %eax
	cmpl	$89, %eax
	jbe	L2625
L2510:
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	jmp	_clear_keybuf
L2625:
	jmp	*L2606(,%eax,4)
	.p2align 2
	.align 4
L2606:
	.long	L2510
	.long	L2604
	.long	L2510
	.long	L2510
	.long	L2605
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2597
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2596
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2599
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2593
	.long	L2510
	.long	L2593
	.long	L2513
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2511
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2510
	.long	L2602
	.long	L2600
	.long	L2552
	.long	L2554
	.long	L2556
	.long	L2574
	.long	L2514
	.long	L2533
	.long	L2510
	.long	L2510
	.long	L2595
	.long	L2594
L2511:
	cmpb	$0, _menuArticulosDesplegado
	je	L2510
	movl	_configuracion, %edi
	movl	384(%edi), %esi
	movl	%esi, (%esp)
	call	_ReproduceSample
	call	_AccionMenuDesplegable
	movl	_configuracion, %ebx
	movl	320(%ebx), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	call	_EliminarArticulo
	call	_InicializarArticulo
	movzbl	_losArticulos+1, %ecx
	movl	_losArticulos+4(,%ecx,4), %edx
	movl	%edx, (%esp)
	call	_MostrarArticulo
	jmp	L2510
L2604:
	movl	_configuracion, %ebx
	movl	448(%ebx), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	movzwl	_numMidiActual, %eax
	decl	%eax
L2616:
	movw	%ax, _numMidiActual
	call	_SiguienteCancion
	jmp	L2510
L2605:
	movl	_configuracion, %esi
	movl	448(%esi), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	movzwl	_numMidiActual, %eax
	incl	%eax
	jmp	L2616
L2597:
	movl	_configuracion, %ecx
	movl	384(%ecx), %esi
	movl	%esi, (%esp)
	call	_ReproduceSample
	cmpb	$0, _menuBuscar
	jne	L2510
	call	_AccionMenuDesplegable
	jmp	L2510
L2596:
	movl	_configuracion, %edx
	movl	448(%edx), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	call	_AccionSonido
	jmp	L2510
L2599:
	movl	_configuracion, %edx
	movl	448(%edx), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	movl	%ebx, (%esp)
	call	_AccionBuscar
	jmp	L2510
L2593:
	movl	_configuracion, %ebx
	movl	352(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	call	_CapturarPantalla
	jmp	L2510
L2513:
	movb	$-1, (%ebx)
	jmp	L2510
L2602:
	cmpb	$0, _menuBuscar
	jne	L2510
	cmpb	$0, _menuArticulosDesplegado
	jne	L2510
	movl	$-1, %edx
	movw	%dx, _elArticulo+4
L2617:
	movl	_configuracion, %ecx
	movl	368(%ecx), %esi
	movl	%esi, (%esp)
	call	_ReproduceSample
L2620:
	call	_ScrollArriba30Lineas
	jmp	L2510
L2600:
	cmpb	$0, _menuBuscar
	jne	L2510
	cmpb	$0, _menuArticulosDesplegado
	jne	L2510
	movzwl	_elArticulo+2, %esi
	movl	$-2004318071, %eax
	movswl	%si,%ecx
	imull	%ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	leal	(%edx,%ecx), %edi
	sarl	$4, %edi
	subl	%ebx, %edi
	movl	%edi, %ebx
	sall	$4, %ebx
	subl	%edi, %ebx
	addl	%ebx, %ebx
	subl	%ebx, %ecx
	subl	%ecx, %esi
	subl	$6, %esi
	movw	%si, _elArticulo+4
	jmp	L2617
	.p2align 4,,7
L2552:
	movl	_configuracion, %esi
	movl	432(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	cmpb	$0, _menuArticulosDesplegado
	jne	L2510
	cmpb	$0, _menuBuscar
	jne	L2510
	call	_ScrollAbajo30Lineas
	jmp	L2510
	.p2align 4,,7
L2554:
	movl	_configuracion, %ecx
	movl	432(%ecx), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	cmpb	$0, _menuArticulosDesplegado
	jne	L2510
	cmpb	$0, _menuBuscar
	jne	L2510
	jmp	L2620
	.p2align 4,,7
L2556:
	movl	_configuracion, %ebx
	movl	336(%ebx), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	cmpb	$0, _menuArticulosDesplegado
	je	L2510
	movzbl	_losArticulos+1, %eax
	movl	_letras, %edi
	testb	%al, %al
	je	L2510
	decb	%al
	movb	%al, _losArticulos+1
	movl	28(%edi), %ebx
	movl	4(%ebx), %ecx
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	%ecx, 20(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%ebx)
	movl	_color_amarillo, %eax
	movl	$_losArticulos, %ecx
	movl	_datafile, %edx
	movl	%eax, -56(%ebp)
	movzbl	_losArticulos, %esi
	movl	%esi, -48(%ebp)
	movl	160(%edx), %esi
	movzbl	_losArticulos+1, %ebx
	movl	724(%ecx,%ebx,4), %edx
	movl	%ebx, -52(%ebp)
	movl	__imp___textmode, %ecx
	movl	(%ecx), %ebx
	movl	%ebx, 24(%esp)
	movl	_color_blanco, %ecx
	movl	%esi, 4(%esp)
	movl	$1, %esi
	movl	%ecx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	movl	$10, -60(%ebp)
L2568:
	movl	-52(%ebp), %eax
	leal	(%eax,%esi), %edx
	cmpl	-48(%ebp), %edx
	jl	L2626
L2564:
	addl	$10, -60(%ebp)
	incl	%esi
	cmpl	$3, %esi
	jle	L2568
L2621:
	movl	_videoTemporal, %ecx
	movl	_color_negro, %ebx
	movl	28(%ecx), %esi
	movl	%ebx, 20(%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%ecx, (%esp)
	call	*56(%esi)
	movl	$39, 28(%esp)
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	_videoTemporal, %edx
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
L2622:
	call	_masked_blit
	cmpb	$0, _raton
	je	L2589
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	__imp__screen, %ebx
	movl	(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	_videoTemporal, %esi
	movl	%esi, (%esp)
	call	_blit
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	jmp	L2510
L2589:
	movl	$39, 28(%esp)
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	__imp__screen, %esi
	movl	(%esi), %edx
	movl	%edx, 4(%esp)
	movl	_videoTemporal, %edi
	movl	%edi, (%esp)
	call	_blit
	jmp	L2510
L2626:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	movl	-60(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	jmp	L2564
	.p2align 4,,7
L2574:
	movl	_configuracion, %edx
	movl	336(%edx), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	cmpb	$0, _menuArticulosDesplegado
	je	L2510
	movzbl	_losArticulos+1, %ecx
	movl	_letras, %edi
	movzbl	_losArticulos, %esi
	movzbl	%cl, %eax
	decl	%esi
	cmpl	%esi, %eax
	jge	L2510
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	28(%edi), %ebx
	movl	4(%ebx), %ecx
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	%ecx, 20(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%edi, (%esp)
	call	*56(%ebx)
	movl	_color_amarillo, %eax
	movl	$_losArticulos, %ecx
	movl	_datafile, %edx
	movl	%eax, -72(%ebp)
	movzbl	_losArticulos, %esi
	movl	%esi, -64(%ebp)
	movl	160(%edx), %esi
	movzbl	_losArticulos+1, %ebx
	movl	724(%ecx,%ebx,4), %edx
	movl	%ebx, -68(%ebp)
	movl	__imp___textmode, %ecx
	movl	(%ecx), %ebx
	movl	%ebx, 24(%esp)
	movl	_color_blanco, %ecx
	movl	%esi, 4(%esp)
	movl	$1, %esi
	movl	%ecx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	movl	$10, -76(%ebp)
L2586:
	movl	-68(%ebp), %eax
	leal	(%eax,%esi), %edx
	cmpl	-64(%ebp), %edx
	jl	L2627
L2582:
	addl	$10, -76(%ebp)
	incl	%esi
	cmpl	$3, %esi
	jle	L2586
	jmp	L2621
L2627:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	movl	-76(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-72(%ebp), %eax
	addl	$420, %edx
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$319, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	_textout_centre_ex
	jmp	L2582
	.p2align 4,,7
L2514:
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	cmpb	$0, _menuArticulosDesplegado
	jne	L2515
	cmpb	$0, _menuBuscar
	je	L2628
L2515:
	movl	_letras, %ebx
	movl	%ebx, -16(%ebp)
	movzbl	_losArticulos+1, %eax
	testb	%al, %al
	je	L2510
	decb	%al
	movb	%al, _losArticulos+1
	movl	-16(%ebp), %edi
	movl	28(%edi), %ecx
	movl	4(%ecx), %esi
	movl	%edi, (%esp)
	movl	$459, 16(%esp)
	movl	%esi, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %ebx
	movl	$_losArticulos, %ecx
	movl	_datafile, %edi
	movl	%ebx, -28(%ebp)
	movzbl	_losArticulos, %edx
	movl	%edx, -20(%ebp)
	movzbl	_losArticulos+1, %esi
	movl	%esi, -24(%ebp)
	movl	__imp___textmode, %ebx
	movl	-24(%ebp), %eax
	movl	160(%edi), %esi
	movl	(%ebx), %edx
	movl	724(%ecx,%eax,4), %edi
	movl	%edx, 24(%esp)
	movl	_color_blanco, %ecx
	movl	%edi, 8(%esp)
	movl	$10, %edi
	movl	%esi, 4(%esp)
	movl	$1, %esi
	movl	%ecx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
L2527:
	movl	-24(%ebp), %ebx
	leal	(%ebx,%esi), %edx
	cmpl	-20(%ebp), %edx
	jl	L2629
L2523:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2527
	movl	_videoTemporal, %ecx
	movl	_color_negro, %esi
	movl	28(%ecx), %edi
	movl	%esi, 20(%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%ecx, (%esp)
	call	*56(%edi)
	movl	$39, 28(%esp)
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	_videoTemporal, %edx
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
L2623:
	movl	%eax, (%esp)
	jmp	L2622
L2629:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	leal	420(%edi), %edx
	movl	%eax, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	jmp	L2523
L2628:
	call	_ScrollAbajo
	jmp	L2510
L2533:
	movl	_configuracion, %edx
	movl	336(%edx), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	cmpb	$0, _menuArticulosDesplegado
	jne	L2534
	cmpb	$0, _menuBuscar
	je	L2630
L2534:
	movl	_letras, %ebx
	movl	%ebx, -32(%ebp)
	movzbl	_losArticulos+1, %ecx
	movzbl	_losArticulos, %edi
	movzbl	%cl, %eax
	decl	%edi
	cmpl	%edi, %eax
	jge	L2510
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	28(%ebx), %edi
	movl	4(%edi), %edx
	movl	%ebx, (%esp)
	movl	$459, 16(%esp)
	movl	%edx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%edi)
	movl	_color_amarillo, %ebx
	movl	$_losArticulos, %edi
	movl	_datafile, %edx
	movl	%ebx, -44(%ebp)
	movzbl	_losArticulos, %ecx
	movl	%ecx, -36(%ebp)
	movzbl	_losArticulos+1, %esi
	movl	%esi, -40(%ebp)
	movl	__imp___textmode, %ecx
	movl	-40(%ebp), %eax
	movl	160(%edx), %esi
	movl	724(%edi,%eax,4), %edx
	movl	(%ecx), %edi
	movl	%edi, 24(%esp)
	movl	_color_blanco, %ebx
	movl	$10, %edi
	movl	%esi, 4(%esp)
	movl	$1, %esi
	movl	%ebx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
L2546:
	movl	-40(%ebp), %ecx
	leal	(%ecx,%esi), %edx
	cmpl	-36(%ebp), %edx
	jl	L2631
L2542:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2546
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %edi
	movl	%edx, 20(%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%ecx, (%esp)
	call	*56(%edi)
	movl	$39, 28(%esp)
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	_videoTemporal, %esi
	movl	%esi, 4(%esp)
	movl	-32(%ebp), %eax
	jmp	L2623
L2631:
	movl	__imp___textmode, %eax
	movl	_datafile, %ebx
	movl	(%eax), %eax
	movl	192(%ebx), %ecx
	movl	_losArticulos+724(,%edx,4), %ebx
	leal	420(%edi), %edx
	movl	%eax, 24(%esp)
	movl	-44(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	jmp	L2542
L2630:
	call	_ScrollArriba
	jmp	L2510
L2595:
	movl	$1, (%esp)
L2618:
	call	_ReguladorVolumen
	jmp	L2510
L2594:
	movl	$0, (%esp)
	jmp	L2618
	.p2align 4,,15
.globl _ControlaEventoJoystick
	.def	_ControlaEventoJoystick;	.scl	2;	.type	32;	.endef
_ControlaEventoJoystick:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	cmpb	$0, _palancaJuegos
	jne	L2787
L2632:
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L2787:
	movl	__imp__joy, %ecx
	movl	8(%ecx), %edx
	movl	%edx, -16(%ebp)
	call	_poll_joystick
	movl	__imp__joy, %eax
	movl	24(%eax), %ecx
	testl	%ecx, %ecx
	je	L2634
	cmpb	$0, _menuArticulosDesplegado
	jne	L2635
	cmpb	$0, _menuBuscar
	je	L2788
L2635:
	movl	$500, 4(%esp)
	xorl	%edi, %edi
	movl	%edi, _crono
	movl	$_inc_crono, (%esp)
	call	_install_int
	movl	__imp__joy, %edx
	movl	24(%edx), %eax
	testl	%eax, %eax
	je	L2782
	movl	_crono, %ecx
	testl	%ecx, %ecx
	jle	L2640
L2637:
	movl	24(%edx), %eax
	testl	%eax, %eax
	je	L2782
	.p2align 4,,15
L2645:
	call	_poll_joystick
	cmpb	$0, _menuArticulosDesplegado
	jne	L2641
	cmpb	$0, _menuBuscar
	je	L2789
L2641:
	movl	__imp__joy, %ecx
	movl	24(%ecx), %ebx
	testl	%ebx, %ebx
	jne	L2645
	.p2align 4,,15
L2782:
	movl	$_inc_crono, (%esp)
	call	_remove_int
L2646:
	movl	-16(%ebp), %edi
	testl	%edi, %edi
	js	L2632
	movl	__imp__joy, %ebx
	movl	312(%ebx), %esi
	testl	%esi, %esi
	je	L2754
	cmpb	$0, _menuBuscar
	je	L2790
L2754:
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jle	L2632
	movl	__imp__joy, %edx
	movl	320(%edx), %edi
	testl	%edi, %edi
	je	L2786
	cmpb	$0, _menuArticulosDesplegado
	jne	L2791
L2756:
	movl	320(%edx), %eax
	testl	%eax, %eax
	je	L2786
	.p2align 4,,15
L2760:
	call	_poll_joystick
	movl	__imp__joy, %edx
	movl	320(%edx), %ebx
	testl	%ebx, %ebx
	jne	L2760
L2786:
	cmpl	$1, -16(%ebp)
	jle	L2632
	movl	328(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2792
L2762:
	cmpl	$2, -16(%ebp)
	jle	L2632
	movl	__imp__joy, %esi
	movl	336(%esi), %edi
	testl	%edi, %edi
	je	L2632
	movzwl	_numMidiActual, %ebx
	incl	%ebx
	movw	%bx, _numMidiActual
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_SiguienteCancion
L2792:
	movzwl	_numMidiActual, %edx
	decl	%edx
	movw	%dx, _numMidiActual
	call	_SiguienteCancion
	jmp	L2762
L2791:
	movl	_configuracion, %esi
	movl	384(%esi), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	call	_AccionMenuDesplegable
	movl	_configuracion, %edx
	movl	320(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	call	_EliminarArticulo
	call	_InicializarArticulo
	movzbl	_losArticulos+1, %ebx
	movl	_losArticulos+4(,%ebx,4), %esi
	movl	%esi, (%esp)
	call	_MostrarArticulo
	movl	__imp__joy, %edx
	jmp	L2756
L2790:
	movl	_configuracion, %edx
	movl	384(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	call	_AccionMenuDesplegable
	jmp	L2754
L2789:
	movl	_configuracion, %edi
	movl	432(%edi), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	call	_ScrollAbajo30Lineas
	jmp	L2641
	.p2align 4,,7
L2640:
	call	_poll_joystick
	movl	__imp__joy, %edx
	movl	24(%edx), %ebx
	testl	%ebx, %ebx
	je	L2782
	movl	_crono, %esi
	testl	%esi, %esi
	jle	L2640
	jmp	L2637
L2788:
	movl	_configuracion, %esi
	movl	432(%esi), %ebx
	movl	%ebx, (%esp)
	call	_ReproduceSample
	call	_ScrollAbajo30Lineas
	jmp	L2635
	.p2align 4,,7
L2634:
	movl	28(%eax), %esi
	testl	%esi, %esi
	je	L2647
	cmpb	$0, _menuArticulosDesplegado
	jne	L2648
	cmpb	$0, _menuBuscar
	je	L2793
L2648:
	movl	$500, 4(%esp)
	xorl	%ebx, %ebx
	movl	%ebx, _crono
	movl	$_inc_crono, (%esp)
	call	_install_int
	movl	__imp__joy, %edx
	movl	28(%edx), %eax
	testl	%eax, %eax
	je	L2782
	movl	_crono, %ecx
	testl	%ecx, %ecx
	jle	L2653
L2650:
	movl	28(%edx), %eax
	testl	%eax, %eax
	je	L2782
	.p2align 4,,15
L2658:
	call	_poll_joystick
	cmpb	$0, _menuArticulosDesplegado
	jne	L2654
	cmpb	$0, _menuBuscar
	je	L2794
L2654:
	movl	__imp__joy, %ecx
	movl	28(%ecx), %edi
	testl	%edi, %edi
	jne	L2658
	jmp	L2782
L2794:
	movl	_configuracion, %ebx
	movl	432(%ebx), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	call	_ScrollArriba30Lineas
	jmp	L2654
L2653:
	call	_poll_joystick
	movl	__imp__joy, %edx
	movl	28(%edx), %edi
	testl	%edi, %edi
	je	L2782
	movl	_crono, %esi
	testl	%esi, %esi
	jle	L2653
	jmp	L2650
L2793:
	movl	_configuracion, %edi
	movl	432(%edi), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	call	_ScrollArriba30Lineas
	jmp	L2648
L2647:
	movl	40(%eax), %esi
	testl	%esi, %esi
	je	L2660
	cmpb	$0, _menuArticulosDesplegado
	jne	L2661
	cmpb	$0, _menuBuscar
	je	L2795
L2661:
	movl	_configuracion, %esi
	movl	336(%esi), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	movl	_letras, %edi
	movl	%edi, -20(%ebp)
	movzbl	_losArticulos+1, %eax
	testb	%al, %al
	jne	L2796
L2662:
	movl	$500, 4(%esp)
	xorl	%edx, %edx
	movl	%edx, _crono
	movl	$_inc_crono, (%esp)
	call	_install_int
	movl	__imp__joy, %edx
	movl	40(%edx), %ecx
	testl	%ecx, %ecx
	je	L2782
	movl	_crono, %edi
	testl	%edi, %edi
	jle	L2683
L2680:
	movl	40(%edx), %ebx
	testl	%ebx, %ebx
	je	L2782
	.p2align 4,,15
L2705:
	call	_poll_joystick
	cmpb	$0, _menuArticulosDesplegado
	jne	L2687
	cmpb	$0, _menuBuscar
	je	L2797
L2687:
	movl	_configuracion, %esi
	movl	336(%esi), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	movzbl	_losArticulos+1, %eax
	movl	_letras, %ebx
	testb	%al, %al
	jne	L2798
L2684:
	movl	__imp__joy, %edx
	movl	40(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2705
	jmp	L2782
L2798:
	decb	%al
	movb	%al, _losArticulos+1
	movl	28(%ebx), %esi
	movl	4(%esi), %edx
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	%edx, 20(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	%ebx, (%esp)
	call	*56(%esi)
	movl	_color_amarillo, %eax
	movl	$_losArticulos, %edx
	movl	_datafile, %ecx
	movl	%eax, -48(%ebp)
	movzbl	_losArticulos, %edi
	movl	%edi, -40(%ebp)
	movl	160(%ecx), %edi
	movzbl	_losArticulos+1, %esi
	movl	724(%edx,%esi,4), %ecx
	movl	%esi, -44(%ebp)
	movl	__imp___textmode, %edx
	movl	(%edx), %esi
	movl	%edi, 4(%esp)
	movl	_color_blanco, %edx
	movl	$10, %edi
	movl	%esi, 24(%esp)
	movl	$1, %esi
	movl	%edx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, (%esp)
	call	_textout_centre_ex
	.p2align 4,,15
L2699:
	movl	-44(%ebp), %ecx
	leal	(%ecx,%esi), %edx
	cmpl	-40(%ebp), %edx
	jl	L2799
L2695:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2699
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %esi
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%esi)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2702
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	__imp__screen, %edi
	movl	(%edi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
	jmp	L2684
L2702:
	movl	$39, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%esi), %edi
	movl	%ebx, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	jmp	L2684
L2799:
	movl	_datafile, %eax
	movl	192(%eax), %ecx
	movl	%ecx, -52(%ebp)
	movl	__imp___textmode, %eax
	movl	_losArticulos+724(,%edx,4), %ecx
	leal	420(%edi), %edx
	movl	(%eax), %eax
	movl	%eax, 24(%esp)
	movl	-48(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	-52(%ebp), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_textout_centre_ex
	jmp	L2695
L2797:
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	call	_ScrollAbajo
	jmp	L2684
L2683:
	call	_poll_joystick
	movl	__imp__joy, %edx
	movl	40(%edx), %eax
	testl	%eax, %eax
	je	L2782
	movl	_crono, %esi
	testl	%esi, %esi
	jle	L2683
	jmp	L2680
L2796:
	decb	%al
	movb	%al, _losArticulos+1
	movl	-20(%ebp), %edx
	movl	28(%edx), %esi
	movl	4(%esi), %ecx
	movl	%edx, (%esp)
	movl	$459, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%esi)
	movl	_color_amarillo, %ebx
	movl	$_losArticulos, %eax
	movl	_datafile, %ecx
	movl	%ebx, -32(%ebp)
	movl	_color_blanco, %ebx
	movzbl	_losArticulos, %edi
	movl	%edi, -24(%ebp)
	movl	160(%ecx), %edi
	movzbl	_losArticulos+1, %esi
	movl	724(%eax,%esi,4), %ecx
	movl	%esi, -28(%ebp)
	movl	__imp___textmode, %edx
	movl	(%edx), %esi
	movl	%edi, 4(%esp)
	movl	$10, %edi
	movl	%esi, 24(%esp)
	movl	$1, %esi
	movl	%ebx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	_textout_centre_ex
L2673:
	movl	-28(%ebp), %eax
	leal	(%eax,%esi), %edx
	cmpl	-24(%ebp), %edx
	jl	L2800
L2669:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2673
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %ebx
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%esi, 4(%esp)
	movl	-20(%ebp), %edi
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2676
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	__imp__screen, %esi
	movl	(%esi), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	jmp	L2662
L2676:
	movl	$39, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_videoTemporal, %edi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ebx), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	_blit
	jmp	L2662
L2800:
	movl	_datafile, %ecx
	movl	192(%ecx), %ebx
	leal	420(%edi), %ecx
	movl	%ebx, -36(%ebp)
	movl	__imp___textmode, %eax
	movl	_losArticulos+724(,%edx,4), %ebx
	movl	(%eax), %edx
	movl	%edx, 24(%esp)
	movl	-32(%ebp), %edx
	movl	%ecx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%ebx, 8(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_textout_centre_ex
	jmp	L2669
L2795:
	movl	_configuracion, %ebx
	movl	336(%ebx), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	call	_ScrollAbajo
	jmp	L2662
L2660:
	movl	44(%eax), %ebx
	testl	%ebx, %ebx
	je	L2646
	cmpb	$0, _menuArticulosDesplegado
	jne	L2708
	cmpb	$0, _menuBuscar
	je	L2801
L2708:
	movl	_configuracion, %edx
	movl	336(%edx), %ecx
	movl	%ecx, (%esp)
	call	_ReproduceSample
	movl	_letras, %ebx
	movl	%ebx, -56(%ebp)
	movzbl	_losArticulos+1, %ecx
	movzbl	_losArticulos, %edi
	movzbl	%cl, %eax
	decl	%edi
	cmpl	%edi, %eax
	jl	L2802
L2709:
	movl	$500, 4(%esp)
	xorl	%eax, %eax
	movl	%eax, _crono
	movl	$_inc_crono, (%esp)
	call	_install_int
	movl	__imp__joy, %edx
	movl	44(%edx), %ecx
	testl	%ecx, %ecx
	je	L2782
	movl	_crono, %edi
	testl	%edi, %edi
	jle	L2730
L2727:
	movl	44(%edx), %ecx
	testl	%ecx, %ecx
	je	L2782
L2752:
	call	_poll_joystick
	cmpb	$0, _menuArticulosDesplegado
	jne	L2734
	cmpb	$0, _menuBuscar
	je	L2803
L2734:
	movl	_configuracion, %ecx
	movl	336(%ecx), %esi
	movl	%esi, (%esp)
	call	_ReproduceSample
	movl	_letras, %esi
	movl	%esi, -76(%ebp)
	movzbl	_losArticulos+1, %ecx
	movzbl	_losArticulos, %ebx
	movzbl	%cl, %eax
	decl	%ebx
	cmpl	%ebx, %eax
	jl	L2804
L2731:
	movl	__imp__joy, %edx
	movl	44(%edx), %ecx
	testl	%ecx, %ecx
	jne	L2752
	jmp	L2782
L2804:
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	28(%esi), %ecx
	movl	4(%ecx), %edx
	movl	%esi, (%esp)
	movl	$459, 16(%esp)
	movl	%edx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %edi
	movl	$_losArticulos, %ecx
	movl	_datafile, %ebx
	movl	_color_blanco, %esi
	movl	%edi, -88(%ebp)
	movl	160(%ebx), %edi
	movzbl	_losArticulos, %eax
	movl	%eax, -80(%ebp)
	movzbl	_losArticulos+1, %edx
	movl	724(%ecx,%edx,4), %ebx
	movl	%edx, -84(%ebp)
	movl	__imp___textmode, %edx
	movl	(%edx), %ecx
	movl	%esi, 20(%esp)
	movl	$1, %esi
	movl	%edi, 4(%esp)
	movl	$10, %edi
	movl	%ecx, 24(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, (%esp)
	call	_textout_centre_ex
L2746:
	movl	-84(%ebp), %ebx
	leal	(%ebx,%esi), %edx
	cmpl	-80(%ebp), %edx
	jl	L2805
L2742:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2746
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %ebx
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%esi, 4(%esp)
	movl	-76(%ebp), %edi
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2749
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	__imp__screen, %esi
	movl	(%esi), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	jmp	L2731
L2749:
	movl	$39, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_videoTemporal, %edi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ebx), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	_blit
	jmp	L2731
L2805:
	movl	_datafile, %ebx
	movl	192(%ebx), %ecx
	movl	%ecx, -92(%ebp)
	movl	__imp___textmode, %eax
	movl	_losArticulos+724(,%edx,4), %ecx
	leal	420(%edi), %edx
	movl	(%eax), %ebx
	movl	%ebx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	-92(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	jmp	L2742
L2803:
	movl	_configuracion, %edi
	movl	336(%edi), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	call	_ScrollArriba
	jmp	L2731
L2730:
	call	_poll_joystick
	movl	__imp__joy, %edx
	movl	44(%edx), %esi
	testl	%esi, %esi
	je	L2782
	movl	_crono, %ebx
	testl	%ebx, %ebx
	jle	L2730
	jmp	L2727
L2802:
	incb	%cl
	movb	%cl, _losArticulos+1
	movl	28(%ebx), %esi
	movl	4(%esi), %ecx
	movl	%ebx, (%esp)
	movl	$459, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%esi)
	movl	_color_amarillo, %edx
	movl	$_losArticulos, %eax
	movl	_datafile, %ecx
	movl	%edx, -68(%ebp)
	movzbl	_losArticulos, %edi
	movl	%edi, -60(%ebp)
	movl	160(%ecx), %edi
	movzbl	_losArticulos+1, %esi
	movl	724(%eax,%esi,4), %ecx
	movl	%esi, -64(%ebp)
	movl	__imp___textmode, %ebx
	movl	_color_blanco, %esi
	movl	(%ebx), %edx
	movl	%esi, 20(%esp)
	movl	$1, %esi
	movl	%edi, 4(%esp)
	movl	$10, %edi
	movl	%edx, 24(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-56(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_textout_centre_ex
L2720:
	movl	-64(%ebp), %eax
	leal	(%eax,%esi), %edx
	cmpl	-60(%ebp), %edx
	jl	L2806
L2716:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L2720
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %ebx
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%esi, 4(%esp)
	movl	-56(%ebp), %edi
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L2723
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	__imp__screen, %esi
	movl	(%esi), %edi
	movl	%edi, (%esp)
	call	_show_mouse
	jmp	L2709
L2723:
	movl	$39, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_videoTemporal, %edi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ebx), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	_blit
	jmp	L2709
L2806:
	movl	_datafile, %ecx
	movl	192(%ecx), %ebx
	leal	420(%edi), %ecx
	movl	%ebx, -72(%ebp)
	movl	__imp___textmode, %eax
	movl	_losArticulos+724(,%edx,4), %ebx
	movl	(%eax), %edx
	movl	%edx, 24(%esp)
	movl	-68(%ebp), %edx
	movl	%ecx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%edx, 20(%esp)
	movl	%ebx, 8(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_textout_centre_ex
	jmp	L2716
L2801:
	movl	_configuracion, %esi
	movl	336(%esi), %edi
	movl	%edi, (%esp)
	call	_ReproduceSample
	call	_ScrollArriba
	jmp	L2709
	.p2align 4,,15
.globl _ComparaCadena
	.def	_ComparaCadena;	.scl	2;	.type	32;	.endef
_ComparaCadena:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$268, %esp
	movl	8(%ebp), %eax
	movb	$0, -249(%ebp)
	movl	12(%ebp), %ebx
	testl	%eax, %eax
	je	L2808
	testl	%ebx, %ebx
	je	L2808
	movl	%eax, 4(%esp)
	leal	-136(%ebp), %edx
	leal	-248(%ebp), %edi
	movl	%edx, (%esp)
	call	_strcpy
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_strcpy
	leal	-136(%ebp), %ecx
	.p2align 4,,15
L2809:
	movl	(%ecx), %ebx
	addl	$4, %ecx
	leal	-16843009(%ebx), %edx
	notl	%ebx
	andl	%ebx, %edx
	andl	$-2139062144, %edx
	je	L2809
	testl	$32896, %edx
	jne	L2811
	shrl	$16, %edx
	addl	$2, %ecx
L2811:
	addb	%dl, %dl
	leal	-136(%ebp), %edx
	sbbl	$3, %ecx
	subl	%edx, %ecx
	movswl	%cx,%ebx
	movl	%edi, %ecx
	.p2align 4,,15
L2812:
	movl	(%ecx), %esi
	addl	$4, %ecx
	leal	-16843009(%esi), %edx
	notl	%esi
	andl	%esi, %edx
	andl	$-2139062144, %edx
	je	L2812
	testl	$32896, %edx
	jne	L2814
	shrl	$16, %edx
	addl	$2, %ecx
L2814:
	addb	%dl, %dl
	sbbl	$3, %ecx
	xorl	%edx, %edx
	subl	%edi, %ecx
	cmpw	%bx, %dx
	movswl	%cx,%esi
	jge	L2850
	.p2align 4,,15
L2834:
	movsbl	-136(%ebp,%edx),%eax
	addl	$127, %eax
	cmpl	$104, %eax
	ja	L2817
	jmp	*L2832(,%eax,4)
	.p2align 2
	.align 4
L2832:
	.long	L2831
	.long	L2827
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2827
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2831
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2826
	.long	L2828
	.long	L2829
	.long	L2831
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2826
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2828
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2829
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2817
	.long	L2831
L2826:
	movb	$65, %cl
	.p2align 4,,15
L2853:
	movb	%cl, -136(%ebp,%edx)
	.p2align 4,,15
L2817:
	leal	1(%edx), %ecx
	movswl	%cx,%edx
	cmpw	%bx, %dx
	jl	L2834
L2850:
	leal	-136(%ebp), %edx
	movl	%edx, (%esp)
	call	_strupr
	movl	%edi, (%esp)
	call	_strupr
	xorl	%edx, %edx
	cmpw	%bx, %dx
	jge	L2836
	movzbl	-248(%ebp), %ecx
	movb	%cl, -250(%ebp)
	.p2align 4,,15
L2847:
	movzbl	-250(%ebp), %ecx
	cmpb	%cl, -136(%ebp,%edx)
	je	L2854
	leal	1(%edx), %ecx
	movswl	%cx,%edx
L2835:
	cmpw	%bx, %dx
	jge	L2836
	cmpb	$0, -249(%ebp)
	je	L2847
L2836:
	movzbl	-249(%ebp), %eax
L2807:
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L2854:
	xorl	%ecx, %ecx
	cmpw	%bx, %dx
	jge	L2841
	cmpw	%si, %cx
	jge	L2841
	.p2align 4,,15
L2844:
	leal	1(%edx), %edi
	movswl	%di,%edx
	leal	1(%ecx), %edi
	movswl	%di,%ecx
	movzbl	-248(%ebp,%ecx), %eax
	cmpb	%al, -136(%ebp,%edx)
	jne	L2841
	cmpw	%bx, %dx
	jge	L2841
	cmpw	%si, %cx
	jl	L2844
	.p2align 4,,15
L2841:
	cmpw	%cx, %si
	jne	L2835
	movb	$-1, -249(%ebp)
	jmp	L2835
L2827:
	movb	$69, %cl
	jmp	L2853
L2831:
	movb	$85, %al
	movb	%al, -136(%ebp,%edx)
	jmp	L2817
L2828:
	movb	$73, %cl
	jmp	L2853
L2829:
	movb	$79, %cl
	jmp	L2853
	.p2align 4,,7
L2808:
	xorl	%eax, %eax
	jmp	L2807
LC189:
	.ascii "Palabra:\0"
	.p2align 4,,15
.globl _AccionBuscar
	.def	_AccionBuscar;	.scl	2;	.type	32;	.endef
_AccionBuscar:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	movl	8(%ebp), %ebx
	cmpb	$0, _menuBuscar
	movl	$0, -116(%ebp)
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	movb	$0, -121(%ebp)
	jne	L2855
	cmpb	$0, _menuArticulosDesplegado
	movb	$-1, _menuBuscar
	jne	L2939
L2857:
	movl	$20, 4(%esp)
	movl	$155, (%esp)
	call	_create_bitmap
	movl	%eax, -128(%ebp)
	movl	$17, 4(%esp)
	movl	$162, (%esp)
	call	_create_bitmap
	movl	%eax, -132(%ebp)
	movl	_color_blanco, %esi
	movl	%esi, (%esp)
	call	_text_mode
	movl	%eax, -120(%ebp)
	movl	-128(%ebp), %ecx
	movl	_color_blanco, %edi
	movl	-128(%ebp), %edx
	movl	28(%ecx), %esi
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	*156(%esi)
	cmpb	$0, _raton
	jne	L2940
L2859:
	movl	$16, 28(%esp)
	movl	-132(%ebp), %eax
	movl	__imp__screen, %edi
	movl	$161, 24(%esp)
	movl	%eax, 4(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$460, 12(%esp)
	movl	$240, 8(%esp)
	movl	(%edi), %esi
	movl	%esi, (%esp)
	call	_blit
	movl	__imp__screen, %ecx
	movl	_color_blanco, %edx
	movl	(%ecx), %edi
	movl	28(%edi), %esi
	movl	%edx, 20(%esp)
	movl	%edi, (%esp)
	movl	$475, 16(%esp)
	movl	$400, 12(%esp)
	movl	$460, 8(%esp)
	movl	$240, 4(%esp)
	call	*56(%esi)
	movl	$474, 16(%esp)
	movl	_color_negro, %ecx
	movl	__imp__screen, %edi
	movl	$399, 12(%esp)
	movl	%ecx, 20(%esp)
	movl	$461, 8(%esp)
	movl	$241, 4(%esp)
	movl	(%edi), %esi
	movl	%esi, (%esp)
	call	_rect
	movl	_datafile, %edx
	movl	__imp___textmode, %ecx
	movl	80(%edx), %esi
	movl	(%ecx), %edi
	movl	$LC189, 8(%esp)
	movl	_color_negro, %edx
	movl	$0, 16(%esp)
	movl	-128(%ebp), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$0, 12(%esp)
	movl	%esi, 4(%esp)
	call	_textout_ex
	movl	$11, 28(%esp)
	movl	__imp__screen, %edi
	movl	-128(%ebp), %eax
	movl	$100, 24(%esp)
	movl	$462, 20(%esp)
	movl	$246, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	(%edi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	cmpb	$0, _raton
	jne	L2941
L2862:
	movb	$0, -104(%ebp)
	xorl	%edi, %edi
	cmpb	$0, (%ebx)
	jne	L2885
	leal	-116(%ebp), %esi
	.p2align 4,,15
L2884:
	movl	-120(%ebp), %edx
	movl	%edx, (%esp)
	call	_text_mode
	movl	%ebx, 12(%esp)
	leal	-112(%ebp), %ecx
	leal	-108(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_ControlaEventoRaton
	movl	_color_blanco, %edx
	movl	%edx, (%esp)
	call	_text_mode
	call	_keypressed
	testl	%eax, %eax
	jne	L2942
L2863:
	cmpb	$0, -121(%ebp)
	jne	L2937
	cmpb	$0, (%ebx)
	je	L2884
L2885:
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_text_mode
	cmpb	$0, _raton
	jne	L2943
L2927:
	movl	$16, 28(%esp)
	movl	__imp__screen, %ebx
	movl	-132(%ebp), %ecx
	movl	$161, 24(%esp)
	movl	$460, 20(%esp)
	movl	$240, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	cmpb	$0, _raton
	jne	L2944
L2928:
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	_destroy_bitmap
	movl	-132(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_destroy_bitmap
	call	_clear_keybuf
	movb	$0, _menuBuscar
L2855:
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L2944:
	movl	__imp__screen, %edi
	movl	(%edi), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	jmp	L2928
L2943:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2927
L2937:
	movzwl	_elArticulo+4, %edx
	xorl	%ebx, %ebx
	movswl	%dx,%edi
	cmpl	$29, %edi
	sete	%bl
	decl	%ebx
	andl	%ebx, %edi
	cmpl	$29, %edi
	jle	L2887
	subl	$30, %edi
L2887:
	movswl	_elArticulo+2,%esi
	movb	$0, -121(%ebp)
	cmpl	%esi, %edi
	jge	L2889
	leal	0(,%edi,8), %edx
	subl	%edi, %edx
	leal	0(,%edx,4), %esi
	.p2align 4,,15
L2903:
	movl	_elArticulo+28(%esi), %ecx
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_ComparaCadena
	testb	%al, %al
	je	L2892
	movb	$-1, -121(%ebp)
L2888:
	movswl	_elArticulo+2,%ebx
	cmpl	%ebx, %edi
	jge	L2935
	cmpb	$0, -121(%ebp)
	je	L2903
L2935:
	movzwl	_elArticulo+4, %edx
L2889:
	testw	%dx, %dx
	jle	L2904
	cmpb	$0, -121(%ebp)
	jne	L2929
	xorl	%edi, %edi
	testw	%dx, %dx
	jle	L2904
	xorl	%esi, %esi
	.p2align 4,,15
L2920:
	movl	_elArticulo+28(%esi), %edx
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ComparaCadena
	testb	%al, %al
	je	L2909
	movb	$-1, -121(%ebp)
L2905:
	movswl	_elArticulo+4,%ebx
	cmpl	%ebx, %edi
	jge	L2904
	cmpb	$0, -121(%ebp)
	je	L2920
L2929:
	movl	%edi, %ebx
	movl	%edi, %esi
	shrl	$31, %ebx
	decl	%ebx
	movl	%edi, %eax
	andl	%ebx, %esi
	movl	$1717986919, %ebx
	imull	%ebx
	movl	%edx, -140(%ebp)
	movl	-140(%ebp), %ecx
	movl	%eax, -144(%ebp)
	movl	%edi, %eax
	cltd
	sarl	%ecx
	subl	%edx, %ecx
	leal	-1(%ecx,%ecx,4), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	setg	%cl
	decl	%ecx
	orl	%ecx, %edx
	movw	%dx, _elArticulo+4
	movl	-120(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_text_mode
	call	_ScrollArriba30Lineas
	movl	$-1, (%esp)
	call	_xor_mode
	movl	%esi, %eax
	imull	%ebx
	movl	%esi, %eax
	movl	%edx, %edi
	sarl	%edi
	cltd
	subl	%edx, %edi
	leal	(%edi,%edi,4), %edx
	subl	%edx, %esi
	cmpb	$0, _raton
	leal	(%esi,%esi,4), %edi
	leal	89(%edi,%edi), %esi
	jne	L2945
L2924:
	movl	__imp__screen, %ebx
	movl	_color_blanco, %edx
	movl	(%ebx), %ecx
	movl	28(%ecx), %edi
	movl	%edx, 20(%esp)
	movl	$140, 16(%esp)
	movl	$636, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$3, 4(%esp)
	movl	%ecx, (%esp)
	call	*56(%edi)
	cmpb	$0, _raton
	jne	L2946
L2926:
	movl	$0, (%esp)
	call	_xor_mode
	jmp	L2885
L2946:
	movl	__imp__screen, %edi
	movl	(%edi), %esi
	movl	%esi, (%esp)
	call	_show_mouse
	jmp	L2926
L2945:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2924
L2904:
	cmpb	$0, -121(%ebp)
	je	L2885
	jmp	L2929
L2909:
	movl	_elArticulo+32(%esi), %eax
	testl	%eax, %eax
	je	L2911
	cmpb	$0, -121(%ebp)
	movl	%eax, %ebx
	jne	L2905
	.p2align 4,,15
L2918:
	leal	-104(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_ComparaCadena
	testb	%al, %al
	je	L2916
	movb	$-1, -121(%ebp)
L2912:
	testl	%ebx, %ebx
	je	L2911
	cmpb	$0, -121(%ebp)
	je	L2918
	jmp	L2905
L2911:
	cmpb	$0, -121(%ebp)
	jne	L2905
	incl	%edi
	addl	$28, %esi
	jmp	L2905
L2916:
	movl	12(%ebx), %ebx
	jmp	L2912
	.p2align 4,,7
L2892:
	movl	_elArticulo+32(%esi), %eax
	testl	%eax, %eax
	je	L2894
	cmpb	$0, -121(%ebp)
	movl	%eax, %ebx
	jne	L2888
	.p2align 4,,15
L2901:
	leal	-104(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	8(%ebx), %edx
	movl	%edx, (%esp)
	call	_ComparaCadena
	testb	%al, %al
	je	L2899
	movb	$-1, -121(%ebp)
L2895:
	testl	%ebx, %ebx
	je	L2894
	cmpb	$0, -121(%ebp)
	je	L2901
	jmp	L2888
	.p2align 4,,7
L2894:
	cmpb	$0, -121(%ebp)
	jne	L2888
	incl	%edi
	addl	$28, %esi
	jmp	L2888
	.p2align 4,,7
L2899:
	movl	12(%ebx), %ebx
	jmp	L2895
	.p2align 4,,7
L2942:
	call	_readkey
	movl	%eax, %ecx
	sarl	$8, %eax
	cmpl	$67, %eax
	je	L2868
	cmpl	$82, %eax
	je	L2870
	cmpl	$63, %eax
	je	L2870
L2869:
	cmpl	$11, %edi
	jle	L2872
	movl	$11, %edi
L2872:
	movzbl	%cl,%edx
	cmpl	$59, %edx
	je	L2947
	leal	-97(%edx), %eax
	cmpl	$25, %eax
	jbe	L2938
	leal	-48(%edx), %eax
	cmpl	$9, %eax
	ja	L2877
L2938:
	movb	%cl, -104(%ebp,%edi)
	.p2align 4,,15
L2871:
	incl	%edi
	movb	$0, -104(%ebp,%edi)
	movl	-128(%ebp), %edx
	movl	28(%edx), %ecx
	movl	$12, 16(%esp)
	movl	_color_blanco, %edx
	movl	$199, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 20(%esp)
	movl	-128(%ebp), %edx
	movl	$55, 4(%esp)
	movl	%edx, (%esp)
	call	*56(%ecx)
	movl	_datafile, %edx
	movl	__imp___textmode, %eax
	movl	176(%edx), %ecx
	movl	(%eax), %edx
	movl	$4, 16(%esp)
	movl	%ecx, 4(%esp)
	movl	-128(%ebp), %ecx
	movl	%edx, 24(%esp)
	movl	_color_negro, %edx
	movl	$55, 12(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 20(%esp)
	leal	-104(%ebp), %edx
	movl	%edx, 8(%esp)
	call	_textout_ex
	cmpb	$0, _raton
	jne	L2948
L2881:
	movl	$11, 28(%esp)
	movl	__imp__screen, %ecx
	movl	$150, 24(%esp)
	movl	$462, 20(%esp)
	movl	$246, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	(%ecx), %edx
	movl	-128(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_blit
	cmpb	$0, _raton
	je	L2863
	movl	__imp__screen, %ecx
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L2863
L2948:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2881
L2877:
	decl	%edi
	jmp	L2871
L2947:
	movb	$-92, -104(%ebp,%edi)
	jmp	L2871
	.p2align 4,,7
L2870:
	testl	%edi, %edi
	jle	L2869
	subl	$2, %edi
	jmp	L2871
L2868:
	movb	$-1, -121(%ebp)
	jmp	L2863
L2941:
	movl	__imp__screen, %ecx
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L2862
L2940:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2859
L2939:
	movl	_configuracion, %ecx
	movl	384(%ecx), %edx
	movl	%edx, (%esp)
	call	_ReproduceSample
	call	_AccionMenuDesplegable
	jmp	L2857
	.align 32
LC190:
	.ascii "No hay memoria RAM suficiente\12\0"
	.p2align 4,,15
.globl _MostrarErrorMemoria
	.def	_MostrarErrorMemoria;	.scl	2;	.type	32;	.endef
_MostrarErrorMemoria:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$25, 8(%esp)
	movl	$80, 4(%esp)
	movl	$-1, (%esp)
	call	_set_gfx_mode
	movl	$LC190, (%esp)
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
LC191:
	.ascii "screen.pcx\0"
	.p2align 4,,15
.globl _CapturarPantalla
	.def	_CapturarPantalla;	.scl	2;	.type	32;	.endef
_CapturarPantalla:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$480, 4(%esp)
	movl	%ebx, -4(%ebp)
	movl	$640, (%esp)
	call	_create_bitmap
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L2950
	cmpb	$0, _raton
	jne	L2957
L2952:
	movl	$480, 28(%esp)
	movl	__imp__screen, %ecx
	movl	$640, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_blit
	cmpw	$0, _grises
	je	L2953
	movl	$_paletaGris, 8(%esp)
L2956:
	movl	%ebx, 4(%esp)
	movl	$LC191, (%esp)
	call	_save_pcx
	cmpb	$0, _raton
	jne	L2958
L2955:
	movl	%ebx, (%esp)
	call	_destroy_bitmap
L2950:
	movl	-4(%ebp), %ebx
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L2958:
	movl	__imp__screen, %ecx
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_show_mouse
	jmp	L2955
	.p2align 4,,7
L2953:
	movl	$0, 8(%esp)
	jmp	L2956
	.p2align 4,,7
L2957:
	movl	$0, (%esp)
	call	_show_mouse
	jmp	L2952
	.p2align 4,,15
.globl _ReproduceSample
	.def	_ReproduceSample;	.scl	2;	.type	32;	.endef
_ReproduceSample:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpb	$0, _driverSonido
	jne	L2961
L2959:
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L2961:
	movswl	_numVolumenActual,%edx
	movl	$0, 16(%esp)
	movl	$1000, 12(%esp)
	movl	$128, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	_play_sample
	jmp	L2959
LC192:
	.ascii "intro.dat\0"
	.align 32
LC193:
	.ascii "**** COMOORDORE 64 JAVA V2 ****\0"
	.align 32
LC194:
	.ascii "64G RAM SYSTEM  2 JAVA BYTES FREE\0"
LC195:
	.ascii "READY.\0"
LC196:
	.ascii "LOAD\".INTRO.JAVA\",8,1\0"
LC197:
	.ascii "RUN\0"
LC198:
	.ascii "LOADING DAEMON \"SPRITES\"\0"
LC199:
	.ascii "LOADING DAEMON \"VIRUS\"\0"
LC200:
	.ascii "LOADING DAEMON \"SOUND\"\0"
LC201:
	.ascii "VIRTUAL MACHINE ENABLED\0"
	.align 32
LC202:
	.ascii "ERROR!! YOU DON'T HAVE ANY MEMORY\0"
LC203:
	.ascii "YOU NEED 128 GB OF RAM FREE\0"
LC204:
	.ascii "Los coders estaban solos\0"
LC205:
	.ascii "En mitad de ninguna party\0"
LC206:
	.ascii "Te esta vigilando\0"
LC207:
	.ascii "Cada 23 primaveras\0"
LC208:
	.ascii "Y durante 23 dias\0"
LC209:
	.ascii "Le toca programar\0"
LC210:
	.ascii "Te esta esperando\0"
	.align 4
LC211:
	.long	1092616192
	.align 4
LC213:
	.long	1191181824
	.align 4
LC214:
	.long	-956301824
	.align 4
LC215:
	.long	1199570944
	.align 4
LC217:
	.long	-1090519040
	.align 4
LC218:
	.long	1056964608
	.align 8
LC219:
	.long	-1717986918
	.long	1070176665
	.align 4
LC220:
	.long	1090519040
	.p2align 4,,15
.globl _MuestraIntro
	.def	_MuestraIntro;	.scl	2;	.type	32;	.endef
_MuestraIntro:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1132, %esp
	movl	$_cadenaClave, (%esp)
	call	_packfile_password
	movl	$_datosIntro, 4(%esp)
	movl	$LC192, (%esp)
	call	_LeerArchivoDatos
	movl	$0, (%esp)
	call	_packfile_password
	movl	$8, (%esp)
	call	_set_color_depth
	movl	$0, 16(%esp)
	movl	_tipoPantalla, %edx
	movl	$0, 12(%esp)
	movl	$200, 8(%esp)
	movl	$320, 4(%esp)
	movl	%edx, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	je	L2963
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$200, 8(%esp)
	movl	$320, 4(%esp)
	movl	$1396786757, (%esp)
	call	_set_gfx_mode
	testl	%eax, %eax
	jne	L3136
L2963:
	movl	$1, (%esp)
	call	_set_display_switch_mode
	movl	$218, 8(%esp)
	movl	$112, 4(%esp)
	movl	$124, (%esp)
	call	_makecol
	movl	$162, 8(%esp)
	movl	%eax, %esi
	movl	$49, 4(%esp)
	movl	$62, (%esp)
	call	_makecol
	movl	$200, 4(%esp)
	movl	%eax, %edi
	movl	$320, (%esp)
	call	_create_bitmap
	movl	$2000, (%esp)
	movl	%eax, %ebx
	call	_rest
	testl	%ebx, %ebx
	je	L2965
	movl	%ebx, (%esp)
	call	_clear_bitmap
	movl	$1000, 4(%esp)
	xorl	%edx, %edx
	movl	%edx, _crono
	movl	$_inc_crono, (%esp)
	call	_install_int
	movl	28(%ebx), %ecx
	movl	%esi, 20(%esp)
	movl	$199, 16(%esp)
	movl	$319, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	*56(%ecx)
	movl	28(%ebx), %edx
	movl	%edi, 20(%esp)
	movl	$179, 16(%esp)
	movl	$299, 12(%esp)
	movl	$20, 8(%esp)
	movl	$20, 4(%esp)
	movl	%ebx, (%esp)
	call	*56(%edx)
	movl	%edi, 24(%esp)
	movl	__imp__font, %ecx
	movl	%esi, 20(%esp)
	movl	$25, 16(%esp)
	movl	$38, 12(%esp)
	movl	$LC193, 8(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_textout_ex
	movl	%edi, 24(%esp)
	movl	__imp__font, %ecx
	movl	%esi, 20(%esp)
	movl	$40, 16(%esp)
	movl	$30, 12(%esp)
	movl	$LC194, 8(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_textout_ex
	movl	%edi, 24(%esp)
	movl	__imp__font, %ecx
	movl	%esi, 20(%esp)
	movl	$55, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC195, 8(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_textout_ex
	movl	4(%ebx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%ebx), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	$0, 4(%esp)
	movl	_datosIntro, %ecx
	movl	80(%ecx), %edx
	movl	%edx, (%esp)
	call	_play_midi
L2968:
	movl	_crono, %ecx
	decl	%ecx
	jle	L2968
	movl	$0, 16(%esp)
	movl	_datosIntro, %ecx
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	176(%ecx), %edx
	movl	%edx, (%esp)
	call	_play_sample
	movl	%edi, 24(%esp)
	movl	__imp__font, %ecx
	movl	%esi, 20(%esp)
	movl	$70, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC196, 8(%esp)
	movl	(%ecx), %edx
	movl	__imp__screen, %ecx
	movl	%edx, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_textout_ex
L2971:
	movl	_crono, %edx
	cmpl	$3, %edx
	jle	L2971
	movl	%edi, 24(%esp)
	movl	__imp__font, %edx
	movl	%esi, 20(%esp)
	movl	$85, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC195, 8(%esp)
	movl	(%edx), %ecx
	movl	__imp__screen, %edx
	movl	%ecx, 4(%esp)
	movl	(%edx), %ecx
	movl	%ecx, (%esp)
	call	_textout_ex
L2974:
	movl	_crono, %ecx
	cmpl	$4, %ecx
	jle	L2974
	movl	%edi, 24(%esp)
	movl	__imp__font, %ecx
	movl	%esi, 20(%esp)
	movl	$95, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC197, 8(%esp)
	movl	(%ecx), %edx
	movl	__imp__screen, %ecx
	movl	%edx, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_textout_ex
L2977:
	movl	_crono, %edx
	cmpl	$5, %edx
	jle	L2977
	movl	%edi, 24(%esp)
	movl	__imp__font, %edx
	movl	%esi, 20(%esp)
	movl	$110, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC198, 8(%esp)
	movl	(%edx), %ecx
	movl	__imp__screen, %edx
	movl	%ecx, 4(%esp)
	movl	(%edx), %ecx
	movl	%ecx, (%esp)
	call	_textout_ex
L2980:
	movl	_crono, %ecx
	cmpl	$6, %ecx
	jle	L2980
	movl	%edi, 24(%esp)
	movl	__imp__font, %ecx
	movl	%esi, 20(%esp)
	movl	$120, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC199, 8(%esp)
	movl	(%ecx), %edx
	movl	__imp__screen, %ecx
	movl	%edx, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_textout_ex
L2983:
	movl	_crono, %edx
	cmpl	$7, %edx
	jle	L2983
	movl	%edi, 24(%esp)
	movl	__imp__font, %edx
	movl	%esi, 20(%esp)
	movl	$130, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC200, 8(%esp)
	movl	(%edx), %ecx
	movl	__imp__screen, %edx
	movl	%ecx, 4(%esp)
	movl	(%edx), %ecx
	movl	%ecx, (%esp)
	call	_textout_ex
L2986:
	movl	_crono, %ecx
	cmpl	$8, %ecx
	jle	L2986
	movl	%esi, 20(%esp)
	movl	__imp__screen, %edx
	movl	__imp__font, %esi
	movl	%edi, 24(%esp)
	movl	$140, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC201, 8(%esp)
	movl	(%esi), %ecx
	movl	%ecx, 4(%esp)
	movl	(%edx), %esi
	movl	%esi, (%esp)
	call	_textout_ex
L2989:
	movl	_crono, %edx
	cmpl	$9, %edx
	jle	L2989
	movl	$0, 16(%esp)
	movl	_datosIntro, %edx
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	192(%edx), %esi
	movl	%esi, (%esp)
	call	_play_sample
	movl	$128, 8(%esp)
	movl	$0, 4(%esp)
	movl	$128, (%esp)
	call	_makecol
	movl	%eax, 20(%esp)
	movl	__imp__font, %ecx
	movl	__imp__screen, %esi
	movl	%edi, 24(%esp)
	movl	$155, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC202, 8(%esp)
	movl	(%ecx), %edx
	movl	%edx, 4(%esp)
	movl	(%esi), %ecx
	movl	%ecx, (%esp)
	call	_textout_ex
L2992:
	movl	_crono, %ecx
	cmpl	$10, %ecx
	jle	L2992
	movl	$128, 8(%esp)
	movl	$0, 4(%esp)
	movl	$200, (%esp)
	call	_makecol
	movl	%eax, 20(%esp)
	movl	__imp__font, %ecx
	movl	__imp__screen, %esi
	movl	%edi, 24(%esp)
	movl	$165, 16(%esp)
	movl	$22, 12(%esp)
	movl	$LC203, 8(%esp)
	movl	(%ecx), %edx
	movl	%edx, 4(%esp)
	movl	(%esi), %edi
	movl	%edi, (%esp)
	call	_textout_ex
L2995:
	movl	_crono, %edi
	cmpl	$12, %edi
	jle	L2995
	movl	4(%ebx), %edi
	movl	__imp__screen, %edx
	movl	%edi, 28(%esp)
	movl	(%ebx), %ecx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, 24(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	(%edx), %esi
	movl	%esi, (%esp)
	xorl	%esi, %esi
	call	_blit
L3002:
	call	_vsync
	movl	$175, 28(%esp)
	movl	__imp__screen, %edi
	movl	$130, %ecx
	movl	$25, 20(%esp)
	subl	%esi, %ecx
	leal	20(%esi), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 24(%esp)
	movl	$20, 16(%esp)
	movl	$25, 12(%esp)
	movl	(%edi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	leal	1(%esi), %edx
	movswl	%dx,%esi
	cmpw	$129, %si
	jle	L3002
	xorl	%esi, %esi
	movl	$150, %edi
L3007:
	call	_vsync
	movl	%edi, 16(%esp)
	movl	__imp__screen, %edx
	leal	69(%esi), %ecx
	movl	$8, 28(%esp)
	subl	$2, %edi
	movl	$40, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$69, 12(%esp)
	movl	$150, 8(%esp)
	movl	(%edx), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	leal	1(%esi), %edx
	movswl	%dx,%esi
	cmpw	$60, %si
	jle	L3007
	xorl	%esi, %esi
L3012:
	call	_vsync
	movl	$8, 28(%esp)
	movl	$150, %edi
	movl	__imp__screen, %ecx
	movl	$50, 24(%esp)
	subl	%esi, %edi
	movl	%edi, 16(%esp)
	leal	1(%esi), %edi
	movswl	%di,%esi
	movl	$130, 20(%esp)
	movl	$130, 12(%esp)
	movl	$150, 8(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	cmpw	$74, %si
	jle	L3012
	xorl	%esi, %esi
L3017:
	call	_vsync
	movl	$8, 28(%esp)
	movl	__imp__screen, %edi
	movl	$150, %edx
	movl	$58, 24(%esp)
	subl	%esi, %edx
	movl	%edx, 16(%esp)
	movl	$140, 20(%esp)
	movl	$140, 12(%esp)
	movl	$150, 8(%esp)
	movl	(%edi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	leal	1(%esi), %edx
	movswl	%dx,%esi
	cmpw	$24, %si
	jle	L3017
	movl	$_inc_crono, (%esp)
	call	_remove_int
L2965:
	movl	__imp__screen, %ecx
	movl	_datosIntro, %edx
	movl	(%ecx), %esi
	movl	16(%edx), %edi
	movl	%esi, (%esp)
	call	_clear_bitmap
	movl	__imp__black_palette, %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	4(%edi), %ecx
	movl	__imp__screen, %edx
	movl	%ecx, 28(%esp)
	movl	(%edi), %esi
	movl	$25, 20(%esp)
	movl	$70, 16(%esp)
	movl	%esi, 24(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edx), %ecx
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	_datosIntro, %esi
	movl	112(%esi), %edx
	movl	%edx, (%esp)
	call	_Desfundir
	movl	$500, (%esp)
	call	_rest
	movl	$0, 16(%esp)
	movl	_datosIntro, %ecx
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	208(%ecx), %esi
	movl	%esi, (%esp)
	xorl	%esi, %esi
	call	_play_sample
	.p2align 4,,15
L3022:
	call	_vsync
	call	_rand
	movl	%eax, %ecx
	movl	$1431655766, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	subl	%eax, %ecx
	addl	$24, %ecx
	movl	%ecx, -1068(%ebp)
	call	_rand
	movl	%eax, -1084(%ebp)
	movl	$1431655766, %eax
	imull	-1084(%ebp)
	movl	-1084(%ebp), %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %ecx
	movl	4(%edi), %eax
	subl	%ecx, -1084(%ebp)
	movl	%eax, 28(%esp)
	movl	(%edi), %eax
	movl	$0, 8(%esp)
	movl	-1084(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	%eax, 24(%esp)
	addl	$69, %ecx
	movl	-1068(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	__imp__screen, %ecx
	movl	%eax, 20(%esp)
	movl	(%ecx), %edx
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	leal	1(%esi), %ecx
	movswl	%cx,%esi
	cmpw	$19, %si
	jle	L3022
	movl	$1000, (%esp)
	xorl	%esi, %esi
	call	_rest
	call	_Fundir
	movl	_datosIntro, %edi
	movl	112(%edi), %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	_datosIntro, %ecx
	movl	64(%ecx), %edx
	movl	4(%edx), %edi
	movl	%edi, 28(%esp)
	movl	(%edx), %ecx
	movl	$0, 8(%esp)
	movl	__imp__screen, %edi
	movl	$0, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	$30, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%edi), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	$100, (%esp)
	call	_rest
	movl	$0, 16(%esp)
	movl	_datosIntro, %edi
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	224(%edi), %ecx
	movl	%ecx, (%esp)
	call	_play_sample
	movl	$1000, (%esp)
	call	_rest
	movl	$85, 4(%esp)
	movl	_datosIntro, %edx
	movl	160(%edx), %edi
	movl	%edi, (%esp)
	call	_AjustaPaleta
	movl	$1000, (%esp)
	call	_rest
	call	_Fundir
	movl	__imp__black_palette, %ecx
	movl	%ecx, (%esp)
	call	_set_palette
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	__imp___textmode, %eax
	movl	__imp__screen, %ecx
	movl	_datafile, %edx
	movl	(%ecx), %edi
	movl	128(%edx), %ecx
	movl	(%eax), %edx
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$255, 20(%esp)
	movl	$75, 16(%esp)
	movl	$160, 12(%esp)
	movl	$LC204, 8(%esp)
	call	_textout_centre_ex
	movl	_datosIntro, %edi
	movl	112(%edi), %ecx
	movl	%ecx, (%esp)
	call	_Desfundir
	call	_Fundir
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	__imp___textmode, %eax
	movl	__imp__screen, %ecx
	movl	_datafile, %edx
	movl	(%ecx), %edi
	movl	128(%edx), %ecx
	movl	(%eax), %edx
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$255, 20(%esp)
	movl	$30, 16(%esp)
	movl	$160, 12(%esp)
	movl	$LC205, 8(%esp)
	call	_textout_centre_ex
	movl	_datosIntro, %ecx
	movl	48(%ecx), %edx
	movl	4(%edx), %edi
	movl	%edi, 28(%esp)
	movl	(%edx), %ecx
	movl	$0, 8(%esp)
	movl	__imp__screen, %edi
	movl	$80, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	$64, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%edi), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	_datosIntro, %edi
	movl	144(%edi), %ecx
	movl	%ecx, (%esp)
	call	_Desfundir
	call	_Fundir
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	__imp___textmode, %eax
	movl	__imp__screen, %ecx
	movl	_datafile, %edx
	movl	(%ecx), %edi
	movl	128(%edx), %ecx
	movl	(%eax), %edx
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$255, 20(%esp)
	movl	$75, 16(%esp)
	movl	$160, 12(%esp)
	movl	$LC206, 8(%esp)
	call	_textout_centre_ex
	movl	_datosIntro, %edi
	movl	112(%edi), %ecx
	movl	%ecx, (%esp)
	call	_Desfundir
	call	_Fundir
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	.p2align 4,,15
L3030:
	movl	%esi, %edx
	leal	1(%esi), %ecx
	sarl	%edx
	movb	%dl, -1046(%ebp,%esi,4)
	movb	%dl, -1047(%ebp,%esi,4)
	movb	%dl, -1048(%ebp,%esi,4)
	movswl	%cx,%esi
	cmpw	$127, %si
	jle	L3030
	leal	-1048(%ebp), %edi
	movl	%edi, (%esp)
	call	_set_palette
	movl	__imp___textmode, %eax
	movl	__imp__screen, %ecx
	movl	_datafile, %edx
	movl	(%ecx), %esi
	movl	128(%edx), %ecx
	movl	(%eax), %edx
	movl	%esi, (%esp)
	movl	$128, %esi
	movl	%edx, 24(%esp)
	movl	%ecx, 4(%esp)
	movl	$127, 20(%esp)
	movl	$55, 16(%esp)
	movl	$160, 12(%esp)
	movl	$LC207, 8(%esp)
	call	_textout_centre_ex
	movl	$127, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fade_in_range
	movl	$500, (%esp)
	call	_rest
	.p2align 4,,15
L3036:
	leal	-128(%esi), %ecx
	sarl	%ecx
	leal	1(%esi), %edx
	movb	%cl, -1046(%ebp,%esi,4)
	movb	%cl, -1047(%ebp,%esi,4)
	movb	%cl, -1048(%ebp,%esi,4)
	movswl	%dx,%esi
	cmpw	$255, %si
	jle	L3036
	movl	%edi, (%esp)
	xorl	%esi, %esi
	call	_set_palette
	movl	__imp__screen, %edx
	movl	_datafile, %eax
	movl	(%edx), %ecx
	movl	128(%eax), %edx
	movl	__imp___textmode, %eax
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 24(%esp)
	movl	$255, 20(%esp)
	movl	$110, 16(%esp)
	movl	$160, 12(%esp)
	movl	$LC208, 8(%esp)
	call	_textout_centre_ex
	movl	%edi, (%esp)
	movl	$255, 12(%esp)
	movl	$128, 8(%esp)
	movl	$1, 4(%esp)
	call	_fade_in_range
	movl	$1000, (%esp)
	call	_rest
	call	_Fundir
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	__imp___textmode, %eax
	movl	__imp__screen, %ecx
	movl	_datafile, %edx
	movl	(%ecx), %edi
	movl	128(%edx), %ecx
	movl	(%eax), %edx
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$255, 20(%esp)
	movl	$75, 16(%esp)
	movl	$160, 12(%esp)
	movl	$LC209, 8(%esp)
	call	_textout_centre_ex
	movl	_datosIntro, %edi
	movl	112(%edi), %ecx
	movl	%ecx, (%esp)
	call	_Desfundir
	call	_Fundir
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	__imp___textmode, %eax
	movl	__imp__screen, %ecx
	movl	_datafile, %edx
	movl	(%ecx), %edi
	movl	128(%edx), %ecx
	movl	(%eax), %edx
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 24(%esp)
	movl	$255, 20(%esp)
	movl	$75, 16(%esp)
	movl	$160, 12(%esp)
	movl	$LC210, 8(%esp)
	call	_textout_centre_ex
	movl	_datosIntro, %edi
	movl	112(%edi), %ecx
	movl	%ecx, (%esp)
	call	_Desfundir
	call	_Fundir
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	_datosIntro, %ecx
	movl	(%ecx), %edi
	movl	112(%ecx), %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	4(%edi), %ecx
	movl	%ecx, 28(%esp)
	movl	(%edi), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$64, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	$0, 16(%esp)
	movl	_datosIntro, %ecx
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	256(%ecx), %edx
	movl	%edx, (%esp)
	call	_play_sample
	movl	$70, 4(%esp)
	movl	_datosIntro, %edi
	movl	96(%edi), %ecx
	movl	%ecx, (%esp)
	call	_AjustaPaleta
	call	_Fundir
	movl	__imp__screen, %edx
	movl	(%edx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	_datosIntro, %ecx
	movl	128(%ecx), %edx
	movl	32(%ecx), %edi
	movl	%edx, (%esp)
	call	_set_palette
	movl	$0, 16(%esp)
	movl	_datosIntro, %ecx
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	240(%ecx), %edx
	movl	%edx, (%esp)
	call	_play_sample
	movl	$1000, (%esp)
	call	_rest
	flds	LC211
	fstpl	-1064(%ebp)
	.p2align 4,,15
L3056:
	fldl	-1064(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	L3137
L3042:
	fldl	-1064(%ebp)
	leal	1(%esi), %edx
	movswl	%dx,%esi
	fsubl	LC219
	cmpw	$49, %si
	fstpl	-1064(%ebp)
	jle	L3056
	movl	$500, (%esp)
	call	_rest
	movl	%ebx, (%esp)
	call	_EfectoTelevision
	movl	_datosIntro, %ecx
	movl	128(%ecx), %esi
	movl	32(%ecx), %edi
	movl	%esi, (%esp)
	call	_set_palette
	.p2align 4,,15
L3057:
	call	_keypressed
	testl	%eax, %eax
	jne	L3138
	movl	%ebx, (%esp)
	xorl	%esi, %esi
	call	_clear_bitmap
	fldz
	fstpl	-1064(%ebp)
	.p2align 4,,15
L3074:
	movl	%ebx, (%esp)
	call	_clear_bitmap
	flds	LC213
	fldl	-1064(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3064
	movl	__imp__allegro_errno, %ecx
	movl	(%ecx), %edx
	movl	$34, (%edx)
	movl	$2147483647, %edx
L3066:
	movl	28(%ebx), %ecx
	movl	%edx, 24(%esp)
	movl	$0, 32(%esp)
	movl	$65536, 28(%esp)
	movl	$6553600, 20(%esp)
	movl	$6225920, 16(%esp)
	movl	$6553600, 12(%esp)
	movl	$10485760, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*160(%ecx)
	call	_vsync
	movl	4(%ebx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%ebx), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	fldl	-1064(%ebp)
	leal	1(%esi), %ecx
	movswl	%cx,%esi
	fadds	LC220
	cmpw	$49, %si
	fstpl	-1064(%ebp)
	jle	L3074
	jmp	L3057
	.p2align 4,,7
L3064:
	flds	LC214
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3067
	movl	__imp__allegro_errno, %ecx
	movl	(%ecx), %edx
	movl	$34, (%edx)
	movl	$-2147483647, %edx
	jmp	L3066
	.p2align 4,,7
L3067:
	fldl	-1064(%ebp)
	fldz
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucomp	%st(2)
	fnstsw	%ax
	fstp	%st(1)
	fmuls	LC215
	sahf
	jbe	L3069
	fadds	LC217
L3132:
	fnstcw	-1050(%ebp)
	movzwl	-1050(%ebp), %edx
	orw	$3072, %dx
	movw	%dx, -1052(%ebp)
	fldcw	-1052(%ebp)
	fistpl	-1056(%ebp)
	fldcw	-1050(%ebp)
	movl	-1056(%ebp), %edx
	jmp	L3066
	.p2align 4,,7
L3069:
	fadds	LC218
	jmp	L3132
L3138:
	call	_clear_keybuf
	movl	_datosIntro, %esi
	movl	96(%esi), %ecx
	movl	(%esi), %edi
	movl	%ecx, (%esp)
	call	_set_palette
	movl	$-1, 16(%esp)
	movl	_datosIntro, %edx
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	272(%edx), %esi
	movl	%esi, (%esp)
	call	_play_sample
	.p2align 4,,15
L3076:
	call	_keypressed
	testl	%eax, %eax
	jne	L3139
	flds	LC211
	xorl	%esi, %esi
	fstpl	-1064(%ebp)
	.p2align 4,,15
L3093:
	movl	%ebx, (%esp)
	call	_clear_bitmap
	flds	LC213
	fldl	-1064(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3084
	movl	__imp__allegro_errno, %ecx
	movl	(%ecx), %edx
	movl	$34, (%edx)
	movl	$2147483647, %edx
L3086:
	movl	28(%ebx), %ecx
	movl	%edx, 28(%esp)
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	$6553600, 20(%esp)
	movl	$6225920, 16(%esp)
	movl	$6553600, 12(%esp)
	movl	$10485760, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*160(%ecx)
	call	_vsync
	movl	4(%ebx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%ebx), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	fldl	-1064(%ebp)
	leal	1(%esi), %ecx
	movswl	%cx,%esi
	fsubl	LC219
	cmpw	$34, %si
	fstpl	-1064(%ebp)
	jle	L3093
	fld1
	xorl	%esi, %esi
	fstpl	-1064(%ebp)
	.p2align 4,,15
L3108:
	movl	%ebx, (%esp)
	call	_clear_bitmap
	flds	LC213
	fldl	-1064(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3099
	movl	__imp__allegro_errno, %ecx
	movl	(%ecx), %edx
	movl	$34, (%edx)
	movl	$2147483647, %edx
L3101:
	movl	28(%ebx), %ecx
	movl	%edx, 28(%esp)
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	$6553600, 20(%esp)
	movl	$6225920, 16(%esp)
	movl	$6553600, 12(%esp)
	movl	$10485760, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*160(%ecx)
	call	_vsync
	movl	4(%ebx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%ebx), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	fldl	-1064(%ebp)
	leal	1(%esi), %ecx
	movswl	%cx,%esi
	faddl	LC219
	cmpw	$34, %si
	fstpl	-1064(%ebp)
	jle	L3108
	jmp	L3076
	.p2align 4,,7
L3099:
	flds	LC214
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3102
	movl	__imp__allegro_errno, %ecx
	movl	(%ecx), %edx
	movl	$34, (%edx)
	movl	$-2147483647, %edx
	jmp	L3101
	.p2align 4,,7
L3102:
	fldl	-1064(%ebp)
	fldz
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucomp	%st(2)
	fnstsw	%ax
	fstp	%st(1)
	fmuls	LC215
	sahf
	jbe	L3104
	fadds	LC217
L3134:
	fnstcw	-1050(%ebp)
	movzwl	-1050(%ebp), %edx
	orw	$3072, %dx
	movw	%dx, -1052(%ebp)
	fldcw	-1052(%ebp)
	fistpl	-1056(%ebp)
	fldcw	-1050(%ebp)
	movl	-1056(%ebp), %edx
	jmp	L3101
	.p2align 4,,7
L3104:
	fadds	LC218
	jmp	L3134
	.p2align 4,,7
L3084:
	flds	LC214
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3087
	movl	__imp__allegro_errno, %ecx
	movl	(%ecx), %edx
	movl	$34, (%edx)
	movl	$-2147483647, %edx
	jmp	L3086
	.p2align 4,,7
L3087:
	fldl	-1064(%ebp)
	fldz
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucomp	%st(2)
	fnstsw	%ax
	fstp	%st(1)
	fmuls	LC215
	sahf
	jbe	L3089
	fadds	LC217
L3133:
	fnstcw	-1050(%ebp)
	movzwl	-1050(%ebp), %edx
	orw	$3072, %dx
	movw	%dx, -1052(%ebp)
	fldcw	-1052(%ebp)
	fistpl	-1056(%ebp)
	fldcw	-1050(%ebp)
	movl	-1056(%ebp), %edx
	jmp	L3086
	.p2align 4,,7
L3089:
	fadds	LC218
	jmp	L3133
L3139:
	call	_clear_keybuf
	movl	_datosIntro, %ecx
	movl	272(%ecx), %esi
	movl	%esi, (%esp)
	call	_stop_sample
	movl	__imp__black_palette, %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	__imp__screen, %edi
	movl	(%edi), %ecx
	movl	%ecx, (%esp)
	call	_clear_bitmap
	movl	_datosIntro, %esi
	movl	160(%esi), %edx
	movl	%edx, (%esp)
	call	_set_palette
	movl	_datosIntro, %edi
	movl	64(%edi), %edx
	movl	__imp__screen, %edi
	movl	4(%edx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%edx), %esi
	movl	$0, 20(%esp)
	movl	$30, 16(%esp)
	movl	%esi, 24(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edi), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	$0, 16(%esp)
	movl	_datosIntro, %esi
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	288(%esi), %edi
	movl	%edi, (%esp)
	call	_play_sample
	movl	$1900, (%esp)
	call	_rest
	movl	%ebx, (%esp)
	call	_EfectoTelevision
	call	_stop_midi
	testl	%ebx, %ebx
	je	L3110
	movl	%ebx, (%esp)
	call	_destroy_bitmap
L3110:
	movl	_datosIntro, %ebx
	movl	%ebx, (%esp)
	call	_unload_datafile
	addl	$1132, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L3137:
	movl	%ebx, (%esp)
	call	_clear_bitmap
	flds	LC213
	fldl	-1064(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3047
	movl	__imp__allegro_errno, %edx
	movl	(%edx), %ecx
	movl	$2147483647, %edx
L3135:
	movl	$34, (%ecx)
L3049:
	movl	28(%ebx), %ecx
	movl	%edx, 28(%esp)
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	$3276800, 20(%esp)
	movl	$3801088, 16(%esp)
	movl	$6553600, 12(%esp)
	movl	$10485760, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*160(%ecx)
	call	_vsync
	movl	4(%ebx), %ecx
	movl	%ecx, 28(%esp)
	movl	(%ebx), %edx
	movl	$0, 8(%esp)
	movl	__imp__screen, %ecx
	movl	$0, 20(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	jmp	L3042
L3047:
	flds	LC214
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L3050
	movl	__imp__allegro_errno, %edx
	movl	(%edx), %ecx
	movl	$-2147483647, %edx
	jmp	L3135
L3050:
	fldl	-1064(%ebp)
	fldz
	fldl	-1064(%ebp)
	fxch	%st(1)
	fucomp	%st(2)
	fnstsw	%ax
	fstp	%st(1)
	fmuls	LC215
	sahf
	jbe	L3052
	fadds	LC217
L3131:
	fnstcw	-1050(%ebp)
	movzwl	-1050(%ebp), %ecx
	orw	$3072, %cx
	movw	%cx, -1052(%ebp)
	fldcw	-1052(%ebp)
	fistpl	-1056(%ebp)
	fldcw	-1050(%ebp)
	movl	-1056(%ebp), %edx
	jmp	L3049
L3052:
	fadds	LC218
	jmp	L3131
L3136:
	movl	$LC186, (%esp)
	call	_allegro_message
	call	_allegro_exit
	movl	$-1, (%esp)
	call	_exit
	.p2align 4,,15
.globl _AjustaPaleta
	.def	_AjustaPaleta;	.scl	2;	.type	32;	.endef
_AjustaPaleta:
	pushl	%ebp
	movl	%esp, %ebp
	leal	-1048(%ebp), %eax
	pushl	%edi
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	subl	$1084, %esp
	movl	8(%ebp), %esi
	movswl	12(%ebp),%edx
	movl	%eax, (%esp)
	movl	%edx, -1052(%ebp)
	call	_get_palette
	cmpw	-1052(%ebp), %di
	jge	L3161
	.p2align 4,,15
L3159:
	xorl	%eax, %eax
	.p2align 4,,15
L3158:
	movzbl	-1046(%ebp,%eax,4), %ebx
	movzbl	-1048(%ebp,%eax,4), %edx
	movzbl	-1047(%ebp,%eax,4), %ecx
	movb	%bl, -1053(%ebp)
	movzbl	(%esi,%eax,4), %ebx
	movb	%bl, -1065(%ebp)
	movzbl	1(%esi,%eax,4), %ebx
	cmpb	-1065(%ebp), %dl
	movb	%bl, -1054(%ebp)
	movzbl	2(%esi,%eax,4), %ebx
	movb	%bl, -1055(%ebp)
	jbe	L3149
	decb	%dl
L3164:
	movb	%dl, -1048(%ebp,%eax,4)
L3150:
	cmpb	-1054(%ebp), %cl
	jbe	L3152
	decb	%cl
L3165:
	movb	%cl, -1047(%ebp,%eax,4)
L3153:
	movzbl	-1055(%ebp), %ecx
	cmpb	%cl, -1053(%ebp)
	jbe	L3155
	decb	-1053(%ebp)
L3166:
	movzbl	-1053(%ebp), %edx
	movb	%dl, -1046(%ebp,%eax,4)
L3147:
	incl	%eax
	cwtl
	cmpw	$255, %ax
	jle	L3158
	leal	-1048(%ebp), %ebx
	call	_vsync
	call	_vsync
	movl	%ebx, (%esp)
	call	_set_palette
	leal	1(%edi), %ecx
	movswl	%cx,%edi
	cmpw	-1052(%ebp), %di
	jl	L3159
L3161:
	addl	$1084, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L3155:
	movzbl	-1055(%ebp), %ebx
	cmpb	%bl, -1053(%ebp)
	jae	L3147
	incb	-1053(%ebp)
	jmp	L3166
	.p2align 4,,7
L3152:
	cmpb	-1054(%ebp), %cl
	jae	L3153
	incb	%cl
	jmp	L3165
	.p2align 4,,7
L3149:
	cmpb	-1065(%ebp), %dl
	jae	L3150
	incb	%dl
	jmp	L3164
LC224:
	.ascii "Ch 1\0"
	.p2align 4,,15
.globl _EfectoTelevision
	.def	_EfectoTelevision;	.scl	2;	.type	32;	.endef
_EfectoTelevision:
	pushl	%ebp
	xorl	%edx, %edx
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1068, %esp
L3172:
	movb	%dl, %cl
	salb	$2, %cl
	movb	%cl, -1046(%ebp,%edx,4)
	movb	%cl, -1047(%ebp,%edx,4)
	movb	%cl, -1048(%ebp,%edx,4)
	leal	1(%edx), %ecx
	movswl	%cx,%edx
	cmpw	$15, %dx
	jle	L3172
	movl	$16, %edx
L3177:
	movb	%dl, %cl
	xorl	%ebx, %ebx
	subb	$16, %cl
	movb	%bl, -1048(%ebp,%edx,4)
	xorl	%eax, %eax
	salb	$2, %cl
	movb	%al, -1046(%ebp,%edx,4)
	leal	1(%edx), %ebx
	movb	%cl, -1047(%ebp,%edx,4)
	movswl	%bx,%edx
	cmpw	$31, %dx
	jle	L3177
	leal	-1048(%ebp), %esi
	movl	%esi, (%esp)
	call	_set_palette
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	_clear_bitmap
	movl	__imp__screen, %ebx
	movl	(%ebx), %edi
	movl	%edi, (%esp)
	call	_clear_bitmap
	movl	__imp__screen, %ecx
	movl	_datafile, %esi
	movl	__imp___textmode, %edx
	movl	(%ecx), %edi
	movl	128(%esi), %ecx
	movl	(%edx), %ebx
	movl	$31, 20(%esp)
	movl	$10, 16(%esp)
	movl	%ebx, 24(%esp)
	movl	$240, 12(%esp)
	movl	$LC224, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	_textout_ex
	movl	$-1, 16(%esp)
	movl	_datosIntro, %esi
	movl	$1000, 12(%esp)
	movl	$127, 8(%esp)
	movl	$255, 4(%esp)
	movl	304(%esi), %edx
	movl	%edx, (%esp)
	call	_play_sample
L3179:
	call	_keypressed
	testl	%eax, %eax
	movl	$40, %edi
	jne	L3202
	.p2align 4,,15
L3192:
	movl	$20, %ebx
	.p2align 4,,15
L3191:
	movl	8(%ebp), %ecx
	movl	64(%ecx,%edi,4), %esi
	call	_rand
	testl	%eax, %eax
	movl	%eax, %edx
	js	L3203
L3190:
	andl	$-8, %edx
	subl	%edx, %eax
	addb	$8, %al
	movb	%al, (%ebx,%esi)
	leal	1(%ebx), %edx
	movswl	%dx,%ebx
	cmpw	$299, %bx
	jle	L3191
	leal	2(%edi), %ebx
	movswl	%bx,%edi
	cmpw	$159, %di
	jle	L3192
	call	_vsync
	movl	$120, 28(%esp)
	movl	__imp__screen, %ecx
	movl	8(%ebp), %edi
	movl	$280, 24(%esp)
	movl	$40, 20(%esp)
	movl	$20, 16(%esp)
	movl	$40, 12(%esp)
	movl	$20, 8(%esp)
	movl	(%ecx), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	_blit
	jmp	L3179
	.p2align 4,,7
L3203:
	leal	7(%eax), %edx
	jmp	L3190
L3202:
	call	_clear_keybuf
	movl	_datosIntro, %esi
	movl	304(%esi), %edi
	movl	%edi, (%esp)
	call	_stop_sample
	call	_Fundir
	movl	__imp__screen, %ebx
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_clear_bitmap
	addl	$1068, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.lcomm _buf.4,256
	.p2align 4,,15
.globl _WinMain@16
	.def	_WinMain@16;	.scl	2;	.type	32;	.endef
_WinMain@16:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$__mangled_main, (%esp)
	movl	20(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, 16(%esp)
	movl	12(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	call	__WinMain
	movl	%ebp, %esp
	popl	%ebp
	ret	$16
	.p2align 4,,15
.globl _MostrarArticulosPantalla
	.def	_MostrarArticulosPantalla;	.scl	2;	.type	32;	.endef
_MostrarArticulosPantalla:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	_color_amarillo, %ecx
	movl	8(%ebp), %edx
	movl	8(%ebp), %ebx
	movl	%ecx, -24(%ebp)
	movl	_datafile, %ecx
	movzbl	(%edx), %edi
	movl	8(%ebp), %edx
	movl	%edi, -16(%ebp)
	movl	__imp___textmode, %edi
	movzbl	1(%ebx), %esi
	movl	(%edi), %ebx
	movl	$10, %edi
	movl	%esi, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	160(%ecx), %esi
	movl	724(%edx,%eax,4), %ecx
	movl	_color_blanco, %edx
	movl	%esi, 4(%esp)
	movl	12(%ebp), %eax
	movl	$1, %esi
	movl	%ebx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_textout_centre_ex
	.p2align 4,,15
L3910:
	movl	-20(%ebp), %ebx
	leal	(%ebx,%esi), %edx
	cmpl	-16(%ebp), %edx
	jl	L3913
L3906:
	incl	%esi
	addl	$10, %edi
	cmpl	$3, %esi
	jle	L3910
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L3913:
	movl	_datafile, %ecx
	movl	8(%ebp), %eax
	movl	192(%ecx), %ebx
	movl	724(%eax,%edx,4), %ecx
	movl	__imp___textmode, %eax
	leal	420(%edi), %edx
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_textout_centre_ex
	jmp	L3906
	.p2align 4,,15
.globl _ScrollArribaArticulos
	.def	_ScrollArribaArticulos;	.scl	2;	.type	32;	.endef
_ScrollArribaArticulos:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %edi
	movl	%edx, -16(%ebp)
	movzbl	1(%edi), %eax
	testb	%al, %al
	jne	L3932
L3914:
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L3932:
	decb	%al
	movb	%al, 1(%edi)
	movl	-16(%ebp), %edx
	movl	28(%edx), %ecx
	movl	4(%ecx), %esi
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	%esi, 20(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	-16(%ebp), %ebx
	movl	%ebx, (%esp)
	call	*56(%ecx)
	movl	_color_amarillo, %edx
	movl	_datafile, %ecx
	movl	%edx, -28(%ebp)
	movzbl	(%edi), %esi
	movl	%esi, -20(%ebp)
	movzbl	1(%edi), %ebx
	movl	%ebx, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	__imp___textmode, %esi
	movl	160(%ecx), %ebx
	movl	724(%edi,%edx,4), %ecx
	movl	(%esi), %edx
	movl	%ebx, 4(%esp)
	movl	_color_blanco, %esi
	movl	$10, %ebx
	movl	%edx, 24(%esp)
	movl	%esi, 20(%esp)
	movl	$1, %esi
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	_textout_centre_ex
	.p2align 4,,15
L3925:
	movl	-24(%ebp), %ecx
	leal	(%ecx,%esi), %edx
	cmpl	-20(%ebp), %edx
	jl	L3933
L3921:
	incl	%esi
	addl	$10, %ebx
	cmpl	$3, %esi
	jle	L3925
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %esi
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%esi)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	-16(%ebp), %edi
	movl	%edi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L3928
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	__imp__screen, %ebx
	movl	(%ebx), %edi
	movl	%edi, 8(%ebp)
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_show_mouse
L3928:
	movl	$39, 28(%esp)
	movl	__imp__screen, %esi
	movl	_videoTemporal, %edi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%esi), %ebx
	movl	%edi, (%esp)
	movl	%ebx, 4(%esp)
	call	_blit
	jmp	L3914
	.p2align 4,,7
L3933:
	movl	_datafile, %eax
	movl	192(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	__imp___textmode, %eax
	movl	724(%edi,%edx,4), %ecx
	leal	420(%ebx), %edx
	movl	(%eax), %eax
	movl	%eax, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	-32(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	_textout_centre_ex
	jmp	L3921
	.p2align 4,,15
.globl _ScrollAbajoArticulos
	.def	_ScrollAbajoArticulos;	.scl	2;	.type	32;	.endef
_ScrollAbajoArticulos:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%edx, -16(%ebp)
	movzbl	1(%esi), %ecx
	movzbl	(%esi), %ebx
	movzbl	%cl, %eax
	decl	%ebx
	cmpl	%ebx, %eax
	jl	L3952
L3934:
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L3952:
	incb	%cl
	movb	%cl, 1(%esi)
	movl	-16(%ebp), %ecx
	movl	28(%ecx), %edi
	movl	4(%edi), %edx
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	%edx, 20(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	movl	-16(%ebp), %ebx
	movl	%ebx, (%esp)
	call	*56(%edi)
	movl	_color_amarillo, %ecx
	movl	_datafile, %edi
	movl	%ecx, -28(%ebp)
	movzbl	(%esi), %edx
	movl	%edx, -20(%ebp)
	movzbl	1(%esi), %ebx
	movl	%ebx, -24(%ebp)
	movl	-24(%ebp), %ecx
	movl	__imp___textmode, %edx
	movl	160(%edi), %ebx
	movl	724(%esi,%ecx,4), %edi
	movl	(%edx), %ecx
	movl	%ebx, 4(%esp)
	movl	_color_blanco, %edx
	movl	$10, %ebx
	movl	%edi, 8(%esp)
	movl	$1, %edi
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$420, 16(%esp)
	movl	$319, 12(%esp)
	movl	-16(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	.p2align 4,,15
L3945:
	movl	-24(%ebp), %ecx
	leal	(%ecx,%edi), %edx
	cmpl	-20(%ebp), %edx
	jl	L3953
L3941:
	incl	%edi
	addl	$10, %ebx
	cmpl	$3, %edi
	jle	L3945
	movl	_videoTemporal, %ecx
	movl	_color_negro, %edx
	movl	28(%ecx), %ebx
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	movl	$459, 16(%esp)
	movl	$440, 12(%esp)
	movl	$420, 8(%esp)
	movl	$187, 4(%esp)
	call	*56(%ebx)
	movl	$39, 28(%esp)
	movl	_videoTemporal, %edi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-16(%ebp), %esi
	movl	%esi, (%esp)
	call	_masked_blit
	cmpb	$0, _raton
	je	L3948
	movl	$0, (%esp)
	call	_show_mouse
	movl	$39, 28(%esp)
	movl	__imp__screen, %edx
	movl	_videoTemporal, %ebx
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%edx), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	movl	__imp__screen, %edi
	movl	(%edi), %esi
	movl	%esi, 8(%ebp)
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_show_mouse
L3948:
	movl	$39, 28(%esp)
	movl	__imp__screen, %ebx
	movl	_videoTemporal, %esi
	movl	$253, 24(%esp)
	movl	$420, 20(%esp)
	movl	$187, 16(%esp)
	movl	$420, 12(%esp)
	movl	$187, 8(%esp)
	movl	(%ebx), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_blit
	jmp	L3934
	.p2align 4,,7
L3953:
	movl	_datafile, %eax
	movl	192(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	__imp___textmode, %eax
	movl	724(%esi,%edx,4), %ecx
	leal	420(%ebx), %edx
	movl	(%eax), %eax
	movl	%eax, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$319, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	-32(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	_textout_centre_ex
	jmp	L3941
	.p2align 4,,15
.globl _inc_crono
	.def	_inc_crono;	.scl	2;	.type	32;	.endef
_inc_crono:
	pushl	%ebp
	movl	_crono, %edx
	movl	%esp, %ebp
	popl	%ebp
	incl	%edx
	movl	%edx, _crono
	ret
.lcomm _soundcard,16
.lcomm _digi_cards,1280
.lcomm _midi_cards,1280
	.align 32
LC27:
	.ascii "Attempt to autodetect the digital sound hardware\0"
LC28:
	.ascii "No Sound\0"
LC29:
	.ascii "The Sound of Silence...\0"
	.align 32
LC30:
	.ascii "Attempt to autodetect the MIDI hardware\0"
	.align 32
LC32:
	.ascii "Software wavetable synthesis using the digital sound hardware\0"
	.p2align 4,,15
	.def	_find_sound_drivers;	.scl	3;	.type	32;	.endef
_find_sound_drivers:
	pushl	%ebp
	movl	$-1, %eax
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	__imp___sound_hq, %edx
	movl	%eax, _digi_cards
	movl	__imp__digi_card, %ebx
	movl	__imp__midi_card, %ecx
	movl	%edx, _parameters+1612
	movl	%ebx, _parameters+524
	movl	%ecx, _parameters+1068
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC26, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC26, %edx
	jne	L3964
L3:
	movl	%edx, _digi_cards+4
	movl	_digi_param.0, %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	je	L3956
	movl	%eax, %edi
	.p2align 4,,15
L11:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L3965
L9:
	movl	%edx, _digi_param.0(,%esi,4)
	incl	%esi
	movl	_digi_param.0(,%esi,4), %edx
	testl	%edx, %edx
	movl	%edx, %edi
	jne	L11
L3956:
	movl	$1668641326, 8(%esp)
	movl	$_digi_param.0, %edi
	movl	%edi, _digi_cards+8
	movl	$1095975736, 4(%esp)
	movl	$LC27, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC27, %edx
	jne	L3966
L14:
	movl	%edx, _digi_cards+12
	xorl	%eax, %eax
	movl	__imp__system_driver, %edx
	movl	%eax, _digi_cards+16
	movl	(%edx), %ecx
	movl	132(%ecx), %eax
	testl	%eax, %eax
	jne	L3967
	movl	__imp___digi_driver_list, %eax
L3963:
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %ecx
	movl	$1, -20(%ebp)
	movl	4(%ecx), %edx
	testl	%edx, %edx
	je	L19
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L19
	movl	$20, %edi
	movl	%edi, -132(%ebp)
	.p2align 4,,15
L28:
	movl	12(%edx), %edi
	movl	$1095975736, 4(%esp)
	movl	-132(%ebp), %ebx
	movl	$1668641326, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, _digi_cards(%ebx)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L3968
L23:
	addl	$12, -16(%ebp)
	xorl	%ebx, %ebx
	movl	-132(%ebp), %eax
	incl	-20(%ebp)
	movl	%edx, _digi_cards+12(%eax)
	movl	%edx, _digi_cards+4(%eax)
	xorl	%edx, %edx
	movl	%edx, _digi_cards+16(%eax)
	movl	%ebx, _digi_cards+8(%eax)
	addl	$20, %eax
	movl	%eax, -132(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L19
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L28
	.p2align 4,,15
L19:
	movl	$1668641326, 8(%esp)
	movl	-20(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$1095975736, 4(%esp)
	movl	$LC28, (%esp)
	leal	(%eax,%eax,4), %esi
	sall	$2, %esi
	movl	%esi, -44(%ebp)
	movl	%ecx, _digi_cards(%esi)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC28, %edx
	jne	L3969
L30:
	movl	$1668641326, 8(%esp)
	movl	-20(%ebp), %ecx
	xorl	%esi, %esi
	movl	$1095975736, 4(%esp)
	movl	-44(%ebp), %ebx
	movl	$LC29, (%esp)
	leal	(%ecx,%ecx,4), %edi
	sall	$2, %edi
	movl	%edx, _digi_cards+4(%ebx)
	movl	%edi, -52(%ebp)
	movl	%esi, _digi_cards+8(%edi)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC29, %edx
	jne	L3970
L33:
	movl	$1668641326, 8(%esp)
	movl	-20(%ebp), %ebx
	xorl	%eax, %eax
	movl	$1095975736, 4(%esp)
	movl	-52(%ebp), %esi
	movl	$-1, %edi
	movl	%edi, _midi_cards
	leal	(%ebx,%ebx,4), %ecx
	movl	%edx, _digi_cards+12(%esi)
	movl	%eax, _digi_cards+16(,%ecx,4)
	movl	$LC26, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC26, %edx
	jne	L3971
L36:
	movl	%edx, _midi_cards+4
	movl	_midi_param.1, %eax
	movl	$0, -64(%ebp)
	testl	%eax, %eax
	je	L3959
	movl	%eax, %edi
	.p2align 4,,15
L44:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L3972
L42:
	movl	-64(%ebp), %edi
	movl	%edx, _midi_param.1(,%edi,4)
	incl	%edi
	movl	_midi_param.1(,%edi,4), %edx
	movl	%edi, -64(%ebp)
	testl	%edx, %edx
	movl	%edx, %edi
	jne	L44
L3959:
	movl	$1668641326, 8(%esp)
	movl	$_midi_param.1, %eax
	movl	%eax, _midi_cards+8
	movl	$1095975736, 4(%esp)
	movl	$LC30, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC30, %edx
	jne	L3973
L47:
	movl	%edx, _midi_cards+12
	movl	__imp__system_driver, %esi
	xorl	%edx, %edx
	movl	%edx, _midi_cards+16
	movl	(%esi), %ecx
	movl	136(%ecx), %eax
	testl	%eax, %eax
	jne	L3974
	movl	__imp___midi_driver_list, %edi
	movl	%edi, -16(%ebp)
L50:
	movl	$1, -20(%ebp)
	movl	-16(%ebp), %ecx
	movl	4(%ecx), %edx
	testl	%edx, %edx
	je	L52
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L52
	movl	$20, -128(%ebp)
	.p2align 4,,15
L73:
	movl	12(%edx), %edi
	movl	$1095975736, 4(%esp)
	movl	-128(%ebp), %ebx
	movl	$1668641326, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, _midi_cards(%ebx)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L3975
L56:
	movl	-128(%ebp), %ebx
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	-16(%ebp), %esi
	movl	%edi, _midi_cards+16(%ebx)
	cmpl	$1145653065, (%esi)
	movl	%edx, _midi_cards+12(%ebx)
	movl	%edx, _midi_cards+4(%ebx)
	movl	%ebx, -88(%ebp)
	movl	%eax, _midi_cards+8(%ebx)
	je	L3976
L58:
	addl	$12, -16(%ebp)
	incl	-20(%ebp)
	addl	$20, -128(%ebp)
	movl	-16(%ebp), %ecx
	movl	4(%ecx), %edx
	testl	%edx, %edx
	je	L52
	movl	(%ecx), %eax
	testl	%eax, %eax
	jne	L73
	.p2align 4,,15
L52:
	movl	$1668641326, 8(%esp)
	movl	-20(%ebp), %eax
	xorl	%edx, %edx
	movl	$1095975736, 4(%esp)
	movl	$LC28, (%esp)
	leal	(%eax,%eax,4), %ecx
	sall	$2, %ecx
	movl	%edx, _midi_cards(%ecx)
	movl	%ecx, -112(%ebp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC28, %edx
	jne	L3977
L75:
	movl	$1668641326, 8(%esp)
	movl	-20(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$1095975736, 4(%esp)
	movl	-112(%ebp), %esi
	movl	$LC29, (%esp)
	leal	(%eax,%eax,4), %edi
	sall	$2, %edi
	movl	%edx, _midi_cards+4(%esi)
	movl	%edi, -120(%ebp)
	movl	%ecx, _midi_cards+8(%edi)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC29, %edx
	jne	L3978
L78:
	movl	-20(%ebp), %eax
	xorl	%ecx, %ecx
	movl	-120(%ebp), %esi
	leal	(%eax,%eax,4), %edi
	movl	%edx, _midi_cards+12(%esi)
	movl	%ecx, _midi_cards+16(,%edi,4)
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L3978:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, -124(%ebp)
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC29, (%esp)
	call	_do_uconvert
	movl	-124(%ebp), %edx
	jmp	L78
L3977:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, -116(%ebp)
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC28, (%esp)
	call	_do_uconvert
	movl	-116(%ebp), %edx
	jmp	L75
	.p2align 4,,7
L3976:
	movl	$0, -92(%ebp)
	movl	_param.2, %eax
	testl	%eax, %eax
	je	L3962
	movl	%eax, %edi
	.p2align 4,,15
L66:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L3979
L64:
	movl	-92(%ebp), %edi
	movl	%edx, _param.2(,%edi,4)
	incl	%edi
	movl	_param.2(,%edi,4), %edx
	movl	%edi, -92(%ebp)
	testl	%edx, %edx
	movl	%edx, %edi
	jne	L66
L3962:
	movl	$1668641326, 8(%esp)
	movl	-88(%ebp), %ebx
	movl	$_param.2, %eax
	movl	$1095975736, 4(%esp)
	movl	-128(%ebp), %ecx
	movl	$LC32, (%esp)
	movl	%eax, _midi_cards+8(%ebx)
	movl	%ecx, -104(%ebp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC32, %edx
	jne	L3980
L69:
	movl	-104(%ebp), %edi
	movl	%edx, _midi_cards+12(%edi)
	jmp	L58
L3980:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, -108(%ebp)
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC32, (%esp)
	call	_do_uconvert
	movl	-108(%ebp), %edx
	jmp	L69
	.p2align 4,,7
L3979:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, -96(%ebp)
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -100(%ebp)
	movl	-96(%ebp), %esi
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 16(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	-100(%ebp), %edx
	jmp	L64
	.p2align 4,,7
L3975:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, -80(%ebp)
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -84(%ebp)
	movl	-80(%ebp), %ecx
	movl	-84(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	-84(%ebp), %edx
	jmp	L56
L3974:
	call	*%eax
	movl	%eax, -16(%ebp)
	jmp	L50
L3973:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, -76(%ebp)
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC30, (%esp)
	call	_do_uconvert
	movl	-76(%ebp), %edx
	jmp	L47
	.p2align 4,,7
L3972:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, -68(%ebp)
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -72(%ebp)
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %ecx
	movl	$1668641326, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%ecx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	-72(%ebp), %edx
	jmp	L42
L3971:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, -60(%ebp)
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC26, (%esp)
	call	_do_uconvert
	movl	-60(%ebp), %edx
	jmp	L36
L3970:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	_malloc
	movl	%eax, -56(%ebp)
	movl	%esi, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC29, (%esp)
	call	_do_uconvert
	movl	-56(%ebp), %edx
	jmp	L33
L3969:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, -48(%ebp)
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC28, (%esp)
	call	_do_uconvert
	movl	-48(%ebp), %edx
	jmp	L30
	.p2align 4,,7
L3968:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, -36(%ebp)
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -40(%ebp)
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %esi
	movl	$1668641326, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	-40(%ebp), %edx
	jmp	L23
L3967:
	call	*%eax
	jmp	L3963
L3966:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	_malloc
	movl	%eax, -32(%ebp)
	movl	%esi, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC27, (%esp)
	call	_do_uconvert
	movl	-32(%ebp), %edx
	jmp	L14
	.p2align 4,,7
L3965:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, -28(%ebp)
	movl	%eax, (%esp)
	call	_malloc
	movl	$1668641326, 12(%esp)
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%ebx, %edx
	jmp	L9
L3964:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	_malloc
	movl	%eax, -24(%ebp)
	movl	%esi, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC26, (%esp)
	call	_do_uconvert
	movl	-24(%ebp), %edx
	jmp	L3
.lcomm _buffer,16
.lcomm _setup_data,16
.lcomm _dialogs,96
.lcomm _scroller_msg,256
	.p2align 4,,15
	.def	_inc_scroller_time;	.scl	3;	.type	32;	.endef
_inc_scroller_time:
	pushl	%ebp
	movl	_scroller_time, %edx
	movl	%esp, %ebp
	popl	%ebp
	incl	%edx
	movl	%edx, _scroller_time
	ret
LC34:
	.ascii "%c\0"
	.p2align 4,,15
	.def	_scroller_proc;	.scl	3;	.type	32;	.endef
_scroller_proc:
	pushl	%ebp
	xorl	%edx, %edx
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	8(%ebp), %eax
	cmpl	$15, %eax
	je	L3992
	cmpl	$16, %eax
	je	L3993
L165:
	addl	$108, %esp
	xorl	%eax, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L3993:
	movl	$_scroller_msg, %esi
	xorl	%ebx, %ebx
	.p2align 4,,15
L156:
	movl	__imp__gfx_driver, %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L160
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L3994
L162:
	sarl	$3, %eax
	addl	$2, %eax
	cmpl	%eax, %ebx
	jge	L157
L163:
	movl	%esi, (%esp)
	movl	__imp__usetc, %edi
	incl	%ebx
	movl	$32, 4(%esp)
	call	*(%edi)
	addl	%eax, %esi
	jmp	L156
L157:
	movl	_wanted_scroller, %ecx
	movl	%ecx, _scroller_string
	movl	%ecx, (%esp)
	call	_ustrlen
	movl	%eax, _scroller_string_pos
	movl	$-1, %edx
	movl	$256, %eax
	movl	%eax, _scroller_alpha
L154:
	testl	%edx, %edx
	je	L165
	movl	__imp__freeze_mouse_flag, %edi
	movl	$-1, (%edi)
	movl	__imp__screen, %esi
	movl	(%esi), %eax
	movl	28(%eax), %edx
	movl	16(%edx), %ebx
	testl	%ebx, %ebx
	jne	L3995
L168:
	movl	$_scroller_msg, -72(%ebp)
	movl	$0, -80(%ebp)
	.p2align 4,,15
L169:
	movl	__imp__gfx_driver, %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L173
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L3996
L175:
	sarl	$3, %eax
	addl	$2, %eax
	cmpl	%eax, -80(%ebp)
	jge	L170
L225:
	movl	-80(%ebp), %eax
	movl	_scroller_pos, %ecx
	leal	(%ecx,%eax,8), %esi
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L181
	movl	104(%eax), %edi
	movl	%edi, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edi
	sarl	%edi
	cmpl	%esi, %edi
L3986:
	js	L179
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L183
	movl	104(%eax), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edi, %edx
	sarl	%edx
	subl	%esi, %edx
L180:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L186
	movl	104(%ecx), %ecx
	testl	%ecx, %ecx
	js	L3997
L188:
	sarl	$5, %ecx
L186:
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	$15, %edx
	subl	%eax, %edx
	cmpl	$14, %edx
	jg	L178
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L191
	movl	104(%eax), %ecx
	movl	%ecx, %edi
	shrl	$31, %edi
	addl	%edi, %ecx
	sarl	%ecx
	cmpl	%esi, %ecx
L3987:
	js	L189
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L193
	movl	104(%eax), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	subl	%esi, %edx
L190:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L196
	movl	104(%ecx), %ecx
	testl	%ecx, %ecx
	js	L3998
L198:
	sarl	$5, %ecx
L196:
	movl	%edx, %eax
	movl	$16, %edi
	cltd
	idivl	%ecx
	movl	$15, %ecx
	cmpl	%eax, %ecx
	js	L177
L178:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L203
	movl	104(%eax), %edi
	movl	%edi, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edi
	sarl	%edi
	cmpl	%esi, %edi
L3988:
	js	L201
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L205
	movl	104(%eax), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edi, %edx
	sarl	%edx
	subl	%esi, %edx
L202:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L208
	movl	104(%ecx), %ecx
	testl	%ecx, %ecx
	js	L3999
L210:
	sarl	$5, %ecx
L208:
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	$15, %edx
	subl	%eax, %edx
	cmpl	$14, %edx
	jg	L199
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L213
	movl	104(%eax), %ecx
	movl	%ecx, %edi
	shrl	$31, %edi
	addl	%edi, %ecx
	sarl	%ecx
	cmpl	%esi, %ecx
L3989:
	js	L211
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L215
	movl	104(%eax), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	subl	%esi, %edx
L212:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L218
	movl	104(%ecx), %ecx
	testl	%ecx, %ecx
	js	L4000
L220:
	sarl	$5, %ecx
L218:
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	_scroller_alpha, %edx
	movl	%eax, %ebx
	movl	$15, %eax
	subl	%ebx, %eax
	imull	%edx, %eax
	testl	%eax, %eax
L3991:
	js	L4001
L222:
	sarl	$8, %eax
	leal	16(%eax), %edi
L177:
	movl	__imp__ugetx, %ebx
	leal	-72(%ebp), %edx
	movl	%edx, (%esp)
	call	*(%ebx)
	movl	$32, 16(%esp)
	leal	-56(%ebp), %ecx
	movl	$1668641326, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, %ebx
	movl	$1095975736, 4(%esp)
	movl	$LC34, (%esp)
	call	_uconvert
	movl	%eax, 24(%esp)
	movl	__imp__gfx_driver, %edx
	movl	%ebx, 28(%esp)
	movl	$0, 20(%esp)
	movl	%edi, 16(%esp)
	movl	(%edx), %eax
	movl	$-16, %edx
	testl	%eax, %eax
	je	L224
	movl	108(%eax), %edx
	subl	$16, %edx
L224:
	movl	%edx, 12(%esp)
	movl	__imp__font, %ebx
	movl	__imp__screen, %edi
	movl	%esi, 8(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	(%edi), %esi
	movl	%esi, (%esp)
	call	_textprintf_ex
	incl	-80(%ebp)
	jmp	L169
	.p2align 4,,7
L4001:
	addl	$255, %eax
	jmp	L222
L4000:
	addl	$31, %ecx
	jmp	L220
	.p2align 4,,7
L215:
	movl	%esi, %edx
	negl	%edx
	jmp	L212
L211:
	movl	(%ebx), %eax
	movl	%esi, %edx
	testl	%eax, %eax
	je	L212
	movl	104(%eax), %edi
	movl	%esi, %edx
	movl	%edi, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edi
	sarl	%edi
	subl	%edi, %edx
	jmp	L212
	.p2align 4,,7
L213:
	movl	%esi, %edx
	negl	%edx
	testl	%edx, %edx
	jmp	L3989
	.p2align 4,,7
L199:
	movl	_scroller_alpha, %ecx
	movl	%ecx, %edi
	sall	$4, %edi
	subl	%ecx, %edi
	movl	%edi, %eax
	jmp	L3991
L3999:
	addl	$31, %ecx
	jmp	L210
	.p2align 4,,7
L205:
	movl	%esi, %edx
	negl	%edx
	jmp	L202
	.p2align 4,,7
L201:
	movl	(%ebx), %eax
	movl	%esi, %edx
	testl	%eax, %eax
	je	L202
	movl	104(%eax), %ecx
	movl	%esi, %edx
	movl	%ecx, %edi
	shrl	$31, %edi
	addl	%edi, %ecx
	sarl	%ecx
	subl	%ecx, %edx
	jmp	L202
	.p2align 4,,7
L203:
	movl	%esi, %edx
	negl	%edx
	testl	%edx, %edx
	jmp	L3988
L3998:
	addl	$31, %ecx
	jmp	L198
	.p2align 4,,7
L193:
	movl	%esi, %edx
	negl	%edx
	jmp	L190
L189:
	movl	(%ebx), %eax
	movl	%esi, %edx
	testl	%eax, %eax
	je	L190
	movl	104(%eax), %edi
	movl	%esi, %edx
	movl	%edi, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edi
	sarl	%edi
	subl	%edi, %edx
	jmp	L190
	.p2align 4,,7
L191:
	movl	%esi, %edx
	negl	%edx
	testl	%edx, %edx
	jmp	L3987
L3997:
	addl	$31, %ecx
	jmp	L188
	.p2align 4,,7
L183:
	movl	%esi, %edx
	negl	%edx
	jmp	L180
	.p2align 4,,7
L179:
	movl	(%ebx), %eax
	movl	%esi, %edx
	testl	%eax, %eax
	je	L180
	movl	104(%eax), %ecx
	movl	%esi, %edx
	movl	%ecx, %edi
	shrl	$31, %edi
	addl	%edi, %ecx
	sarl	%ecx
	subl	%ecx, %edx
	jmp	L180
	.p2align 4,,7
L181:
	movl	%esi, %edx
	negl	%edx
	testl	%edx, %edx
	jmp	L3986
L170:
	movl	__imp__screen, %edx
	movl	(%edx), %eax
	movl	28(%eax), %edx
	movl	20(%edx), %esi
	testl	%esi, %esi
	jne	L4002
L228:
	movl	__imp__freeze_mouse_flag, %edi
	movl	$0, (%edi)
	jmp	L165
L4002:
	movl	%eax, (%esp)
	call	*20(%edx)
	jmp	L228
L3996:
	addl	$7, %eax
	jmp	L175
	.p2align 4,,7
L173:
	cmpl	$1, -80(%ebp)
	jle	L225
	jmp	L170
L3995:
	movl	%eax, (%esp)
	call	*16(%edx)
	jmp	L168
L3994:
	addl	$7, %eax
	jmp	L162
	.p2align 4,,7
L160:
	cmpl	$1, %ebx
	jle	L163
	jmp	L157
L3992:
	movl	_scroller_time, %ecx
	testl	%ecx, %ecx
	jle	L154
	.p2align 4,,15
L153:
	movl	_scroller_pos, %edx
	decl	%edx
	cmpl	$-8, %edx
	movl	%edx, _scroller_pos
	jle	L4003
L85:
	movl	_scroller_time, %ebx
	movl	$-1, %edx
	decl	%ebx
	movl	%ebx, _scroller_time
	movl	_scroller_time, %esi
	testl	%esi, %esi
	jg	L153
	jmp	L154
L4003:
	movl	_scroller_string_pos, %ebx
	xorl	%esi, %esi
	movl	_scroller_string, %ecx
	movl	%esi, _scroller_pos
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_ugetat
	movl	%eax, -76(%ebp)
	testl	%eax, %eax
	je	L86
	movl	$1668641326, (%esp)
	call	_uwidth_max
	movl	__imp__gfx_driver, %edi
	movl	%eax, %edx
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L87
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4004
L89:
	sarl	$3, %eax
	addl	$2, %eax
	imull	%edx, %eax
L88:
	movl	%eax, (%esp)
	xorl	%esi, %esi
	call	_malloc
	movl	$_scroller_msg, (%esp)
	movl	__imp__uwidth, %ebx
	movl	%eax, %edi
	call	*(%ebx)
	movl	%edi, %ebx
	addl	$_scroller_msg, %eax
	movl	%eax, -60(%ebp)
	.p2align 4,,15
L90:
	movl	__imp__gfx_driver, %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L94
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4005
L96:
	sarl	$3, %eax
	incl	%eax
	cmpl	%eax, %esi
	jge	L91
L97:
	movl	__imp__ugetx, %eax
	leal	-60(%ebp), %edx
	incl	%esi
	movl	%edx, (%esp)
	call	*(%eax)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	__imp__usetc, %eax
	call	*(%eax)
	addl	%eax, %ebx
	jmp	L90
L91:
	movl	%ebx, (%esp)
	movl	-76(%ebp), %edx
	movl	__imp__usetc, %ebx
	movl	%edx, 4(%esp)
	call	*(%ebx)
	movl	__imp__gfx_driver, %esi
	movl	$2, %edx
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L99
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4006
L100:
	sarl	$3, %eax
	leal	2(%eax), %edx
L99:
	movl	%edx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$2147483647, 4(%esp)
	movl	$_scroller_msg, (%esp)
	call	_ustrzncpy
	movl	%edi, (%esp)
	call	_free
	incl	_scroller_string_pos
L102:
	movl	_scroller_string, %edi
	cmpl	%edi, _wanted_scroller
	je	L118
	movl	_scroller_alpha, %eax
	cmpl	$32, %eax
	movl	%eax, %edx
	jle	L119
	movl	$32, %edx
L119:
	subl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, _scroller_alpha
	jg	L85
	movl	$_scroller_msg, %esi
	xorl	%ebx, %ebx
	.p2align 4,,15
L121:
	movl	__imp__gfx_driver, %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L125
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4007
L127:
	sarl	$3, %eax
	addl	$2, %eax
	cmpl	%eax, %ebx
	jge	L122
L128:
	movl	%esi, (%esp)
	movl	__imp__usetc, %edi
	incl	%ebx
	movl	$32, 4(%esp)
	call	*(%edi)
	addl	%eax, %esi
	jmp	L121
L122:
	movl	$0, -80(%ebp)
	movl	_wanted_scroller, %ebx
	xorl	%edx, %edx
	movl	%edx, _scroller_string_pos
	movl	%ebx, _scroller_string
L150:
	movl	_scroller_string_pos, %edi
	movl	_scroller_string, %esi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_ugetat
	movl	%eax, -76(%ebp)
	testl	%eax, %eax
	jne	L4008
L132:
	incl	-80(%ebp)
	cmpl	$3, -80(%ebp)
	jle	L150
	movl	$256, %edi
	movl	%edi, _scroller_alpha
	jmp	L85
L4008:
	movl	$1668641326, (%esp)
	call	_uwidth_max
	movl	__imp__gfx_driver, %ecx
	movl	%eax, %edx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L135
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4009
L137:
	sarl	$3, %eax
	addl	$2, %eax
	imull	%edx, %eax
L136:
	movl	%eax, (%esp)
	xorl	%esi, %esi
	call	_malloc
	movl	$_scroller_msg, (%esp)
	movl	__imp__uwidth, %ebx
	movl	%eax, %edi
	call	*(%ebx)
	movl	%edi, %ebx
	addl	$_scroller_msg, %eax
	movl	%eax, -68(%ebp)
	.p2align 4,,15
L138:
	movl	__imp__gfx_driver, %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L142
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4010
L144:
	sarl	$3, %eax
	incl	%eax
	cmpl	%eax, %esi
	jge	L139
L145:
	movl	__imp__ugetx, %eax
	leal	-68(%ebp), %edx
	incl	%esi
	movl	%edx, (%esp)
	call	*(%eax)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	__imp__usetc, %eax
	call	*(%eax)
	addl	%eax, %ebx
	jmp	L138
L139:
	movl	%ebx, (%esp)
	movl	-76(%ebp), %eax
	movl	__imp__usetc, %ebx
	movl	%eax, 4(%esp)
	call	*(%ebx)
	movl	__imp__gfx_driver, %esi
	movl	$2, %edx
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L147
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4011
L148:
	sarl	$3, %eax
	leal	2(%eax), %edx
L147:
	movl	%edx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$2147483647, 4(%esp)
	movl	$_scroller_msg, (%esp)
	call	_ustrzncpy
	movl	%edi, (%esp)
	call	_free
	incl	_scroller_string_pos
	jmp	L132
L4011:
	addl	$7, %eax
	jmp	L148
	.p2align 4,,7
L4010:
	addl	$7, %eax
	jmp	L144
	.p2align 4,,7
L142:
	testl	%esi, %esi
	jle	L145
	jmp	L139
L4009:
	addl	$7, %eax
	jmp	L137
L135:
	leal	(%edx,%edx), %eax
	jmp	L136
L4007:
	addl	$7, %eax
	jmp	L127
	.p2align 4,,7
L125:
	cmpl	$1, %ebx
	jle	L128
	jmp	L122
L118:
	movl	_scroller_alpha, %edx
	movl	$256, %eax
	subl	%edx, %eax
	cmpl	$16, %eax
	jle	L152
	movl	$16, %eax
L152:
	leal	(%eax,%edx), %ecx
	movl	%ecx, _scroller_alpha
	jmp	L85
L4006:
	addl	$7, %eax
	jmp	L100
	.p2align 4,,7
L4005:
	addl	$7, %eax
	jmp	L96
	.p2align 4,,7
L94:
	testl	%esi, %esi
	jle	L97
	jmp	L91
L4004:
	addl	$7, %eax
	jmp	L89
L87:
	leal	(%edx,%edx), %eax
	jmp	L88
L86:
	movl	$1668641326, (%esp)
	call	_uwidth_max
	movl	__imp__gfx_driver, %edi
	movl	%eax, %edx
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L103
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4012
L105:
	sarl	$3, %eax
	addl	$2, %eax
	imull	%edx, %eax
L104:
	movl	%eax, (%esp)
	call	_malloc
	movl	$_scroller_msg, (%esp)
	movl	__imp__uwidth, %esi
	movl	%eax, %edi
	movl	%edi, %ebx
	call	*(%esi)
	xorl	%esi, %esi
	addl	$_scroller_msg, %eax
	movl	%eax, -64(%ebp)
	.p2align 4,,15
L106:
	movl	__imp__gfx_driver, %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L110
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4013
L112:
	sarl	$3, %eax
	incl	%eax
	cmpl	%eax, %esi
	jge	L107
L113:
	movl	__imp__ugetx, %eax
	leal	-64(%ebp), %ecx
	incl	%esi
	movl	%ecx, (%esp)
	call	*(%eax)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	__imp__usetc, %eax
	call	*(%eax)
	addl	%eax, %ebx
	jmp	L106
L107:
	movl	%ebx, (%esp)
	movl	__imp__usetc, %esi
	movl	$32, 4(%esp)
	call	*(%esi)
	movl	__imp__gfx_driver, %ebx
	movl	$2, %edx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L115
	movl	104(%eax), %eax
	testl	%eax, %eax
	js	L4014
L116:
	sarl	$3, %eax
	leal	2(%eax), %edx
L115:
	movl	%edx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$2147483647, 4(%esp)
	movl	$_scroller_msg, (%esp)
	call	_ustrzncpy
	movl	%edi, (%esp)
	call	_free
	jmp	L102
L4014:
	addl	$7, %eax
	jmp	L116
	.p2align 4,,7
L4013:
	addl	$7, %eax
	jmp	L112
	.p2align 4,,7
L110:
	testl	%esi, %esi
	jle	L113
	jmp	L107
L4012:
	addl	$7, %eax
	jmp	L105
L103:
	leal	(%edx,%edx), %eax
	jmp	L104
	.p2align 4,,15
	.def	_activate_dialog;	.scl	3;	.type	32;	.endef
_activate_dialog:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	8(%ebp), %edi
	movl	_dialog_count, %ecx
	movl	(%edi), %eax
	leal	(%ecx,%ecx,2), %edx
	leal	_dialogs(,%edx,8), %esi
	testl	%eax, %eax
	je	L231
	movl	%edi, %eax
	xorl	%ebx, %ebx
	.p2align 4,,15
L235:
	cmpl	$_scroller_proc, (%eax)
	je	L4016
	addl	$56, %eax
	leal	56(%ebx), %ebx
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L235
L231:
	movl	$0, (%esi)
	movl	__imp__retrace_count, %ecx
	movl	%edi, 8(%esi)
	movl	(%ecx), %ebx
	movl	%ebx, 4(%esi)
	movl	$-1, 4(%esp)
	movl	%edi, (%esp)
	call	_init_dialog
	movl	%eax, 12(%esi)
	xorl	%ecx, %ecx
	movl	__imp__gfx_driver, %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L241
	movl	108(%eax), %ecx
L241:
	movl	%ecx, 4(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L243
	movl	104(%eax), %edx
L243:
	movl	%edx, (%esp)
	call	_create_bitmap
	movl	%eax, 16(%esi)
	movl	12(%ebp), %edi
	movl	12(%esi), %ebx
	movl	%edi, 20(%esi)
	movl	12(%ebx), %eax
	movl	__imp__screen, %edx
	testl	%eax, %eax
	movl	(%edx), %edi
	js	L244
	movl	$0, 8(%esp)
	movl	$12, 4(%esp)
	movl	12(%ebx), %eax
	leal	0(,%eax,8), %ecx
	subl	%eax, %ecx
	movl	8(%esi), %eax
	leal	(%eax,%ecx,8), %ebx
	movl	%ebx, (%esp)
	call	_object_message
	movl	12(%esi), %ebx
	movl	8(%esi), %ecx
	movl	12(%ebx), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	andl	$-5, 32(%ecx,%eax,8)
	movl	$-1, 12(%ebx)
L244:
	movl	8(%ebx), %edx
	testl	%edx, %edx
	js	L245
	movl	$0, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebx), %eax
	leal	0(,%eax,8), %ecx
	subl	%eax, %ecx
	movl	8(%esi), %eax
	leal	(%eax,%ecx,8), %ebx
	movl	%ebx, (%esp)
	call	_object_message
	movl	12(%esi), %ebx
	movl	8(%esi), %ecx
	movl	8(%ebx), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	andl	$-9, 32(%ecx,%eax,8)
	movl	$-1, 8(%ebx)
L245:
	andl	$-9, 4(%ebx)
	leal	-16(%ebp), %ebx
	movl	16(%esi), %edx
	movl	%edx, (%esp)
	call	_clear_bitmap
	movl	16(%esi), %eax
	movl	__imp__screen, %ecx
	movl	%eax, (%ecx)
	movl	%ebx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%esi), %edx
	movl	%edx, (%esp)
	call	_dialog_message
	movl	_dialog_count, %eax
	movl	__imp__screen, %esi
	testl	%eax, %eax
	movl	%edi, (%esi)
	jle	L229
	movl	__imp__screen, %ebx
	leal	(%eax,%eax,2), %edi
	leal	_dialogs-24(,%edi,8), %esi
	movl	(%ebx), %edi
	movl	12(%esi), %ebx
	movl	12(%ebx), %ecx
	testl	%ecx, %ecx
	js	L248
	movl	$0, 8(%esp)
	movl	$12, 4(%esp)
	movl	12(%ebx), %ecx
	movl	8(%esi), %eax
	leal	0(,%ecx,8), %ebx
	subl	%ecx, %ebx
	leal	(%eax,%ebx,8), %ecx
	movl	%ecx, (%esp)
	call	_object_message
	movl	12(%esi), %ebx
	movl	8(%esi), %ecx
	movl	12(%ebx), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	andl	$-5, 32(%ecx,%eax,8)
	movl	$-1, 12(%ebx)
L248:
	movl	8(%ebx), %edx
	testl	%edx, %edx
	js	L249
	movl	$0, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebx), %eax
	leal	0(,%eax,8), %ecx
	subl	%eax, %ecx
	movl	8(%esi), %eax
	leal	(%eax,%ecx,8), %ebx
	movl	%ebx, (%esp)
	call	_object_message
	movl	12(%esi), %ebx
	movl	8(%esi), %ecx
	movl	8(%ebx), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	andl	$-9, 32(%ecx,%eax,8)
	movl	$-1, 8(%ebx)
L249:
	andl	$-9, 4(%ebx)
	leal	-20(%ebp), %ebx
	movl	16(%esi), %edx
	movl	%edx, (%esp)
	call	_clear_bitmap
	movl	16(%esi), %eax
	movl	__imp__screen, %ecx
	movl	%eax, (%ecx)
	movl	%ebx, 12(%esp)
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%esi), %ecx
	movl	%ecx, (%esp)
	call	_dialog_message
	movl	_dialog_count, %eax
	movl	__imp__screen, %edx
	leal	(%eax,%eax,2), %esi
	movl	%edi, (%edx)
	sall	$3, %esi
	cmpl	$0, 16(%ebp)
	setne	%bl
	leal	3(%ebx,%ebx), %ecx
	movl	__imp__retrace_count, %ebx
	movl	%ecx, _dialogs-24(%esi)
	movl	(%ebx), %edi
	movl	%edi, _dialogs-20(%esi)
L229:
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L4016:
	movl	$0, (%edi,%ebx)
	movl	%edi, (%esp)
	call	_centre_dialog
	movl	$_scroller_proc, (%edi,%ebx)
	jmp	L231
LC35:
	.ascii "Configuracion EXILIUM\0"
	.p2align 4,,15
	.def	_update;	.scl	3;	.type	32;	.endef
_update:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	subl	$1400, %esp
	movl	__imp__screen, %edx
	movl	%ebx, -12(%ebp)
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	movl	(%edx), %esi
	movl	_dialog_count, %edx
	testl	%edx, %edx
	jg	L4021
L253:
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L4021:
	leal	(%edx,%edx,2), %ecx
	sall	$3, %ecx
	leal	_dialogs-24(%ecx), %edi
	cmpl	$2, _dialogs-24(%ecx)
	je	L4022
	movl	$0, (%esp)
	xorl	%ebx, %ebx
	call	_show_mouse
	movl	_setup_data, %edx
	movl	(%edx), %ecx
	movl	__imp__gfx_driver, %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L270
	movl	108(%eax), %ebx
L270:
	movl	%ebx, 36(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L272
	movl	104(%eax), %edx
L272:
	movl	%edx, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	4(%ecx), %edx
	movl	%edx, 20(%esp)
	movl	(%ecx), %ebx
	movl	%ecx, (%esp)
	movl	_buffer, %edx
	movl	$0, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	%edx, 4(%esp)
	movl	$0, 8(%esp)
	call	_stretch_blit
	movl	$256, 16(%esp)
	leal	-1304(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC35, (%esp)
	call	_uconvert
	movl	$0, 24(%esp)
	movl	__imp__gfx_driver, %ebx
	movl	%eax, %ecx
	movl	$-1, 20(%esp)
	xorl	%edx, %edx
	movl	$0, 16(%esp)
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L274
	movl	104(%eax), %edx
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%ebx, %edx
	sarl	%edx
L274:
	movl	%ecx, 8(%esp)
	movl	__imp__font, %ecx
	movl	%edx, 12(%esp)
	movl	_buffer, %edx
	movl	(%ecx), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	_textout_centre_ex
	movl	_buffer, %eax
	movl	__imp__screen, %ebx
	movl	__imp__empty_string, %ecx
	movl	%eax, (%ebx)
	movl	%ecx, _wanted_scroller
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$15, (%esp)
	call	_scroller_proc
	movl	__imp__screen, %edx
	movl	4(%edi), %eax
	movl	%esi, (%edx)
	movl	__imp__retrace_count, %ecx
	movl	_dialog_count, %edx
	movl	(%ecx), %esi
	subl	%eax, %esi
	cmpl	$1, %edx
	movl	%edx, %eax
	je	L4023
	movl	(%edi), %ebx
L275:
	decl	%eax
	je	L4024
L277:
	testl	%ebx, %ebx
	jne	L279
	leal	(%esi,%esi,2), %esi
	sall	$5, %esi
L276:
	cmpl	$4096, %esi
	je	L283
	movl	$4096, %eax
	xorl	%ecx, %ecx
	subl	%esi, %eax
	testl	%eax, %eax
	jle	L282
L283:
	movl	$4096, %ecx
	subl	%esi, %ecx
	cmpl	$4096, %ecx
	jle	L282
	movl	$4096, %ecx
L282:
	movl	%ecx, %eax
	imull	%ecx, %eax
	testl	%eax, %eax
	js	L4025
L285:
	sarl	$12, %eax
	movl	$4096, %ecx
	subl	%eax, %ecx
	testl	%ecx, %ecx
	movl	%ecx, %eax
	js	L4026
L286:
	movl	%eax, %esi
	sarl	$4, %esi
	cmpl	$5, %ebx
	ja	L335
	jmp	*L336(,%ebx,4)
	.p2align 2
	.align 4
L336:
	.long	L288
	.long	L297
	.long	L335
	.long	L305
	.long	L320
	.long	L305
L288:
	movl	__imp__gfx_driver, %eax
	xorl	%edx, %edx
	movl	%esi, %ebx
	movl	%eax, -1312(%ebp)
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L290
	movl	108(%eax), %edx
L290:
	movl	%edx, -1316(%ebp)
	movl	-1312(%ebp), %eax
	movl	(%eax), %edx
	movl	%edx, -1320(%ebp)
	testl	%edx, %edx
	je	L291
	testl	%ecx, %ecx
	movl	%ecx, %edx
	js	L4027
L292:
	movl	$1024, %eax
	sarl	$2, %edx
	movl	%eax, -1340(%ebp)
	subl	%edx, -1340(%ebp)
	movl	-1320(%ebp), %edx
	movl	-1340(%ebp), %eax
	imull	108(%edx), %eax
	movl	$1374389535, %edx
	movl	%eax, -1340(%ebp)
	imull	%edx
	movl	-1340(%ebp), %eax
	sarl	$6, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	addl	%edx, -1316(%ebp)
L291:
	movl	-1316(%ebp), %eax
	movl	-1312(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L294
	movl	104(%eax), %edx
L294:
	movl	%edx, -1324(%ebp)
	movl	-1312(%ebp), %eax
	movl	(%eax), %edx
	movl	%edx, -1328(%ebp)
	testl	%edx, %edx
	je	L295
	testl	%ecx, %ecx
	movl	%ecx, %edx
	js	L4028
L296:
	sarl	$2, %edx
	movl	$1024, %ecx
	subl	%edx, %ecx
	movl	-1328(%ebp), %edx
	movl	104(%edx), %eax
	movl	$1717986919, %edx
	imull	%eax, %ecx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$7, %edx
	subl	%eax, %edx
	addl	%edx, -1324(%ebp)
L295:
	movl	-1324(%ebp), %edx
L302:
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
L4018:
	movl	16(%edi), %edx
	movl	_buffer, %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_stretch_sprite
	movl	_dialog_count, %edx
L287:
	decl	%edx
	je	L4029
L337:
	call	_vsync
L339:
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L341
	movl	108(%eax), %ecx
L341:
	movl	%ecx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L343
	movl	104(%eax), %edx
L343:
	movl	%edx, 24(%esp)
	movl	__imp__screen, %ecx
	movl	_buffer, %ebx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	cmpl	$255, %esi
	jle	L268
	movl	(%edi), %eax
	cmpl	$5, %eax
	ja	L268
	jmp	*L353(,%eax,4)
	.p2align 2
	.align 4
L353:
	.long	L347
	.long	L347
	.long	L268
	.long	L348
	.long	L349
	.long	L351
L347:
	movl	$2, (%edi)
L4019:
	movl	12(%edi), %esi
	orl	$2, 4(%esi)
	.p2align 4,,15
L268:
	movl	$-1, %eax
	jmp	L253
L348:
	movl	__imp__retrace_count, %esi
	movl	$1, (%edi)
	movl	_dialog_count, %ebx
	movl	(%esi), %ecx
	leal	(%ebx,%ebx,2), %edx
	incl	%ebx
	movl	%ecx, _dialogs+4(,%edx,8)
	movl	%ebx, _dialog_count
	jmp	L268
L349:
	movl	12(%edi), %edx
	movl	%edx, (%esp)
	call	_shutdown_dialog
	movl	16(%edi), %ebx
	movl	%ebx, (%esp)
	call	_destroy_bitmap
	movl	_dialog_count, %eax
	decl	%eax
	testl	%eax, %eax
	movl	%eax, _dialog_count
	jle	L268
	movl	__imp__retrace_count, %esi
	leal	(%eax,%eax,2), %edi
	movl	(%esi), %ecx
	movl	%ecx, _dialogs-20(,%edi,8)
	jmp	L268
L351:
	movl	12(%edi), %esi
	movl	%esi, (%esp)
	call	_shutdown_dialog
	movl	16(%edi), %ecx
	movl	%ecx, (%esp)
	call	_destroy_bitmap
	movl	_dialog_count, %edx
	movl	__imp__retrace_count, %edi
	leal	(%edx,%edx,2), %ecx
	sall	$3, %ecx
	movl	(%edi), %esi
	movl	_dialogs(%ecx), %ebx
	movl	$_dialogs-24, %edi
	movl	%esi, _dialogs+4(%ecx)
	movl	%ebx, _dialogs-24(%ecx)
	movl	%esi, 4(%edi,%ecx)
	movl	_dialogs+8(%ecx), %esi
	movl	%esi, 8(%edi,%ecx)
	movl	_dialogs+12(%ecx), %ebx
	movl	%ebx, 12(%edi,%ecx)
	movl	_dialogs+16(%ecx), %esi
	movl	%esi, 16(%edi,%ecx)
	movl	_dialogs+20(%ecx), %ebx
	movl	%ebx, 20(%edi,%ecx)
	jmp	L268
L4029:
	movl	(%edi), %eax
	cmpl	$1, %eax
	je	L337
	cmpl	$3, %eax
	je	L337
	cmpl	$5, %eax
	je	L337
	movl	$255, 20(%esp)
	testl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$0, 16(%esp)
	js	L4030
L338:
	movl	_setup_data, %ecx
	sarl	$2, %eax
	leal	-1048(%ebp), %ebx
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	32(%ecx), %edx
	movl	__imp__black_palette, %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_fade_interpolate
	movl	%ebx, (%esp)
	call	_set_palette
	jmp	L339
L4030:
	addl	$3, %eax
	jmp	L338
L4028:
	addl	$3, %edx
	jmp	L296
L4027:
	leal	3(%ecx), %edx
	jmp	L292
L297:
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	%esi, %ebx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L299
	movl	108(%eax), %eax
	imull	%esi, %eax
	testl	%eax, %eax
	js	L4031
L300:
	movl	%eax, %ecx
	sarl	$8, %ecx
L299:
	movl	%ecx, 20(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L302
	movl	104(%eax), %eax
	imull	%esi, %eax
	testl	%eax, %eax
	js	L4032
L303:
	movl	%eax, %edx
	sarl	$8, %edx
	jmp	L302
L4032:
	addl	$255, %eax
	jmp	L303
L4031:
	addl	$255, %eax
	jmp	L300
	.p2align 4,,7
L335:
	xorl	%ebx, %ebx
	jmp	L287
L320:
	movl	__imp__gfx_driver, %ecx
	movl	$256, %ebx
	xorl	%edx, %edx
	subl	%esi, %ebx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L322
	movl	108(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4033
L323:
	movl	%eax, %edx
	sarl	$8, %edx
L322:
	movl	%edx, 20(%esp)
	movl	(%ecx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L325
	movl	104(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4034
L326:
	movl	%eax, %edx
	sarl	$8, %edx
L325:
	movl	%edx, 16(%esp)
	movl	(%ecx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L328
	movl	108(%eax), %edx
L328:
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L329
	movl	108(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4035
L330:
	sarl	$8, %eax
	subl	%eax, %edx
L329:
	movl	%edx, 12(%esp)
	movl	(%ecx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L332
	movl	104(%eax), %edx
L332:
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L333
	movl	104(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4036
L334:
	sarl	$8, %eax
L4020:
	subl	%eax, %edx
L333:
	movl	%edx, 8(%esp)
	jmp	L4018
L4036:
	addl	$255, %eax
	jmp	L334
L4035:
	addl	$255, %eax
	jmp	L330
L4034:
	addl	$255, %eax
	jmp	L326
L4033:
	addl	$255, %eax
	jmp	L323
L305:
	movl	__imp__gfx_driver, %ecx
	movl	$256, %ebx
	xorl	%edx, %edx
	subl	%esi, %ebx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L307
	movl	108(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4037
L308:
	movl	%eax, %edx
	sarl	$8, %edx
L307:
	movl	%edx, 20(%esp)
	movl	(%ecx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L310
	movl	104(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4038
L311:
	movl	%eax, %edx
	sarl	$8, %edx
L310:
	movl	%edx, 16(%esp)
	movl	(%ecx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L313
	movl	108(%eax), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	sarl	%edx
L313:
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L314
	movl	108(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4039
L315:
	sarl	$9, %eax
	subl	%eax, %edx
L314:
	movl	%edx, 12(%esp)
	movl	(%ecx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L317
	movl	104(%eax), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	sarl	%edx
L317:
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L333
	movl	104(%eax), %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	L4040
L319:
	sarl	$9, %eax
	jmp	L4020
L4040:
	addl	$511, %eax
	jmp	L319
L4039:
	addl	$511, %eax
	jmp	L315
L4038:
	addl	$255, %eax
	jmp	L311
L4037:
	addl	$255, %eax
	jmp	L308
	.p2align 4,,7
L4026:
	leal	15(%ecx), %eax
	jmp	L286
L4025:
	addl	$4095, %eax
	jmp	L285
L279:
	sall	$7, %esi
	jmp	L276
L4024:
	cmpl	$4, %ebx
	jne	L277
	leal	(%esi,%esi,2), %esi
	sall	$4, %esi
	jmp	L276
L4023:
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	jne	L275
	sall	$6, %esi
	jmp	L276
L4022:
	movl	__imp___mouse_screen, %edx
	cmpl	%esi, (%edx)
	je	L256
	movl	$0, (%esp)
	call	_set_mouse_sprite
	movl	__imp__screen, %esi
	movl	(%esi), %ebx
	movl	%ebx, (%esp)
	call	_show_mouse
L256:
	movl	12(%edi), %ecx
	movl	%ecx, (%esp)
	call	_update_dialog
	testl	%eax, %eax
	jne	L257
	movl	20(%edi), %edx
	movl	$4, %eax
	testl	%edx, %edx
	jne	L4041
L259:
	cmpl	$4, %eax
	je	L4042
	cmpl	$6, %eax
	jne	L268
	jmp	L4019
L4042:
	movl	12(%edi), %ebx
	movl	__imp__screen, %ecx
	movl	12(%ebx), %edx
	movl	(%ecx), %esi
	testl	%edx, %edx
	js	L261
	movl	$0, 8(%esp)
	movl	$12, 4(%esp)
	movl	12(%ebx), %eax
	leal	0(,%eax,8), %ecx
	subl	%eax, %ecx
	movl	8(%edi), %eax
	leal	(%eax,%ecx,8), %ebx
	movl	%ebx, (%esp)
	call	_object_message
	movl	12(%edi), %ebx
	movl	8(%edi), %ecx
	movl	12(%ebx), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	andl	$-5, 32(%ecx,%eax,8)
	movl	$-1, 12(%ebx)
L261:
	movl	8(%ebx), %edx
	testl	%edx, %edx
	js	L262
	movl	$0, 8(%esp)
	movl	$14, 4(%esp)
	movl	8(%ebx), %eax
	leal	0(,%eax,8), %ecx
	subl	%eax, %ecx
	movl	8(%edi), %eax
	leal	(%eax,%ecx,8), %ebx
	movl	%ebx, (%esp)
	call	_object_message
	movl	12(%edi), %ebx
	movl	8(%edi), %ecx
	movl	8(%ebx), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	andl	$-9, 32(%ecx,%eax,8)
	movl	$-1, 8(%ebx)
L262:
	andl	$-9, 4(%ebx)
	movl	16(%edi), %ecx
	movl	%ecx, (%esp)
	call	_clear_bitmap
	movl	16(%edi), %eax
	leal	-1308(%ebp), %edx
	movl	__imp__screen, %ebx
	movl	%eax, (%ebx)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%edi), %ecx
	movl	%ecx, (%esp)
	call	_dialog_message
	movl	__imp__screen, %ebx
	movl	$4, (%edi)
	movl	%esi, (%ebx)
	movl	__imp__retrace_count, %edx
	movl	(%edx), %esi
	movl	%esi, 4(%edi)
	jmp	L268
L4041:
	movl	12(%edi), %esi
	movl	(%esi), %ebx
	movl	%ebx, (%esp)
	call	*%edx
	jmp	L259
L257:
	movl	8(%edi), %esi
	movl	%esi, (%esp)
	call	_find_dialog_focus
	testl	%eax, %eax
	js	L268
	movl	8(%edi), %ebx
	leal	0(,%eax,8), %edi
	subl	%eax, %edi
	movl	52(%ebx,%edi,8), %eax
	testl	%eax, %eax
	je	L268
	movl	%eax, _wanted_scroller
	jmp	L268
LC52:
	.ascii "%d hz\0"
	.p2align 4,,15
	.def	_freq_getter;	.scl	3;	.type	32;	.endef
_freq_getter:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	movl	8(%ebp), %ecx
	movl	12(%ebp), %eax
	testl	%ecx, %ecx
	js	L4046
	movl	_freq.3, %ecx
	testl	%ecx, %ecx
	jne	L636
	movl	$11025, -40(%ebp)
	leal	-40(%ebp), %edi
	xorl	%ebx, %ebx
	movl	$22050, -36(%ebp)
	leal	-104(%ebp), %esi
	movl	$44100, -32(%ebp)
	movl	$48000, -28(%ebp)
	.p2align 4,,15
L641:
	movl	$64, (%esp)
	call	_malloc
	movl	%eax, _freq.3(,%ebx,4)
	movl	$64, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC52, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	(%edi,%ebx,4), %ecx
	movl	_freq.3(,%ebx,4), %edx
	movl	$64, 4(%esp)
	incl	%ebx
	movl	%ecx, 12(%esp)
	movl	%edx, (%esp)
	call	_uszprintf
	cmpl	$4, %ebx
	jl	L641
L636:
	movl	8(%ebp), %ebx
	movl	_freq.3(,%ebx,4), %eax
L622:
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L4046:
	testl	%eax, %eax
	je	L624
	movl	$4, (%eax)
L628:
	xorl	%eax, %eax
	jmp	L622
L624:
	xorl	%ebx, %ebx
L634:
	movl	_freq.3(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L4047
L631:
	incl	%ebx
	cmpl	$4, %ebx
	jl	L634
	jmp	L628
L4047:
	movl	%eax, (%esp)
	call	_free
	xorl	%edx, %edx
	movl	%edx, _freq.3(,%ebx,4)
	jmp	L631
LC263:
	.ascii "- %s\0"
LC264:
	.ascii "  %s\0"
	.p2align 4,,15
	.def	_card_getter;	.scl	3;	.type	32;	.endef
_card_getter:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	%ebx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	testl	%eax, %eax
	js	L4051
	movl	_soundcard, %ecx
	leal	(%eax,%eax,4), %edx
	leal	0(,%edx,4), %ebx
	movl	16(%ecx,%ebx), %edx
	testl	%edx, %edx
	je	L3757
	movl	$64, 16(%esp)
	leal	-72(%ebp), %ecx
	movl	$1668641326, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC263, (%esp)
L4050:
	call	_uconvert
	movl	_soundcard, %edx
	movl	4(%edx,%ebx), %ecx
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ecx, 12(%esp)
	movl	$_buf.4, (%esp)
	call	_uszprintf
	movl	$_buf.4, %eax
L3750:
	movl	-4(%ebp), %ebx
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L3757:
	movl	$64, 16(%esp)
	leal	-72(%ebp), %edx
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC264, (%esp)
	jmp	L4050
L4051:
	movl	_soundcard, %edx
	xorl	%eax, %eax
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	L4049
	.p2align 4,,15
L3755:
	addl	$20, %edx
	incl	%eax
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	jne	L3755
L4049:
	testl	%ecx, %ecx
	je	L3756
	incl	%eax
	movl	%eax, (%ecx)
L3756:
	xorl	%eax, %eax
	jmp	L3750
.lcomm _keyboard_layouts,1024
.lcomm _keyboard_names,1024
.lcomm _language_layouts,1024
.lcomm _language_names,1024
	.p2align 4,,15
	.def	_keyboard_getter;	.scl	3;	.type	32;	.endef
_keyboard_getter:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	testl	%eax, %eax
	js	L4052
	movl	_keyboard_names(,%eax,4), %eax
L3781:
	popl	%ebp
	ret
L4052:
	testl	%edx, %edx
	je	L3783
	movl	_num_keyboard_layouts, %ecx
	movl	%ecx, (%edx)
L3783:
	xorl	%eax, %eax
	jmp	L3781
	.p2align 4,,15
	.def	_language_getter;	.scl	3;	.type	32;	.endef
_language_getter:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	testl	%eax, %eax
	js	L4053
	movl	_language_names(,%eax,4), %eax
L3784:
	popl	%ebp
	ret
L4053:
	testl	%edx, %edx
	je	L3786
	movl	_num_language_layouts, %ecx
	movl	%ecx, (%edx)
L3786:
	xorl	%eax, %eax
	jmp	L3784
	.p2align 4,,15
	.def	_joystick_getter;	.scl	3;	.type	32;	.endef
_joystick_getter:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	__imp__system_driver, %ecx
	movl	8(%ebp), %ebx
	movl	(%ecx), %edx
	movl	148(%edx), %eax
	testl	%eax, %eax
	jne	L4056
	movl	__imp___joystick_driver_list, %eax
L3796:
	movl	4(%eax), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	L4055
	leal	4(%eax), %edx
	.p2align 4,,15
L3800:
	addl	$12, %edx
	incl	%ecx
	movl	(%edx), %edi
	testl	%edi, %edi
	jne	L3800
L4055:
	movl	%eax, -16(%ebp)
	testl	%ebx, %ebx
	movl	%ecx, -20(%ebp)
	js	L4057
	movl	-16(%ebp), %ecx
	leal	(%ebx,%ebx,2), %edi
	movl	4(%ecx,%edi,4), %esi
	movl	12(%esi), %edi
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L4058
L3804:
	movl	%edx, %eax
L3794:
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L4058:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L3804
L4057:
	movl	12(%ebp), %ebx
	xorl	%eax, %eax
	movl	%ecx, (%ebx)
	jmp	L3794
L4056:
	call	*%eax
	jmp	L3796
	.p2align 4,,15
	.def	_mouse_getter;	.scl	3;	.type	32;	.endef
_mouse_getter:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	__imp__system_driver, %ecx
	movl	8(%ebp), %ebx
	movl	(%ecx), %edx
	movl	144(%edx), %eax
	testl	%eax, %eax
	jne	L4061
	movl	__imp___mouse_driver_list, %eax
L3815:
	movl	4(%eax), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	L4060
	leal	4(%eax), %edx
	.p2align 4,,15
L3819:
	addl	$12, %edx
	incl	%ecx
	movl	(%edx), %edi
	testl	%edi, %edi
	jne	L3819
L4060:
	movl	%eax, -16(%ebp)
	testl	%ebx, %ebx
	movl	%ecx, -20(%ebp)
	js	L4062
	movl	-16(%ebp), %ecx
	leal	(%ebx,%ebx,2), %edi
	movl	4(%ecx,%edi,4), %esi
	movl	12(%esi), %edi
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	%edi, %edx
	jne	L4063
L3823:
	movl	%edx, %eax
L3813:
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L4063:
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	%edi, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L3823
L4062:
	movl	12(%ebp), %ebx
	xorl	%eax, %eax
	movl	%ecx, (%ebx)
	jmp	L3813
L4061:
	call	*%eax
	jmp	L3815
	.p2align 4,,15
	.def	_card_proc;	.scl	3;	.type	32;	.endef
_card_proc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ebx, -4(%ebp)
	movl	16(%ebp), %ecx
	movl	12(%ebp), %ebx
	movl	8(%ebp), %edx
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	_d_list_proc
	movl	36(%ebx), %ecx
	leal	(%ecx,%ecx,4), %edx
	movl	_soundcard, %ecx
	movl	12(%ecx,%edx,4), %edx
	movl	%edx, 52(%ebx)
	movl	-4(%ebp), %ebx
	movl	%ebp, %esp
	popl	%ebp
	ret
.lcomm _param_dlg,1792
.lcomm _param_ok,16
LC91:
	.ascii "Unable to autodetect!\0"
LC92:
	.ascii "Digital: %s\0"
LC93:
	.ascii "MIDI: %s\0"
LC36:
	.ascii "Ok\0"
LC94:
	.ascii "- detected hardware -\0"
LC95:
	.ascii "Sound initialization failed!\0"
	.align 32
LC96:
	.ascii "Driver: %s        Description: %s\0"
LC102:
	.ascii "(%s)\0"
LC109:
	.ascii "not found in language.dat\0"
LC110:
	.ascii "Warning: current language\0"
LC105:
	.ascii "language.dat\0"
LC107:
	.ascii "TEXT_CFG\0"
LC108:
	.ascii "language_name\0"
LC106:
	.ascii "Error reading language.dat\0"
LC103:
	.ascii "not found in keyboard.dat\0"
LC104:
	.ascii "Warning: current keyboard\0"
LC97:
	.ascii "keyboard.dat\0"
LC100:
	.ascii "_CFG\0"
LC101:
	.ascii "keyboard_name\0"
LC98:
	.ascii "Error reading keyboard.dat\0"
LC115:
	.ascii "mouse\0"
LC89:
	.ascii " \0"
	.p2align 4,,15
	.def	_main_handler;	.scl	3;	.type	32;	.endef
_main_handler:
	pushl	%ebp
	movl	$4, %edx
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1100, %esp
	movl	8(%ebp), %eax
	cmpl	$7, %eax
	ja	L743
	jmp	*L890(,%eax,4)
	.p2align 2
	.align 4
L890:
	.long	L745
	.long	L772
	.long	L774
	.long	L781
	.long	L788
	.long	L853
	.long	L867
	.long	L881
L745:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	movl	_parameters, %edx
	testl	%edx, %edx
	je	L4065
	xorl	%ebx, %ebx
	.p2align 4,,15
L750:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edi
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	_parameters(%ebx), %ecx
	movl	__imp__empty_string, %esi
	movl	%ecx, 4(%esp)
	movl	%esi, 8(%esp)
	call	_set_config_string
	movb	$0, _parameters+8(%ebx)
	addl	$544, %ebx
	movl	_parameters(%ebx), %edx
	testl	%edx, %edx
	jne	L750
L4065:
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	_reserve_voices
	movl	__imp__cpu_family, %ebx
	movl	(%ebx), %eax
	cmpl	$4, %eax
	jg	L751
	movl	__imp___sound_hq, %edx
	movl	$0, (%edx)
L752:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC91, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	call	_init_sound
	testl	%eax, %eax
	movl	$6, %edx
	je	L4102
	.p2align 4,,15
L743:
	addl	$1100, %esp
	movl	%edx, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L4102:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC92, (%esp)
	call	_uconvert
	movl	__imp__digi_driver, %ebx
	movl	(%ebx), %esi
	movl	4(%esi), %edi
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edi, 12(%esp)
	leal	-280(%ebp), %edi
	movl	%edi, (%esp)
	call	_uszprintf
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC93, (%esp)
	call	_uconvert
	movl	__imp__midi_driver, %ecx
	movl	(%ecx), %ebx
	movl	4(%ebx), %esi
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	%esi, 12(%esp)
	leal	-536(%ebp), %esi
	movl	%esi, (%esp)
	call	_uszprintf
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	%eax, %ebx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC94, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	%ebx, 12(%esp)
	xorl	%ebx, %ebx
	movl	%edi, 4(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 8(%esp)
	call	_alert
	movl	%ebx, -1060(%ebp)
	movl	_parameters, %edi
	testl	%edi, %edi
	je	L4067
L771:
	movl	-1060(%ebp), %esi
	movl	-1060(%ebp), %edi
	sall	$4, %esi
	leal	(%edi,%esi), %ebx
	sall	$5, %ebx
	movl	_parameters+524(%ebx), %ecx
	testl	%ecx, %ecx
	je	L760
	movl	_parameters+4(%ebx), %eax
	cmpl	$7, %eax
	ja	L770
	jmp	*L769(,%eax,4)
	.p2align 2
	.align 4
L769:
	.long	L770
	.long	L765
	.long	L767
	.long	L766
	.long	L765
	.long	L770
	.long	L765
	.long	L765
L765:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	-1060(%ebp), %esi
	movl	-1060(%ebp), %ecx
	sall	$4, %esi
	addl	%ecx, %esi
	sall	$5, %esi
	movl	_parameters+524(%esi), %edi
	movl	_parameters(%esi), %ebx
	movl	(%edi), %edx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_set_config_int
L770:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	-1060(%ebp), %edi
	movl	-1060(%ebp), %edx
	movl	__imp__empty_string, %ebx
	sall	$4, %edi
	addl	%edx, %edi
	movl	%ebx, 8(%esp)
	sall	$5, %edi
	movl	_parameters(%edi), %ecx
	addl	$_parameters+8, %edi
	movl	%ecx, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%edi, (%esp)
	call	_ustrzcpy
	incl	-1060(%ebp)
	movl	-1060(%ebp), %ebx
	movl	-1060(%ebp), %esi
	sall	$4, %ebx
	addl	%esi, %ebx
	sall	$5, %ebx
	movl	_parameters(%ebx), %edx
	testl	%edx, %edx
	jne	L771
L4067:
	call	_remove_sound
	movl	$6, %edx
	jmp	L743
L767:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	-1060(%ebp), %edi
	movl	-1060(%ebp), %ecx
	sall	$4, %edi
	addl	%ecx, %edi
	sall	$5, %edi
	movl	_parameters+524(%edi), %ebx
	movl	_parameters(%edi), %esi
	movl	(%ebx), %edx
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_set_config_hex
	jmp	L770
L766:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	-1060(%ebp), %edi
	movl	-1060(%ebp), %ecx
	sall	$4, %edi
	addl	%ecx, %edi
	sall	$5, %edi
	movl	_parameters+524(%edi), %ebx
	movl	_parameters(%edi), %esi
	movl	(%ebx), %edx
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_set_config_id
	jmp	L770
L760:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	_parameters+520(%ebx), %ecx
	movl	_parameters(%ebx), %edi
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	call	_set_config_string
	jmp	L770
L751:
	cmpl	$5, %eax
	jg	L753
	movl	__imp___sound_hq, %ecx
	movl	$1, (%ecx)
	jmp	L752
L753:
	movl	__imp___sound_hq, %esi
	movl	$2, (%esi)
	jmp	L752
L772:
	movl	$0, 8(%esp)
	leal	-792(%ebp), %ebx
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC95, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	call	_init_sound
	testl	%eax, %eax
	movl	$6, %edx
	jne	L743
	movl	%ebx, 8(%esp)
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC96, (%esp)
	call	_uconvert
	movl	__imp__digi_driver, %esi
	movl	(%esi), %edi
	movl	8(%edi), %ecx
	movl	%ecx, 16(%esp)
	movl	(%esi), %edi
	movl	4(%edi), %esi
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	%esi, 12(%esp)
	movl	$_digi_desc, (%esp)
	call	_uszprintf
	movl	%ebx, 8(%esp)
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC96, (%esp)
	call	_uconvert
	movl	__imp__midi_driver, %esi
	movl	(%esi), %edi
	movl	8(%edi), %ecx
	movl	%ecx, 16(%esp)
	movl	(%esi), %ebx
	movl	4(%ebx), %edi
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edi, 12(%esp)
	movl	$_midi_desc, (%esp)
	call	_uszprintf
	movl	$0, 8(%esp)
	movl	$_test_handler, 4(%esp)
	movl	$_test_dlg, (%esp)
	.p2align 4,,15
L4100:
	call	_activate_dialog
L744:
	movl	$2, %edx
	jmp	L743
L774:
	movl	_digi_cards, %eax
	xorl	%edx, %edx
	movl	$_digi_cards, %esi
	movl	%esi, _soundcard
	movl	%edx, -1060(%ebp)
	testl	%eax, %eax
	je	L783
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	movl	%ecx, -1076(%ebp)
L780:
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC0, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	%eax, %ebx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	$-1, 8(%esp)
	movl	%ebx, 4(%esp)
	call	_get_config_id
	cmpl	%eax, (%esi,%edi)
	je	L783
	addl	$20, -1076(%ebp)
	addl	$20, %edi
	movl	_soundcard, %esi
	incl	-1060(%ebp)
	movl	-1076(%ebp), %ecx
	movl	(%esi,%ecx), %eax
	testl	%eax, %eax
	jne	L780
L783:
	movl	$0, 8(%esp)
	movl	-1060(%ebp), %esi
	movl	$_card_handler, 4(%esp)
	movl	$_card_dlg, (%esp)
	movl	%esi, _card_dlg+148
	jmp	L4100
L781:
	movl	_midi_cards, %edi
	xorl	%ebx, %ebx
	movl	$_midi_cards, %esi
	movl	%esi, _soundcard
	movl	%ebx, -1060(%ebp)
	testl	%edi, %edi
	je	L783
	xorl	%edx, %edx
	xorl	%edi, %edi
	movl	%edx, -1072(%ebp)
L787:
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC3, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	movl	%eax, %ebx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	$-1, 8(%esp)
	movl	%ebx, 4(%esp)
	call	_get_config_id
	cmpl	%eax, (%esi,%edi)
	je	L783
	addl	$20, -1072(%ebp)
	addl	$20, %edi
	movl	_soundcard, %esi
	incl	-1060(%ebp)
	movl	-1072(%ebp), %ecx
	movl	(%esi,%ecx), %ebx
	testl	%ebx, %ebx
	jne	L787
	jmp	L783
L788:
	movl	_num_keyboard_layouts, %edx
	testl	%edx, %edx
	jle	L4103
	.p2align 4,,15
L802:
	xorl	%ebx, %ebx
	leal	-1(%edx), %edi
	movl	$-1, %esi
	movl	%esi, -1064(%ebp)
	cmpl	%edi, %ebx
	jge	L4091
	movl	$_keyboard_names, %esi
	movl	$_keyboard_layouts, %edi
	.p2align 4,,15
L810:
	movl	4(%esi,%ebx,4), %ecx
	movl	_keyboard_names(,%ebx,4), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_ustricmp
	testl	%eax, %eax
	jle	L807
	movl	4(%edi,%ebx,4), %eax
	movl	_keyboard_layouts(,%ebx,4), %edx
	movl	_keyboard_names(,%ebx,4), %ecx
	movl	%eax, _keyboard_layouts(,%ebx,4)
	movl	4(%esi,%ebx,4), %eax
	movl	%edx, 4(%edi,%ebx,4)
	xorl	%edx, %edx
	movl	%eax, _keyboard_names(,%ebx,4)
	movl	%edx, -1064(%ebp)
	movl	%ecx, 4(%esi,%ebx,4)
L807:
	movl	_num_keyboard_layouts, %edx
	incl	%ebx
	leal	-1(%edx), %ecx
	cmpl	%ecx, %ebx
	jl	L810
	movl	-1064(%ebp), %eax
	testl	%eax, %eax
	je	L802
L4091:
	xorl	%ebx, %ebx
	movl	%ebx, -1060(%ebp)
	cmpl	%edx, -1060(%ebp)
	jl	L818
L814:
	cmpl	%edx, -1060(%ebp)
	je	L4104
L819:
	movl	-1060(%ebp), %edi
	movl	%edi, _locale_dlg+148
L801:
	movl	_num_language_layouts, %edx
	testl	%edx, %edx
	jle	L4105
	.p2align 4,,15
L833:
	xorl	%ebx, %ebx
	leal	-1(%edx), %edi
	movl	$-1, %esi
	movl	%esi, -1068(%ebp)
	cmpl	%edi, %ebx
	jge	L4092
	movl	$_language_names, %esi
	movl	$_language_layouts, %edi
	.p2align 4,,15
L841:
	movl	4(%esi,%ebx,4), %ecx
	movl	_language_names(,%ebx,4), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_ustricmp
	testl	%eax, %eax
	jle	L838
	movl	4(%edi,%ebx,4), %eax
	movl	_language_layouts(,%ebx,4), %edx
	movl	_language_names(,%ebx,4), %ecx
	movl	%eax, _language_layouts(,%ebx,4)
	movl	4(%esi,%ebx,4), %eax
	movl	%edx, 4(%edi,%ebx,4)
	xorl	%edx, %edx
	movl	%eax, _language_names(,%ebx,4)
	movl	%edx, -1068(%ebp)
	movl	%ecx, 4(%esi,%ebx,4)
L838:
	movl	_num_language_layouts, %edx
	incl	%ebx
	leal	-1(%edx), %ecx
	cmpl	%ecx, %ebx
	jl	L841
	movl	-1068(%ebp), %ebx
	testl	%ebx, %ebx
	je	L833
L4092:
	xorl	%edi, %edi
	movl	%edi, -1060(%ebp)
	cmpl	%edx, -1060(%ebp)
	jl	L849
L845:
	cmpl	%edx, -1060(%ebp)
	je	L4106
L850:
	movl	-1060(%ebp), %edi
	movl	%edi, _locale_dlg+204
L832:
	movl	_num_keyboard_layouts, %esi
	testl	%esi, %esi
	jle	L4107
L852:
	movl	$0, 8(%esp)
	movl	$_locale_handler, 4(%esp)
	movl	$_locale_dlg, (%esp)
	jmp	L4100
L4107:
	testl	%edx, %edx
	jg	L852
	jmp	L744
L4106:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edi
	leal	-280(%ebp), %ebx
	movl	%edi, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC102, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	$_language_type, 12(%esp)
	movl	$256, 4(%esp)
	call	_uszprintf
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	movl	$4, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC109, (%esp)
	call	_uconvert
	movl	%edi, 8(%esp)
	movl	%eax, %ebx
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC110, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	leal	-280(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%esi, 12(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%ebx, 8(%esp)
	call	_alert
	movl	$_malloc, 4(%esp)
	movl	_num_language_layouts, %esi
	movl	$_language_type, (%esp)
	call	__ustrdup
	movl	%eax, _language_layouts(,%esi,4)
	movl	_num_language_layouts, %edi
	movl	$_malloc, 4(%esp)
	movl	$_language_type, (%esp)
	call	__ustrdup
	movl	%eax, _language_names(,%edi,4)
	movl	_num_language_layouts, %edx
	incl	%edx
	movl	%edx, _num_language_layouts
	jmp	L850
	.p2align 4,,7
L849:
	movl	$_language_type, (%esp)
	movl	-1060(%ebp), %eax
	movl	_language_layouts(,%eax,4), %esi
	movl	%esi, 4(%esp)
	call	_stricmp
	testl	%eax, %eax
	je	L4090
	incl	-1060(%ebp)
	movl	_num_language_layouts, %edx
	cmpl	%edx, -1060(%ebp)
	jl	L849
	jmp	L845
L4090:
	movl	_num_language_layouts, %edx
	jmp	L845
L4105:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	xorl	%edi, %edi
	movl	$1668641326, 12(%esp)
	leal	-280(%ebp), %esi
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC105, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	$256, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	_find_allegro_resource
	testl	%eax, %eax
	je	L4108
L822:
	testl	%edi, %edi
	je	L4109
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	xorl	%esi, %esi
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC99, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	leal	-280(%ebp), %ecx
	movl	$256, 4(%esp)
	movl	%ecx, (%esp)
	call	_ustrzcat
	cmpl	$-1, 4(%edi)
	movl	%esi, -1060(%ebp)
	je	L4076
L831:
	movl	$1312902469, 4(%esp)
	movl	-1060(%ebp), %ebx
	sall	$4, %ebx
	leal	(%ebx,%edi), %edx
	movl	%edx, (%esp)
	call	_get_datafile_property
	testl	%eax, %eax
	movl	%eax, %esi
	je	L827
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC107, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_ustrstr
	testl	%eax, %eax
	je	L827
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	_ugetat
	testl	%eax, %eax
	je	L4110
L827:
	incl	-1060(%ebp)
	movl	-1060(%ebp), %ebx
	sall	$4, %ebx
	cmpl	$-1, 4(%edi,%ebx)
	jne	L831
L4076:
	movl	%edi, (%esp)
	call	_unload_datafile
L4098:
	movl	_num_language_layouts, %edx
	testl	%edx, %edx
	jg	L833
	jmp	L832
L4110:
	movl	%esi, (%esp)
	movl	$_malloc, 4(%esp)
	call	__ustrdup
	movl	%eax, (%esp)
	movl	%eax, %ebx
	movl	$0, 8(%esp)
	movl	$-8, 4(%esp)
	call	_usetat
	movl	$256, 4(%esp)
	movl	_num_language_layouts, %ecx
	leal	-280(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, _language_layouts(,%ecx,4)
	leal	-536(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_ustrzcpy
	movl	%esi, 8(%esp)
	leal	-536(%ebp), %esi
	movl	%esi, (%esp)
	movl	$256, 4(%esp)
	call	_ustrzcat
	call	_push_config_state
	leal	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	_set_config_file
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC108, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	$0, (%esp)
	call	_get_config_string
	movl	%eax, (%esp)
	movl	$_malloc, 4(%esp)
	call	__ustrdup
	movl	_num_language_layouts, %esi
	movl	%eax, _language_names(,%esi,4)
	call	_pop_config_state
	incl	_num_language_layouts
	jmp	L827
L4109:
	movl	$0, 8(%esp)
	leal	-1048(%ebp), %ebx
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	%eax, %edi
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC106, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	_alert
	jmp	L4098
L4108:
	leal	-280(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_load_datafile
	movl	%eax, %edi
	jmp	L822
L4104:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edi
	leal	-280(%ebp), %ebx
	movl	%edi, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC102, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	$_keyboard_type, 12(%esp)
	movl	$256, 4(%esp)
	call	_uszprintf
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	movl	$4, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC103, (%esp)
	call	_uconvert
	movl	%edi, 8(%esp)
	movl	%eax, %ebx
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC104, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	leal	-280(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%esi, 12(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%ebx, 8(%esp)
	call	_alert
	movl	$_malloc, 4(%esp)
	movl	_num_keyboard_layouts, %esi
	movl	$_keyboard_type, (%esp)
	call	__ustrdup
	movl	%eax, _keyboard_layouts(,%esi,4)
	movl	_num_keyboard_layouts, %edi
	movl	$_malloc, 4(%esp)
	movl	$_keyboard_type, (%esp)
	call	__ustrdup
	incl	_num_keyboard_layouts
	movl	%eax, _keyboard_names(,%edi,4)
	jmp	L819
	.p2align 4,,7
L818:
	movl	$_keyboard_type, (%esp)
	movl	-1060(%ebp), %esi
	movl	_keyboard_layouts(,%esi,4), %edi
	movl	%edi, 4(%esp)
	call	_ustricmp
	testl	%eax, %eax
	je	L4089
	incl	-1060(%ebp)
	movl	_num_keyboard_layouts, %edx
	cmpl	%edx, -1060(%ebp)
	jl	L818
	jmp	L814
L4089:
	movl	_num_keyboard_layouts, %edx
	jmp	L814
L4103:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	leal	-280(%ebp), %edi
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC97, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	xorl	%edi, %edi
	movl	$256, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	call	_find_allegro_resource
	testl	%eax, %eax
	je	L4111
L791:
	testl	%edi, %edi
	je	L4112
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	xorl	%ebx, %ebx
	movl	$1668641326, 12(%esp)
	leal	-280(%ebp), %esi
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC99, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	%esi, (%esp)
	call	_ustrzcat
	cmpl	$-1, 4(%edi)
	movl	%ebx, -1060(%ebp)
	je	L4071
L800:
	movl	$1312902469, 4(%esp)
	movl	-1060(%ebp), %ecx
	sall	$4, %ecx
	leal	(%ecx,%edi), %edx
	movl	%edx, (%esp)
	call	_get_datafile_property
	testl	%eax, %eax
	movl	%eax, %esi
	je	L796
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ebx
	movl	$1668641326, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC100, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_ustrstr
	testl	%eax, %eax
	je	L796
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	_ugetat
	testl	%eax, %eax
	je	L4113
L796:
	incl	-1060(%ebp)
	movl	-1060(%ebp), %ebx
	sall	$4, %ebx
	cmpl	$-1, 4(%edi,%ebx)
	jne	L800
L4071:
	movl	%edi, (%esp)
	call	_unload_datafile
L4097:
	movl	_num_keyboard_layouts, %edx
	testl	%edx, %edx
	jg	L802
	jmp	L801
L4113:
	movl	%esi, (%esp)
	movl	$_malloc, 4(%esp)
	call	__ustrdup
	movl	%eax, (%esp)
	movl	%eax, %ebx
	movl	$0, 8(%esp)
	movl	$-4, 4(%esp)
	call	_usetat
	movl	$256, 4(%esp)
	movl	_num_keyboard_layouts, %ecx
	leal	-280(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, _keyboard_layouts(,%ecx,4)
	leal	-536(%ebp), %ecx
	movl	%ecx, (%esp)
	call	_ustrzcpy
	movl	%esi, 8(%esp)
	leal	-536(%ebp), %edx
	leal	-792(%ebp), %esi
	movl	%edx, (%esp)
	movl	$256, 4(%esp)
	call	_ustrzcat
	call	_push_config_state
	leal	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	_set_config_file
	movl	%esi, 8(%esp)
	movl	$256, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC101, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	$0, (%esp)
	call	_get_config_string
	movl	%eax, (%esp)
	movl	$_malloc, 4(%esp)
	call	__ustrdup
	movl	_num_keyboard_layouts, %esi
	movl	%eax, _keyboard_names(,%esi,4)
	call	_pop_config_state
	incl	_num_keyboard_layouts
	jmp	L796
L4112:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	%eax, %esi
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC98, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	_alert
	jmp	L4097
L4111:
	leal	-280(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_load_datafile
	movl	%eax, %edi
	jmp	L791
	.p2align 4,,7
L853:
	movl	__imp__system_driver, %edx
	xorl	%eax, %eax
	movl	%eax, _joystick_dlg+148
	movl	(%edx), %ecx
	movl	148(%ecx), %eax
	testl	%eax, %eax
	jne	L4114
	movl	__imp___joystick_driver_list, %eax
L855:
	movl	4(%eax), %edi
	xorl	%ecx, %ecx
	testl	%edi, %edi
	je	L4081
	leal	4(%eax), %edx
	.p2align 4,,15
L859:
	addl	$12, %edx
	incl	%ecx
	movl	(%edx), %esi
	testl	%esi, %esi
	jne	L859
L4081:
	movl	%ecx, -1056(%ebp)
	xorl	%edx, %edx
	movl	4(%eax), %ecx
	movl	%edx, -1060(%ebp)
	movl	%eax, %edx
	testl	%ecx, %ecx
	movl	%eax, -1052(%ebp)
	je	L862
	movl	__imp___joy_type, %ebx
	movl	(%ebx), %eax
L866:
	cmpl	%eax, (%edx)
	je	L4095
	incl	-1060(%ebp)
	addl	$12, %edx
	movl	4(%edx), %edi
	testl	%edi, %edi
	jne	L866
L862:
	movl	$0, 8(%esp)
	movl	$_joystick_handler, 4(%esp)
	movl	$_joystick_dlg, (%esp)
	jmp	L4100
L4095:
	movl	-1060(%ebp), %ebx
	movl	%ebx, _joystick_dlg+148
	jmp	L862
L4114:
	call	*%eax
	jmp	L855
L867:
	movl	__imp__system_driver, %ecx
	xorl	%eax, %eax
	movl	%eax, _mouse_dlg+148
	movl	(%ecx), %esi
	movl	144(%esi), %eax
	testl	%eax, %eax
	jne	L4115
	movl	__imp___mouse_driver_list, %eax
L869:
	movl	4(%eax), %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	je	L4084
	leal	4(%eax), %edx
	.p2align 4,,15
L873:
	addl	$12, %edx
	incl	%ecx
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	jne	L873
L4084:
	movl	%ecx, -1056(%ebp)
	xorl	%edx, %edx
	movl	4(%eax), %ecx
	movl	%edx, -1060(%ebp)
	movl	%eax, %edx
	testl	%ecx, %ecx
	movl	%eax, -1052(%ebp)
	je	L876
	movl	__imp___mouse_type, %edi
	movl	(%edi), %eax
L880:
	cmpl	%eax, (%edx)
	je	L4096
	incl	-1060(%ebp)
	addl	$12, %edx
	movl	4(%edx), %esi
	testl	%esi, %esi
	jne	L880
L876:
	movl	$0, 8(%esp)
	movl	$_mouse_handler, 4(%esp)
	movl	$_mouse_dlg, (%esp)
	jmp	L4100
L4096:
	movl	-1060(%ebp), %edi
	movl	$_mouse_dlg, %ebx
	movl	%edi, 148(%ebx)
	jmp	L876
L4115:
	call	*%eax
	jmp	L869
L881:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edi
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC111, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	call	_set_config_file
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC112, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %esi
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC113, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	movl	$_keyboard_type, 8(%esp)
	call	_set_config_string
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC114, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %esi
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC113, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	movl	$_language_type, 8(%esp)
	call	_set_config_string
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC115, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %esi
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC115, (%esp)
	call	_uconvert
	movl	__imp___mouse_type, %ebx
	movl	(%ebx), %ecx
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_set_config_id
	movl	_parameters, %ebx
	testl	%ebx, %ebx
	je	L4087
	xorl	%esi, %esi
	.p2align 4,,15
L888:
	cmpb	$0, _parameters+8(%esi)
	je	L886
	movl	$256, 16(%esp)
	leal	_parameters+8(%esi), %ebx
L4101:
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	_parameters(%esi), %ecx
	addl	$544, %esi
	movl	%ecx, 4(%esp)
	call	_set_config_string
	movl	_parameters(%esi), %edx
	testl	%edx, %edx
	jne	L888
L4087:
	movl	$0, (%esp)
	call	_save_joystick_data
	movl	$4, %edx
	jmp	L743
L886:
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC89, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %ebx
	jmp	L4101
	.comm	_archivoMidi, 16	 # 4
	.comm	_numMidiActual, 16	 # 2
	.comm	_i, 16	 # 2
	.comm	_paletaGris, 1024	 # 1024
	.comm	_elArticulo, 86976	 # 86968
	.comm	_datafile, 16	 # 4
	.comm	_revista, 16	 # 4
	.comm	_configuracion, 16	 # 4
	.comm	_datosIntro, 16	 # 4
	.comm	_losArticulos, 1456	 # 1444
	.comm	_grises, 16	 # 2
	.comm	_color_rojo, 16	 # 4
	.comm	_color_verde, 16	 # 4
	.comm	_color_azul, 16	 # 4
	.comm	_color_negro, 16	 # 4
	.comm	_color_blanco, 16	 # 4
	.comm	_color_marron, 16	 # 4
	.comm	_color_amarillo, 16	 # 4
	.comm	_color_violeta, 16	 # 4
	.comm	_color_verdeFosforito, 16	 # 4
	.comm	_color_azulClaro, 16	 # 4
	.comm	_color_naranja, 16	 # 4
	.comm	_color_gris, 16	 # 4
	.comm	_color_grisClaro, 16	 # 4
	.comm	_cadenaClave, 256	 # 255
	.comm	_valorRaton, 16	 # 4
	.comm	_ret, 16	 # 4
	.p2align 4,,15
	.def	_init_sound;	.scl	3;	.type	32;	.endef
_init_sound:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	xorl	%esi, %esi
	pushl	%ebx
	subl	$576, %esp
	movl	$0, (%esp)
	call	_show_mouse
	movl	_digi_cards, %eax
	testl	%eax, %eax
	je	L4117
	xorl	%ebx, %ebx
	.p2align 4,,15
L361:
	movl	_digi_cards(%ebx), %edx
	movl	%edx, (%esp)
	call	_detect_digi_driver
	testl	%eax, %eax
	sete	%cl
	incl	%esi
	movzbl	%cl, %edx
	decl	%edx
	movl	%edx, _digi_cards+16(%ebx)
	addl	$20, %ebx
	movl	_digi_cards(%ebx), %eax
	testl	%eax, %eax
	jne	L361
L4117:
	movl	_midi_cards, %ebx
	leal	(%esi,%esi,4), %ecx
	movl	$-1, %esi
	movl	%esi, _digi_cards+16(,%ecx,4)
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	L4119
	xorl	%ebx, %ebx
	.p2align 4,,15
L368:
	movl	_midi_cards(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_detect_midi_driver
	testl	%eax, %eax
	sete	%dl
	incl	%esi
	movzbl	%dl, %ecx
	decl	%ecx
	movl	%ecx, _midi_cards+16(%ebx)
	addl	$20, %ebx
	movl	_midi_cards(%ebx), %edx
	testl	%edx, %edx
	jne	L368
L4119:
	movl	$0, 8(%esp)
	movl	$-1, %eax
	leal	(%esi,%esi,4), %ebx
	movl	%eax, _midi_cards+16(,%ebx,4)
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	_install_sound
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	L4121
L354:
	addl	$576, %esp
	movl	%edx, %eax
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
L4121:
	movl	__imp__allegro_error, %esi
	movl	%esi, (%esp)
	call	_ustrlen
	cmpl	$32, %eax
	jg	L371
	movl	$256, 4(%esp)
	movl	__imp__allegro_error, %edx
	leal	-264(%ebp), %esi
	movl	%esi, (%esp)
	leal	-520(%ebp), %ebx
	movl	%edx, 8(%esp)
	call	_ustrzcpy
	movl	$0, 4(%esp)
	movl	__imp__usetc, %eax
	movl	%ebx, (%esp)
	call	*(%eax)
L372:
	movl	$32, 16(%esp)
	leal	-552(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	%esi, 4(%esp)
	movl	8(%ebp), %esi
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	call	_alert
	movl	$-1, %edx
	jmp	L354
L371:
	movl	__imp__allegro_error, %ecx
	movl	%ecx, (%esp)
	call	_ustrlen
	leal	(%eax,%eax,8), %eax
	testl	%eax, %eax
	js	L4122
L373:
	movl	%eax, %ebx
	sarl	$4, %ebx
	cmpl	$10, %ebx
	jg	L379
L375:
	movl	%ebx, 12(%esp)
	movl	__imp__allegro_error, %edx
	leal	-264(%ebp), %esi
	movl	$256, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 8(%esp)
	call	_ustrzncpy
	cmpl	$10, %ebx
	movl	$10, %eax
	je	L381
	leal	1(%ebx), %eax
L381:
	movl	%eax, 4(%esp)
	movl	__imp__allegro_error, %ecx
	movl	%ecx, (%esp)
	call	_uoffset
	movl	$256, 4(%esp)
	movl	__imp__allegro_error, %ebx
	addl	%ebx, %eax
	movl	%eax, 8(%esp)
	leal	-520(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_ustrzcpy
	jmp	L372
L379:
	movl	%ebx, 4(%esp)
	movl	__imp__allegro_error, %esi
	movl	%esi, (%esp)
	call	_ugetat
	cmpl	$32, %eax
	je	L375
	decl	%ebx
	cmpl	$10, %ebx
	jg	L379
	jmp	L375
L4122:
	addl	$15, %eax
	jmp	L373
	.p2align 4,,15
	.def	_test_handler;	.scl	3;	.type	32;	.endef
_test_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	cmpl	$1, %eax
	je	L3851
	cmpl	$1, %eax
	jle	L4125
	cmpl	$2, %eax
	je	L3852
	cmpl	$3, %eax
	je	L3853
L3854:
	call	_remove_sound
	movl	$4, %eax
L3848:
	movl	%ebp, %esp
	popl	%ebp
	ret
L3853:
	movl	$0, 16(%esp)
	movl	$1000, 12(%esp)
	movl	$255, 8(%esp)
L4123:
	movl	$255, 4(%esp)
	movl	_setup_data, %ecx
	movl	64(%ecx), %edx
	movl	%edx, (%esp)
	call	_play_sample
L4124:
	movl	$6, %eax
	jmp	L3848
L3852:
	movl	$0, 16(%esp)
	movl	$1000, 12(%esp)
	movl	$128, 8(%esp)
	jmp	L4123
	.p2align 4,,7
L4125:
	testl	%eax, %eax
	jne	L3854
	movl	$0, 4(%esp)
	movl	_setup_data, %ecx
	movl	48(%ecx), %edx
	movl	%edx, (%esp)
	call	_play_midi
	jmp	L4124
L3851:
	movl	$0, 16(%esp)
	movl	$1000, 12(%esp)
	movl	$0, 8(%esp)
	jmp	L4123
	.p2align 4,,15
	.def	_card_handler;	.scl	3;	.type	32;	.endef
_card_handler:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	je	L3860
	cmpl	$2, %edx
	movl	$4, %eax
	jne	L3857
L3860:
	movl	$64, 16(%esp)
	movl	_soundcard, %ecx
	movl	_card_dlg+148, %edx
	movl	$1668641326, 12(%esp)
	cmpl	$_digi_cards, %ecx
	setne	%bl
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	movzbl	%bl, %esi
	leal	(%edx,%edx,4), %ebx
	leal	(%ecx,%ebx,4), %edi
	movl	%edi, _soundcard
	leal	-88(%ebp), %edi
	movl	%edi, 8(%esp)
	call	_uconvert
	movl	_soundcard, %ecx
	movl	(%ecx), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, %ebx
	sall	$4, %ebx
	addl	%esi, %ebx
	sall	$5, %ebx
	movl	_parameters(%ebx), %ecx
	movl	%ecx, 4(%esp)
	call	_set_config_id
	movl	%edi, 8(%esp)
	movl	$64, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	_parameters(%ebx), %esi
	addl	$_parameters+8, %ebx
	movl	__imp__empty_string, %edi
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%ebx, (%esp)
	call	_ustrzcpy
	movl	_soundcard, %ecx
	movl	8(%ecx), %edx
	testl	%edx, %edx
	jne	L4126
	movl	$4, %eax
L3857:
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L4126:
	call	_setup_param_dialog
	movl	$2, %eax
	jmp	L3857
LC265:
	.ascii "language = %s\12\0"
	.p2align 4,,15
	.def	_locale_handler;	.scl	3;	.type	32;	.endef
_locale_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$552, %esp
	movl	%ebx, -4(%ebp)
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L3869
	testl	%eax, %eax
	js	L3865
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L3865
L3869:
	movl	_locale_dlg+148, %eax
	cmpl	_num_keyboard_layouts, %eax
	jl	L4127
L3870:
	movl	_locale_dlg+204, %eax
	cmpl	_num_language_layouts, %eax
	jl	L4128
L3865:
	movl	-4(%ebp), %ebx
	movl	$4, %eax
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L4128:
	movl	$256, 4(%esp)
	movl	_language_layouts(,%eax,4), %ecx
	leal	-264(%ebp), %ebx
	movl	$_language_type, (%esp)
	movl	%ecx, 8(%esp)
	call	_ustrzcpy
	call	_push_config_state
	movl	$256, 16(%esp)
	leal	-520(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC265, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	$_language_type, 12(%esp)
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	_uszprintf
	movl	%ebx, (%esp)
	call	_ustrsize
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_set_config_data
	movl	$0, (%esp)
	call	_reload_config_texts
	call	_pop_config_state
	jmp	L3865
	.p2align 4,,7
L4127:
	movl	$256, 4(%esp)
	movl	_keyboard_layouts(,%eax,4), %edx
	movl	$_keyboard_type, (%esp)
	movl	%edx, 8(%esp)
	call	_ustrzcpy
	jmp	L3870
	.p2align 4,,15
	.def	_joystick_handler;	.scl	3;	.type	32;	.endef
_joystick_handler:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L3877
	cmpl	$2, %eax
	jne	L3874
L3877:
	movl	__imp__system_driver, %ecx
	movl	(%ecx), %edx
	movl	148(%edx), %eax
	testl	%eax, %eax
	jne	L4131
	movl	__imp___joystick_driver_list, %eax
L3879:
	movl	4(%eax), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	L4130
	leal	4(%eax), %edx
	.p2align 4,,15
L3883:
	addl	$12, %edx
	incl	%ecx
	cmpl	$0, (%edx)
	jne	L3883
L4130:
	movl	%eax, -4(%ebp)
	movl	_joystick_dlg+148, %edx
	movl	%ecx, -8(%ebp)
	leal	(%edx,%edx,2), %eax
	movl	-4(%ebp), %edx
	movl	(%edx,%eax,4), %ecx
	movl	%ecx, (%esp)
	call	_joystick_proc
L3874:
	leave
	movl	$4, %eax
	ret
L4131:
	call	*%eax
	jmp	L3879
	.p2align 4,,15
	.def	_mouse_handler;	.scl	3;	.type	32;	.endef
_mouse_handler:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L3890
	cmpl	$2, %eax
	jne	L3887
L3890:
	movl	__imp__system_driver, %ecx
	movl	(%ecx), %edx
	movl	144(%edx), %eax
	testl	%eax, %eax
	jne	L4134
	movl	__imp___mouse_driver_list, %eax
L3892:
	movl	4(%eax), %ebx
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	L4133
	leal	4(%eax), %edx
	.p2align 4,,15
L3896:
	addl	$12, %edx
	incl	%ecx
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	jne	L3896
L4133:
	movl	%eax, -8(%ebp)
	movl	_mouse_dlg+148, %ebx
	movl	%ecx, -12(%ebp)
	movl	-8(%ebp), %ecx
	leal	(%ebx,%ebx,2), %edx
	movl	(%ecx,%edx,4), %ebx
	call	_remove_mouse
	movl	__imp___mouse_type, %edx
	movl	%ebx, (%edx)
	call	_install_mouse
L3887:
	addl	$20, %esp
	movl	$4, %eax
	popl	%ebx
	popl	%ebp
	ret
L4134:
	call	*%eax
	jmp	L3892
LC50:
	.ascii "and press a button\0"
LC51:
	.ascii "Error calibrating joystick\0"
LC49:
	.ascii "Error:\0"
	.p2align 4,,15
	.def	_joystick_proc;	.scl	3;	.type	32;	.endef
_joystick_proc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$348, %esp
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	call	_scare_mouse
	call	_remove_joystick
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	_install_joystick
	testl	%eax, %eax
	jne	L4144
	movl	__imp__num_joysticks, %edx
	xorl	%edi, %edi
	cmpl	(%edx), %edi
	jge	L4136
	movl	__imp__joy, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -316(%ebp)
L582:
	movl	-316(%ebp), %ecx
	testb	$16, (%eax,%ecx)
	je	L4138
	movl	%ecx, %esi
L581:
	movl	$256, 16(%esp)
	leal	-280(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC50, (%esp)
	call	_uconvert
	movl	%edi, (%esp)
	movl	%eax, %ebx
	call	_calibrate_joystick_name
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_popup
	movl	$10, (%esp)
	call	_rest
	.p2align 4,,15
L565:
	call	_poll_joystick
	movl	__imp__joy, %edx
	movl	%esi, %eax
	addl	%edx, %eax
	movl	312(%eax), %ebx
	testl	%ebx, %ebx
	jne	L566
	movl	320(%eax), %ecx
	testl	%ecx, %ecx
	jne	L566
	call	_keypressed
	testl	%eax, %eax
	je	L565
L566:
	movl	%edi, (%esp)
	call	_calibrate_joystick
	testl	%eax, %eax
	jne	L4145
	movl	$10, (%esp)
	call	_rest
	movl	-316(%ebp), %ebx
	.p2align 4,,15
L4140:
	call	_poll_joystick
	movl	__imp__joy, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	movl	312(%eax), %ecx
	testl	%ecx, %ecx
	jne	L4140
	movl	320(%eax), %ecx
	testl	%ecx, %ecx
	jne	L4140
	call	_clear_keybuf
	movl	__imp__joy, %eax
	testb	$16, (%eax,%ebx)
	jne	L581
	movl	__imp__num_joysticks, %edx
L4138:
	addl	$440, -316(%ebp)
	incl	%edi
	cmpl	(%edx), %edi
	jl	L582
L4136:
	movl	_popup_bitmap, %eax
	testl	%eax, %eax
	je	L4146
L584:
	call	_poll_mouse
	movl	__imp__mouse_b, %edi
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	jne	L584
	call	_clear_keybuf
	movl	__imp__mouse_b, %edx
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L611
L589:
	movl	_popup_bitmap, %ebx
	testl	%ebx, %ebx
	je	L618
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L614
	movl	108(%eax), %ecx
L614:
	movl	%ecx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L616
	movl	104(%eax), %edx
L616:
	movl	%edx, 24(%esp)
	movl	__imp__screen, %ecx
	xorl	%edi, %edi
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%ecx), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_blit
	movl	_popup_bitmap, %esi
	movl	%esi, (%esp)
	call	_destroy_bitmap
	movl	%edi, _popup_bitmap
	movl	_popup_bitmap2, %ebx
	movl	%ebx, (%esp)
	call	_destroy_bitmap
	xorl	%eax, %eax
	movl	%eax, _popup_bitmap2
L618:
	call	_poll_mouse
	movl	__imp__mouse_b, %edi
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	jne	L618
	call	_clear_keybuf
L4143:
	call	_unscare_mouse
	addl	$348, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L611:
	call	_poll_joystick
	call	_poll_mouse
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L593
	movl	108(%eax), %ecx
L593:
	movl	%ecx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L595
	movl	104(%eax), %edx
L595:
	movl	%edx, 24(%esp)
	movl	_popup_bitmap, %esi
	movl	_popup_bitmap2, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 4(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	_blit
	movl	%edi, 4(%esp)
	movl	_popup_bitmap2, %ecx
	movl	%ecx, (%esp)
	call	_plot_joystick_state
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L597
	movl	108(%eax), %ecx
L597:
	movl	%ecx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L599
	movl	104(%eax), %edx
L599:
	movl	%edx, 24(%esp)
	movl	_popup_bitmap2, %ecx
	movl	__imp__screen, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edx), %esi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	call	_blit
	call	_keypressed
	testl	%eax, %eax
	jne	L4147
L588:
	testl	%ebx, %ebx
	jne	L589
	movl	__imp__mouse_b, %ecx
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L611
	jmp	L589
L4147:
	call	_readkey
	movl	%eax, %ebx
	sarl	$8, %eax
	cmpl	$84, %eax
	jg	L608
	cmpl	$83, %eax
	jge	L603
	cmpl	$82, %eax
L4141:
	je	L605
	andl	$255, %ebx
L601:
	movl	__imp__num_joysticks, %ecx
	movl	(%ecx), %eax
	cmpl	%eax, %edi
	jl	L609
	leal	-1(%eax), %edi
L609:
	movl	%edi, %esi
	shrl	$31, %esi
	decl	%esi
	andl	%esi, %edi
	jmp	L588
L605:
	decl	%edi
L4142:
	xorl	%ebx, %ebx
	jmp	L601
L603:
	incl	%edi
	jmp	L4142
L608:
	cmpl	$85, %eax
	jmp	L4141
L4146:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_popup
	jmp	L584
L4145:
	leal	-312(%ebp), %esi
	call	_remove_joystick
	movl	$32, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %edi
	leal	-280(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC51, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	_alert
	movl	_popup_bitmap, %ebx
	testl	%ebx, %ebx
	je	L4143
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L573
	movl	108(%eax), %ecx
L573:
	movl	%ecx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L575
	movl	104(%eax), %edx
L575:
	movl	%edx, 24(%esp)
	movl	__imp__screen, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edx), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_blit
	movl	_popup_bitmap, %edi
	movl	%edi, (%esp)
	call	_destroy_bitmap
	movl	_popup_bitmap2, %ebx
	xorl	%ecx, %ecx
	movl	%ecx, _popup_bitmap
	movl	%ebx, (%esp)
	call	_destroy_bitmap
	xorl	%edx, %edx
	movl	%edx, _popup_bitmap2
	jmp	L4143
L4144:
	movl	$32, 16(%esp)
	leal	-312(%ebp), %ebx
	movl	$1668641326, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC36, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-280(%ebp), %edx
	movl	%eax, %esi
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC49, (%esp)
	call	_uconvert
	movl	%eax, (%esp)
	movl	__imp__allegro_error, %ecx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	call	_alert
	jmp	L4143
LC90:
	.ascii "Use these parameters\0"
LC88:
	.ascii "FFFFFFFF\0"
	.p2align 4,,15
	.def	_setup_param_dialog;	.scl	3;	.type	32;	.endef
_setup_param_dialog:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	$_param_dlg, %edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	_soundcard, %edx
	movl	$0, -104(%ebp)
	movl	$0, -108(%ebp)
	movl	8(%edx), %ecx
	movl	$0, -112(%ebp)
	movl	(%ecx), %edx
	movl	%ecx, -100(%ebp)
	testl	%edx, %edx
	jne	L733
L4149:
	movl	$_d_button_proc, (%edi)
	movl	%edi, %ecx
	movl	$613566757, %eax
	movl	$30, 4(%edi)
	subl	$_param_dlg, %ecx
	shrl	$3, %ecx
	mull	%ecx
	movl	$142, 8(%edi)
	movl	$125, 12(%edi)
	movl	$25, 16(%edi)
	movl	%edx, _param_ok
	movl	$-1, 20(%edi)
	movl	$16, 24(%edi)
	movl	$13, 28(%edi)
	movl	$1, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC75, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC75, %edx
	jne	L4159
L735:
	movl	%edx, 44(%edi)
	movl	$0, 48(%edi)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC90, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC90, %edx
	jne	L4160
L738:
	movl	%edx, 52(%edi)
	addl	$56, %edi
	movl	$_d_button_proc, (%edi)
	movl	$166, 4(%edi)
	movl	$142, 8(%edi)
	movl	$125, 12(%edi)
	movl	$25, 16(%edi)
	movl	$-1, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$1, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC77, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC77, %edx
	jne	L4161
L741:
	movl	%edx, 44(%edi)
	movl	$0, 48(%edi)
	movl	$_backup_str, 52(%edi)
	addl	$56, %edi
	movl	$_scroller_proc, (%edi)
	movl	$0, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$0, 20(%edi)
	movl	$0, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	$_d_yield_proc, (%edi)
	movl	$0, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$0, 20(%edi)
	movl	$0, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	$0, (%edi)
	movl	$0, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$0, 20(%edi)
	movl	$0, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	movl	$-1, 8(%esp)
	movl	$_param_handler, 4(%esp)
	movl	$_param_dlg, (%esp)
	call	_activate_dialog
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L4161:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC77, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L741
L4160:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC90, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L738
L4159:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC75, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L735
	.p2align 4,,7
L733:
	movl	$0, 4(%esp)
	movl	-100(%ebp), %eax
	movl	(%eax), %ebx
	movl	%ebx, (%esp)
	call	_ugetat
	movl	%eax, (%esp)
	call	_uisdigit
	testl	%eax, %eax
	jne	L4162
L696:
	movl	$0, -96(%ebp)
	movl	-104(%ebp), %eax
	movl	$1431655766, %ebx
	movl	-104(%ebp), %esi
	imull	%ebx
	sarl	$31, %esi
	movl	-104(%ebp), %ebx
	incl	-104(%ebp)
	subl	%esi, %edx
	leal	(%edx,%edx,2), %ecx
	subl	%ecx, %ebx
	leal	(%ebx,%ebx,4), %ebx
	leal	(%ebx,%ebx,4), %esi
	movl	-108(%ebp), %ebx
	leal	16(%ebx,%esi,4), %ecx
	leal	(%edx,%edx,8), %esi
	movl	%ecx, -116(%ebp)
	movl	-112(%ebp), %ebx
	leal	(%edx,%esi,2), %ecx
	movl	_parameters, %edx
	leal	30(%ebx,%ecx,2), %esi
	movl	%esi, -120(%ebp)
	testl	%edx, %edx
	je	L699
	movl	$_parameters, %ebx
	xorl	%esi, %esi
	.p2align 4,,15
L705:
	movl	-100(%ebp), %eax
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_ustricmp
	testl	%eax, %eax
	je	L4153
	addl	$544, %ebx
	addl	$544, %esi
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L705
L701:
	movl	-96(%ebp), %esi
	testl	%esi, %esi
	je	L699
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	$8, %eax
	ja	L699
	jmp	*L732(,%eax,4)
	.p2align 2
	.align 4
L732:
	.long	L699
	.long	L708
	.long	L709
	.long	L699
	.long	L711
	.long	L717
	.long	L720
	.long	L729
	.long	L730
L708:
	movl	$_d_box_proc, (%edi)
	movl	-116(%ebp), %ecx
	movl	-120(%ebp), %ebx
	movl	$89, 12(%edi)
	movl	-116(%ebp), %esi
	movl	%ecx, 4(%edi)
	addl	$4, %ecx
	addl	$54, %esi
	movl	%ebx, 8(%edi)
	addl	$3, %ebx
	movl	$22, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	%ecx, 4(%edi)
	movl	-96(%ebp), %ecx
	movl	$_d_text_proc, (%edi)
	movl	%ebx, 8(%edi)
	movl	528(%ecx), %edx
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	%edx, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	$_d_edit_proc, (%edi)
	movl	%esi, 4(%edi)
	movl	%ebx, 8(%edi)
	movl	$32, 12(%edi)
	movl	$16, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$3, 36(%edi)
L4154:
	movl	$0, 40(%edi)
	movl	%ecx, %ebx
	addl	$8, %ebx
L4158:
	movl	%ebx, 44(%edi)
	movl	%ecx, 48(%edi)
	movl	540(%ecx), %eax
L4155:
	movl	%eax, 52(%edi)
	addl	$56, %edi
	.p2align 4,,15
L699:
	addl	$4, -100(%ebp)
	movl	-100(%ebp), %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	jne	L733
	jmp	L4149
L709:
	movl	$64, 16(%esp)
	leal	-88(%ebp), %esi
	movl	$1668641326, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC88, (%esp)
	call	_uconvert
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %ebx
	addl	$8, %ebx
	movl	%ebx, (%esp)
	call	_ustricmp
	testl	%eax, %eax
	je	L4163
L710:
	movl	$_d_box_proc, (%edi)
	movl	-116(%ebp), %ecx
	movl	-120(%ebp), %esi
	movl	$89, 12(%edi)
	movl	%ecx, 4(%edi)
	addl	$4, %ecx
	movl	%esi, 8(%edi)
	addl	$3, %esi
	movl	$22, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	%ecx, 4(%edi)
	movl	-96(%ebp), %ecx
	movl	$_d_text_proc, (%edi)
	movl	%esi, 8(%edi)
	movl	528(%ecx), %edx
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	%edx, 44(%edi)
	movl	-116(%ebp), %edx
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	addl	$54, %edx
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	$_d_edit_proc, (%edi)
	movl	%edx, 4(%edi)
	movl	%esi, 8(%edi)
	movl	$32, 12(%edi)
	movl	$16, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$3, 36(%edi)
	movl	$0, 40(%edi)
	jmp	L4158
L4163:
	movl	$64, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC1, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%ebx, (%esp)
	call	_ustrzcpy
	jmp	L710
L711:
	movl	$0, 8(%esp)
	movl	-96(%ebp), %edx
	movl	$0, 4(%esp)
	addl	$8, %edx
	movl	%edx, (%esp)
	call	_ustrtol
	movl	$_d_box_proc, (%edi)
	movl	-116(%ebp), %ecx
	xorl	%edx, %edx
	movl	$89, 12(%edi)
	movl	-120(%ebp), %ebx
	testl	%eax, %eax
	setne	%dl
	movl	$22, 16(%edi)
	movl	-96(%ebp), %eax
	movl	%ecx, %esi
	movl	%ecx, 4(%edi)
	addl	$4, %esi
	movl	%ebx, 8(%edi)
	movl	528(%eax), %ecx
	addl	%edx, %edx
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	%esi, 4(%edi)
	movl	-120(%ebp), %esi
	movl	%edx, -92(%ebp)
	movl	%ecx, 44(%edi)
	addl	$3, %esi
	movl	$_d_text_proc, (%edi)
	movl	%esi, 8(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	movl	-116(%ebp), %ebx
	addl	$56, %edi
	movl	%edx, 32(%edi)
	movl	$_d_check_proc, (%edi)
	addl	$54, %ebx
	movl	%ebx, 4(%edi)
	movl	%esi, 8(%edi)
	movl	$32, 12(%edi)
	movl	$16, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC89, (%esp)
	call	_need_uconvert
	testl	%eax, %eax
	movl	$LC89, %edx
	jne	L4164
L715:
	movl	%edx, 44(%edi)
	movl	-96(%ebp), %esi
	movl	%esi, %edx
	movl	%esi, 48(%edi)
L4157:
	movl	540(%edx), %eax
	jmp	L4155
L4164:
	movl	%edx, (%esp)
	movl	$1668641326, 8(%esp)
	movl	$1095975736, 4(%esp)
	call	_uconvert_size
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	_malloc
	movl	%eax, 8(%esp)
	movl	%eax, %esi
	movl	%ebx, 16(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC89, (%esp)
	call	_do_uconvert
	movl	%esi, %edx
	jmp	L715
L717:
	movl	-96(%ebp), %edx
	movl	__imp__ugetc, %esi
	addl	$8, %edx
	movl	%edx, (%esp)
	call	*(%esi)
	movl	$_d_box_proc, (%edi)
	xorl	%ecx, %ecx
	movl	-120(%ebp), %esi
	movl	$89, 12(%edi)
	movl	$22, 16(%edi)
	testl	%eax, %eax
	movl	-116(%ebp), %eax
	setne	%cl
	movl	%esi, 8(%edi)
	movl	%eax, %ebx
	addl	$4, %ebx
	movl	%eax, 4(%edi)
	leal	1(%ecx,%ecx), %edx
	movl	%esi, %ecx
	movl	$255, 20(%edi)
	movl	-96(%ebp), %esi
	addl	$3, %ecx
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	%ebx, 4(%edi)
	movl	528(%esi), %ebx
	movl	%ecx, 8(%edi)
	movl	$_d_text_proc, (%edi)
	movl	%ebx, 44(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	%edx, -92(%ebp)
	movl	$_filename_proc, (%edi)
	movl	-116(%ebp), %ebx
	movl	%ecx, 8(%edi)
	movl	540(%esi), %eax
	movl	$32, 12(%edi)
	movl	__imp__empty_string, %ecx
	addl	$62, %ebx
	movl	%ebx, 4(%edi)
	movl	$16, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	%edx, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	%ecx, 44(%edi)
	movl	%esi, 48(%edi)
	jmp	L4155
L720:
	movl	$0, 8(%esp)
	movl	-96(%ebp), %ecx
	leal	-92(%ebp), %ebx
	movl	$0, 4(%esp)
	addl	$8, %ecx
	movl	%ecx, (%esp)
	call	_ustrtol
	movl	%ebx, 4(%esp)
	movl	%eax, %esi
	movl	$2, %ebx
	movl	$-1, (%esp)
	call	_freq_getter
	testl	%esi, %esi
	jle	L728
	xorl	%ebx, %ebx
	cmpl	-92(%ebp), %ebx
	jl	L727
L728:
	movl	$_d_xlist_proc, (%edi)
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %esi
	movl	$89, 12(%edi)
	movl	%edx, 4(%edi)
	movl	-96(%ebp), %edx
	subl	$8, %esi
	movl	%esi, 8(%edi)
	movl	$68, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	%ebx, 36(%edi)
	movl	$0, 40(%edi)
	movl	$_freq_getter, 44(%edi)
	movl	%edx, 48(%edi)
	jmp	L4157
L727:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_freq_getter
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	_ustrtol
	cmpl	%eax, %esi
	jle	L728
	incl	%ebx
	cmpl	-92(%ebp), %ebx
	jl	L727
	jmp	L728
L729:
	movl	$_d_box_proc, (%edi)
	movl	-116(%ebp), %eax
	movl	-120(%ebp), %edx
	movl	$89, 12(%edi)
	movl	-96(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, 8(%edi)
	addl	$4, %esi
	movl	-116(%ebp), %ebx
	movl	%eax, 4(%edi)
	movl	$22, 16(%edi)
	addl	$40, %ebx
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	%esi, 4(%edi)
	movl	%edx, %esi
	movl	528(%ecx), %edx
	movl	$_d_text_proc, (%edi)
	addl	$3, %esi
	movl	%esi, 8(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	%edx, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	$_d_edit_proc, (%edi)
	movl	%ebx, 4(%edi)
	movl	%esi, 8(%edi)
	movl	$46, 12(%edi)
	movl	$16, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$6, 36(%edi)
	jmp	L4154
L730:
	movl	$_d_box_proc, (%edi)
	movl	-116(%ebp), %ebx
	movl	-120(%ebp), %esi
	movl	$89, 12(%edi)
	movl	%ebx, %ecx
	addl	$4, %ecx
	movl	%esi, 8(%edi)
	movl	-120(%ebp), %esi
	movl	%ebx, 4(%edi)
	movl	$22, 16(%edi)
	addl	$3, %esi
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	%ecx, 4(%edi)
	movl	-96(%ebp), %ecx
	movl	$_d_text_proc, (%edi)
	movl	%esi, 8(%edi)
	movl	528(%ecx), %edx
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	%edx, 44(%edi)
	movl	%ebx, %edx
	addl	$40, %edx
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$0, 36(%edi)
	movl	$0, 40(%edi)
	movl	$0, 48(%edi)
	movl	$0, 52(%edi)
	addl	$56, %edi
	movl	$_d_edit_proc, (%edi)
	movl	%edx, 4(%edi)
	movl	%esi, 8(%edi)
	movl	$46, 12(%edi)
	movl	$16, 16(%edi)
	movl	$255, 20(%edi)
	movl	$16, 24(%edi)
	movl	$0, 28(%edi)
	movl	$0, 32(%edi)
	movl	$20, 36(%edi)
	jmp	L4154
L4153:
	addl	$_parameters, %esi
	movl	%esi, -96(%ebp)
	jmp	L701
L4162:
	movl	$1, 4(%esp)
	movl	-100(%ebp), %edx
	movl	(%edx), %esi
	movl	%esi, (%esp)
	call	_ugetat
	movl	%eax, (%esp)
	call	_uisdigit
	testl	%eax, %eax
	je	L696
	movl	$0, 4(%esp)
	movl	-100(%ebp), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%esp)
	call	_ugetat
	subl	$48, %eax
	movl	%eax, -108(%ebp)
	je	L697
	movl	$100, %ebx
	movl	%ebx, %eax
	cltd
	idivl	-108(%ebp)
	movl	%eax, -108(%ebp)
L697:
	movl	$1, 4(%esp)
	movl	-100(%ebp), %ecx
	movl	(%ecx), %esi
	movl	%esi, (%esp)
	call	_ugetat
	subl	$48, %eax
	movl	%eax, -112(%ebp)
	je	L699
	movl	$38, %ebx
	movl	%ebx, %eax
	cltd
	idivl	-112(%ebp)
	movl	%eax, -112(%ebp)
	jmp	L699
	.p2align 4,,15
	.def	_popup;	.scl	3;	.type	32;	.endef
_popup:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	_popup_bitmap, %ecx
	testl	%ecx, %ecx
	jne	L383
	movl	__imp__gfx_driver, %ebx
	xorl	%ecx, %ecx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L387
	movl	104(%eax), %edi
	movl	$1717986919, %esi
	sall	$9, %edi
	movl	%edi, %eax
	imull	%esi
	movl	%edx, %ecx
	movl	%edi, %edx
	sarl	$7, %ecx
	sarl	$31, %edx
	subl	%edx, %ecx
L387:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L388
	movl	108(%eax), %esi
	movl	$1374389535, %edi
	sall	$9, %esi
	movl	%esi, %eax
	imull	%edi
	movl	%esi, %edi
	sarl	$31, %edi
	sarl	$6, %edx
	subl	%edi, %edx
	cmpl	%edx, %ecx
	jg	L389
L384:
	movl	$0, -16(%ebp)
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L385
	movl	108(%eax), %ecx
	movl	$1374389535, %edi
	sall	$9, %ecx
	movl	%ecx, %eax
	imull	%edi
	sarl	$6, %edx
L4173:
	movl	%ecx, %esi
	sarl	$31, %esi
	subl	%esi, %edx
	movl	%edx, -16(%ebp)
L385:
	movl	(%ebx), %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	je	L395
	movl	104(%eax), %esi
	movl	$1717986919, %ecx
	movl	%esi, %eax
	imull	%ecx
	movl	%edx, %edi
	movl	%esi, %edx
	sarl	$3, %edi
	sarl	$31, %edx
	subl	%edx, %edi
L395:
	movl	__imp__screen, %eax
	movl	(%eax), %edx
	movl	28(%edx), %ecx
	movl	16(%ecx), %esi
	testl	%esi, %esi
	jne	L4178
L398:
	movl	-16(%ebp), %esi
	testl	%esi, %esi
	js	L4167
	.p2align 4,,15
L411:
	movl	(%eax), %ecx
	leal	16(%esi), %edx
	movl	28(%ecx), %ebx
	movl	%edx, 16(%esp)
	movl	$0, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	*52(%ebx)
	movl	%esi, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	L4171
	movl	__imp__screen, %ecx
	movl	(%ecx), %eax
	movl	28(%eax), %edx
	movl	20(%edx), %ebx
	testl	%ebx, %ebx
	jne	L4179
L407:
	call	_vsync
	movl	__imp__screen, %eax
	movl	(%eax), %edx
	movl	28(%edx), %ecx
	movl	16(%ecx), %ebx
	testl	%ebx, %ebx
	jne	L4180
L401:
	subl	$2, %esi
	jns	L411
L4167:
	xorl	%esi, %esi
	cmpl	-16(%ebp), %esi
	jl	L424
L4169:
	movl	(%eax), %eax
	movl	28(%eax), %edx
	movl	20(%edx), %edi
	testl	%edi, %edi
	jne	L4181
L427:
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L433
	movl	108(%eax), %ecx
L433:
	movl	%ecx, 4(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L435
	movl	104(%eax), %edx
L435:
	movl	%edx, (%esp)
	call	_create_bitmap
	movl	%eax, _popup_bitmap
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L441
	movl	108(%eax), %ecx
L441:
	movl	%ecx, 4(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L443
	movl	104(%eax), %edx
L443:
	movl	%edx, (%esp)
	call	_create_bitmap
	movl	%eax, _popup_bitmap2
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L445
	movl	108(%eax), %ecx
L445:
	movl	%ecx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L447
	movl	104(%eax), %edx
L447:
	movl	%edx, 24(%esp)
	movl	__imp__screen, %ebx
	movl	_popup_bitmap, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_blit
	movl	_popup_bitmap, %ecx
L383:
	movl	__imp__gfx_driver, %edx
	xorl	%ebx, %ebx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L449
	movl	108(%eax), %ebx
L449:
	movl	%ebx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L451
	movl	104(%eax), %edx
L451:
	movl	%edx, 24(%esp)
	movl	_popup_bitmap2, %edi
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	call	_blit
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L4182
	movl	8(%ebp), %eax
	movl	__imp__font, %ebx
	movl	%eax, 4(%esp)
	movl	(%ebx), %ecx
	movl	%ecx, (%esp)
	call	_text_length
	movl	%eax, %esi
L455:
	movl	12(%ebp), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	je	L457
	movl	12(%ebp), %ebx
	movl	__imp__font, %ecx
	movl	%ebx, 4(%esp)
	movl	(%ecx), %edx
	movl	%edx, (%esp)
	call	_text_length
L457:
	cmpl	%esi, %eax
	movl	%eax, %ebx
	jge	L458
	movl	%esi, %ebx
L458:
	movl	__imp__gfx_driver, %ecx
	movl	_popup_bitmap2, %edi
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L459
	movl	104(%eax), %eax
	subl	%ebx, %eax
L4174:
	movl	$-31, -24(%ebp)
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	subl	$15, %eax
	movl	%eax, -20(%ebp)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L462
	movl	108(%eax), %esi
	movl	%esi, %edx
	shrl	$31, %edx
	addl	%edx, %esi
	sarl	%esi
	subl	$31, %esi
	movl	%esi, -24(%ebp)
L462:
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L463
	movl	104(%eax), %eax
	addl	%ebx, %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
L4175:
	sarl	%eax
	movl	$31, %edx
	leal	15(%eax), %esi
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L466
	movl	108(%eax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%edx, %ecx
	sarl	%ecx
	leal	31(%ecx), %edx
L466:
	movl	28(%edi), %ecx
	movl	%edi, (%esp)
	movl	-20(%ebp), %eax
	movl	%esi, 12(%esp)
	movl	-24(%ebp), %esi
	movl	%edx, 16(%esp)
	movl	%eax, 4(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 8(%esp)
	call	*56(%ecx)
	movl	$255, 20(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$32, %eax
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L469
	movl	108(%edx), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%edi, %eax
	sarl	%eax
	addl	$32, %eax
L469:
	movl	%eax, 16(%esp)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L470
	movl	104(%eax), %eax
	addl	%ebx, %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
L4176:
	sarl	%eax
	addl	$16, %eax
	movl	%eax, 12(%esp)
	movl	(%ecx), %edx
	movl	$-32, %eax
	testl	%edx, %edx
	je	L473
	movl	108(%edx), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%edi, %eax
	sarl	%eax
	subl	$32, %eax
L473:
	movl	%eax, 8(%esp)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L474
	movl	104(%eax), %eax
	subl	%ebx, %eax
L4177:
	movl	%eax, %esi
	movl	_popup_bitmap2, %ecx
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	subl	$16, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_rect
	movl	8(%ebp), %ebx
	testl	%ebx, %ebx
	je	L476
	movl	$-1, 24(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$-20, %eax
	movl	$-1, 20(%esp)
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L478
	movl	108(%edx), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%edi, %eax
	sarl	%eax
	subl	$20, %eax
L478:
	movl	%eax, 16(%esp)
	xorl	%edx, %edx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L480
	movl	104(%eax), %edx
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%ebx, %edx
	sarl	%edx
L480:
	movl	%edx, 12(%esp)
	movl	8(%ebp), %edi
	movl	__imp__font, %esi
	movl	_popup_bitmap2, %edx
	movl	%edi, 8(%esp)
	movl	(%esi), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_textout_centre_ex
L476:
	movl	12(%ebp), %ebx
	testl	%ebx, %ebx
	je	L452
	movl	$-1, 24(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$4, %eax
	movl	$-1, 20(%esp)
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L483
	movl	108(%edx), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	addl	$4, %eax
L483:
	movl	%eax, 16(%esp)
	xorl	%edx, %edx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L485
	movl	104(%eax), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
L485:
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	__imp__font, %ebx
	movl	_popup_bitmap2, %edx
	movl	%eax, 8(%esp)
	movl	(%ebx), %edi
	movl	%edx, (%esp)
	movl	%edi, 4(%esp)
	call	_textout_centre_ex
L452:
	movl	__imp__gfx_driver, %edx
	xorl	%ecx, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L487
	movl	108(%eax), %ecx
L487:
	movl	%ecx, 28(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L489
	movl	104(%eax), %edx
L489:
	movl	%edx, 24(%esp)
	movl	_popup_bitmap2, %esi
	movl	__imp__screen, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	(%edx), %ecx
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_blit
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L474:
	movl	%ebx, %eax
	negl	%eax
	jmp	L4177
	.p2align 4,,7
L470:
	movl	%ebx, %edx
	shrl	$31, %edx
	leal	(%edx,%ebx), %eax
	jmp	L4176
	.p2align 4,,7
L463:
	movl	%ebx, %edx
	shrl	$31, %edx
	leal	(%edx,%ebx), %eax
	jmp	L4175
	.p2align 4,,7
L459:
	movl	%ebx, %eax
	negl	%eax
	jmp	L4174
	.p2align 4,,7
L4182:
	movl	12(%ebp), %esi
	testl	%esi, %esi
	je	L452
	xorl	%esi, %esi
	jmp	L455
L4181:
	movl	%eax, (%esp)
	call	*20(%edx)
	jmp	L427
	.p2align 4,,7
L424:
	movl	(%eax), %edx
	leal	1(%esi), %ecx
	leal	17(%esi), %eax
	movl	28(%edx), %ebx
	movl	%eax, 16(%esp)
	movl	%edx, (%esp)
	movl	$0, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16, 8(%esp)
	movl	%ecx, 4(%esp)
	call	*52(%ebx)
	movl	%esi, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	L4172
	movl	__imp__screen, %edx
	movl	(%edx), %eax
	movl	28(%eax), %edx
	movl	20(%edx), %ebx
	testl	%ebx, %ebx
	jne	L4183
L420:
	call	_vsync
	movl	__imp__screen, %eax
	movl	(%eax), %edx
	movl	28(%edx), %ecx
	movl	16(%ecx), %ebx
	testl	%ebx, %ebx
	jne	L4184
L414:
	addl	$2, %esi
	cmpl	-16(%ebp), %esi
	jl	L424
	jmp	L4169
L4184:
	movl	%edx, (%esp)
	call	*16(%ecx)
	.p2align 4,,15
L4172:
	movl	__imp__screen, %eax
	jmp	L414
L4183:
	movl	%eax, (%esp)
	call	*20(%edx)
	jmp	L420
	.p2align 4,,7
L4180:
	movl	%edx, (%esp)
	call	*16(%ecx)
	.p2align 4,,15
L4171:
	movl	__imp__screen, %eax
	jmp	L401
	.p2align 4,,7
L4179:
	movl	%eax, (%esp)
	call	*20(%edx)
	jmp	L407
L4178:
	movl	%edx, (%esp)
	call	*16(%ecx)
	movl	__imp__screen, %eax
	jmp	L398
L389:
	movl	$0, -16(%ebp)
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L385
	movl	104(%eax), %ecx
	movl	$1717986919, %edi
	sall	$9, %ecx
	movl	%ecx, %eax
	imull	%edi
	sarl	$7, %edx
	jmp	L4173
L388:
	testl	%ecx, %ecx
	jg	L389
	jmp	L384
LC43:
	.ascii "->\0"
LC45:
	.ascii "<-\0"
LC46:
	.ascii "%s: %s %4d %s\0"
LC47:
	.ascii "%s: %c\0"
LC48:
	.ascii "- press a key to accept -\0"
LC44:
	.ascii "  \0"
LC38:
	.ascii "%s:\0"
LC42:
	.ascii " right\0"
LC41:
	.ascii " left\0"
LC40:
	.ascii " down\0"
LC39:
	.ascii " up\0"
LC37:
	.ascii "%s (%d/%d)\0"
	.p2align 4,,15
	.def	_plot_joystick_state;	.scl	3;	.type	32;	.endef
_plot_joystick_state:
	pushl	%ebp
	xorl	%edx, %edx
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$860, %esp
	movl	__imp__joystick_driver, %ecx
	movl	%edx, -796(%ebp)
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L491
	movl	__imp__num_joysticks, %ecx
	cmpl	$1, (%ecx)
	jg	L4193
	movl	4(%edx), %edi
	movl	$-60, %eax
	movl	$-1, 16(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$-1, 20(%esp)
	movl	%edi, 24(%esp)
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L499
	movl	108(%edx), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%ebx, %eax
	sarl	%eax
	subl	$60, %eax
L499:
	movl	%eax, 12(%esp)
	movl	(%ecx), %edx
	movl	$-96, %eax
	testl	%edx, %edx
	je	L501
	movl	104(%edx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	subl	$96, %eax
L501:
	movl	%eax, 8(%esp)
	movl	__imp__font, %edi
	movl	8(%ebp), %edx
	movl	(%edi), %esi
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	call	_textprintf_ex
L497:
	movl	$1, %eax
	movl	%eax, -796(%ebp)
L491:
	movl	12(%ebp), %edx
	xorl	%edi, %edi
	movl	__imp__joy, %ecx
	imull	$440, %edx, %edx
	movl	%ecx, %ebx
	cmpl	4(%ecx,%edx), %edi
	jge	L4186
	movl	%edx, -804(%ebp)
	movl	-796(%ebp), %esi
	movl	%edx, -808(%ebp)
	movl	%edx, -812(%ebp)
	leal	(%esi,%esi,4), %eax
	sall	$2, %eax
	movl	%eax, -816(%ebp)
	.p2align 4,,15
L534:
	movl	%edi, %eax
	sall	$4, %eax
	subl	%edi, %eax
	leal	(%edx,%eax,4), %esi
	leal	(%ebx,%esi), %eax
	cmpl	$2, 16(%eax)
	je	L4194
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	movl	$1668641326, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	28(%eax), %ebx
	testl	%ebx, %ebx
	je	L526
	movl	$LC43, %eax
L527:
	movl	%eax, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	movl	%eax, %esi
	movl	-808(%ebp), %ebx
	movl	$1668641326, 12(%esp)
	movl	__imp__joy, %eax
	leal	-792(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	addl	%eax, %ebx
	movl	24(%ebx), %edx
	testl	%edx, %edx
	je	L528
	movl	$LC45, %eax
L529:
	movl	%eax, (%esp)
	call	_uconvert
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	movl	%eax, %ebx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC46, (%esp)
	call	_uconvert
	movl	%esi, 24(%esp)
	movl	-804(%ebp), %ecx
	movl	__imp__joy, %edx
	addl	%edx, %ecx
	movl	20(%ecx), %esi
	movl	%ebx, 16(%esp)
	leal	-536(%ebp), %ebx
	movl	%esi, 20(%esp)
	movl	68(%ecx), %esi
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, (%esp)
	call	_uszprintf
	movl	$-1, 24(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$-1, 20(%esp)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L530
	movl	108(%eax), %esi
	movl	%esi, %edx
	shrl	$31, %edx
	addl	%edx, %esi
	movl	-816(%ebp), %edx
	sarl	%esi
	leal	-60(%edx,%esi), %eax
L531:
	movl	%eax, 16(%esp)
	movl	(%ecx), %edx
	movl	$-96, %eax
	testl	%edx, %edx
	je	L533
	movl	104(%edx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	subl	$96, %eax
L533:
	movl	%ebx, 8(%esp)
	movl	__imp__font, %esi
	movl	8(%ebp), %ebx
	movl	%eax, 12(%esp)
	movl	(%esi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_textout_ex
	incl	-796(%ebp)
	addl	$20, -816(%ebp)
L504:
	addl	$60, -812(%ebp)
	incl	%edi
	movl	12(%ebp), %edx
	addl	$60, -808(%ebp)
	movl	__imp__joy, %ecx
	imull	$440, %edx, %edx
	addl	$60, -804(%ebp)
	movl	%ecx, %ebx
	cmpl	4(%ecx,%edx), %edi
	jl	L534
L4186:
	movl	12(%ebp), %ebx
	xorl	%edi, %edi
	imull	$440, %ebx, %ebx
	cmpl	8(%ecx,%ebx), %edi
	jge	L4188
	movl	12(%ebp), %ecx
	movl	-796(%ebp), %edx
	leal	(%ecx,%ecx,4), %esi
	leal	(%ecx,%esi,2), %eax
	leal	(%edx,%edx,4), %ebx
	leal	(%eax,%eax,4), %ecx
	movl	%ecx, -800(%ebp)
	leal	0(,%ebx,4), %esi
	.p2align 4,,15
L551:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC47, (%esp)
	call	_uconvert
	movl	-800(%ebp), %ecx
	xorl	%edx, %edx
	movl	__imp__joy, %ebx
	addl	%edi, %ecx
	cmpl	$0, 312(%ebx,%ecx,8)
	sete	%dl
	decl	%edx
	andl	$42, %edx
	movl	%edx, 16(%esp)
	movl	316(%ebx,%ecx,8), %edx
	movl	%eax, 8(%esp)
	leal	-536(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	$512, 4(%esp)
	movl	%eax, (%esp)
	call	_uszprintf
	testl	$1, %edi
	je	L541
	movl	$-1, 24(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$-1, 20(%esp)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L542
	movl	108(%eax), %ebx
	movl	%ebx, %edx
	shrl	$31, %edx
	addl	%edx, %ebx
	sarl	%ebx
	leal	-60(%esi,%ebx), %eax
L543:
	movl	%eax, 16(%esp)
	movl	(%ecx), %edx
	movl	$32, %eax
	testl	%edx, %edx
	je	L545
	movl	104(%edx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	addl	$32, %eax
L545:
	movl	%eax, 12(%esp)
	movl	__imp__font, %ecx
	addl	$20, %esi
	leal	-536(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	(%ecx), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
L4191:
	call	_textout_ex
	movl	12(%ebp), %ebx
	incl	%edi
	movl	__imp__joy, %eax
	imull	$440, %ebx, %ebx
	addl	%eax, %ebx
	cmpl	8(%ebx), %edi
	jl	L551
L4188:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edi
	movl	$1668641326, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC48, (%esp)
	call	_uconvert
	movl	$-1, 24(%esp)
	movl	__imp__gfx_driver, %edx
	movl	%eax, %ebx
	movl	$255, 20(%esp)
	movl	$-16, %ecx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L553
	movl	108(%eax), %ecx
	subl	$16, %ecx
L553:
	movl	%ecx, 16(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L555
	movl	104(%eax), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%esi, %edx
	sarl	%edx
L555:
	movl	%ebx, 8(%esp)
	movl	__imp__font, %ebx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %edx
	movl	(%ebx), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_textout_centre_ex
	addl	$860, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L542:
	leal	-60(%esi), %eax
	jmp	L543
	.p2align 4,,7
L541:
	movl	$-1, 24(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$-1, 20(%esp)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L547
	movl	108(%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	leal	-60(%esi,%eax), %eax
L548:
	movl	%eax, 16(%esp)
	movl	(%ecx), %edx
	movl	$-96, %eax
	testl	%edx, %edx
	je	L550
	movl	104(%edx), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%ebx, %eax
	sarl	%eax
	subl	$96, %eax
L550:
	movl	%eax, 12(%esp)
	movl	__imp__font, %ebx
	leal	-536(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %ecx
	movl	(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	jmp	L4191
	.p2align 4,,7
L547:
	leal	-60(%esi), %eax
	jmp	L548
	.p2align 4,,7
L530:
	movl	-816(%ebp), %eax
	subl	$60, %eax
	jmp	L531
	.p2align 4,,7
L528:
	movl	$LC44, %eax
	jmp	L529
	.p2align 4,,7
L526:
	movl	$LC44, %eax
	jmp	L527
	.p2align 4,,7
L4194:
	testb	$2, 12(%eax)
	je	L507
	movl	__imp__gfx_driver, %ebx
	xorl	%esi, %esi
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L509
	movl	20(%eax), %eax
	movl	104(%edx), %esi
	subl	$-128, %eax
	imull	%esi, %eax
	testl	%eax, %eax
	js	L4195
L510:
	movl	%eax, %esi
	sarl	$8, %esi
L509:
	movl	(%ebx), %edx
	xorl	%ebx, %ebx
	testl	%edx, %edx
	je	L512
	movl	-812(%ebp), %ebx
	movl	36(%ecx,%ebx), %eax
	movl	108(%edx), %ecx
	subl	$-128, %eax
	imull	%ecx, %eax
	testl	%eax, %eax
	js	L4196
L513:
	movl	%eax, %ebx
	sarl	$8, %ebx
L512:
	movl	8(%ebp), %eax
	leal	12(%esi), %ecx
	leal	-12(%esi), %edx
	movl	%ecx, 12(%esp)
	movl	28(%eax), %ecx
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$15, 16(%esp)
	call	*44(%ecx)
	leal	12(%ebx), %eax
	leal	-12(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movl	$15, 16(%esp)
	movl	%esi, 4(%esp)
	call	*40(%ecx)
	movl	%ebx, 8(%esp)
	movl	8(%ebp), %eax
	movl	$1, 16(%esp)
	movl	$12, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_circle
	movl	%ebx, 8(%esp)
	movl	8(%ebp), %ebx
	movl	$31, 16(%esp)
	movl	$4, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_circlefill
	jmp	L504
L4196:
	addl	$255, %eax
	jmp	L513
L4195:
	addl	$255, %eax
	jmp	L510
L507:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC38, (%esp)
	call	_uconvert
	movl	__imp__joy, %ebx
	movl	%esi, %edx
	addl	%ebx, %edx
	movl	68(%edx), %ebx
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%ebx, 12(%esp)
	leal	-536(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_uszprintf
	movl	__imp__joy, %ecx
	movl	40(%ecx,%esi), %edx
	testl	%edx, %edx
	jne	L4197
L517:
	movl	44(%ecx,%esi), %edx
	testl	%edx, %edx
	jne	L4198
L518:
	movl	24(%ecx,%esi), %edx
	testl	%edx, %edx
	jne	L4199
L519:
	movl	28(%ecx,%esi), %edx
	testl	%edx, %edx
	jne	L4200
L520:
	movl	$-1, 24(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	$-1, 20(%esp)
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L530
	movl	108(%eax), %eax
	movl	-816(%ebp), %edx
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	leal	-60(%edx,%eax), %eax
	jmp	L531
L4200:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	leal	-536(%ebp), %esi
	movl	$1668641326, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC42, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%esi, (%esp)
	call	_ustrzcat
	jmp	L520
L4199:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC41, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	leal	-536(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	$512, 4(%esp)
	call	_ustrzcat
	movl	__imp__joy, %ecx
	jmp	L519
L4198:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC40, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	leal	-536(%ebp), %eax
	movl	$512, 4(%esp)
	movl	%eax, (%esp)
	call	_ustrzcat
	movl	__imp__joy, %ecx
	jmp	L518
L4197:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC39, (%esp)
	call	_uconvert
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	movl	%ebx, (%esp)
	call	_ustrzcat
	movl	__imp__joy, %ecx
	jmp	L517
L4193:
	movl	$256, 16(%esp)
	leal	-792(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC37, (%esp)
	call	_uconvert
	movl	__imp__num_joysticks, %esi
	movl	12(%ebp), %ecx
	movl	__imp__joystick_driver, %edi
	movl	(%esi), %ebx
	incl	%ecx
	movl	%ecx, 32(%esp)
	movl	__imp__gfx_driver, %ecx
	movl	%ebx, 36(%esp)
	movl	(%edi), %esi
	movl	4(%esi), %ebx
	movl	%eax, 24(%esp)
	movl	$-60, %eax
	movl	%ebx, 28(%esp)
	movl	$-1, 20(%esp)
	movl	$-1, 16(%esp)
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L494
	movl	108(%edx), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%edi, %eax
	sarl	%eax
	subl	$60, %eax
L494:
	movl	%eax, 12(%esp)
	movl	(%ecx), %edx
	movl	$-96, %eax
	testl	%edx, %edx
	je	L496
	movl	104(%edx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	subl	$96, %eax
L496:
	movl	%eax, 8(%esp)
	movl	__imp__font, %esi
	movl	8(%ebp), %eax
	movl	(%esi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_textprintf_ex
	jmp	L497
	.p2align 4,,15
	.def	_filename_proc;	.scl	3;	.type	32;	.endef
_filename_proc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1084, %esp
	movl	8(%ebp), %ebx
	movl	12(%ebp), %edx
	cmpl	$1, %ebx
	movl	48(%edx), %esi
	je	L4201
	cmpl	$2, %ebx
	je	L4202
L646:
	movl	%ebx, (%esp)
	movl	16(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_d_check_proc
	testb	$1, %al
	movl	%eax, %ebx
	jne	L4203
L649:
	addl	$1084, %esp
	movl	%ebx, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L4203:
	movl	__imp__ugetc, %eax
	leal	8(%esi), %edi
	movl	%edi, (%esp)
	call	*(%eax)
	testl	%eax, %eax
	je	L650
	movl	%edi, 8(%esp)
	movl	$512, 4(%esp)
	movl	536(%esi), %edx
	movl	%edx, (%esp)
	call	_ustrzcpy
	movl	%edi, (%esp)
	movl	__imp__usetc, %edi
	movl	$0, 4(%esp)
	call	*(%edi)
L651:
	cmpb	$0, 8(%esi)
	je	L660
	movl	12(%ebp), %esi
	orl	$2, 32(%esi)
L661:
	andl	$-2, %ebx
	orl	$2, %ebx
	jmp	L649
	.p2align 4,,7
L660:
	movl	12(%ebp), %eax
	andl	$-3, 32(%eax)
	jmp	L661
	.p2align 4,,7
L650:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$16, (%esp)
	call	_scroller_proc
	movl	540(%esi), %ecx
	leal	-792(%ebp), %edx
	movl	%edx, (%esp)
	movl	$256, 4(%esp)
	movl	%ecx, 8(%esp)
	call	_ustrzcpy
	leal	-792(%ebp), %eax
	movl	%eax, (%esp)
	movl	__imp__uwidth, %eax
	call	*(%eax)
	movl	$40, 4(%esp)
	leal	-792(%ebp), %edx
	leal	(%eax,%edx), %ecx
	movl	%ecx, (%esp)
	call	_ustrchr
	testl	%eax, %eax
	je	L652
	movl	%eax, (%esp)
	movl	__imp__usetc, %eax
	movl	$0, 4(%esp)
	call	*(%eax)
	movl	$0, 8(%esp)
	leal	-792(%ebp), %edx
	movl	$-1, 4(%esp)
	movl	%edx, (%esp)
	call	_usetat
L652:
	movl	536(%esi), %ecx
	leal	-536(%ebp), %eax
	movl	$512, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_ustrzcpy
	movl	$0, 20(%esp)
	leal	-536(%ebp), %ecx
	leal	-792(%ebp), %eax
	movl	$0, 16(%esp)
	movl	$512, 12(%esp)
	movl	532(%esi), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_file_select_ex
	testl	%eax, %eax
	jne	L4204
L653:
	call	_scare_mouse
	movl	__imp__gfx_driver, %edx
	movl	_setup_data, %edi
	movl	(%edx), %eax
	movl	(%edi), %ecx
	xorl	%edi, %edi
	testl	%eax, %eax
	je	L655
	movl	108(%eax), %edi
L655:
	movl	%edi, 36(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L657
	movl	104(%eax), %edx
L657:
	movl	%edx, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	4(%ecx), %edx
	movl	%edx, 20(%esp)
	movl	(%ecx), %edi
	movl	$0, 8(%esp)
	movl	__imp__screen, %edx
	movl	$0, 12(%esp)
	movl	%edi, 16(%esp)
	movl	(%edx), %edi
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	call	_stretch_blit
	movl	$256, 16(%esp)
	leal	-1048(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC35, (%esp)
	call	_uconvert
	movl	$0, 24(%esp)
	movl	__imp__gfx_driver, %edx
	movl	%eax, %ecx
	movl	$-1, 20(%esp)
	movl	$0, 16(%esp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	L659
	movl	104(%eax), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edi, %edx
	sarl	%edx
L659:
	movl	%ecx, 8(%esp)
	movl	__imp__font, %ecx
	movl	%edx, 12(%esp)
	movl	__imp__screen, %edx
	movl	(%ecx), %edi
	movl	%edi, 4(%esp)
	movl	(%edx), %ecx
	movl	%ecx, (%esp)
	call	_textout_centre_ex
	call	_unscare_mouse
	jmp	L651
L4204:
	movl	%edi, (%esp)
	leal	-536(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$512, 4(%esp)
	call	_ustrzcpy
	movl	$512, 4(%esp)
	leal	-536(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	536(%esi), %edi
	movl	%edi, (%esp)
	call	_ustrzcpy
	jmp	L653
	.p2align 4,,7
L4202:
	movl	536(%esi), %eax
	testl	%eax, %eax
	je	L646
	movl	%eax, (%esp)
	call	_free
	xorl	%edx, %edx
	movl	%edx, 536(%esi)
	jmp	L646
	.p2align 4,,7
L4201:
	movl	536(%esi), %edx
	testl	%edx, %edx
	je	L4205
L645:
	movl	$512, 4(%esp)
	leal	8(%esi), %edi
	movl	%edi, 8(%esp)
	movl	536(%esi), %ecx
	movl	%ecx, (%esp)
	call	_ustrzcpy
	jmp	L646
L4205:
	movl	$512, (%esp)
	call	_malloc
	movl	%eax, 536(%esi)
	jmp	L645
	.p2align 4,,15
	.def	_d_xlist_proc;	.scl	3;	.type	32;	.endef
_d_xlist_proc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ebx, -8(%ebp)
	movl	16(%ebp), %edx
	movl	12(%ebp), %ebx
	movl	%esi, -4(%ebp)
	movl	48(%ebx), %esi
	movl	$0, 48(%ebx)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	_d_list_proc
	movl	%esi, 48(%ebx)
	movl	-8(%ebp), %ebx
	movl	-4(%ebp), %esi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,15
	.def	_param_handler;	.scl	3;	.type	32;	.endef
_param_handler:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	movl	$_param_dlg, %esi
	pushl	%ebx
	subl	$124, %esp
	movl	_param_ok, %edx
	cmpl	%edx, 8(%ebp)
	je	L4216
	movl	_param_dlg, %ebx
	testl	%ebx, %ebx
	je	L686
	.p2align 4,,15
L691:
	movl	48(%esi), %edi
	testl	%edi, %edi
	je	L690
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	__imp__empty_string, %ecx
	movl	%ecx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	leal	8(%edi), %ecx
	movl	$512, 4(%esp)
	movl	%ecx, (%esp)
	call	_ustrzcpy
L690:
	addl	$56, %esi
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	L691
L686:
	addl	$124, %esp
	movl	$4, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L4216:
	movl	_param_dlg, %eax
	testl	%eax, %eax
	je	L686
	.p2align 4,,15
L685:
	movl	48(%esi), %edi
	testl	%edi, %edi
	je	L667
	movl	4(%edi), %eax
	cmpl	$8, %eax
	ja	L667
	jmp	*L684(,%eax,4)
	.p2align 2
	.align 4
L684:
	.long	L667
	.long	L670
	.long	L673
	.long	L676
	.long	L679
	.long	L680
	.long	L681
	.long	L670
	.long	L682
L670:
	cmpb	$0, 8(%edi)
	jne	L4217
	leal	8(%edi), %ecx
	movl	$-1, %ebx
	movl	%ecx, -100(%ebp)
L672:
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%ebx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_set_config_int
L4210:
	movl	$64, 16(%esp)
	leal	-88(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	__imp__empty_string, %ebx
	movl	%ebx, 8(%esp)
	movl	(%edi), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
L4214:
	movl	$512, 4(%esp)
	movl	%eax, (%esp)
L4209:
	call	_ustrzcpy
L667:
	addl	$56, %esi
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	L685
	jmp	L686
L4217:
	movl	$0, 8(%esp)
	leal	8(%edi), %edx
	movl	$0, 4(%esp)
	movl	%edx, -100(%ebp)
	movl	%edx, (%esp)
	call	_ustrtol
	movl	%eax, %ebx
	jmp	L672
L673:
	cmpb	$0, 8(%edi)
	jne	L4218
	leal	8(%edi), %ecx
	movl	$-1, %ebx
	movl	%ecx, -100(%ebp)
L675:
	movl	$64, 16(%esp)
	leal	-88(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%ebx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_set_config_hex
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	__imp__empty_string, %ecx
	movl	%ecx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %edx
L4215:
	movl	$512, 4(%esp)
	movl	%edx, (%esp)
	jmp	L4209
L4218:
	movl	$16, 8(%esp)
	leal	8(%edi), %eax
	movl	$0, 4(%esp)
	movl	%eax, -100(%ebp)
	movl	%eax, (%esp)
	call	_ustrtol
	movl	%eax, %ebx
	jmp	L675
L676:
	cmpb	$0, 8(%edi)
	jne	L4219
	leal	8(%edi), %eax
	movl	$-1, %ebx
	movl	%eax, -100(%ebp)
L678:
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%ebx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_set_config_id
	jmp	L4210
L4219:
	movl	$0, 8(%esp)
	leal	8(%edi), %ecx
	movl	$0, 4(%esp)
	movl	%ecx, -100(%ebp)
	movl	%ecx, (%esp)
	call	_ustrtol
	movl	%eax, %ebx
	jmp	L678
L679:
	movl	$64, 16(%esp)
	leal	-88(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	32(%esi), %ebx
	shrl	%ebx
	andl	$1, %ebx
	movl	%ebx, 8(%esp)
	movl	(%edi), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_set_config_int
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	$1668641326, 12(%esp)
	movl	%edx, 8(%esp)
L4213:
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	__imp__empty_string, %ecx
	movl	%ecx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	leal	8(%edi), %eax
	jmp	L4214
L680:
	movl	$64, 16(%esp)
	leal	8(%edi), %ebx
	leal	-88(%ebp), %eax
	movl	$1668641326, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%ebx, 8(%esp)
	movl	(%edi), %ecx
	movl	%ebx, -92(%ebp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_set_config_string
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	__imp__empty_string, %ebx
	movl	%ebx, 8(%esp)
	movl	(%edi), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %edx
	jmp	L4215
L681:
	movl	$0, 4(%esp)
	movl	36(%esi), %ecx
	movl	%ecx, (%esp)
	call	_freq_getter
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	_ustrtol
	movl	$64, 16(%esp)
	movl	%eax, %ebx
	leal	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	%ebx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_set_config_int
	movl	$64, 16(%esp)
	leal	-88(%ebp), %ecx
	movl	$1668641326, 12(%esp)
	movl	%ecx, 8(%esp)
	jmp	L4213
L682:
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	leal	8(%edi), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edi), %ebx
	movl	%ecx, -96(%ebp)
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_set_config_string
	movl	$64, 16(%esp)
	leal	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1668641326, 12(%esp)
	movl	$1095975736, 4(%esp)
	movl	$LC87, (%esp)
	call	_uconvert
	movl	__imp__empty_string, %ecx
	movl	%ecx, 8(%esp)
	movl	(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_get_config_string
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %edx
	jmp	L4215
	.def	_stop_sample;	.scl	2;	.type	32;	.endef
	.def	_EfectoTelevision;	.scl	2;	.type	32;	.endef
	.def	_fade_in_range;	.scl	2;	.type	32;	.endef
	.def	_AjustaPaleta;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_save_pcx;	.scl	2;	.type	32;	.endef
	.def	_xor_mode;	.scl	2;	.type	32;	.endef
	.def	_strupr;	.scl	2;	.type	32;	.endef
	.def	_CapturarPantalla;	.scl	2;	.type	32;	.endef
	.def	_AccionBuscar;	.scl	2;	.type	32;	.endef
	.def	_get_mouse_mickeys;	.scl	2;	.type	32;	.endef
	.def	_ReproduceSample;	.scl	2;	.type	32;	.endef
	.def	_triangle;	.scl	2;	.type	32;	.endef
	.def	_get_palette;	.scl	2;	.type	32;	.endef
	.def	_set_volume;	.scl	2;	.type	32;	.endef
	.def	_Fundir;	.scl	2;	.type	32;	.endef
	.def	_Desfundir;	.scl	2;	.type	32;	.endef
	.def	_install_int;	.scl	2;	.type	32;	.endef
	.def	_stop_midi;	.scl	2;	.type	32;	.endef
	.def	_midi_resume;	.scl	2;	.type	32;	.endef
	.def	_midi_pause;	.scl	2;	.type	32;	.endef
	.def	_textprintf;	.scl	2;	.type	32;	.endef
	.def	_ControlaEventoJoystick;	.scl	2;	.type	32;	.endef
	.def	_ControlaEventoRaton;	.scl	2;	.type	32;	.endef
	.def	_ControlaEventoTeclado;	.scl	2;	.type	32;	.endef
	.def	_MostrarTitulo;	.scl	2;	.type	32;	.endef
	.def	_MostrarBotones;	.scl	2;	.type	32;	.endef
	.def	_HacerJustificacion;	.scl	2;	.type	32;	.endef
	.def	_find_datafile_object;	.scl	2;	.type	32;	.endef
	.def	_text_mode;	.scl	2;	.type	32;	.endef
	.def	_makecol;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_MostrarInfoArticulo;	.scl	2;	.type	32;	.endef
	.def	_masked_blit;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_JustificacionDerecha;	.scl	2;	.type	32;	.endef
	.def	_select_palette;	.scl	2;	.type	32;	.endef
	.def	__WinMain;	.scl	2;	.type	32;	.endef
	.def	_remove_keyboard;	.scl	2;	.type	32;	.endef
	.def	_EliminarLosArticulos;	.scl	2;	.type	32;	.endef
	.def	_EliminarArticulo;	.scl	2;	.type	32;	.endef
	.def	_Despedida;	.scl	2;	.type	32;	.endef
	.def	_DestruyeMOD;	.scl	2;	.type	32;	.endef
	.def	_ControlaEventos;	.scl	2;	.type	32;	.endef
	.def	_MostrarArticulo;	.scl	2;	.type	32;	.endef
	.def	_InicializarArticulo;	.scl	2;	.type	32;	.endef
	.def	_LeerArticulos;	.scl	2;	.type	32;	.endef
	.def	_InicializarLosArticulos;	.scl	2;	.type	32;	.endef
	.def	_ActivaMOD;	.scl	2;	.type	32;	.endef
	.def	_position_mouse;	.scl	2;	.type	32;	.endef
	.def	_set_mouse_sprite_focus;	.scl	2;	.type	32;	.endef
	.def	_GeneraColores;	.scl	2;	.type	32;	.endef
	.def	_MostrarErrorMemoria;	.scl	2;	.type	32;	.endef
	.def	_MuestraIntro;	.scl	2;	.type	32;	.endef
	.def	_Presentacion;	.scl	2;	.type	32;	.endef
	.def	_set_color_conversion;	.scl	2;	.type	32;	.endef
	.def	_set_display_switch_mode;	.scl	2;	.type	32;	.endef
	.def	_do_dialog;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_allegro_exit;	.scl	2;	.type	32;	.endef
	.def	_allegro_message;	.scl	2;	.type	32;	.endef
	.def	_set_gfx_mode;	.scl	2;	.type	32;	.endef
	.def	_set_color_depth;	.scl	2;	.type	32;	.endef
	.def	_LeerArchivoDatos;	.scl	2;	.type	32;	.endef
	.def	_packfile_password;	.scl	2;	.type	32;	.endef
	.def	_GeneraClave;	.scl	2;	.type	32;	.endef
	.def	_install_timer;	.scl	2;	.type	32;	.endef
	.def	_install_keyboard;	.scl	2;	.type	32;	.endef
	.def	_set_uformat;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
	.def	__errno;	.scl	2;	.type	32;	.endef
	.def	_install_allegro;	.scl	2;	.type	32;	.endef
	.def	_MostrarLineaComandos;	.scl	2;	.type	32;	.endef
	.def	_d_shadow_box_proc;	.scl	2;	.type	32;	.endef
	.def	_remove_int;	.scl	2;	.type	32;	.endef
	.def	_uisspace;	.scl	2;	.type	32;	.endef
	.def	_install_int_ex;	.scl	2;	.type	32;	.endef
	.def	_set_mouse_range;	.scl	2;	.type	32;	.endef
	.def	_save_joystick_data;	.scl	2;	.type	32;	.endef
	.def	_stricmp;	.scl	2;	.type	32;	.endef
	.def	_unload_datafile;	.scl	2;	.type	32;	.endef
	.def	_set_config_file;	.scl	2;	.type	32;	.endef
	.def	__ustrdup;	.scl	2;	.type	32;	.endef
	.def	_ustrstr;	.scl	2;	.type	32;	.endef
	.def	_get_datafile_property;	.scl	2;	.type	32;	.endef
	.def	_load_datafile;	.scl	2;	.type	32;	.endef
	.def	_find_allegro_resource;	.scl	2;	.type	32;	.endef
	.def	_get_config_id;	.scl	2;	.type	32;	.endef
	.def	_reserve_voices;	.scl	2;	.type	32;	.endef
	.def	_pop_config_state;	.scl	2;	.type	32;	.endef
	.def	_reload_config_texts;	.scl	2;	.type	32;	.endef
	.def	_ustrsize;	.scl	2;	.type	32;	.endef
	.def	_set_config_data;	.scl	2;	.type	32;	.endef
	.def	_push_config_state;	.scl	2;	.type	32;	.endef
	.def	_remove_sound;	.scl	2;	.type	32;	.endef
	.def	_play_sample;	.scl	2;	.type	32;	.endef
	.def	_play_midi;	.scl	2;	.type	32;	.endef
	.def	_d_edit_proc;	.scl	2;	.type	32;	.endef
	.def	_d_text_proc;	.scl	2;	.type	32;	.endef
	.def	_d_box_proc;	.scl	2;	.type	32;	.endef
	.def	_uisdigit;	.scl	2;	.type	32;	.endef
	.def	_set_config_string;	.scl	2;	.type	32;	.endef
	.def	_set_config_id;	.scl	2;	.type	32;	.endef
	.def	_set_config_hex;	.scl	2;	.type	32;	.endef
	.def	_get_config_string;	.scl	2;	.type	32;	.endef
	.def	_set_config_int;	.scl	2;	.type	32;	.endef
	.def	_ustrtol;	.scl	2;	.type	32;	.endef
	.def	_d_ctext_proc;	.scl	2;	.type	32;	.endef
	.def	_d_yield_proc;	.scl	2;	.type	32;	.endef
	.def	_d_button_proc;	.scl	2;	.type	32;	.endef
	.def	_usetat;	.scl	2;	.type	32;	.endef
	.def	_ustrchr;	.scl	2;	.type	32;	.endef
	.def	_d_check_proc;	.scl	2;	.type	32;	.endef
	.def	_d_list_proc;	.scl	2;	.type	32;	.endef
	.def	_ustricmp;	.scl	2;	.type	32;	.endef
	.def	_install_mouse;	.scl	2;	.type	32;	.endef
	.def	_remove_mouse;	.scl	2;	.type	32;	.endef
	.def	_readkey;	.scl	2;	.type	32;	.endef
	.def	_poll_mouse;	.scl	2;	.type	32;	.endef
	.def	_clear_keybuf;	.scl	2;	.type	32;	.endef
	.def	_calibrate_joystick;	.scl	2;	.type	32;	.endef
	.def	_keypressed;	.scl	2;	.type	32;	.endef
	.def	_poll_joystick;	.scl	2;	.type	32;	.endef
	.def	_rest;	.scl	2;	.type	32;	.endef
	.def	_calibrate_joystick_name;	.scl	2;	.type	32;	.endef
	.def	_unscare_mouse;	.scl	2;	.type	32;	.endef
	.def	_install_joystick;	.scl	2;	.type	32;	.endef
	.def	_remove_joystick;	.scl	2;	.type	32;	.endef
	.def	_scare_mouse;	.scl	2;	.type	32;	.endef
	.def	_ustrzcat;	.scl	2;	.type	32;	.endef
	.def	_uszprintf;	.scl	2;	.type	32;	.endef
	.def	_circlefill;	.scl	2;	.type	32;	.endef
	.def	_circle;	.scl	2;	.type	32;	.endef
	.def	_rect;	.scl	2;	.type	32;	.endef
	.def	_text_length;	.scl	2;	.type	32;	.endef
	.def	_alert;	.scl	2;	.type	32;	.endef
	.def	_uoffset;	.scl	2;	.type	32;	.endef
	.def	_ustrzcpy;	.scl	2;	.type	32;	.endef
	.def	_install_sound;	.scl	2;	.type	32;	.endef
	.def	_detect_midi_driver;	.scl	2;	.type	32;	.endef
	.def	_detect_digi_driver;	.scl	2;	.type	32;	.endef
	.def	_destroy_bitmap;	.scl	2;	.type	32;	.endef
	.def	_shutdown_dialog;	.scl	2;	.type	32;	.endef
	.def	_blit;	.scl	2;	.type	32;	.endef
	.def	_vsync;	.scl	2;	.type	32;	.endef
	.def	_set_palette;	.scl	2;	.type	32;	.endef
	.def	_fade_interpolate;	.scl	2;	.type	32;	.endef
	.def	_stretch_sprite;	.scl	2;	.type	32;	.endef
	.def	_stretch_blit;	.scl	2;	.type	32;	.endef
	.def	_find_dialog_focus;	.scl	2;	.type	32;	.endef
	.def	_update_dialog;	.scl	2;	.type	32;	.endef
	.def	_show_mouse;	.scl	2;	.type	32;	.endef
	.def	_set_mouse_sprite;	.scl	2;	.type	32;	.endef
	.def	_create_bitmap;	.scl	2;	.type	32;	.endef
	.def	_init_dialog;	.scl	2;	.type	32;	.endef
	.def	_centre_dialog;	.scl	2;	.type	32;	.endef
	.def	_dialog_message;	.scl	2;	.type	32;	.endef
	.def	_object_message;	.scl	2;	.type	32;	.endef
	.def	_uconvert;	.scl	2;	.type	32;	.endef
	.def	_textprintf_ex;	.scl	2;	.type	32;	.endef
	.def	_ustrlen;	.scl	2;	.type	32;	.endef
	.def	_ugetat;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_ustrzncpy;	.scl	2;	.type	32;	.endef
	.def	_uwidth_max;	.scl	2;	.type	32;	.endef
	.def	_do_uconvert;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_uconvert_size;	.scl	2;	.type	32;	.endef
	.def	_need_uconvert;	.scl	2;	.type	32;	.endef
	.def	_textout_centre_ex;	.scl	2;	.type	32;	.endef
	.def	_textout_ex;	.scl	2;	.type	32;	.endef
	.def	_file_select_ex;	.scl	2;	.type	32;	.endef
	.def	_clear_bitmap;	.scl	2;	.type	32;	.endef
	.def	_strtod;	.scl	2;	.type	32;	.endef
