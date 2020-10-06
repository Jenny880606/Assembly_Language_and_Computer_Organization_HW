	.option nopic
	.text
	.align	3
.LC0:
	.string "%llu\n"
	.text
	.align 1
	.globl	main
	.type	main, @function
.LC1:
	.string "%llu"
	.align 3
.LC2:
	.string "%llu "
	.align 3
.LC3:
	.string "\n"
	.align 3
main:
	addi x2,x2,-32
	sd	x1,24(x2)
	sd	x8,16(x2)
	addi x8,x2,32

	#begin
    addi x2, x2, -120
S1:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 0(x2)
    
S2:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 8(x2)

S3:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 16(x2)

S4:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 24(x2)

S5:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 32(x2)

S6:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 40(x2)

S7:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 48(x2)

S8:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 56(x2)

S9:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 64(x2)

S10:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 72(x2)

S11:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29, 80(x2)

    li x24, 10
again:
    li x20, 10
    li x9, 1
    addi x24, x24, -1
    beq x24, x0, a
bubblesort:
    slli x6, x9, 3
    add x6, x2, x6
    ld x5, 0(x6)
    addi x9, x9, 1  

    slli x28, x9, 3
    add x28, x2, x28
    ld x7, 0(x28)
    
    blt x5, x7, swap
    bne x9, x20, bubblesort
    beq x9, x20, again
swap:
    add x30, x7, x0
    sd x5, 0(x28)
    sd x30, 0(x6)
    bne x9, x20, bubblesort
    beq x9, x20, again

a:
    li x22, 1
    li x21, 0
    li x20, 0
    li x9, 10
    ld x24, 0(x2)
output:
    slli x18, x9, 3
    add x18, x2, x18
    ld x29, 0(x18)
    beq x9, x22, last  
    bne x9, x22, nlast  

last:
    add x11, x29, 0
    lui x15,%hi(.LC0)    
    addi x10,x15,%lo(.LC0)
    call printf
    jal x0, test

nlast:
    add x11, x29, 0
    lui x15,%hi(.LC2)    
    addi x10,x15,%lo(.LC2)
    call printf

test:     
    addi x9, x9, -1
    addi x20, x20, 1 
    beq x29, x24, e   
    bne x9, x0, output
    beq x9, x0, p
e:
   add x21, x20, x0
   bne x9, x0, output
   
p:
   add x11, x21, 0
   lui x15,%hi(.LC0)    
   addi x10,x15,%lo(.LC0)
   call printf

done:
    addi x2, x2, 120
	#end

	li	x15,0
	mv	x10,x15
	ld	x1,24(x2)
	ld	x8,16(x2)
	addi x2,x2,32
	jr	x1
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.0"

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>

</title></head>
<body>
    <form method="post" action="./File_DownLoad_Wk_zip.aspx?File_name=1061416-hw1.s&amp;type=3&amp;id=2652089" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTEzNDM3NzkxOWRkwneTr34MFXJYUKyKKda+DU4gQVM=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="629601C3" />
</div>
    <div>
    
    </div>
    </form>
</body>
</html>
