;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_min.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jrivaux <jrivaux@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 13:49:31 by jrivaux           #+#    #+#              ;
;    Updated: 2015/02/17 13:49:46 by jrivaux          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_min

section .text

_ft_min:
	cmp		edi, esi
	jl		min
	mov		eax, esi
	ret

min:
	mov		eax, edi
	ret