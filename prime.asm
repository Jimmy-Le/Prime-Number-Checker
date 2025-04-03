; Group Members
; Jimmy Le ID 40316405
; Arielle Wong 40313593
; Joaquin Nahman 40270510
; Josh


; ### INITIALIZE VARIABLES HERE ###
section .data 
	number db 5                       ; ### TEST NUMBER (CHANGE LATER)
	answer db 1                       ; ### ANSWER (1 for prime, 0 for composite number)
	testanswer db 1			  ; ### testanswer

	prime_msg db  'Number is prime', 0x0a 
        not_prime_msg db 'Number is NOT prime', 0x0a
	ending_msg db 'Thank you for using prime checker!', 0x0a



; ### PUT CODE (SUBROUTINES) IN HERE ### 
section .text 
	global _start



; ### GET INPUTS ###
; ### This function will ask the user to input a number and store it in "number"
; ### If the input is invalid, then either ask again or use default number (UP TO YOU)
get_inputs: 










; ### DIVIDE BY 2 ###
; ### This function should divide a given number by 2 and check if the remainder is 0
; ### Return 1 if it IS divisable by 2
; ### Return 0 if it is NOT divisable by 2
; ### Try to save result* 
divide_by_two: 
	
	






; ### DIVIDE BY ODD ###
; ### This function should divide a given number by 2n + 1 and check if the remainder is 0
; ### n should keep incrementing and 2n + 1 should be less than number/2 (LOOP IN _start)  
; ### Return 1 if it IS divisable by 2n + 1
; ### Return 0 if it is NOT divisable by 2n + 1
divide_by_odd: 







; ### DISPLAY PRIME ### 
; ### This function displays a message when a number is PRIME
display_prime: 
mov eax, 4 ;
mov ebx, 1 ; 
mov ecx, prime_msg ;
mov edx, 16 ; 
int 80h ;
ret ;





; ### DISPLAY NOT PRIME ###
; ### This function displays a message when a number is NOT prime
display_not_prime:
mov eax, 4 ;
mov ebx, 1 ;
mov ecx, not_prime_msg ; 
mov edx, 20 ;
int 80h ;
ret ;



; ### DISPLAY END MESSAGE ###
; ### This function displays the program ending message
display_ending_msg:
mov eax, 4 ;
mov ebx, 1 ;
mov ecx, ending_msg ;
mov edx, 36 ;
int 80h ;
ret ;



; ### MAIN FUNCTION ###
; ### We will use this to call the subroutines and simple code
_start: 



; ### WIP FOR IF STATEMENT BASED ON ANSWER assembly sucks
mov byte [answer], 0 ;
mov eax, answer ;
cmp eax, 1 ;
je is_prime ; 
call display_not_prime;
jmp endingf ;
is_prime: call display_prime ;
endingf: call display_ending_msg ;



; ### EXIT (DO NOT TOUCH) ###

	mov eax, 1
	mov ebx, 0
	int 80h








