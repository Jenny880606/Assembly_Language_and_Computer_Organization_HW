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
	addi x2, x2, -40 #開stack
	li x29, 1   #初始值
	sd x29, 0(x2) #存
	li x29, 5 #初始值
	sd x29, 8(x2) #存
	li x20, 10 #初始值
	li x21, 20 #初始值
	li x22, 1  #初始值
	li x23, 21 #初始值

    add x11, x8, zero #scanf
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf

    ld x29, 0(x8) #讀

    bge x29, x23, third #大於20
    blt x29, x22, zero0 #小於1
    beq x29, x22, one1 #等於1
    blt x29, x23, init #小於21
    jal x0, otherwise #跳到otherwise

third:
	sd x29, 32(x2) #存
	li x24, 5 #初始值
	div x29, x29, x24 #除
	li x25, 9999999 #初始值
	bge x29, x25, otherwise #大於9999999

init:
	ld x24, 0(x2) #24,25要用的兩個
	ld x25, 8(x2) #取
	add x26, x25, x24 #加
	sd x26, 16(x2) #存
	addi x22, x22, 1 #加
	beq x22, x29, end #和輸入相同
	
	ld x24, 8(x2) #24,25要用的兩個
	ld x25, 16(x2) #取
	add x26, x25, x24 #加
	sd x26, 24(x2) #存
	addi x22, x22, 1 #加
	beq x22, x29, end #和輸入相同

first:	
	beq x22, x29, end #和輸入相同
	addi x22, x22, 1 #加
	ld x24, 0(x2) #24,25,26,27要用的四個
	ld x25, 8(x2) #取
	ld x26, 16(x2) #取
	ld x27, 24(x2) #取
	sd x25, 0(x2) #存
	sd x26, 8(x2) #存
	sd x27, 16(x2) #存
	add x26, x26, x27 #加
	sd x26, 24(x2) #存
	blt x22, x20, first #recursive

second:
	beq x22, x29, end #和輸入相同
	addi x22, x22, 1 #加
	ld x24, 0(x2) #24,25,26,27要用的四個
	ld x25, 8(x2) #取
	ld x26, 16(x2) #取
	ld x27, 24(x2) #取
	sd x25, 0(x2) #存
	sd x26, 8(x2) #存
	sd x27, 16(x2) #存
	add x26, x25, x26 #加
	sd x26, 24(x2) #存
	blt x22, x21, second #recursive

end:
    ld x29, 32(x2) #取
    bge x29, x23, final #大於20
    jal x0, all #跳到all

final:
    add x29, x29, x29 #加
    add x26, x26, x29 #加
    jal x0, all #跳到all

zero0:
    li x26, 1 #初始值
    jal x0, all #跳到all

one1:
    li x26, 5 #初始值
    jal x0, all #跳到all

otherwise:
    addi x26, x0, -1 #初始值

all:
    add x11, x26, 0 #printf
    lui x15,%hi(.LC0)    
    addi x10,x15,%lo(.LC0)
    call printf
    addi x2, x2, 40 #還stack
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
