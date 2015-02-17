;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jrivaux <jrivaux@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 14:28:22 by jrivaux           #+#    #+#              ;
;    Updated: 2015/02/17 14:28:25 by jrivaux          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_isupper

section .text

_ft_isupper:
	cmp		rdi, 0x41
	jl		Lret
	cmp		rdi, 0x5a
	jg		Lret
	mov		rax, 1
	ret

Lret:
	xor		rax, rax
	ret