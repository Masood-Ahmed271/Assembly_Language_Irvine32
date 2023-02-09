COMMENT %
+++++++++++++++++++++++++++++++++++++++++++++++
	Author: Masood Ahmed
++++++++++++++++++++++++++++++++++++++++++++++++
%

INCLUDE IRVINE32.INC
.data
user_prmpt0 byte "Please enter two integers to subtract: ", 0 
user_prmpt1 byte "Please enter two integers to multiply: ", 0 
user_prmpt2 byte "Please enter two integers to divide. Enter the dividend followed by the divisor: ", 0 
user_prmpt3 byte "Please enter the power followed by the exponent: ", 0 
user_prmpt4 byte "Please enter the index of the Fibonacci sequence: ", 0
user_prmpt5 byte "Please enter 10 array elements: ", 0

;; Creating Variables to Store the numbers
num1 dword  ?
num2 dword ?

;; Initialising the empty array
arr byte 10 dup(?)

;; Some statements to explain the output
q1_answer byte "The answer for subtraction is: ",0
q2_answer byte "The answer for multiplication is: ",0
q3_answer byte " is the quotient of the division and the reminder is: ",0
q4_answer byte "The answer for question 4 is: ",0
q5_answer byte "The answer to the fibonacci number at the given term is: ",0
q6_answer byte "The reversed array is: ",0

.code
main proc

	; -------------------------------------------------------
	;; Subtract two given integers
	; -------------------------------------------------------

	Mov edx, offset user_prmpt0  
	Call WriteString; don't change this line 
	Call CRLF ; print new line 

	Call readint ; inputting the first number (integer)
	Mov num1, eax ; moving the first number to variable named num1
	Call readint ; inputting the second number (integer)
	Mov num2, eax; moving the number to variable named num2
	Mov eax,num1 ; moving num1 to eax
	Sub eax,num2 ; subtracting the numbers
	Mov edx, offset q1_answer
	Call WriteString;
	Call writeint ; printing answers
	Call CRLF ; to print a new line


	; -------------------------------------------------------
	;; Multiply two integers
	; -------------------------------------------------------
	
	Mov edx, offset user_prmpt1
	Call WriteString
	Call CRLF

	Call readint ; inputting the first number (integer)
	Mov num1, eax ; moving the first number to variable named num1
	Call readint ; inputting the second number (integer)
	Mov num2, eax; moving the number to variable named num2
	Mov eax, num1 ; moving variables to registers
	Mov ebx, num2; moving variable to registers
	Mul ebx ; multiplying
	Mov edx, offset q2_answer
	Call WriteString;
	Call writeint
	Call CRLF ; to print a new line


	; -------------------------------------------------------
	;; Divide two integers
	; -------------------------------------------------------

	Mov edx, offset user_prmpt2
	Call WriteString
	Call CRLF

	Call readint ; inputting the first number (integer)
	Mov num1, eax ; moving the first number to variable named num1
	Call readint ; inputting the second number (integer)
	Mov num2, eax; moving the number to variable named num2
	;; To perform division, do: mov edx,0
	Mov edx, 0
	Mov eax, num1
	Mov ebx, num2
	Div ebx
	Call writeint
	;; to diplay the Reminder
	Mov eax,edx
	Mov edx, offset q3_answer
	Call WriteString;
	Call writeint
	Call CRLF ; to print a new line

	; -------------------------------------------------------
	;; Finding the power
	; -------------------------------------------------------
	
	Mov edx, offset user_prmpt3
	Call WriteString
	Call CRLF

	Call readint ; inputting the first number (integer)
	Mov num1, eax ; moving the first number to variable named num1
	Call readint ; inputting the second number (integer)
	Mov num2, eax; moving the number to variable named num2
	Mov ebx, num1 ; moving variables to registers
	Mov ecx, num2; moving variable to registers
	Mov eax, 1d; initialisng the eax with 1 because anything raise to 0 is 1
AGAIN: cmp ecx,0 ; Comparing and checking when to end loop
	   jz ENDING ; jump to ending section when counter is 0
	   Mul ebx; multiple the power
	   Loop AGAIN
ENDING: Mov edx, offset q4_answer
		Call WriteString;
		Call writeint
        Call CRLF ; to print a new line


	; -------------------------------------------------------
	;; Finding the fibonacci sequence until a given index (condition: the given term would be > 1)
	; -------------------------------------------------------

	Mov edx, offset user_prmpt4
	Call WriteString
	Call CRLF

	Call readint ; inputting the first number (integer)
	Mov edx,0 ; clearing the edx
	Mov num1, eax ; moving the number to variable named num1 for which fibonacci term is to found out
	Mov edx, offset q5_answer
	Call WriteString;
	Mov eax, 0 ; Printing initial 0
	Call writeint
	Mov eax, 1 ;  for printing intial 1
	Call writeint
	Mov ebx, 0 ; i = 0
	Mov edx, 1 ; k = 1
	Mov eax, 0 ; j = 0
	Mov ecx, num1 ;  to start the loop from num1
L1: cmp ecx,1 ; Comparing and checking when to end loop
	jz END2 ; jump to ending section when counter is 0
	Add ebx, edx; i+k
	Mov eax, ebx; j = i+k
	Call writeint ; printing down the value at that specific term
	Mov ebx, edx; updating i with k
	Mov edx, eax; updating k with j
	LOOP L1
END2: Call CRLF ; to print a new line



	; -------------------------------------------------------
	;; Reversing the array
	; -------------------------------------------------------

	mov edx, offset user_prmpt5
	Call WriteString
	Call CRLF
	Call reverseArray ;  Calling the procedure

	exit
	
main endp

; ===========================================
; This is a procedure that reverses the array
; ===========================================

reverseArray proc

	; for getting an input in an array size of 10 using a loop
	Mov esi, offset arr
	Mov ecx, LENGTHOF arr

	; Getting the input
	L5: Call readint
		Mov [esi],eax
		add esi, TYPE byte
		LOOP l5

	Call CRLF

	Mov eax, 0
	Mov esi, LENGTHOF arr
	Mov ecx, SIZEOF arr
	Mov edx, offset q6_answer
	Call WriteString;

	; For printing the array in reverse
	PrintReverse: dec esi
				  Mov al, arr[esi]
				  Call writeint
				  LOOP PrintReverse
	ret
reverseArray endp

end main
