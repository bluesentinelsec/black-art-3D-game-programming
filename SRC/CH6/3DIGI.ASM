	ifndef	??version
?debug	macro
	endm
publicdll macro	name
	public	name
	endm
$comm	macro	name,dist,size,count
	comm	dist name:BYTE:count*size
	endm
	else
$comm	macro	name,dist,size,count
	comm	dist name[size]:BYTE:count
	endm
	endif
	?debug	V 300h
	?debug	S "3digi.c"
	?debug	C E95A9024570733646967692E63
	?debug	C E94040235718433A5C424F524C414E44435C494E434C5544455C69+
	?debug	C 6F2E68
	?debug	C E9404023571B433A5C424F524C414E44435C494E434C5544455C5F+
	?debug	C 646566732E68
	?debug	C E9404023571B433A5C424F524C414E44435C494E434C5544455C63+
	?debug	C 6F6E696F2E68
	?debug	C E9404023571B433A5C424F524C414E44435C494E434C5544455C73+
	?debug	C 7464696F2E68
	?debug	C E9404023571B433A5C424F524C414E44435C494E434C5544455C5F+
	?debug	C 6E756C6C2E68
	?debug	C E9404023571C433A5C424F524C414E44435C494E434C5544455C73+
	?debug	C 74646C69622E68
	?debug	C E94040235719433A5C424F524C414E44435C494E434C5544455C64+
	?debug	C 6F732E68
	?debug	C E9404023571A433A5C424F524C414E44435C494E434C5544455C62+
	?debug	C 696F732E68
	?debug	C E9404023571B433A5C424F524C414E44435C494E434C5544455C66+
	?debug	C 636E746C2E68
	?debug	C E9404023571C433A5C424F524C414E44435C494E434C5544455C6D+
	?debug	C 656D6F72792E68
	?debug	C E94040235719433A5C424F524C414E44435C494E434C5544455C6D+
	?debug	C 656D2E68
	?debug	C E9404023571C433A5C424F524C414E44435C494E434C5544455C6D+
	?debug	C 616C6C6F632E68
	?debug	C E9404023571B433A5C424F524C414E44435C494E434C5544455C61+
	?debug	C 6C6C6F632E68
	?debug	C E9404023571A433A5C424F524C414E44435C494E434C5544455C6D+
	?debug	C 6174682E68
	?debug	C E9404023571C433A5C424F524C414E44435C494E434C5544455C73+
	?debug	C 7472696E672E68
	?debug	C E95A90245708626C61636B332E68
	?debug	C E95A90245708626C61636B362E68
3DIGI_TEXT	segment byte public 'CODE'
3DIGI_TEXT	ends
DGROUP	group	_DATA,_BSS
	assume	cs:3DIGI_TEXT,ds:DGROUP
_DATA	segment word public 'DATA'
d@	label	byte
d@w	label	word
_DATA	ends
_BSS	segment word public 'BSS'
b@	label	byte
b@w	label	word
_BSS	ends
_DATA	segment word public 'DATA'
_par_port	label	dword
	db	8
	db	4
	db	0
	db	0
_right_3D	label	word
	db	0
	db	0
_left_3D	label	word
	db	1
	db	0
_power_3D	label	dword
	db	0
	db	0
	db	0
	db	63
_DATA	ends
3DIGI_TEXT	segment byte public 'CODE'
	?debug	C E8010733646967692E635A902457
	?debug	L 48
	assume	cs:3DIGI_TEXT
_Par_Write	proc	far
	?debug	B
	push	bp
	mov	bp,sp
	?debug	C E60464617461080A08000004706F7274040A0600+
	?debug	C 00
	?debug	B
	?debug	L 51
	mov	ax,word ptr [bp+6]
	shl	ax,1
	les	bx,dword ptr DGROUP:_par_port
	add	bx,ax
	mov	dx,word ptr es:[bx]
	mov	al,byte ptr [bp+8]
	out	dx,al
	mov	al,0
	?debug	L 53
	pop	bp
	ret	
	?debug	C E604706F7274040A0600000464617461080A0800+
	?debug	C 00
	?debug	E
	?debug	E
_Par_Write	endp
	?debug	L 57
	assume	cs:3DIGI_TEXT
_Sound_Play_3D	proc	far
	?debug	B
	push	bp
	mov	bp,sp
	sub	sp,14
	push	si
	push	di
	?debug	C E31909736F756E645F74797012001E01
	?debug	C E31A000400160800
	?debug	C E31B0C534E4453545255435F7479700C001E05
	?debug	C E31C000400160400
	?debug	C E318000200151904
	?debug	C E6057370656564040A1000000A706F7765725F6C+
	?debug	C 6566740E0A0C00000B706F7765725F7269676874+
	?debug	C 0E0A080000097468655F736F756E64180A060000
	mov	di,word ptr [bp+6]
	?debug	B
	?debug	L 74
	mov	ax,word ptr [di+10]
	mov	word ptr [bp-4],ax
	?debug	L 76
	xor	ax,ax
	push	ax
	push	word ptr [bp-4]
	call	far ptr _farmalloc
	pop	cx
	pop	cx
	mov	word ptr [bp-6],dx
	mov	word ptr [bp-8],ax
	?debug	L 77
	xor	ax,ax
	push	ax
	push	word ptr [bp-4]
	call	far ptr _farmalloc
	pop	cx
	pop	cx
	mov	word ptr [bp-10],dx
	mov	word ptr [bp-12],ax
	?debug	L 81
	xor	si,si
	jmp	short @2@114
@2@58:
	?debug	L 86
	?debug	L 87
	les	bx,dword ptr [di+6]
	mov	al,byte ptr es:[bx+si]
	mov	ah,0
	mov	word ptr [bp-14],ax
	fild	word ptr [bp-14]
	fmul	dword ptr [bp+8]
	call	far ptr F_FTOL@
	les	bx,dword ptr [bp-8]
	mov	byte ptr es:[bx+si],al
	?debug	L 89
	?debug	L 90
	les	bx,dword ptr [di+6]
	mov	al,byte ptr es:[bx+si]
	mov	ah,0
	mov	word ptr [bp-14],ax
	fild	word ptr [bp-14]
	fmul	dword ptr [bp+12]
	call	far ptr F_FTOL@
	les	bx,dword ptr [bp-12]
	mov	byte ptr es:[bx+si],al
	?debug	L 81
	inc	si
@2@114:
	cmp	si,word ptr [bp-4]
	jb	short @2@58
	?debug	L 96
	xor	si,si
	jmp	short @2@310
@2@170:
	?debug	L 101
	mov	word ptr [bp-2],0
	jmp	short @2@254
@2@198:
	?debug	L 105
	les	bx,dword ptr [bp-12]
	mov	al,byte ptr es:[bx+si]
	push	ax
	push	word ptr DGROUP:_left_3D
	push	cs
	call	near ptr _Par_Write
	pop	cx
	pop	cx
	?debug	L 109
	les	bx,dword ptr [bp-8]
	mov	al,byte ptr es:[bx+si]
	push	ax
	push	word ptr DGROUP:_right_3D
	push	cs
	call	near ptr _Par_Write
	pop	cx
	pop	cx
	?debug	L 101
	inc	word ptr [bp-2]
@2@254:
	mov	ax,word ptr [bp-2]
	cmp	ax,word ptr [bp+16]
	jb	short @2@198
	?debug	L 96
	inc	si
@2@310:
	cmp	si,word ptr [bp-4]
	jb	short @2@170
	?debug	L 117
	push	word ptr [bp-6]
	push	word ptr [bp-8]
	call	far ptr _farfree
	pop	cx
	pop	cx
	?debug	L 118
	push	word ptr [bp-10]
	push	word ptr [bp-12]
	call	far ptr _farfree
	pop	cx
	pop	cx
	?debug	L 120
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret	
	?debug	C E60B6C6566745F6275666665721A02F4FF000C72+
	?debug	C 696768745F6275666665721A02F8FF000473697A+
	?debug	C 650A02FCFF0005696E6465780A04060004667265+
	?debug	C 710A02FEFF00097468655F736F756E64180C0700+
	?debug	C 0B706F7765725F72696768740E0A0800000A706F+
	?debug	C 7765725F6C6566740E0A0C000005737065656404+
	?debug	C 0A100000
	?debug	E
	?debug	E
_Sound_Play_3D	endp
	?debug	L 124
	assume	cs:3DIGI_TEXT
_main	proc	far
	?debug	B
	push	bp
	mov	bp,sp
	sub	sp,42
	push	si
	push	di
	?debug	C E31E000200150204
	?debug	C E31D000200151E04
	?debug	C E604617267761D0A0800000461726763040A0600+
	?debug	C 00
	?debug	B
	?debug	L 128
	xor	di,di
	?debug	L 129
	mov	si,5
	?debug	L 133
	mov	word ptr [bp-2],15820
	mov	word ptr [bp-4],52429
	?debug	L 137
	xor	ax,ax
	push	ax
	lea	ax,word ptr [bp-42]
	push	ax
	mov	ax,offset DGROUP:s@
	push	ax
	call	far ptr _Sound_Load
	add	sp,6
	or	ax,ax
	jne	short @3@114
	?debug	L 139
	mov	ax,offset DGROUP:s@+11
@3@86:
	push	ax
	call	far ptr _printf
	jmp	@3@758
@3@114:
	?debug	L 144
	xor	ax,ax
	push	ax
	lea	ax,word ptr [bp-24]
	push	ax
	mov	ax,offset DGROUP:s@+48
	push	ax
	call	far ptr _Sound_Load
	add	sp,6
	or	ax,ax
	jne	short @3@170
	?debug	L 146
	mov	ax,offset DGROUP:s@+60
	jmp	short @3@86
@3@170:
	?debug	L 154
	mov	ax,offset DGROUP:s@+98
	push	ax
	call	far ptr _printf
	pop	cx
	?debug	L 155
	mov	ax,offset DGROUP:s@+122
	push	ax
	call	far ptr _printf
	pop	cx
	?debug	L 156
	mov	ax,offset DGROUP:s@+185
	push	ax
	call	far ptr _printf
	pop	cx
	jmp	@3@702
@3@198:
	?debug	L 165
	fld	dword ptr DGROUP:_power_3D
	fcomp	dword ptr DGROUP:s@+206
	fstsw	word ptr [bp-6]
	fwait	
	mov	ax,word ptr [bp-6]
	sahf	
	jbe	short @3@254
	?debug	L 166
	push	si
	fld1	
	fsub	dword ptr DGROUP:_power_3D
	sub	sp,4
	fstp	dword ptr [bp-52]
	fld	dword ptr DGROUP:_power_3D
	sub	sp,4
	fstp	dword ptr [bp-56]
	fwait	
	lea	ax,word ptr [bp-24]
	jmp	short @3@282
@3@254:
	?debug	L 168
	push	si
	fld1	
	fsub	dword ptr DGROUP:_power_3D
	sub	sp,4
	fstp	dword ptr [bp-52]
	fld	dword ptr DGROUP:_power_3D
	sub	sp,4
	fstp	dword ptr [bp-56]
	fwait	
	lea	ax,word ptr [bp-42]
@3@282:
	push	ax
	push	cs
	call	near ptr _Sound_Play_3D
	add	sp,12
	?debug	L 173
	fld	dword ptr [bp-4]
	fadd	dword ptr DGROUP:_power_3D
	fstp	dword ptr DGROUP:_power_3D
	?debug	L 175
	fld	dword ptr DGROUP:_power_3D
	fld1	
	fcompp
	fstsw	word ptr [bp-6]
	fwait	
	mov	ax,word ptr [bp-6]
	sahf	
	jb	short @3@366
	fld	dword ptr DGROUP:_power_3D
	fldz	
	fcompp
	fstsw	word ptr [bp-6]
	fwait	
	mov	ax,word ptr [bp-6]
	sahf	
	jbe	short @3@394
@3@366:
	?debug	L 177
	fld	dword ptr [bp-4]
	fchs	
	fstp	dword ptr [bp-4]
	?debug	L 179
	fld	dword ptr [bp-4]
	fadd	dword ptr DGROUP:_power_3D
	fstp	dword ptr DGROUP:_power_3D
@3@394:
	?debug	L 185
	call	far ptr _kbhit
	or	ax,ax
	je	short @3@702
	?debug	L 189
	call	far ptr _getch
	cmp	ax,102
	je	short @3@562
	cmp	ax,113
	je	short @3@674
	cmp	ax,115
	je	short @3@646
	jmp	short @3@702
@3@562:
	?debug	L 194
	dec	si
	mov	ax,si
	cmp	ax,1
	jae	short @3@618
	?debug	L 195
	mov	si,1
@3@618:
	?debug	L 197
	jmp	short @3@702
@3@646:
	?debug	L 201
	inc	si
	?debug	L 203
	jmp	short @3@702
@3@674:
	?debug	L 207
	mov	di,1
	?debug	L 208
	jmp	short @3@702
@3@702:
	?debug	L 160
	or	di,di
	jne	@@0
	jmp	@3@198
@@0:
	?debug	L 218
	lea	ax,word ptr [bp-42]
	push	ax
	call	far ptr _Sound_Unload
	pop	cx
	?debug	L 219
	lea	ax,word ptr [bp-24]
	push	ax
	call	far ptr _Sound_Unload
@3@758:
	pop	cx
	?debug	L 221
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret	
	?debug	C E60B706F7765725F64656C74610E02FCFF000865+
	?debug	C 66666563745F6C1902D6FF00086566666563745F+
	?debug	C 721902E8FF000564656C61790A04060004646F6E+
	?debug	C 650A0407000461726763040A0600000461726776+
	?debug	C 1D0A080000
	?debug	E
	?debug	E
_main	endp
	?debug	C E9
	?debug	C FA00000000
3DIGI_TEXT	ends
_DATA	segment word public 'DATA'
s@	label	byte
	db	'3dleft.voc'
	db	0
	db	10
	db	'Couldn'
	db	39
	db	't load test sound 3DLEFT.VOC'
	db	0
	db	'3dright.voc'
	db	0
	db	10
	db	'Couldn'
	db	39
	db	't load test sound 3DRIGHT.VOC'
	db	0
	db	10
	db	'3D DIGITAL SOUND DEMO'
	db	10
	db	0
	db	10
	db	'Use the <S> and <F> keys to slow down and speed up the sound.'
	db	0
	db	10
	db	'Press <Q> to exit.'
	db	10
	db	0
	db	0
	db	0
	db	0
	db	'?'
_DATA	ends
3DIGI_TEXT	segment byte public 'CODE'
3DIGI_TEXT	ends
	extrn	__setargv__:far
	public	_main
	extrn	F_FTOL@:far
	public	_Sound_Play_3D
	public	_Par_Write
	public	_power_3D
	public	_left_3D
	public	_right_3D
	public	_par_port
	extrn	_Sound_Unload:far
	extrn	_Sound_Load:far
	extrn	_farmalloc:far
	extrn	_farfree:far
	extrn	_printf:far
	extrn	_kbhit:far
	extrn	_getch:far
_s@	equ	s@
	?debug	C EA010A
	?debug	C E31F00000023040500
	?debug	C EB0B5F5F736574617267765F5F1F00
	?debug	C E32000000023010400
	?debug	C EC055F6D61696E201800
	?debug	C EB07465F46544F4C401F00
	?debug	C E32100000023010400
	?debug	C EC0E5F536F756E645F506C61795F3344211800
	?debug	C E32200000023010400
	?debug	C EC0A5F5061725F5772697465221800
	?debug	C EC095F706F7765725F33440E0000
	?debug	C EC085F6C6566745F3344040000
	?debug	C EC095F72696768745F3344040000
	?debug	C E323000400160A00
	?debug	C EC095F7061725F706F7274230000
	?debug	C E32400000023010400
	?debug	C EB0D5F536F756E645F556E6C6F61642400
	?debug	C E32500000023040400
	?debug	C EB0B5F536F756E645F4C6F61642500
	?debug	C E327000400160100
	?debug	C E32600000023270400
	?debug	C EB0A5F6661726D616C6C6F632600
	?debug	C E32800000023010400
	?debug	C EB085F666172667265652800
	?debug	C E32900000023040401
	?debug	C EB075F7072696E74662900
	?debug	C E32A00000023040400
	?debug	C EB065F6B626869742A00
	?debug	C E32B00000023040400
	?debug	C EB065F67657463682B00
	?debug	C E60A5F736F756E645F707472180600065F736F75+
	?debug	C 6E6419060008534E4453545255431B0600097074+
	?debug	C 72646966665F740406000777636861725F740206+
	?debug	C 000666706F735F740606000673697A655F740A06+
	?debug	C 0009736F756E645F7479701907000C534E445354+
	?debug	C 5255435F7479701B0700
	?debug	C E200066275666665721A00067374617475730400+
	?debug	C 0253531BC012000000
	?debug	C E20005736F756E641A0006736E646C656E0A0009+
	?debug	C 4973506C6179696E671C00096672657175656E63+
	?debug	C 7904C00C000000
	end
