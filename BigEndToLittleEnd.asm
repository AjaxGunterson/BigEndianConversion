TITLE BIG ENDIAN TO LITTLE ENDIAN     
; Converts big endian to little endian

INCLUDE Irvine32.inc
.data
bigEndian		Byte	12h,34h,56h,78h
littleEndian	DWORD	?	
.code
main PROC
	mov		ecx,4	; Set loop counter to length of starting
	mov		esi,0	; Clear to use as counter for array in loop
	L1:
		mov		al,[bigEndian+ecx-1]			; Counter-1 to acess
												; first number of array
												; Store current byte of array into al
		mov		byte PTR [littleEndian+esi],al	; Take byte to al
		inc		esi								; Move to next byte in littleEndian
		Loop L1									;
	mov		eax,littleEndian	; Load eax for writeHex
	call	writeHex			; Displays variable littleEndian

exit
main ENDP
END main