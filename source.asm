format pe64 efi
entry main

section '.text' code executable readable
main:
	
	mov	rcx, [rdx + 64]
	mov	rdx, hello_str
	sub	rsp, 8 + (4 * 8)
	call	qword[rcx + 8]
	add	rsp, (4 * 8) + 8

	ret

hello_str du 'Hello UEFI x64!', 13, 10, 0
