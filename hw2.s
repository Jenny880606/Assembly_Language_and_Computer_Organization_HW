	.option nopic
	.text
	.align	3
.LC0:
	.string "%d\n"
	.text
	.align 1
	.globl	main
	.type	main, @function
.LC1:
	.string "%d"
	.align 3
.LC2:
	.string "%d "
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
	addi x2, x2, -40 #�}stack
	li x29, 1   #��l��
	sd x29, 0(x2) #�s
	li x29, 5 #��l��
	sd x29, 8(x2) #�s
	li x20, 10 #��l��
	li x21, 20 #��l��
	li x22, 1  #��l��
	li x23, 21 #��l��

    add x11, x8, zero #scanf
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf

    ld x29, 0(x8) #Ū

    bge x29, x23, third #�j��20
    blt x29, x22, zero0 #�p��1
    beq x29, x22, one1 #����1
    blt x29, x23, init #�p��21
    jal x0, otherwise #����otherwise

third:
	sd x29, 32(x2) #�s
	li x24, 5 #��l��
	div x29, x29, x24 #��
	li x25, 9999999 #��l��
	bge x29, x25, otherwise #�j��9999999

init:
	ld x24, 0(x2) #24,25�n�Ϊ����
	ld x25, 8(x2) #��
	add x26, x25, x24 #�[
	sd x26, 16(x2) #�s
	addi x22, x22, 1 #�[
	beq x22, x29, end #�M��J�ۦP
	
	ld x24, 8(x2) #24,25�n�Ϊ����
	ld x25, 16(x2) #��
	add x26, x25, x24 #�[
	sd x26, 24(x2) #�s
	addi x22, x22, 1 #�[
	beq x22, x29, end #�M��J�ۦP

first:	
	beq x22, x29, end #�M��J�ۦP
	addi x22, x22, 1 #�[
	ld x24, 0(x2) #24,25,26,27�n�Ϊ��|��
	ld x25, 8(x2) #��
	ld x26, 16(x2) #��
	ld x27, 24(x2) #��
	sd x25, 0(x2) #�s
	sd x26, 8(x2) #�s
	sd x27, 16(x2) #�s
	add x26, x26, x27 #�[
	sd x26, 24(x2) #�s
	blt x22, x20, first #recursive

second:
	beq x22, x29, end #�M��J�ۦP
	addi x22, x22, 1 #�[
	ld x24, 0(x2) #24,25,26,27�n�Ϊ��|��
	ld x25, 8(x2) #��
	ld x26, 16(x2) #��
	ld x27, 24(x2) #��
	sd x25, 0(x2) #�s
	sd x26, 8(x2) #�s
	sd x27, 16(x2) #�s
	add x26, x25, x26 #�[
	sd x26, 24(x2) #�s
	blt x22, x21, second #recursive

end:
    ld x29, 32(x2) #��
    bge x29, x23, final #�j��20
    jal x0, all #����all

final:
    add x29, x29, x29 #�[
    add x26, x26, x29 #�[
    jal x0, all #����all

zero0:
    li x26, 1 #��l��
    jal x0, all #����all

one1:
    li x26, 5 #��l��
    jal x0, all #����all

otherwise:
    addi x26, x0, -1 #��l��

all:
    add x11, x26, 0 #printf
    lui x15,%hi(.LC0)    
    addi x10,x15,%lo(.LC0)
    call printf
    addi x2, x2, 40 #��stack
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
    <form method="post" action="./File_DownLoad_Wk_zip.aspx?File_name=PA2_1061416.s&amp;type=3&amp;id=2693812" id="form1">
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
