mov PTR_ARRAY, a0

mov a0, a1
add #SIZE_ARRAY, a1
sub #1, a1

mov a0, r0

; a0 représente index debut
; a1 représente index fin

begin_loop: cmp a0, a1
BGE end_loop

mov (a0), r1
mov (a1), r2
mov r1, (a1)
mov r2, (a0)

add #1, a0
sub #1, a1

bra begin_loop
end_loop:
