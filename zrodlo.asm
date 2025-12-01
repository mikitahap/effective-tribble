.686
.model flat
public _srednia_harm
.data
tablica dd ?
ilosc dd ?
jedynka dd 1
wynik dd ?
.code
_srednia_harm PROC
	push ebp 
	mov ebp,esp
	push eax
	mov eax, [ebp+8]
	mov tablica, eax
	; Zaladowanie adresu tablicy do zmiennej tablica
	mov eax, [ebp+12]
	mov ilosc, eax
	; Zaladowanie liczby elementow do zmiennej ilosc

	mov ecx, ilosc
	mov eax, tablica
	mov ebx, 0
	ptl:
		fild dword PTR jedynka
		fdiv dword PTR [eax + ebx]
		fld dword PTR wynik
		fadd ST(0), ST(1)
		fst dword PTR wynik
		fstp st(0)
		add ebx, 4
	loop ptl

	fld dword PTR wynik
	fild dword PTR ilosc
	fdiv ST(0), ST(1)

	pop eax
	pop ebp
	ret 
_srednia_harm ENDP
END
