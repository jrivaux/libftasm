;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jrivaux <jrivaux@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 15:11:24 by jrivaux           #+#    #+#              ;
;    Updated: 2015/02/17 15:11:27 by jrivaux          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_islower

section .text

_ft_islower:
	cmp		rdi, 0x61
	jl		lret
	cmp		rdi, 0x7a
	jg		lret
	mov		rax, 1
	ret

lret:
	xor		rax, rax
	ret
