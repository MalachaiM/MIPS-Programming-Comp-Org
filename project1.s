.data
    input: .space 11    
    prompt:.asciiz "\n"
    error:.asciiz "\nInvalid char, Program aborting\n"
    output:.asciiz "\n"
    
    # X = 02878349
    # N = 26 + (X % 11)
    # N = 26 + (02878349 % 11)
    # N = 26 + 1
    # N = 27
    # M = N – 10
    # M = 27 - 10
    # M = 17
    

.text    
 
 main:
 	#sets select registers to zero, there will be used later
    	addi $s1, $zero, 0
    	addi $t2, $zero, 0
    	addi $t3, $zero, 0
    	
    	#print prompt
    	li $v0, 4
    	la $a0, prompt
    	syscall
    	
    	#takes 10 chars as a string
    	la $a0, input
        li $a1, 11       
        li $v0, 8            
        syscall
    
 
fun2:   #function start 

	bge $t0, 10, exit #loop counter, if true jump to exit
	
	  
	lb $t1, input($t0) #loads current char to reg. $t1
    
    	
    	
    	#move $v0, $t1
    	addi $t0, $t0, 1 #loop counter++
	
	#each base accepted in my number base is checked and added to $t2, then jumps back to fun2 label
	
	bne $t1, '0', num1 #checks if reg. $t1 equals this char (In this case char '0') is checked. if not equal check next block (in this case num1 is next)
	addi $t2, $t2, 0 	#reg. $t2 is set to its value plus reg. $t1's  equivalint Int value
	j fun2			#loop to function start if branch is true
				# code repeats format from line 55 to line 256
num1:
	bne $t1, '1', num2
	addi $t2, $t2, 1 
	j fun2
	
num2:	
	bne $t1, '2', num3
	addi $t2, $t2, 2 
	j fun2
	
num3:	
	bne $t1, '3', num4
	addi $t2, $t2, 3 
	j fun2
	
num4:	
	bne $t1, '4', num5
	addi $t2, $t2, 4 
	j fun2
	
num5:	
	bne $t1, '5', num6
	addi $t2, $t2, 5
	j fun2
	
num6:	
	bne $t1, '6', num7
	addi $t2, $t2, 6 
	j fun2
	
num7:	
	bne $t1, '7', num8
	addi $t2, $t2, 7 
	j fun2
	
num8:	
	bne $t1, '8', num9
	addi $t2, $t2, 8 
	j fun2
	
num9:	
	bne $t1, '9', numA
	addi $t2, $t2, 9 
	j fun2
	
numA:	
	bne $t1, 'a', numB
	addi $t2, $t2, 10 
	j fun2
	
numB:	
	bne $t1, 'b', numC
	addi $t2, $t2, 11 
	j fun2
	
numC:	
	bne $t1, 'c', numD
	addi $t2, $t2, 12 
	j fun2
	
numD:	
	bne $t1, 'd', numE
	addi $t2, $t2, 13 
	j fun2
	
numE:	
	bne $t1, 'e', numF
	addi $t2, $t2, 14 
	j fun2
	
numF:	
	bne $t1, 'f', numG
	addi $t2, $t2, 15 
	j fun2
	
numG:	
	bne $t1, 'g', numH
	addi $t2, $t2, 16 
	j fun2
	
numH:	
	bne $t1, 'h', numI
	addi $t2, $t2, 17 
	j fun2
	
numI:	
	bne $t1, 'i', numJ
	addi $t2, $t2, 18 
	j fun2
	
numJ:	
	bne $t1, 'j', numK
	addi $t2, $t2, 19 
	j fun2
	
numK:	
	bne $t1, 'k', numL
	addi $t2, $t2, 20 
	j fun2
	
numL:	
	bne $t1, 'l', numM
	addi $t2, $t2, 21 
	j fun2
	
numM:	
	bne $t1, 'm', numN
	addi $t2, $t2, 22 
	j fun2
	
numN:	
	bne $t1, 'n', numO
	addi $t2, $t2, 23 
	j fun2
	
numO:	
	bne $t1, 'o', numP
	addi $t2, $t2, 24 
	j fun2
	
numP:	
	bne $t1, 'p', numQ
	addi $t2, $t2, 25 
	j fun2
	
numQ:	
	bne $t1, 'q', NumA
	addi $t2, $t2, 26 
	j fun2
	
	
NumA:	
	bne $t1, 'A', NumB
	addi $t2, $t2, 10 
	j fun2
	
NumB:	
	bne $t1, 'B', NumC
	addi $t2, $t2, 11 
	j fun2
	
NumC:	
	bne $t1, 'C', NumD
	addi $t2, $t2, 12 
	j fun2
NumD:	
	bne $t1, 'D', NumE
	addi $t2, $t2, 13 
	j fun2
NumE:	
	bne $t1, 'E', NumF
	addi $t2, $t2, 14 
	j fun2
NumF:	
	bne $t1, 'F', NumG
	addi $t2, $t2, 15 
	j fun2
NumG:	
	bne $t1, 'G', NumH
	addi $t2, $t2, 16 
	j fun2
NumH:	
	bne $t1, 'H', NumI
	addi $t2, $t2, 17 
	j fun2
NumI:	
	bne $t1, 'I', NumJ
	addi $t2, $t2, 18 
	j fun2
NumJ:	
	bne $t1, 'J', NumK
	addi $t2, $t2, 19 
	j fun2
NumK:	
	bne $t1, 'K', NumL
	addi $t2, $t2, 20 
	j fun2
NumL:	
	bne $t1, 'L', NumM
	addi $t2, $t2, 21 
	j fun2
NumM:	
	bne $t1, 'M', NumN
	addi $t2, $t2, 22 
	j fun2
NumN:	
	bne $t1, 'N', NumO
	addi $t2, $t2, 23 
	j fun2
NumO:	
	bne $t1, 'O', NumP
	addi $t2, $t2, 24 
	j fun2
NumP:	
	bne $t1, 'P', NumQ
	addi $t2, $t2, 25 
	j fun2
NumQ:	
	bne $t1, 'Q', invalid
	addi $t2, $t2, 26 
	j fun2
		
invalid:#if branched to here an invalid char has been used
	#sets flag for invalid chars, so we know later user has inputed an ivalid char (if flag != 0 invalid char was used and output should = 0)
	addi $t3, $t3, 1 #reg. $t3 = $t3 + 1
	j fun2 #jump to function start
	

    	
    
exit: #output if all chars used are valid, code ending
	
	bnez $t3, abort #checks invalid char flag, if true jump to abort ending to code
	
	#output message
	li $v0, 4
    	la $a0, output
    	syscall
    	
    	#outputs the sum
	li $v0, 1
    	move $a0, $t2
    	syscall
    
    	#ends program	
   	li $v0, 10
    	syscall
    	
abort: #ouput if invalid char is used, code ending
	
	#output message
	li $v0, 4
    	la $a0, output
    	syscall
    	
    	#outputs zero
    	addi $t2, $zero, 0 #sets $t2 to zero
	li $v0, 1
    	move $a0, $t2
    	syscall
    	
    	#ends program
    	li $v0, 10
    	syscall