;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jrivaux <jrivaux@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 15:40:58 by jrivaux           #+#    #+#              ;
;    Updated: 2015/02/17 15:41:04 by jrivaux          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_isalpha
extern	_ft_isupper
extern	_ft_islower

section .text

_ft_isalpha:
	call	_ft_islower
	cmp		rax, 1
	je		ok
	call	_ft_isupper
	cmp		rax, 1
	je		ok
	xor		rax, rax
	ret

ok:
	ret
