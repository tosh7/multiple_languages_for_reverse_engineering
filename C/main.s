	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 1
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x9, sp
	sub	x8, x29, #8                     ; =8
	str	x8, [x9]
	bl	_scanf
	ldur	w0, [x29, #-8]
	bl	_culculator
	stur	w0, [x29, #-12]
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_culculator                     ; -- Begin function culculator
	.p2align	2
_culculator:                            ; @culculator
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	add	w8, w8, #12                     ; =12
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
	ldr	w8, [sp, #8]
	mul	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #12                     ; =12
	str	w8, [sp, #8]
	ldr	w0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Input a number, then this will output a culculated number.\n"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
