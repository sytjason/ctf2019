; Disassembly of "main.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    ret                                           ; $0000: $c9


    rst $38                                       ; $0001: $ff
    rst $38                                       ; $0002: $ff
    rst $38                                       ; $0003: $ff
    rst $38                                       ; $0004: $ff
    rst $38                                       ; $0005: $ff
    rst $38                                       ; $0006: $ff
    rst $38                                       ; $0007: $ff

RST_08::
    rst $38                                       ; $0008: $ff
    rst $38                                       ; $0009: $ff
    rst $38                                       ; $000a: $ff
    rst $38                                       ; $000b: $ff
    rst $38                                       ; $000c: $ff
    rst $38                                       ; $000d: $ff
    rst $38                                       ; $000e: $ff
    rst $38                                       ; $000f: $ff

RST_10::
    add b                                         ; $0010: $80
    ld b, b                                       ; $0011: $40
    jr nz, jr_000_0024                            ; $0012: $20 $10

    ld [$0204], sp                                ; $0014: $08 $04 $02
    db $01                                        ; $0017: $01

RST_18::
    ld bc, $0402                                  ; $0018: $01 $02 $04
    ld [$2010], sp                                ; $001b: $08 $10 $20
    ld b, b                                       ; $001e: $40
    add b                                         ; $001f: $80

RST_20::
    rst $38                                       ; $0020: $ff
    rst $38                                       ; $0021: $ff
    rst $38                                       ; $0022: $ff
    rst $38                                       ; $0023: $ff

jr_000_0024:
    rst $38                                       ; $0024: $ff
    rst $38                                       ; $0025: $ff
    rst $38                                       ; $0026: $ff
    rst $38                                       ; $0027: $ff

RST_28::
    rst $38                                       ; $0028: $ff
    rst $38                                       ; $0029: $ff
    rst $38                                       ; $002a: $ff
    rst $38                                       ; $002b: $ff
    rst $38                                       ; $002c: $ff
    rst $38                                       ; $002d: $ff
    rst $38                                       ; $002e: $ff
    rst $38                                       ; $002f: $ff

RST_30::
    rst $38                                       ; $0030: $ff
    rst $38                                       ; $0031: $ff
    rst $38                                       ; $0032: $ff
    rst $38                                       ; $0033: $ff
    rst $38                                       ; $0034: $ff
    rst $38                                       ; $0035: $ff
    rst $38                                       ; $0036: $ff
    rst $38                                       ; $0037: $ff

RST_38::
    rst $38                                       ; $0038: $ff
    rst $38                                       ; $0039: $ff
    rst $38                                       ; $003a: $ff
    rst $38                                       ; $003b: $ff
    rst $38                                       ; $003c: $ff
    rst $38                                       ; $003d: $ff
    rst $38                                       ; $003e: $ff
    rst $38                                       ; $003f: $ff

VBlankInterrupt::
    push hl                                       ; $0040: $e5
    ld hl, $c7bd                                  ; $0041: $21 $bd $c7
    jp Jump_000_0067                              ; $0044: $c3 $67 $00


    rst $38                                       ; $0047: $ff

LCDCInterrupt::
    push hl                                       ; $0048: $e5
    ld hl, $c7cd                                  ; $0049: $21 $cd $c7
    jp Jump_000_0067                              ; $004c: $c3 $67 $00


    rst $38                                       ; $004f: $ff

TimerOverflowInterrupt::
    push hl                                       ; $0050: $e5
    ld hl, $c7dd                                  ; $0051: $21 $dd $c7
    jp Jump_000_0067                              ; $0054: $c3 $67 $00


    rst $38                                       ; $0057: $ff

SerialTransferCompleteInterrupt::
    push hl                                       ; $0058: $e5
    ld hl, $c7ed                                  ; $0059: $21 $ed $c7
    jp Jump_000_0067                              ; $005c: $c3 $67 $00


    rst $38                                       ; $005f: $ff

JoypadTransitionInterrupt::
    push hl                                       ; $0060: $e5
    ld hl, $c7fd                                  ; $0061: $21 $fd $c7
    jp Jump_000_0067                              ; $0064: $c3 $67 $00


Jump_000_0067:
    push af                                       ; $0067: $f5

    push bc                                       ; $0068: $c5
    push de                                       ; $0069: $d5

jr_000_006a:
    ld a, [hl+]                                   ; $006a: $2a
    or [hl]                                       ; $006b: $b6
    jr z, jr_000_0079                             ; $006c: $28 $0b

    push hl                                       ; $006e: $e5
    ld a, [hl-]                                   ; $006f: $3a
    ld l, [hl]                                    ; $0070: $6e
    ld h, a                                       ; $0071: $67
    call Call_000_007e                            ; $0072: $cd $7e $00
    pop hl                                        ; $0075: $e1
    inc hl                                        ; $0076: $23
    jr jr_000_006a                                ; $0077: $18 $f1

jr_000_0079:
    pop de                                        ; $0079: $d1
    pop bc                                        ; $007a: $c1
    pop af                                        ; $007b: $f1
    pop hl                                        ; $007c: $e1
    reti                                          ; $007d: $d9


Call_000_007e:
    jp hl                                         ; $007e: $e9


    rst $38                                       ; $007f: $ff
    rst $38                                       ; $0080: $ff
    rst $38                                       ; $0081: $ff
    rst $38                                       ; $0082: $ff
    rst $38                                       ; $0083: $ff
    rst $38                                       ; $0084: $ff
    rst $38                                       ; $0085: $ff
    rst $38                                       ; $0086: $ff
    rst $38                                       ; $0087: $ff
    rst $38                                       ; $0088: $ff
    rst $38                                       ; $0089: $ff
    rst $38                                       ; $008a: $ff
    rst $38                                       ; $008b: $ff
    rst $38                                       ; $008c: $ff
    rst $38                                       ; $008d: $ff
    rst $38                                       ; $008e: $ff
    rst $38                                       ; $008f: $ff
    rst $38                                       ; $0090: $ff
    rst $38                                       ; $0091: $ff
    rst $38                                       ; $0092: $ff
    rst $38                                       ; $0093: $ff
    rst $38                                       ; $0094: $ff
    rst $38                                       ; $0095: $ff
    rst $38                                       ; $0096: $ff
    rst $38                                       ; $0097: $ff
    rst $38                                       ; $0098: $ff
    rst $38                                       ; $0099: $ff
    rst $38                                       ; $009a: $ff
    rst $38                                       ; $009b: $ff
    rst $38                                       ; $009c: $ff
    rst $38                                       ; $009d: $ff
    rst $38                                       ; $009e: $ff
    rst $38                                       ; $009f: $ff
    rst $38                                       ; $00a0: $ff
    rst $38                                       ; $00a1: $ff
    rst $38                                       ; $00a2: $ff
    rst $38                                       ; $00a3: $ff
    rst $38                                       ; $00a4: $ff
    rst $38                                       ; $00a5: $ff
    rst $38                                       ; $00a6: $ff
    rst $38                                       ; $00a7: $ff
    rst $38                                       ; $00a8: $ff
    rst $38                                       ; $00a9: $ff
    rst $38                                       ; $00aa: $ff
    rst $38                                       ; $00ab: $ff
    rst $38                                       ; $00ac: $ff
    rst $38                                       ; $00ad: $ff
    rst $38                                       ; $00ae: $ff
    rst $38                                       ; $00af: $ff
    rst $38                                       ; $00b0: $ff
    rst $38                                       ; $00b1: $ff
    rst $38                                       ; $00b2: $ff
    rst $38                                       ; $00b3: $ff
    rst $38                                       ; $00b4: $ff
    rst $38                                       ; $00b5: $ff
    rst $38                                       ; $00b6: $ff
    rst $38                                       ; $00b7: $ff
    rst $38                                       ; $00b8: $ff
    rst $38                                       ; $00b9: $ff
    rst $38                                       ; $00ba: $ff
    rst $38                                       ; $00bb: $ff
    rst $38                                       ; $00bc: $ff
    rst $38                                       ; $00bd: $ff
    rst $38                                       ; $00be: $ff
    rst $38                                       ; $00bf: $ff
    rst $38                                       ; $00c0: $ff
    rst $38                                       ; $00c1: $ff
    rst $38                                       ; $00c2: $ff
    rst $38                                       ; $00c3: $ff
    rst $38                                       ; $00c4: $ff
    rst $38                                       ; $00c5: $ff
    rst $38                                       ; $00c6: $ff
    rst $38                                       ; $00c7: $ff
    rst $38                                       ; $00c8: $ff
    rst $38                                       ; $00c9: $ff
    rst $38                                       ; $00ca: $ff
    rst $38                                       ; $00cb: $ff
    rst $38                                       ; $00cc: $ff
    rst $38                                       ; $00cd: $ff
    rst $38                                       ; $00ce: $ff
    rst $38                                       ; $00cf: $ff
    rst $38                                       ; $00d0: $ff
    rst $38                                       ; $00d1: $ff
    rst $38                                       ; $00d2: $ff
    rst $38                                       ; $00d3: $ff
    rst $38                                       ; $00d4: $ff
    rst $38                                       ; $00d5: $ff
    rst $38                                       ; $00d6: $ff
    rst $38                                       ; $00d7: $ff
    rst $38                                       ; $00d8: $ff
    rst $38                                       ; $00d9: $ff
    rst $38                                       ; $00da: $ff
    rst $38                                       ; $00db: $ff
    rst $38                                       ; $00dc: $ff
    rst $38                                       ; $00dd: $ff
    rst $38                                       ; $00de: $ff
    rst $38                                       ; $00df: $ff
    rst $38                                       ; $00e0: $ff
    rst $38                                       ; $00e1: $ff
    rst $38                                       ; $00e2: $ff
    rst $38                                       ; $00e3: $ff
    rst $38                                       ; $00e4: $ff
    rst $38                                       ; $00e5: $ff
    rst $38                                       ; $00e6: $ff
    rst $38                                       ; $00e7: $ff
    rst $38                                       ; $00e8: $ff
    rst $38                                       ; $00e9: $ff
    rst $38                                       ; $00ea: $ff
    rst $38                                       ; $00eb: $ff
    rst $38                                       ; $00ec: $ff
    rst $38                                       ; $00ed: $ff
    rst $38                                       ; $00ee: $ff
    rst $38                                       ; $00ef: $ff
    rst $38                                       ; $00f0: $ff
    rst $38                                       ; $00f1: $ff
    rst $38                                       ; $00f2: $ff
    rst $38                                       ; $00f3: $ff
    rst $38                                       ; $00f4: $ff
    rst $38                                       ; $00f5: $ff
    rst $38                                       ; $00f6: $ff
    rst $38                                       ; $00f7: $ff
    rst $38                                       ; $00f8: $ff
    rst $38                                       ; $00f9: $ff
    rst $38                                       ; $00fa: $ff
    rst $38                                       ; $00fb: $ff
    rst $38                                       ; $00fc: $ff
    rst $38                                       ; $00fd: $ff
    rst $38                                       ; $00fe: $ff
    rst $38                                       ; $00ff: $ff

Boot::
    nop                                           ; $0100: $00
    jp Jump_000_0150                              ; $0101: $c3 $50 $01


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "MAIN", $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $00

HeaderROMSize::
    db $00

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $00

HeaderMaskROMVersion::
    db $01

HeaderComplementCheck::
    db $c1

HeaderGlobalChecksum::
    db $e3, $01

Jump_000_0150:
    di                                            ; $0150: $f3
    ld d, a                                       ; $0151: $57
    xor a                                         ; $0152: $af
    ld sp, $e000                                  ; $0153: $31 $00 $e0
    ld hl, $dfff                                  ; $0156: $21 $ff $df
    ld c, $20                                     ; $0159: $0e $20
    ld b, $00                                     ; $015b: $06 $00

jr_000_015d:
    ld [hl-], a                                   ; $015d: $32
    dec b                                         ; $015e: $05
    jr nz, jr_000_015d                            ; $015f: $20 $fc

    dec c                                         ; $0161: $0d
    jr nz, jr_000_015d                            ; $0162: $20 $f9

    ld hl, $feff                                  ; $0164: $21 $ff $fe
    ld b, $00                                     ; $0167: $06 $00

jr_000_0169:
    ld [hl-], a                                   ; $0169: $32
    dec b                                         ; $016a: $05
    jr nz, jr_000_0169                            ; $016b: $20 $fc

    ld hl, $ffff                                  ; $016d: $21 $ff $ff
    ld b, $80                                     ; $0170: $06 $80

jr_000_0172:
    ld [hl-], a                                   ; $0172: $32
    dec b                                         ; $0173: $05
    jr nz, jr_000_0172                            ; $0174: $20 $fc

    ld a, d                                       ; $0176: $7a
    ld [$c7b4], a                                 ; $0177: $ea $b4 $c7
    call Call_000_136e                            ; $017a: $cd $6e $13
    xor a                                         ; $017d: $af
    ldh [rSCY], a                                 ; $017e: $e0 $42
    ldh [rSCX], a                                 ; $0180: $e0 $43
    ldh [rSTAT], a                                ; $0182: $e0 $41
    ldh [rWY], a                                  ; $0184: $e0 $4a
    ld a, $07                                     ; $0186: $3e $07
    ldh [rWX], a                                  ; $0188: $e0 $4b
    ld bc, $ff80                                  ; $018a: $01 $80 $ff
    ld hl, $1385                                  ; $018d: $21 $85 $13
    ld b, $0a                                     ; $0190: $06 $0a

jr_000_0192:
    ld a, [hl+]                                   ; $0192: $2a
    ld [c], a                                     ; $0193: $e2
    inc c                                         ; $0194: $0c
    dec b                                         ; $0195: $05
    jr nz, jr_000_0192                            ; $0196: $20 $fa

    ld bc, $1346                                  ; $0198: $01 $46 $13
    call Call_000_12fd                            ; $019b: $cd $fd $12
    ld bc, $138f                                  ; $019e: $01 $8f $13
    call Call_000_130f                            ; $01a1: $cd $0f $13
    ld a, $e4                                     ; $01a4: $3e $e4
    ldh [rBGP], a                                 ; $01a6: $e0 $47
    ldh [rOBP0], a                                ; $01a8: $e0 $48
    ld a, $1b                                     ; $01aa: $3e $1b
    ldh [rOBP1], a                                ; $01ac: $e0 $49
    ld a, $c0                                     ; $01ae: $3e $c0
    ldh [rLCDC], a                                ; $01b0: $e0 $40
    xor a                                         ; $01b2: $af
    ldh [rIF], a                                  ; $01b3: $e0 $0f
    ld a, $09                                     ; $01b5: $3e $09
    ldh [rIE], a                                  ; $01b7: $e0 $ff
    xor a                                         ; $01b9: $af
    ldh [rNR52], a                                ; $01ba: $e0 $26
    ldh [rSC], a                                  ; $01bc: $e0 $02
    ld a, $66                                     ; $01be: $3e $66
    ldh [rSB], a                                  ; $01c0: $e0 $01
    ld a, $80                                     ; $01c2: $3e $80
    ldh [rSC], a                                  ; $01c4: $e0 $02
    xor a                                         ; $01c6: $af
    call Call_000_1672                            ; $01c7: $cd $72 $16
    ei                                            ; $01ca: $fb
    call Call_000_1459                            ; $01cb: $cd $59 $14
    or h                                          ; $01ce: $b4
    rrca                                          ; $01cf: $0f
    ld bc, $7600                                  ; $01d0: $01 $00 $76
    jr @-$01                                      ; $01d3: $18 $fd

    rst $38                                       ; $01d5: $ff
    rst $38                                       ; $01d6: $ff
    rst $38                                       ; $01d7: $ff
    rst $38                                       ; $01d8: $ff
    rst $38                                       ; $01d9: $ff
    rst $38                                       ; $01da: $ff
    rst $38                                       ; $01db: $ff
    rst $38                                       ; $01dc: $ff
    rst $38                                       ; $01dd: $ff
    rst $38                                       ; $01de: $ff
    rst $38                                       ; $01df: $ff
    ret                                           ; $01e0: $c9


    rst $38                                       ; $01e1: $ff
    rst $38                                       ; $01e2: $ff
    rst $38                                       ; $01e3: $ff
    rst $38                                       ; $01e4: $ff
    rst $38                                       ; $01e5: $ff
    rst $38                                       ; $01e6: $ff
    rst $38                                       ; $01e7: $ff
    rst $38                                       ; $01e8: $ff
    rst $38                                       ; $01e9: $ff
    rst $38                                       ; $01ea: $ff
    rst $38                                       ; $01eb: $ff
    rst $38                                       ; $01ec: $ff
    rst $38                                       ; $01ed: $ff
    rst $38                                       ; $01ee: $ff
    rst $38                                       ; $01ef: $ff
    rst $38                                       ; $01f0: $ff
    rst $38                                       ; $01f1: $ff
    rst $38                                       ; $01f2: $ff
    rst $38                                       ; $01f3: $ff
    rst $38                                       ; $01f4: $ff
    rst $38                                       ; $01f5: $ff
    rst $38                                       ; $01f6: $ff
    rst $38                                       ; $01f7: $ff
    rst $38                                       ; $01f8: $ff
    rst $38                                       ; $01f9: $ff
    rst $38                                       ; $01fa: $ff
    rst $38                                       ; $01fb: $ff
    rst $38                                       ; $01fc: $ff
    rst $38                                       ; $01fd: $ff
    rst $38                                       ; $01fe: $ff
    rst $38                                       ; $01ff: $ff

Call_000_0200:
    push bc                                       ; $0200: $c5
    ld c, $00                                     ; $0201: $0e $00

Jump_000_0203:
    xor a                                         ; $0203: $af
    ld a, c                                       ; $0204: $79
    ld hl, sp+$04                                 ; $0205: $f8 $04
    sbc [hl]                                      ; $0207: $9e

jr_000_0208:
    jp nc, Jump_000_0212                          ; $0208: $d2 $12 $02

    call Call_000_1357                            ; $020b: $cd $57 $13
    inc c                                         ; $020e: $0c
    jp Jump_000_0203                              ; $020f: $c3 $03 $02


Jump_000_0212:
    pop bc                                        ; $0212: $c1
    ret                                           ; $0213: $c9


    nop                                           ; $0214: $00
    nop                                           ; $0215: $00
    nop                                           ; $0216: $00
    nop                                           ; $0217: $00
    nop                                           ; $0218: $00
    nop                                           ; $0219: $00
    nop                                           ; $021a: $00

jr_000_021b:
    nop                                           ; $021b: $00
    nop                                           ; $021c: $00
    nop                                           ; $021d: $00
    nop                                           ; $021e: $00
    nop                                           ; $021f: $00
    nop                                           ; $0220: $00
    nop                                           ; $0221: $00
    nop                                           ; $0222: $00
    nop                                           ; $0223: $00
    nop                                           ; $0224: $00
    nop                                           ; $0225: $00
    nop                                           ; $0226: $00
    nop                                           ; $0227: $00
    nop                                           ; $0228: $00
    nop                                           ; $0229: $00
    nop                                           ; $022a: $00
    nop                                           ; $022b: $00
    ld bc, $0000                                  ; $022c: $01 $00 $00
    ld bc, $0001                                  ; $022f: $01 $01 $00
    ld [bc], a                                    ; $0232: $02
    nop                                           ; $0233: $00
    nop                                           ; $0234: $00
    nop                                           ; $0235: $00
    db $10                                        ; $0236: $10
    rrca                                          ; $0237: $0f
    ld d, b                                       ; $0238: $50
    jr nz, jr_000_021b                            ; $0239: $20 $e0

    nop                                           ; $023b: $00
    and b                                         ; $023c: $a0
    nop                                           ; $023d: $00
    add b                                         ; $023e: $80
    nop                                           ; $023f: $00
    nop                                           ; $0240: $00
    nop                                           ; $0241: $00

jr_000_0242:
    nop                                           ; $0242: $00
    nop                                           ; $0243: $00
    nop                                           ; $0244: $00
    nop                                           ; $0245: $00
    jr nz, jr_000_0208                            ; $0246: $20 $c0

    jr c, jr_000_025a                             ; $0248: $38 $10

    inc c                                         ; $024a: $0c
    ld [$0404], sp                                ; $024b: $08 $04 $04
    inc b                                         ; $024e: $04
    ld [bc], a                                    ; $024f: $02
    nop                                           ; $0250: $00
    ld [bc], a                                    ; $0251: $02
    ld [bc], a                                    ; $0252: $02
    ld bc, $0101                                  ; $0253: $01 $01 $01
    ld bc, $0100                                  ; $0256: $01 $00 $01
    nop                                           ; $0259: $00

jr_000_025a:
    ld bc, $0100                                  ; $025a: $01 $00 $01
    nop                                           ; $025d: $00
    ld bc, $0100                                  ; $025e: $01 $00 $01
    nop                                           ; $0261: $00
    ld bc, $0000                                  ; $0262: $01 $00 $00
    nop                                           ; $0265: $00
    add b                                         ; $0266: $80
    nop                                           ; $0267: $00
    add b                                         ; $0268: $80
    nop                                           ; $0269: $00
    nop                                           ; $026a: $00
    add b                                         ; $026b: $80
    nop                                           ; $026c: $00
    add b                                         ; $026d: $80
    ld h, b                                       ; $026e: $60
    add b                                         ; $026f: $80
    nop                                           ; $0270: $00
    add b                                         ; $0271: $80
    add b                                         ; $0272: $80
    nop                                           ; $0273: $00
    nop                                           ; $0274: $00
    nop                                           ; $0275: $00
    nop                                           ; $0276: $00
    nop                                           ; $0277: $00
    nop                                           ; $0278: $00
    nop                                           ; $0279: $00
    nop                                           ; $027a: $00
    nop                                           ; $027b: $00
    ld bc, $0200                                  ; $027c: $01 $00 $02
    ld bc, $0200                                  ; $027f: $01 $00 $02
    ld b, $01                                     ; $0282: $06 $01
    nop                                           ; $0284: $00
    nop                                           ; $0285: $00
    nop                                           ; $0286: $00
    nop                                           ; $0287: $00
    nop                                           ; $0288: $00
    nop                                           ; $0289: $00
    ld h, h                                       ; $028a: $64
    jr jr_000_0242                                ; $028b: $18 $b5

    adc $c2                                       ; $028d: $ce $c2
    ld bc, $0000                                  ; $028f: $01 $00 $00
    nop                                           ; $0292: $00
    nop                                           ; $0293: $00
    ld bc, $0000                                  ; $0294: $01 $00 $00
    ld bc, $0101                                  ; $0297: $01 $01 $01
    inc bc                                        ; $029a: $03
    nop                                           ; $029b: $00
    nop                                           ; $029c: $00
    ld [bc], a                                    ; $029d: $02
    nop                                           ; $029e: $00
    add d                                         ; $029f: $82
    add d                                         ; $02a0: $82
    ld b, h                                       ; $02a1: $44
    jr z, jr_000_02e8                             ; $02a2: $28 $44

    add b                                         ; $02a4: $80
    nop                                           ; $02a5: $00
    nop                                           ; $02a6: $00
    nop                                           ; $02a7: $00
    nop                                           ; $02a8: $00
    nop                                           ; $02a9: $00
    nop                                           ; $02aa: $00
    nop                                           ; $02ab: $00
    nop                                           ; $02ac: $00
    nop                                           ; $02ad: $00
    nop                                           ; $02ae: $00
    nop                                           ; $02af: $00
    nop                                           ; $02b0: $00
    nop                                           ; $02b1: $00
    ld a, [bc]                                    ; $02b2: $0a
    rlca                                          ; $02b3: $07
    nop                                           ; $02b4: $00
    nop                                           ; $02b5: $00
    nop                                           ; $02b6: $00
    nop                                           ; $02b7: $00
    nop                                           ; $02b8: $00
    nop                                           ; $02b9: $00
    nop                                           ; $02ba: $00
    nop                                           ; $02bb: $00
    nop                                           ; $02bc: $00
    nop                                           ; $02bd: $00
    nop                                           ; $02be: $00
    nop                                           ; $02bf: $00
    nop                                           ; $02c0: $00
    nop                                           ; $02c1: $00
    add b                                         ; $02c2: $80
    nop                                           ; $02c3: $00
    nop                                           ; $02c4: $00
    inc b                                         ; $02c5: $04
    ld [bc], a                                    ; $02c6: $02
    inc b                                         ; $02c7: $04
    ld b, $00                                     ; $02c8: $06 $00
    nop                                           ; $02ca: $00
    ld [bc], a                                    ; $02cb: $02
    ld bc, $0000                                  ; $02cc: $01 $00 $00
    nop                                           ; $02cf: $00
    ld [$8430], sp                                ; $02d0: $08 $30 $84
    ld b, b                                       ; $02d3: $40
    nop                                           ; $02d4: $00
    nop                                           ; $02d5: $00
    nop                                           ; $02d6: $00
    nop                                           ; $02d7: $00
    nop                                           ; $02d8: $00
    nop                                           ; $02d9: $00
    nop                                           ; $02da: $00
    nop                                           ; $02db: $00
    nop                                           ; $02dc: $00
    nop                                           ; $02dd: $00
    ld [bc], a                                    ; $02de: $02
    ld bc, $0603                                  ; $02df: $01 $03 $06
    inc c                                         ; $02e2: $0c
    ld [$2814], sp                                ; $02e3: $08 $14 $28
    jr nc, jr_000_0300                            ; $02e6: $30 $18

jr_000_02e8:
    ld a, b                                       ; $02e8: $78
    db $10                                        ; $02e9: $10
    jr z, jr_000_02fc                             ; $02ea: $28 $10

    jr jr_000_0316                                ; $02ec: $18 $28

    db $fc                                        ; $02ee: $fc
    rst $38                                       ; $02ef: $ff
    push bc                                       ; $02f0: $c5
    ld c, b                                       ; $02f1: $48
    inc b                                         ; $02f2: $04

jr_000_02f3:
    ld c, b                                       ; $02f3: $48
    inc l                                         ; $02f4: $2c
    db $10                                        ; $02f5: $10
    inc [hl]                                      ; $02f6: $34
    jr nz, jr_000_0359                            ; $02f7: $20 $60

    nop                                           ; $02f9: $00
    ld h, b                                       ; $02fa: $60
    nop                                           ; $02fb: $00

jr_000_02fc:
    ld h, b                                       ; $02fc: $60
    nop                                           ; $02fd: $00
    add b                                         ; $02fe: $80
    ld b, b                                       ; $02ff: $40

jr_000_0300:
    ld h, b                                       ; $0300: $60
    ret nz                                        ; $0301: $c0

    ld h, b                                       ; $0302: $60
    jr nc, @+$42                                  ; $0303: $30 $40

    add b                                         ; $0305: $80
    nop                                           ; $0306: $00
    ld b, b                                       ; $0307: $40
    ld h, b                                       ; $0308: $60
    nop                                           ; $0309: $00
    nop                                           ; $030a: $00
    jr nz, jr_000_032d                            ; $030b: $20 $20

    nop                                           ; $030d: $00
    ld b, b                                       ; $030e: $40
    nop                                           ; $030f: $00
    nop                                           ; $0310: $00
    nop                                           ; $0311: $00
    nop                                           ; $0312: $00
    nop                                           ; $0313: $00
    nop                                           ; $0314: $00
    nop                                           ; $0315: $00

jr_000_0316:
    nop                                           ; $0316: $00
    nop                                           ; $0317: $00
    nop                                           ; $0318: $00
    nop                                           ; $0319: $00
    nop                                           ; $031a: $00
    nop                                           ; $031b: $00
    nop                                           ; $031c: $00
    nop                                           ; $031d: $00
    nop                                           ; $031e: $00
    nop                                           ; $031f: $00
    nop                                           ; $0320: $00
    nop                                           ; $0321: $00
    rrca                                          ; $0322: $0f
    nop                                           ; $0323: $00
    nop                                           ; $0324: $00
    nop                                           ; $0325: $00
    ld bc, $0000                                  ; $0326: $01 $00 $00
    nop                                           ; $0329: $00
    nop                                           ; $032a: $00
    nop                                           ; $032b: $00
    nop                                           ; $032c: $00

jr_000_032d:
    nop                                           ; $032d: $00
    nop                                           ; $032e: $00
    nop                                           ; $032f: $00
    nop                                           ; $0330: $00
    nop                                           ; $0331: $00
    nop                                           ; $0332: $00
    nop                                           ; $0333: $00
    nop                                           ; $0334: $00
    add b                                         ; $0335: $80
    add b                                         ; $0336: $80
    nop                                           ; $0337: $00
    nop                                           ; $0338: $00
    add b                                         ; $0339: $80
    add b                                         ; $033a: $80
    add b                                         ; $033b: $80
    ld b, b                                       ; $033c: $40
    add b                                         ; $033d: $80
    nop                                           ; $033e: $00
    ld b, b                                       ; $033f: $40
    ld b, b                                       ; $0340: $40
    jr nz, jr_000_036f                            ; $0341: $20 $2c

    db $10                                        ; $0343: $10
    ld [$2010], sp                                ; $0344: $08 $10 $20
    db $10                                        ; $0347: $10
    jr jr_000_036a                                ; $0348: $18 $20

    jr nz, jr_000_036c                            ; $034a: $20 $20

    jr nc, jr_000_036e                            ; $034c: $30 $20

    jr nz, @+$22                                  ; $034e: $20 $20

    nop                                           ; $0350: $00
    jr nz, jr_000_0374                            ; $0351: $20 $21

    db $10                                        ; $0353: $10
    call z, $cc00                                 ; $0354: $cc $00 $cc
    nop                                           ; $0357: $00
    ld b, b                                       ; $0358: $40

jr_000_0359:
    inc b                                         ; $0359: $04
    nop                                           ; $035a: $00
    ld b, h                                       ; $035b: $44
    inc b                                         ; $035c: $04
    ld b, b                                       ; $035d: $40
    ld h, d                                       ; $035e: $62
    nop                                           ; $035f: $00
    add e                                         ; $0360: $83
    jr nz, jr_000_02f3                            ; $0361: $20 $90

    ld hl, $281c                                  ; $0363: $21 $1c $28
    inc c                                         ; $0366: $0c
    inc h                                         ; $0367: $24
    jr nc, jr_000_036c                            ; $0368: $30 $02

jr_000_036a:
    ld a, [bc]                                    ; $036a: $0a
    db $10                                        ; $036b: $10

jr_000_036c:
    ld c, $01                                     ; $036c: $0e $01

jr_000_036e:
    inc bc                                        ; $036e: $03

jr_000_036f:
    ld bc, $0000                                  ; $036f: $01 $00 $00
    nop                                           ; $0372: $00
    nop                                           ; $0373: $00

jr_000_0374:
    nop                                           ; $0374: $00
    nop                                           ; $0375: $00
    nop                                           ; $0376: $00
    nop                                           ; $0377: $00
    nop                                           ; $0378: $00
    nop                                           ; $0379: $00
    nop                                           ; $037a: $00
    nop                                           ; $037b: $00
    nop                                           ; $037c: $00
    nop                                           ; $037d: $00
    ld h, b                                       ; $037e: $60
    add b                                         ; $037f: $80
    xor b                                         ; $0380: $a8
    db $10                                        ; $0381: $10
    and b                                         ; $0382: $a0
    jr z, jr_000_0385                             ; $0383: $28 $00

jr_000_0385:
    nop                                           ; $0385: $00
    nop                                           ; $0386: $00
    nop                                           ; $0387: $00
    nop                                           ; $0388: $00
    nop                                           ; $0389: $00
    nop                                           ; $038a: $00
    nop                                           ; $038b: $00
    dec b                                         ; $038c: $05
    ld [bc], a                                    ; $038d: $02
    ld b, $09                                     ; $038e: $06 $09
    rla                                           ; $0390: $17
    ld [bc], a                                    ; $0391: $02
    add hl, hl                                    ; $0392: $29
    inc b                                         ; $0393: $04
    ld [$0901], sp                                ; $0394: $08 $01 $09
    nop                                           ; $0397: $00
    add hl, bc                                    ; $0398: $09
    nop                                           ; $0399: $00
    inc b                                         ; $039a: $04
    nop                                           ; $039b: $00
    add sp, $00                                   ; $039c: $e8 $00
    ld hl, sp-$10                                 ; $039e: $f8 $f0
    ld hl, sp+$7c                                 ; $03a0: $f8 $7c
    xor b                                         ; $03a2: $a8
    sub $17                                       ; $03a3: $d6 $17
    ld [$0006], sp                                ; $03a5: $08 $06 $00
    nop                                           ; $03a8: $00
    ld bc, $0000                                  ; $03a9: $01 $00 $00
    add b                                         ; $03ac: $80
    nop                                           ; $03ad: $00
    ld e, b                                       ; $03ae: $58
    ld h, b                                       ; $03af: $60
    ld a, [hl]                                    ; $03b0: $7e
    ccf                                           ; $03b1: $3f
    rla                                           ; $03b2: $17
    rrca                                          ; $03b3: $0f
    rla                                           ; $03b4: $17
    add hl, bc                                    ; $03b5: $09
    ld b, $00                                     ; $03b6: $06 $00
    add b                                         ; $03b8: $80
    nop                                           ; $03b9: $00
    ld l, h                                       ; $03ba: $6c
    rra                                           ; $03bb: $1f
    nop                                           ; $03bc: $00
    nop                                           ; $03bd: $00
    nop                                           ; $03be: $00
    nop                                           ; $03bf: $00
    ldh a, [rP1]                                  ; $03c0: $f0 $00
    db $fd                                        ; $03c2: $fd
    cp $01                                        ; $03c3: $fe $01
    db $10                                        ; $03c5: $10
    inc d                                         ; $03c6: $14
    dec bc                                        ; $03c7: $0b
    jp z, $c234                                   ; $03c8: $ca $34 $c2

    ld bc, $0000                                  ; $03cb: $01 $00 $00
    nop                                           ; $03ce: $00
    nop                                           ; $03cf: $00
    nop                                           ; $03d0: $00
    nop                                           ; $03d1: $00
    nop                                           ; $03d2: $00
    nop                                           ; $03d3: $00
    ld a, b                                       ; $03d4: $78
    add b                                         ; $03d5: $80
    xor b                                         ; $03d6: $a8
    ld b, h                                       ; $03d7: $44
    ld a, [hl+]                                   ; $03d8: $2a
    db $10                                        ; $03d9: $10
    adc h                                         ; $03da: $8c
    nop                                           ; $03db: $00
    sub a                                         ; $03dc: $97
    ld h, b                                       ; $03dd: $60
    ld e, $00                                     ; $03de: $1e $00
    ld b, $00                                     ; $03e0: $06 $00
    nop                                           ; $03e2: $00
    nop                                           ; $03e3: $00
    add h                                         ; $03e4: $84
    nop                                           ; $03e5: $00
    add h                                         ; $03e6: $84
    nop                                           ; $03e7: $00
    inc b                                         ; $03e8: $04
    nop                                           ; $03e9: $00
    and b                                         ; $03ea: $a0
    jr @+$4e                                      ; $03eb: $18 $4c

    db $10                                        ; $03ed: $10
    add hl, sp                                    ; $03ee: $39

jr_000_03ef:
    ld b, h                                       ; $03ef: $44
    rst $00                                       ; $03f0: $c7
    jr z, jr_000_03ef                             ; $03f1: $28 $fc

    ld b, $03                                     ; $03f3: $06 $03
    add hl, bc                                    ; $03f5: $09
    ld d, a                                       ; $03f6: $57
    ld [bc], a                                    ; $03f7: $02
    ld h, b                                       ; $03f8: $60

jr_000_03f9:
    ld d, $f6                                     ; $03f9: $16 $f6
    inc l                                         ; $03fb: $2c
    adc h                                         ; $03fc: $8c
    ld l, e                                       ; $03fd: $6b
    ld bc, $8478                                  ; $03fe: $01 $78 $84
    ld e, c                                       ; $0401: $59
    ld c, c                                       ; $0402: $49
    sub [hl]                                      ; $0403: $96
    sub a                                         ; $0404: $97
    jr nz, jr_000_047c                            ; $0405: $20 $75

    nop                                           ; $0407: $00
    dec b                                         ; $0408: $05
    ld d, b                                       ; $0409: $50
    ret nz                                        ; $040a: $c0

    inc d                                         ; $040b: $14
    inc [hl]                                      ; $040c: $34
    add h                                         ; $040d: $84
    call $75a4                                    ; $040e: $cd $a4 $75
    jr z, jr_000_043b                             ; $0411: $28 $28

    ld e, b                                       ; $0413: $58
    nop                                           ; $0414: $00
    nop                                           ; $0415: $00
    nop                                           ; $0416: $00
    nop                                           ; $0417: $00
    add b                                         ; $0418: $80
    nop                                           ; $0419: $00
    add b                                         ; $041a: $80
    nop                                           ; $041b: $00
    add b                                         ; $041c: $80
    nop                                           ; $041d: $00

jr_000_041e:
    nop                                           ; $041e: $00
    nop                                           ; $041f: $00
    nop                                           ; $0420: $00
    nop                                           ; $0421: $00
    nop                                           ; $0422: $00
    nop                                           ; $0423: $00
    stop                                          ; $0424: $10 $00
    rra                                           ; $0426: $1f
    ld c, $03                                     ; $0427: $0e $03
    rlca                                          ; $0429: $07
    nop                                           ; $042a: $00
    nop                                           ; $042b: $00
    ld b, $07                                     ; $042c: $06 $07
    ld bc, $0003                                  ; $042e: $01 $03 $00
    nop                                           ; $0431: $00
    ld bc, $ef00                                  ; $0432: $01 $00 $ef
    rra                                           ; $0435: $1f
    di                                            ; $0436: $f3
    ld bc, $fcfa                                  ; $0437: $01 $fa $fc
    ld a, a                                       ; $043a: $7f

jr_000_043b:
    rst $38                                       ; $043b: $ff
    rst $18                                       ; $043c: $df
    ccf                                           ; $043d: $3f
    rst $38                                       ; $043e: $ff
    rst $38                                       ; $043f: $ff
    ld e, a                                       ; $0440: $5f
    ccf                                           ; $0441: $3f
    rst $28                                       ; $0442: $ef
    rra                                           ; $0443: $1f
    ret nz                                        ; $0444: $c0

    add b                                         ; $0445: $80
    ret nc                                        ; $0446: $d0

    ldh [$b8], a                                  ; $0447: $e0 $b8
    ld [hl], b                                    ; $0449: $70
    ld a, b                                       ; $044a: $78
    sbc h                                         ; $044b: $9c
    call c, $ffe6                                 ; $044c: $dc $e6 $ff
    di                                            ; $044f: $f3
    ei                                            ; $0450: $fb
    db $fd                                        ; $0451: $fd
    db $fd                                        ; $0452: $fd
    cp $00                                        ; $0453: $fe $00
    nop                                           ; $0455: $00
    nop                                           ; $0456: $00
    nop                                           ; $0457: $00
    ld bc, $0600                                  ; $0458: $01 $00 $06
    inc bc                                        ; $045b: $03
    inc bc                                        ; $045c: $03
    inc b                                         ; $045d: $04
    ld b, $04                                     ; $045e: $06 $04
    rst $00                                       ; $0460: $c7
    add d                                         ; $0461: $82
    ret nz                                        ; $0462: $c0

    ret nz                                        ; $0463: $c0

    ld h, h                                       ; $0464: $64
    inc e                                         ; $0465: $1c
    dec c                                         ; $0466: $0d
    db $10                                        ; $0467: $10
    ret z                                         ; $0468: $c8

    ld bc, $08fa                                  ; $0469: $01 $fa $08
    adc h                                         ; $046c: $8c
    ld b, $06                                     ; $046d: $06 $06
    inc bc                                        ; $046f: $03
    add e                                         ; $0470: $83
    ld bc, $0000                                  ; $0471: $01 $00 $00
    jr nc, jr_000_03f9                            ; $0474: $30 $83

    add d                                         ; $0476: $82
    jr nz, jr_000_04d9                            ; $0477: $20 $60

    inc b                                         ; $0479: $04
    dec b                                         ; $047a: $05
    ld b, b                                       ; $047b: $40

jr_000_047c:
    adc c                                         ; $047c: $89
    ld b, c                                       ; $047d: $41
    jp $d088                                      ; $047e: $c3 $88 $d0


    add d                                         ; $0481: $82
    ld b, b                                       ; $0482: $40
    ld a, [c]                                     ; $0483: $f2
    cp $c8                                        ; $0484: $fe $c8
    sub [hl]                                      ; $0486: $96
    ld a, h                                       ; $0487: $7c
    jr z, jr_000_041e                             ; $0488: $28 $94

    add h                                         ; $048a: $84
    jr nz, jr_000_04cd                            ; $048b: $20 $40

    jr z, jr_000_0497                             ; $048d: $28 $08

    ld b, b                                       ; $048f: $40
    ret nz                                        ; $0490: $c0

    db $10                                        ; $0491: $10
    db $10                                        ; $0492: $10
    add b                                         ; $0493: $80
    rst $18                                       ; $0494: $df
    ccf                                           ; $0495: $3f
    rrca                                          ; $0496: $0f

jr_000_0497:
    ccf                                           ; $0497: $3f
    rla                                           ; $0498: $17
    rrca                                          ; $0499: $0f
    rlca                                          ; $049a: $07
    inc bc                                        ; $049b: $03
    nop                                           ; $049c: $00
    nop                                           ; $049d: $00
    nop                                           ; $049e: $00
    nop                                           ; $049f: $00
    nop                                           ; $04a0: $00
    nop                                           ; $04a1: $00
    nop                                           ; $04a2: $00
    nop                                           ; $04a3: $00
    cp $ff                                        ; $04a4: $fe $ff
    rst $38                                       ; $04a6: $ff
    rst $38                                       ; $04a7: $ff
    rst $38                                       ; $04a8: $ff
    rst $38                                       ; $04a9: $ff
    rst $38                                       ; $04aa: $ff
    rst $38                                       ; $04ab: $ff
    rst $38                                       ; $04ac: $ff
    ccf                                           ; $04ad: $3f
    dec bc                                        ; $04ae: $0b
    rlca                                          ; $04af: $07
    ld bc, $0000                                  ; $04b0: $01 $00 $00
    nop                                           ; $04b3: $00
    ret nz                                        ; $04b4: $c0

    ld h, b                                       ; $04b5: $60
    ld [hl], b                                    ; $04b6: $70
    and b                                         ; $04b7: $a0
    cp b                                          ; $04b8: $b8
    ret nc                                        ; $04b9: $d0

    call c, $e6e8                                 ; $04ba: $dc $e8 $e6
    db $fc                                        ; $04bd: $fc
    or $fa                                        ; $04be: $f6 $fa
    ld a, d                                       ; $04c0: $7a
    db $fd                                        ; $04c1: $fd
    rla                                           ; $04c2: $17
    ld c, $03                                     ; $04c3: $0e $03
    nop                                           ; $04c5: $00
    ld [bc], a                                    ; $04c6: $02

jr_000_04c7:
    nop                                           ; $04c7: $00
    nop                                           ; $04c8: $00
    nop                                           ; $04c9: $00
    ld b, $00                                     ; $04ca: $06 $00
    ld [bc], a                                    ; $04cc: $02

jr_000_04cd:
    rlca                                          ; $04cd: $07
    rlca                                          ; $04ce: $07
    rlca                                          ; $04cf: $07
    rlca                                          ; $04d0: $07
    rlca                                          ; $04d1: $07
    adc a                                         ; $04d2: $8f
    rlca                                          ; $04d3: $07
    ld d, e                                       ; $04d4: $53
    inc a                                         ; $04d5: $3c
    ld a, a                                       ; $04d6: $7f
    rrca                                          ; $04d7: $0f
    dec e                                         ; $04d8: $1d

jr_000_04d9:
    inc bc                                        ; $04d9: $03
    inc b                                         ; $04da: $04
    nop                                           ; $04db: $00
    inc b                                         ; $04dc: $04
    nop                                           ; $04dd: $00
    call nz, $ee80                                ; $04de: $c4 $80 $ee
    ldh a, [$f0]                                  ; $04e1: $f0 $f0
    ei                                            ; $04e3: $fb
    add b                                         ; $04e4: $80
    jr nz, jr_000_04c7                            ; $04e5: $20 $e0

    nop                                           ; $04e7: $00
    add b                                         ; $04e8: $80
    ret nz                                        ; $04e9: $c0

    nop                                           ; $04ea: $00
    nop                                           ; $04eb: $00
    nop                                           ; $04ec: $00
    nop                                           ; $04ed: $00
    nop                                           ; $04ee: $00
    nop                                           ; $04ef: $00
    nop                                           ; $04f0: $00
    nop                                           ; $04f1: $00
    nop                                           ; $04f2: $00
    nop                                           ; $04f3: $00
    nop                                           ; $04f4: $00
    nop                                           ; $04f5: $00
    nop                                           ; $04f6: $00
    inc b                                         ; $04f7: $04
    ld b, $02                                     ; $04f8: $06 $02
    nop                                           ; $04fa: $00
    inc bc                                        ; $04fb: $03
    ld bc, $0000                                  ; $04fc: $01 $00 $00
    nop                                           ; $04ff: $00
    nop                                           ; $0500: $00
    nop                                           ; $0501: $00
    rrca                                          ; $0502: $0f
    rlca                                          ; $0503: $07
    nop                                           ; $0504: $00
    nop                                           ; $0505: $00
    jr jr_000_0508                                ; $0506: $18 $00

jr_000_0508:
    nop                                           ; $0508: $00
    inc c                                         ; $0509: $0c
    ld b, $04                                     ; $050a: $06 $04
    ccf                                           ; $050c: $3f
    ccf                                           ; $050d: $3f
    ld bc, $1101                                  ; $050e: $01 $01 $11
    ld de, $1191                                  ; $0511: $11 $91 $11
    nop                                           ; $0514: $00
    nop                                           ; $0515: $00
    nop                                           ; $0516: $00
    jr nz, jr_000_0579                            ; $0517: $20 $60

    jr nz, jr_000_053b                            ; $0519: $20 $20

    ld b, b                                       ; $051b: $40
    db $fc                                        ; $051c: $fc
    ld hl, sp+$00                                 ; $051d: $f8 $00
    nop                                           ; $051f: $00
    jr @+$12                                      ; $0520: $18 $10

    jr jr_000_0534                                ; $0522: $18 $10

    nop                                           ; $0524: $00
    nop                                           ; $0525: $00
    ld bc, $6040                                  ; $0526: $01 $40 $60
    jr nz, jr_000_052b                            ; $0529: $20 $00

jr_000_052b:
    jr nc, jr_000_0540                            ; $052b: $30 $13

    inc bc                                        ; $052d: $03
    nop                                           ; $052e: $00
    nop                                           ; $052f: $00
    ld bc, $f901                                  ; $0530: $01 $01 $f9
    ld [hl], c                                    ; $0533: $71

jr_000_0534:
    nop                                           ; $0534: $00
    nop                                           ; $0535: $00
    add b                                         ; $0536: $80
    ld [bc], a                                    ; $0537: $02
    ld b, $c2                                     ; $0538: $06 $c2
    ld h, d                                       ; $053a: $62

jr_000_053b:
    ld b, h                                       ; $053b: $44
    rst $38                                       ; $053c: $ff
    rst $38                                       ; $053d: $ff
    db $10                                        ; $053e: $10
    db $10                                        ; $053f: $10

jr_000_0540:
    ld de, $1111                                  ; $0540: $11 $11 $11
    ld de, $0000                                  ; $0543: $11 $00 $00
    nop                                           ; $0546: $00
    nop                                           ; $0547: $00
    nop                                           ; $0548: $00
    nop                                           ; $0549: $00
    nop                                           ; $054a: $00
    nop                                           ; $054b: $00
    ret nz                                        ; $054c: $c0

    add b                                         ; $054d: $80
    nop                                           ; $054e: $00
    nop                                           ; $054f: $00
    add b                                         ; $0550: $80
    nop                                           ; $0551: $00
    add b                                         ; $0552: $80
    nop                                           ; $0553: $00
    nop                                           ; $0554: $00
    nop                                           ; $0555: $00
    nop                                           ; $0556: $00
    nop                                           ; $0557: $00
    nop                                           ; $0558: $00
    nop                                           ; $0559: $00
    nop                                           ; $055a: $00
    nop                                           ; $055b: $00
    nop                                           ; $055c: $00
    nop                                           ; $055d: $00
    nop                                           ; $055e: $00
    nop                                           ; $055f: $00
    ld bc, $0100                                  ; $0560: $01 $00 $01
    rlca                                          ; $0563: $07
    nop                                           ; $0564: $00
    nop                                           ; $0565: $00
    nop                                           ; $0566: $00
    nop                                           ; $0567: $00
    ld bc, $0700                                  ; $0568: $01 $00 $07
    rrca                                          ; $056b: $0f
    inc e                                         ; $056c: $1c
    ld c, $1c                                     ; $056d: $0e $1c
    inc a                                         ; $056f: $3c
    ld a, h                                       ; $0570: $7c
    ld hl, sp-$04                                 ; $0571: $f8 $fc
    ld hl, sp-$71                                 ; $0573: $f8 $8f
    rrca                                          ; $0575: $0f
    rrca                                          ; $0576: $0f
    rrca                                          ; $0577: $0f
    rst $08                                       ; $0578: $cf

jr_000_0579:
    rrca                                          ; $0579: $0f
    adc a                                         ; $057a: $8f
    rrca                                          ; $057b: $0f
    rrca                                          ; $057c: $0f
    rrca                                          ; $057d: $0f
    rrca                                          ; $057e: $0f
    rrca                                          ; $057f: $0f
    rrca                                          ; $0580: $0f
    rrca                                          ; $0581: $0f
    rrca                                          ; $0582: $0f
    rrca                                          ; $0583: $0f
    ei                                            ; $0584: $fb
    db $fd                                        ; $0585: $fd
    db $fd                                        ; $0586: $fd
    cp $fe                                        ; $0587: $fe $fe
    rst $38                                       ; $0589: $ff
    rst $38                                       ; $058a: $ff
    rst $38                                       ; $058b: $ff
    rst $38                                       ; $058c: $ff
    rst $38                                       ; $058d: $ff
    rst $38                                       ; $058e: $ff
    rst $38                                       ; $058f: $ff
    rst $38                                       ; $0590: $ff
    rst $38                                       ; $0591: $ff
    rst $38                                       ; $0592: $ff
    rst $38                                       ; $0593: $ff
    nop                                           ; $0594: $00
    nop                                           ; $0595: $00
    add b                                         ; $0596: $80
    nop                                           ; $0597: $00
    nop                                           ; $0598: $00
    add b                                         ; $0599: $80
    add b                                         ; $059a: $80
    add b                                         ; $059b: $80
    ret nz                                        ; $059c: $c0

    add b                                         ; $059d: $80
    ret nz                                        ; $059e: $c0

    add b                                         ; $059f: $80
    ret nz                                        ; $05a0: $c0

    add b                                         ; $05a1: $80
    add b                                         ; $05a2: $80
    ret nz                                        ; $05a3: $c0

    ld bc, $0101                                  ; $05a4: $01 $01 $01
    ld bc, $0101                                  ; $05a7: $01 $01 $01
    ld bc, $0101                                  ; $05aa: $01 $01 $01
    ld bc, $0101                                  ; $05ad: $01 $01 $01
    ld bc, $0201                                  ; $05b0: $01 $01 $02
    ld bc, $1191                                  ; $05b3: $01 $91 $11
    sub c                                         ; $05b6: $91
    ld de, $1f9f                                  ; $05b7: $11 $9f $1f
    add e                                         ; $05ba: $83
    ld bc, $0281                                  ; $05bb: $01 $81 $02
    add h                                         ; $05be: $84
    ld [bc], a                                    ; $05bf: $02
    add b                                         ; $05c0: $80
    inc c                                         ; $05c1: $0c
    adc b                                         ; $05c2: $88
    sub b                                         ; $05c3: $90
    jr @+$12                                      ; $05c4: $18 $10

    jr jr_000_05d8                                ; $05c6: $18 $10

    ld hl, sp-$10                                 ; $05c8: $f8 $f0
    nop                                           ; $05ca: $00
    nop                                           ; $05cb: $00
    nop                                           ; $05cc: $00
    nop                                           ; $05cd: $00
    nop                                           ; $05ce: $00
    nop                                           ; $05cf: $00
    nop                                           ; $05d0: $00
    nop                                           ; $05d1: $00
    nop                                           ; $05d2: $00
    nop                                           ; $05d3: $00
    add hl, de                                    ; $05d4: $19
    ld de, $1119                                  ; $05d5: $11 $19 $11

jr_000_05d8:
    add hl, de                                    ; $05d8: $19
    ld de, $1018                                  ; $05d9: $11 $18 $10
    jr @+$12                                      ; $05dc: $18 $10

    jr @+$12                                      ; $05de: $18 $10

    jr jr_000_05f2                                ; $05e0: $18 $10

    jr z, jr_000_05fd                             ; $05e2: $28 $19

    ld de, $1111                                  ; $05e4: $11 $11 $11
    ld de, $ffff                                  ; $05e7: $11 $ff $ff
    jr nc, jr_000_05fc                            ; $05ea: $30 $10

    db $10                                        ; $05ec: $10
    jr nz, jr_000_062f                            ; $05ed: $20 $40

    jr nz, jr_000_05f1                            ; $05ef: $20 $00

jr_000_05f1:
    ret nz                                        ; $05f1: $c0

jr_000_05f2:
    add b                                         ; $05f2: $80
    nop                                           ; $05f3: $00
    add b                                         ; $05f4: $80
    nop                                           ; $05f5: $00
    add b                                         ; $05f6: $80
    nop                                           ; $05f7: $00
    add b                                         ; $05f8: $80
    nop                                           ; $05f9: $00
    nop                                           ; $05fa: $00
    nop                                           ; $05fb: $00

jr_000_05fc:
    nop                                           ; $05fc: $00

jr_000_05fd:
    nop                                           ; $05fd: $00
    nop                                           ; $05fe: $00
    nop                                           ; $05ff: $00
    nop                                           ; $0600: $00
    nop                                           ; $0601: $00
    nop                                           ; $0602: $00
    nop                                           ; $0603: $00
    dec b                                         ; $0604: $05
    inc bc                                        ; $0605: $03
    ld bc, $0000                                  ; $0606: $01 $00 $00
    nop                                           ; $0609: $00
    nop                                           ; $060a: $00
    nop                                           ; $060b: $00
    nop                                           ; $060c: $00
    nop                                           ; $060d: $00
    nop                                           ; $060e: $00
    nop                                           ; $060f: $00
    nop                                           ; $0610: $00
    nop                                           ; $0611: $00
    nop                                           ; $0612: $00
    nop                                           ; $0613: $00
    inc a                                         ; $0614: $3c
    ld hl, sp-$08                                 ; $0615: $f8 $f8
    ld e, b                                       ; $0617: $58
    ret nc                                        ; $0618: $d0

    jr nz, jr_000_061b                            ; $0619: $20 $00

jr_000_061b:
    nop                                           ; $061b: $00
    nop                                           ; $061c: $00
    nop                                           ; $061d: $00
    nop                                           ; $061e: $00
    nop                                           ; $061f: $00
    nop                                           ; $0620: $00
    nop                                           ; $0621: $00
    nop                                           ; $0622: $00
    nop                                           ; $0623: $00
    rrca                                          ; $0624: $0f
    rrca                                          ; $0625: $0f
    rrca                                          ; $0626: $0f
    rrca                                          ; $0627: $0f
    rlca                                          ; $0628: $07
    rrca                                          ; $0629: $0f
    rrca                                          ; $062a: $0f
    rlca                                          ; $062b: $07
    rrca                                          ; $062c: $0f
    rlca                                          ; $062d: $07
    rrca                                          ; $062e: $0f

jr_000_062f:
    rlca                                          ; $062f: $07
    rrca                                          ; $0630: $0f
    rlca                                          ; $0631: $07
    rrca                                          ; $0632: $0f
    rlca                                          ; $0633: $07
    rst $38                                       ; $0634: $ff
    rst $38                                       ; $0635: $ff
    rst $38                                       ; $0636: $ff
    rst $38                                       ; $0637: $ff
    rst $38                                       ; $0638: $ff
    rst $38                                       ; $0639: $ff
    rst $38                                       ; $063a: $ff
    rst $38                                       ; $063b: $ff
    rst $38                                       ; $063c: $ff
    rst $38                                       ; $063d: $ff
    rst $38                                       ; $063e: $ff
    rst $38                                       ; $063f: $ff
    rst $38                                       ; $0640: $ff
    rst $38                                       ; $0641: $ff
    rst $38                                       ; $0642: $ff
    rst $38                                       ; $0643: $ff
    add b                                         ; $0644: $80
    ret nz                                        ; $0645: $c0

    add b                                         ; $0646: $80
    ret nz                                        ; $0647: $c0

    ret nz                                        ; $0648: $c0

    add b                                         ; $0649: $80
    ret nz                                        ; $064a: $c0

    add b                                         ; $064b: $80
    ret nz                                        ; $064c: $c0

    add b                                         ; $064d: $80
    ret nz                                        ; $064e: $c0

    add b                                         ; $064f: $80
    add b                                         ; $0650: $80
    add b                                         ; $0651: $80
    nop                                           ; $0652: $00
    add b                                         ; $0653: $80
    inc b                                         ; $0654: $04
    ld [bc], a                                    ; $0655: $02
    ld [$0004], sp                                ; $0656: $08 $04 $00
    ld [$0000], sp                                ; $0659: $08 $00 $00
    nop                                           ; $065c: $00
    nop                                           ; $065d: $00
    nop                                           ; $065e: $00
    nop                                           ; $065f: $00
    nop                                           ; $0660: $00
    nop                                           ; $0661: $00
    nop                                           ; $0662: $00
    nop                                           ; $0663: $00
    ldh [rLCDC], a                                ; $0664: $e0 $40
    cpl                                           ; $0666: $2f
    rra                                           ; $0667: $1f
    nop                                           ; $0668: $00
    nop                                           ; $0669: $00
    nop                                           ; $066a: $00
    nop                                           ; $066b: $00
    nop                                           ; $066c: $00
    nop                                           ; $066d: $00
    nop                                           ; $066e: $00
    nop                                           ; $066f: $00
    nop                                           ; $0670: $00
    nop                                           ; $0671: $00
    nop                                           ; $0672: $00
    nop                                           ; $0673: $00
    nop                                           ; $0674: $00
    nop                                           ; $0675: $00
    db $fc                                        ; $0676: $fc
    ld hl, sp+$00                                 ; $0677: $f8 $00
    nop                                           ; $0679: $00
    nop                                           ; $067a: $00
    nop                                           ; $067b: $00
    nop                                           ; $067c: $00
    nop                                           ; $067d: $00
    nop                                           ; $067e: $00
    nop                                           ; $067f: $00
    nop                                           ; $0680: $00
    nop                                           ; $0681: $00
    nop                                           ; $0682: $00
    nop                                           ; $0683: $00
    ld c, [hl]                                    ; $0684: $4e
    inc h                                         ; $0685: $24
    add d                                         ; $0686: $82
    ld b, c                                       ; $0687: $41
    nop                                           ; $0688: $00
    add b                                         ; $0689: $80
    nop                                           ; $068a: $00
    nop                                           ; $068b: $00
    nop                                           ; $068c: $00
    nop                                           ; $068d: $00
    nop                                           ; $068e: $00
    nop                                           ; $068f: $00
    nop                                           ; $0690: $00
    nop                                           ; $0691: $00
    nop                                           ; $0692: $00
    nop                                           ; $0693: $00
    nop                                           ; $0694: $00
    nop                                           ; $0695: $00
    rst $38                                       ; $0696: $ff
    rst $38                                       ; $0697: $ff
    nop                                           ; $0698: $00
    nop                                           ; $0699: $00
    nop                                           ; $069a: $00
    nop                                           ; $069b: $00
    nop                                           ; $069c: $00
    nop                                           ; $069d: $00
    nop                                           ; $069e: $00
    nop                                           ; $069f: $00
    nop                                           ; $06a0: $00
    nop                                           ; $06a1: $00
    nop                                           ; $06a2: $00
    nop                                           ; $06a3: $00
    nop                                           ; $06a4: $00
    nop                                           ; $06a5: $00
    ret nz                                        ; $06a6: $c0

    add b                                         ; $06a7: $80
    nop                                           ; $06a8: $00
    nop                                           ; $06a9: $00
    nop                                           ; $06aa: $00
    nop                                           ; $06ab: $00
    nop                                           ; $06ac: $00
    nop                                           ; $06ad: $00
    nop                                           ; $06ae: $00
    nop                                           ; $06af: $00
    nop                                           ; $06b0: $00
    nop                                           ; $06b1: $00
    nop                                           ; $06b2: $00
    nop                                           ; $06b3: $00
    rrca                                          ; $06b4: $0f
    rlca                                          ; $06b5: $07
    rrca                                          ; $06b6: $0f
    rlca                                          ; $06b7: $07
    rlca                                          ; $06b8: $07
    rlca                                          ; $06b9: $07
    rlca                                          ; $06ba: $07
    rlca                                          ; $06bb: $07
    rlca                                          ; $06bc: $07
    rlca                                          ; $06bd: $07
    rlca                                          ; $06be: $07
    rlca                                          ; $06bf: $07
    rlca                                          ; $06c0: $07
    rlca                                          ; $06c1: $07
    rrca                                          ; $06c2: $0f
    rlca                                          ; $06c3: $07
    rst $38                                       ; $06c4: $ff
    rst $38                                       ; $06c5: $ff
    rst $38                                       ; $06c6: $ff
    rst $38                                       ; $06c7: $ff
    rst $38                                       ; $06c8: $ff
    rst $38                                       ; $06c9: $ff
    cp $ff                                        ; $06ca: $fe $ff
    rst $38                                       ; $06cc: $ff
    cp $ff                                        ; $06cd: $fe $ff
    cp $ff                                        ; $06cf: $fe $ff
    cp $fe                                        ; $06d1: $fe $fe
    rst $38                                       ; $06d3: $ff
    add b                                         ; $06d4: $80
    nop                                           ; $06d5: $00
    nop                                           ; $06d6: $00
    nop                                           ; $06d7: $00
    nop                                           ; $06d8: $00
    nop                                           ; $06d9: $00
    nop                                           ; $06da: $00
    nop                                           ; $06db: $00
    nop                                           ; $06dc: $00
    nop                                           ; $06dd: $00
    nop                                           ; $06de: $00
    nop                                           ; $06df: $00
    nop                                           ; $06e0: $00
    nop                                           ; $06e1: $00
    nop                                           ; $06e2: $00
    nop                                           ; $06e3: $00
    nop                                           ; $06e4: $00
    nop                                           ; $06e5: $00
    nop                                           ; $06e6: $00
    nop                                           ; $06e7: $00
    nop                                           ; $06e8: $00
    nop                                           ; $06e9: $00
    nop                                           ; $06ea: $00
    nop                                           ; $06eb: $00
    nop                                           ; $06ec: $00
    nop                                           ; $06ed: $00
    nop                                           ; $06ee: $00
    nop                                           ; $06ef: $00
    nop                                           ; $06f0: $00
    nop                                           ; $06f1: $00
    rlca                                          ; $06f2: $07
    rlca                                          ; $06f3: $07
    nop                                           ; $06f4: $00
    nop                                           ; $06f5: $00
    nop                                           ; $06f6: $00
    nop                                           ; $06f7: $00
    nop                                           ; $06f8: $00
    nop                                           ; $06f9: $00
    nop                                           ; $06fa: $00
    nop                                           ; $06fb: $00
    nop                                           ; $06fc: $00
    nop                                           ; $06fd: $00
    nop                                           ; $06fe: $00
    nop                                           ; $06ff: $00
    nop                                           ; $0700: $00
    nop                                           ; $0701: $00
    inc d                                         ; $0702: $14
    jr c, jr_000_0705                             ; $0703: $38 $00

jr_000_0705:
    nop                                           ; $0705: $00
    nop                                           ; $0706: $00
    nop                                           ; $0707: $00
    nop                                           ; $0708: $00
    nop                                           ; $0709: $00
    nop                                           ; $070a: $00
    nop                                           ; $070b: $00
    nop                                           ; $070c: $00
    nop                                           ; $070d: $00
    nop                                           ; $070e: $00
    nop                                           ; $070f: $00
    nop                                           ; $0710: $00
    nop                                           ; $0711: $00
    inc e                                         ; $0712: $1c
    inc e                                         ; $0713: $1c
    nop                                           ; $0714: $00
    nop                                           ; $0715: $00
    nop                                           ; $0716: $00
    nop                                           ; $0717: $00
    nop                                           ; $0718: $00
    nop                                           ; $0719: $00
    nop                                           ; $071a: $00
    nop                                           ; $071b: $00
    nop                                           ; $071c: $00
    nop                                           ; $071d: $00
    nop                                           ; $071e: $00
    nop                                           ; $071f: $00
    nop                                           ; $0720: $00
    nop                                           ; $0721: $00
    ld b, c                                       ; $0722: $41
    ldh [rP1], a                                  ; $0723: $e0 $00
    nop                                           ; $0725: $00
    nop                                           ; $0726: $00
    nop                                           ; $0727: $00
    nop                                           ; $0728: $00
    nop                                           ; $0729: $00
    nop                                           ; $072a: $00
    nop                                           ; $072b: $00
    nop                                           ; $072c: $00
    nop                                           ; $072d: $00
    nop                                           ; $072e: $00
    nop                                           ; $072f: $00
    nop                                           ; $0730: $00
    nop                                           ; $0731: $00
    ld c, b                                       ; $0732: $48
    ldh a, [rP1]                                  ; $0733: $f0 $00
    nop                                           ; $0735: $00
    nop                                           ; $0736: $00
    nop                                           ; $0737: $00
    nop                                           ; $0738: $00
    nop                                           ; $0739: $00
    nop                                           ; $073a: $00
    nop                                           ; $073b: $00
    nop                                           ; $073c: $00
    nop                                           ; $073d: $00
    nop                                           ; $073e: $00
    nop                                           ; $073f: $00
    nop                                           ; $0740: $00
    nop                                           ; $0741: $00
    ld a, [bc]                                    ; $0742: $0a
    rlca                                          ; $0743: $07
    nop                                           ; $0744: $00
    nop                                           ; $0745: $00
    nop                                           ; $0746: $00
    nop                                           ; $0747: $00
    nop                                           ; $0748: $00
    nop                                           ; $0749: $00
    nop                                           ; $074a: $00
    nop                                           ; $074b: $00
    nop                                           ; $074c: $00
    nop                                           ; $074d: $00
    nop                                           ; $074e: $00
    nop                                           ; $074f: $00
    nop                                           ; $0750: $00
    nop                                           ; $0751: $00
    ld b, b                                       ; $0752: $40
    add b                                         ; $0753: $80
    nop                                           ; $0754: $00
    nop                                           ; $0755: $00
    nop                                           ; $0756: $00
    nop                                           ; $0757: $00
    nop                                           ; $0758: $00
    nop                                           ; $0759: $00
    nop                                           ; $075a: $00
    nop                                           ; $075b: $00
    nop                                           ; $075c: $00
    nop                                           ; $075d: $00
    nop                                           ; $075e: $00
    nop                                           ; $075f: $00
    nop                                           ; $0760: $00
    nop                                           ; $0761: $00
    ld d, d                                       ; $0762: $52
    inc a                                         ; $0763: $3c
    nop                                           ; $0764: $00
    nop                                           ; $0765: $00
    nop                                           ; $0766: $00
    nop                                           ; $0767: $00
    nop                                           ; $0768: $00
    nop                                           ; $0769: $00
    nop                                           ; $076a: $00
    nop                                           ; $076b: $00
    nop                                           ; $076c: $00
    nop                                           ; $076d: $00
    nop                                           ; $076e: $00
    nop                                           ; $076f: $00
    nop                                           ; $0770: $00
    nop                                           ; $0771: $00
    inc [hl]                                      ; $0772: $34
    jr jr_000_0775                                ; $0773: $18 $00

jr_000_0775:
    nop                                           ; $0775: $00
    nop                                           ; $0776: $00
    nop                                           ; $0777: $00
    nop                                           ; $0778: $00
    nop                                           ; $0779: $00
    nop                                           ; $077a: $00
    nop                                           ; $077b: $00
    ld e, $1c                                     ; $077c: $1e $1c
    ld e, $1c                                     ; $077e: $1e $1c
    ld e, $1c                                     ; $0780: $1e $1c
    ld a, a                                       ; $0782: $7f
    ccf                                           ; $0783: $3f
    nop                                           ; $0784: $00
    nop                                           ; $0785: $00
    nop                                           ; $0786: $00
    nop                                           ; $0787: $00
    nop                                           ; $0788: $00
    nop                                           ; $0789: $00
    nop                                           ; $078a: $00
    nop                                           ; $078b: $00
    nop                                           ; $078c: $00
    nop                                           ; $078d: $00
    nop                                           ; $078e: $00
    nop                                           ; $078f: $00
    nop                                           ; $0790: $00
    nop                                           ; $0791: $00
    ret nz                                        ; $0792: $c0

    ret nz                                        ; $0793: $c0

    ld b, b                                       ; $0794: $40
    nop                                           ; $0795: $00
    add b                                         ; $0796: $80
    ld b, b                                       ; $0797: $40
    ld b, b                                       ; $0798: $40
    ld h, b                                       ; $0799: $60
    ld a, b                                       ; $079a: $78
    jr nc, jr_000_07b7                            ; $079b: $30 $1a

    inc a                                         ; $079d: $3c
    ccf                                           ; $079e: $3f
    rra                                           ; $079f: $1f
    ccf                                           ; $07a0: $3f
    rra                                           ; $07a1: $1f
    ccf                                           ; $07a2: $3f
    rra                                           ; $07a3: $1f
    nop                                           ; $07a4: $00
    nop                                           ; $07a5: $00
    nop                                           ; $07a6: $00
    nop                                           ; $07a7: $00
    nop                                           ; $07a8: $00
    nop                                           ; $07a9: $00
    nop                                           ; $07aa: $00
    nop                                           ; $07ab: $00
    stop                                          ; $07ac: $10 $00
    cp $fc                                        ; $07ae: $fe $fc
    cp $ff                                        ; $07b0: $fe $ff
    rst $38                                       ; $07b2: $ff
    rst $38                                       ; $07b3: $ff
    nop                                           ; $07b4: $00
    nop                                           ; $07b5: $00
    nop                                           ; $07b6: $00

jr_000_07b7:
    nop                                           ; $07b7: $00
    nop                                           ; $07b8: $00
    nop                                           ; $07b9: $00
    nop                                           ; $07ba: $00
    nop                                           ; $07bb: $00
    nop                                           ; $07bc: $00
    nop                                           ; $07bd: $00
    nop                                           ; $07be: $00
    nop                                           ; $07bf: $00
    nop                                           ; $07c0: $00
    nop                                           ; $07c1: $00
    ld [$0780], sp                                ; $07c2: $08 $80 $07
    rrca                                          ; $07c5: $0f
    rrca                                          ; $07c6: $0f
    rrca                                          ; $07c7: $0f
    rra                                           ; $07c8: $1f
    rrca                                          ; $07c9: $0f
    rrca                                          ; $07ca: $0f
    rra                                           ; $07cb: $1f
    rra                                           ; $07cc: $1f
    rra                                           ; $07cd: $1f
    ld a, $1f                                     ; $07ce: $3e $1f
    ld a, $1f                                     ; $07d0: $3e $1f
    ccf                                           ; $07d2: $3f
    ld a, $fe                                     ; $07d3: $3e $fe
    rst $38                                       ; $07d5: $ff
    rst $38                                       ; $07d6: $ff
    rst $38                                       ; $07d7: $ff
    sbc a                                         ; $07d8: $9f
    rrca                                          ; $07d9: $0f
    rrca                                          ; $07da: $0f
    rrca                                          ; $07db: $0f
    rrca                                          ; $07dc: $0f
    rrca                                          ; $07dd: $0f
    rrca                                          ; $07de: $0f
    rlca                                          ; $07df: $07
    rlca                                          ; $07e0: $07
    rlca                                          ; $07e1: $07
    rlca                                          ; $07e2: $07
    rlca                                          ; $07e3: $07
    rlca                                          ; $07e4: $07
    rlca                                          ; $07e5: $07
    rlca                                          ; $07e6: $07
    rlca                                          ; $07e7: $07
    rlca                                          ; $07e8: $07
    rlca                                          ; $07e9: $07
    rlca                                          ; $07ea: $07
    rlca                                          ; $07eb: $07
    rlca                                          ; $07ec: $07
    rlca                                          ; $07ed: $07
    rlca                                          ; $07ee: $07
    rlca                                          ; $07ef: $07
    rlca                                          ; $07f0: $07
    rlca                                          ; $07f1: $07
    rlca                                          ; $07f2: $07
    rlca                                          ; $07f3: $07
    db $fc                                        ; $07f4: $fc
    ld a, [hl]                                    ; $07f5: $7e
    rlca                                          ; $07f6: $07
    adc [hl]                                      ; $07f7: $8e
    adc a                                         ; $07f8: $8f
    rlca                                          ; $07f9: $07
    rlca                                          ; $07fa: $07
    rlca                                          ; $07fb: $07
    rlca                                          ; $07fc: $07
    rlca                                          ; $07fd: $07
    rlca                                          ; $07fe: $07
    rlca                                          ; $07ff: $07
    adc a                                         ; $0800: $8f
    rlca                                          ; $0801: $07
    rlca                                          ; $0802: $07
    adc [hl]                                      ; $0803: $8e
    rra                                           ; $0804: $1f
    dec e                                         ; $0805: $1d
    rra                                           ; $0806: $1f
    ld e, $1e                                     ; $0807: $1e $1e
    inc e                                         ; $0809: $1c
    inc e                                         ; $080a: $1c
    inc e                                         ; $080b: $1c
    sbc h                                         ; $080c: $9c
    inc e                                         ; $080d: $1c
    inc e                                         ; $080e: $1c
    inc e                                         ; $080f: $1c
    inc e                                         ; $0810: $1c
    inc e                                         ; $0811: $1c
    inc e                                         ; $0812: $1c
    inc e                                         ; $0813: $1c
    rst $00                                       ; $0814: $c7
    db $e3                                        ; $0815: $e3
    rlca                                          ; $0816: $07
    rlca                                          ; $0817: $07
    rlca                                          ; $0818: $07
    ld c, $0f                                     ; $0819: $0e $0f
    rrca                                          ; $081b: $0f
    rrca                                          ; $081c: $0f
    rrca                                          ; $081d: $0f
    rrca                                          ; $081e: $0f
    ld c, $06                                     ; $081f: $0e $06
    rrca                                          ; $0821: $0f
    rlca                                          ; $0822: $07
    rlca                                          ; $0823: $07
    ld hl, sp-$04                                 ; $0824: $f8 $fc
    sbc h                                         ; $0826: $9c
    ld c, $0e                                     ; $0827: $0e $0e
    ld c, $ff                                     ; $0829: $0e $ff
    cp $ff                                        ; $082b: $fe $ff
    cp $00                                        ; $082d: $fe $00
    nop                                           ; $082f: $00
    nop                                           ; $0830: $00
    nop                                           ; $0831: $00
    add h                                         ; $0832: $84
    ld [bc], a                                    ; $0833: $02
    ccf                                           ; $0834: $3f
    rra                                           ; $0835: $1f
    inc e                                         ; $0836: $1c
    jr c, @+$1e                                   ; $0837: $38 $1c

    jr c, jr_000_0879                             ; $0839: $38 $3e

    rra                                           ; $083b: $1f
    rrca                                          ; $083c: $0f
    rra                                           ; $083d: $1f
    inc c                                         ; $083e: $0c
    inc bc                                        ; $083f: $03
    nop                                           ; $0840: $00
    nop                                           ; $0841: $00
    jr nc, jr_000_0844                            ; $0842: $30 $00

jr_000_0844:
    pop hl                                        ; $0844: $e1
    ldh [$61], a                                  ; $0845: $e0 $61
    ld bc, $0301                                  ; $0847: $01 $01 $03
    jp $c303                                      ; $084a: $c3 $03 $c3


    db $e3                                        ; $084d: $e3
    di                                            ; $084e: $f3
    db $e3                                        ; $084f: $e3
    pop hl                                        ; $0850: $e1
    ld [hl], e                                    ; $0851: $73
    pop hl                                        ; $0852: $e1
    ld [hl], c                                    ; $0853: $71
    cp $ff                                        ; $0854: $fe $ff
    rst $20                                       ; $0856: $e7
    jp $83c3                                      ; $0857: $c3 $c3 $83


    rst $38                                       ; $085a: $ff
    rst $38                                       ; $085b: $ff
    rst $38                                       ; $085c: $ff
    rst $38                                       ; $085d: $ff
    ret nz                                        ; $085e: $c0

    add b                                         ; $085f: $80
    add b                                         ; $0860: $80
    ret nz                                        ; $0861: $c0

    pop hl                                        ; $0862: $e1
    ret nz                                        ; $0863: $c0

    rlca                                          ; $0864: $07
    rlca                                          ; $0865: $07
    rlca                                          ; $0866: $07
    add a                                         ; $0867: $87
    add a                                         ; $0868: $87
    add a                                         ; $0869: $87
    rst $00                                       ; $086a: $c7
    add a                                         ; $086b: $87
    rst $00                                       ; $086c: $c7
    add a                                         ; $086d: $87
    rlca                                          ; $086e: $07
    rlca                                          ; $086f: $07
    rlca                                          ; $0870: $07
    rlca                                          ; $0871: $07
    rlca                                          ; $0872: $07
    add a                                         ; $0873: $87
    db $fc                                        ; $0874: $fc
    ld a, [hl]                                    ; $0875: $7e
    rra                                           ; $0876: $1f
    adc [hl]                                      ; $0877: $8e
    add a                                         ; $0878: $87

jr_000_0879:
    ld c, $07                                     ; $0879: $0e $07
    ld c, $07                                     ; $087b: $0e $07
    ld c, $07                                     ; $087d: $0e $07
    ld c, $07                                     ; $087f: $0e $07
    ld c, $07                                     ; $0881: $0e $07
    ld c, $7f                                     ; $0883: $0e $7f
    ccf                                           ; $0885: $3f
    ld e, $1c                                     ; $0886: $1e $1c
    ld e, $1c                                     ; $0888: $1e $1c
    ld e, $1c                                     ; $088a: $1e $1c
    ld e, $1c                                     ; $088c: $1e $1c
    ld e, $1c                                     ; $088e: $1e $1c
    ld e, $1c                                     ; $0890: $1e $1c
    ld c, $1c                                     ; $0892: $0e $1c
    ret nz                                        ; $0894: $c0

    ret nz                                        ; $0895: $c0

    nop                                           ; $0896: $00
    nop                                           ; $0897: $00
    nop                                           ; $0898: $00
    nop                                           ; $0899: $00
    nop                                           ; $089a: $00
    nop                                           ; $089b: $00
    nop                                           ; $089c: $00
    nop                                           ; $089d: $00
    nop                                           ; $089e: $00
    nop                                           ; $089f: $00
    nop                                           ; $08a0: $00
    nop                                           ; $08a1: $00
    nop                                           ; $08a2: $00
    nop                                           ; $08a3: $00
    rra                                           ; $08a4: $1f
    rrca                                          ; $08a5: $0f
    rrca                                          ; $08a6: $0f
    rlca                                          ; $08a7: $07
    rlca                                          ; $08a8: $07
    inc bc                                        ; $08a9: $03
    inc bc                                        ; $08aa: $03
    ld bc, $0103                                  ; $08ab: $01 $03 $01
    ld bc, $0101                                  ; $08ae: $01 $01 $01
    nop                                           ; $08b1: $00
    nop                                           ; $08b2: $00
    nop                                           ; $08b3: $00
    rst $38                                       ; $08b4: $ff
    rst $38                                       ; $08b5: $ff
    rst $38                                       ; $08b6: $ff
    rst $38                                       ; $08b7: $ff
    rst $38                                       ; $08b8: $ff
    rst $38                                       ; $08b9: $ff
    rst $38                                       ; $08ba: $ff
    rst $38                                       ; $08bb: $ff
    rst $38                                       ; $08bc: $ff
    rst $38                                       ; $08bd: $ff
    rst $38                                       ; $08be: $ff
    rst $38                                       ; $08bf: $ff
    rst $38                                       ; $08c0: $ff
    rst $38                                       ; $08c1: $ff
    ccf                                           ; $08c2: $3f
    ld a, a                                       ; $08c3: $7f
    db $e4                                        ; $08c4: $e4
    ret z                                         ; $08c5: $c8

    cp $fc                                        ; $08c6: $fe $fc
    cp $ff                                        ; $08c8: $fe $ff
    rst $38                                       ; $08ca: $ff
    rst $38                                       ; $08cb: $ff
    rst $38                                       ; $08cc: $ff
    rst $38                                       ; $08cd: $ff
    rst $38                                       ; $08ce: $ff
    rst $38                                       ; $08cf: $ff
    rst $38                                       ; $08d0: $ff
    rst $38                                       ; $08d1: $ff
    rst $38                                       ; $08d2: $ff
    rst $38                                       ; $08d3: $ff
    nop                                           ; $08d4: $00
    nop                                           ; $08d5: $00
    inc bc                                        ; $08d6: $03
    nop                                           ; $08d7: $00
    add e                                         ; $08d8: $83
    rlca                                          ; $08d9: $07
    rst $38                                       ; $08da: $ff
    rst $38                                       ; $08db: $ff
    rst $38                                       ; $08dc: $ff
    rst $38                                       ; $08dd: $ff
    rst $38                                       ; $08de: $ff
    rst $38                                       ; $08df: $ff
    rst $38                                       ; $08e0: $ff
    rst $38                                       ; $08e1: $ff
    cp $fc                                        ; $08e2: $fe $fc
    ccf                                           ; $08e4: $3f
    ld a, $b7                                     ; $08e5: $3e $b7
    ld a, [hl]                                    ; $08e7: $7e
    rst $38                                       ; $08e8: $ff
    rst $30                                       ; $08e9: $f7
    rst $30                                       ; $08ea: $f7
    rst $20                                       ; $08eb: $e7
    rst $20                                       ; $08ec: $e7
    rst $00                                       ; $08ed: $c7
    add a                                         ; $08ee: $87
    rst $00                                       ; $08ef: $c7
    add a                                         ; $08f0: $87
    rlca                                          ; $08f1: $07
    inc bc                                        ; $08f2: $03
    rlca                                          ; $08f3: $07
    cp $07                                        ; $08f4: $fe $07
    sbc [hl]                                      ; $08f6: $9e
    ld h, h                                       ; $08f7: $64
    inc a                                         ; $08f8: $3c
    call z, $fc9c                                 ; $08f9: $cc $9c $fc
    db $fc                                        ; $08fc: $fc
    db $fc                                        ; $08fd: $fc
    db $fc                                        ; $08fe: $fc
    db $fc                                        ; $08ff: $fc
    db $fc                                        ; $0900: $fc
    db $fc                                        ; $0901: $fc
    db $fc                                        ; $0902: $fc
    db $fc                                        ; $0903: $fc
    rlca                                          ; $0904: $07
    rlca                                          ; $0905: $07
    rlca                                          ; $0906: $07
    rlca                                          ; $0907: $07
    rlca                                          ; $0908: $07
    rlca                                          ; $0909: $07
    rlca                                          ; $090a: $07
    rlca                                          ; $090b: $07
    rlca                                          ; $090c: $07
    rlca                                          ; $090d: $07
    rlca                                          ; $090e: $07
    rlca                                          ; $090f: $07
    nop                                           ; $0910: $00
    nop                                           ; $0911: $00
    nop                                           ; $0912: $00
    nop                                           ; $0913: $00
    db $fc                                        ; $0914: $fc
    ld a, [hl]                                    ; $0915: $7e
    inc d                                         ; $0916: $14
    jr c, jr_000_0919                             ; $0917: $38 $00

jr_000_0919:
    nop                                           ; $0919: $00
    nop                                           ; $091a: $00
    nop                                           ; $091b: $00
    nop                                           ; $091c: $00
    nop                                           ; $091d: $00
    nop                                           ; $091e: $00
    nop                                           ; $091f: $00
    nop                                           ; $0920: $00
    nop                                           ; $0921: $00
    nop                                           ; $0922: $00
    nop                                           ; $0923: $00
    inc e                                         ; $0924: $1c
    inc e                                         ; $0925: $1c
    inc e                                         ; $0926: $1c
    inc e                                         ; $0927: $1c
    nop                                           ; $0928: $00
    nop                                           ; $0929: $00
    nop                                           ; $092a: $00
    nop                                           ; $092b: $00
    nop                                           ; $092c: $00
    nop                                           ; $092d: $00
    nop                                           ; $092e: $00
    nop                                           ; $092f: $00
    nop                                           ; $0930: $00
    nop                                           ; $0931: $00
    nop                                           ; $0932: $00
    nop                                           ; $0933: $00
    rlca                                          ; $0934: $07
    inc bc                                        ; $0935: $03
    ld bc, $0000                                  ; $0936: $01 $00 $00
    nop                                           ; $0939: $00
    nop                                           ; $093a: $00
    nop                                           ; $093b: $00
    nop                                           ; $093c: $00
    nop                                           ; $093d: $00
    nop                                           ; $093e: $00
    nop                                           ; $093f: $00
    nop                                           ; $0940: $00
    nop                                           ; $0941: $00
    nop                                           ; $0942: $00
    nop                                           ; $0943: $00
    cp $fe                                        ; $0944: $fe $fe
    ld l, h                                       ; $0946: $6c
    ldh a, [rP1]                                  ; $0947: $f0 $00
    nop                                           ; $0949: $00
    nop                                           ; $094a: $00
    nop                                           ; $094b: $00
    nop                                           ; $094c: $00
    nop                                           ; $094d: $00
    nop                                           ; $094e: $00
    nop                                           ; $094f: $00
    nop                                           ; $0950: $00
    nop                                           ; $0951: $00
    nop                                           ; $0952: $00
    nop                                           ; $0953: $00
    rra                                           ; $0954: $1f
    ccf                                           ; $0955: $3f
    dec de                                        ; $0956: $1b
    rlca                                          ; $0957: $07
    nop                                           ; $0958: $00
    nop                                           ; $0959: $00
    nop                                           ; $095a: $00
    nop                                           ; $095b: $00
    nop                                           ; $095c: $00
    nop                                           ; $095d: $00
    nop                                           ; $095e: $00
    nop                                           ; $095f: $00
    nop                                           ; $0960: $00
    nop                                           ; $0961: $00
    nop                                           ; $0962: $00
    nop                                           ; $0963: $00
    pop hl                                        ; $0964: $e1
    ldh [rLCDC], a                                ; $0965: $e0 $40
    add b                                         ; $0967: $80
    nop                                           ; $0968: $00
    nop                                           ; $0969: $00
    nop                                           ; $096a: $00
    nop                                           ; $096b: $00
    nop                                           ; $096c: $00
    nop                                           ; $096d: $00
    nop                                           ; $096e: $00
    nop                                           ; $096f: $00
    nop                                           ; $0970: $00
    nop                                           ; $0971: $00
    nop                                           ; $0972: $00
    nop                                           ; $0973: $00
    rst $38                                       ; $0974: $ff
    rst $38                                       ; $0975: $ff
    ld e, e                                       ; $0976: $5b
    inc a                                         ; $0977: $3c
    nop                                           ; $0978: $00
    nop                                           ; $0979: $00
    nop                                           ; $097a: $00
    nop                                           ; $097b: $00
    nop                                           ; $097c: $00
    nop                                           ; $097d: $00
    nop                                           ; $097e: $00
    nop                                           ; $097f: $00
    nop                                           ; $0980: $00
    nop                                           ; $0981: $00
    nop                                           ; $0982: $00
    nop                                           ; $0983: $00
    add a                                         ; $0984: $87
    add a                                         ; $0985: $87
    rlca                                          ; $0986: $07
    rlca                                          ; $0987: $07
    nop                                           ; $0988: $00
    nop                                           ; $0989: $00
    nop                                           ; $098a: $00
    nop                                           ; $098b: $00
    nop                                           ; $098c: $00
    nop                                           ; $098d: $00
    nop                                           ; $098e: $00
    nop                                           ; $098f: $00
    nop                                           ; $0990: $00
    nop                                           ; $0991: $00
    nop                                           ; $0992: $00
    nop                                           ; $0993: $00
    rlca                                          ; $0994: $07
    ld c, $07                                     ; $0995: $0e $07
    ld c, $00                                     ; $0997: $0e $00
    nop                                           ; $0999: $00
    nop                                           ; $099a: $00
    nop                                           ; $099b: $00
    nop                                           ; $099c: $00
    nop                                           ; $099d: $00
    nop                                           ; $099e: $00
    nop                                           ; $099f: $00
    nop                                           ; $09a0: $00
    nop                                           ; $09a1: $00
    nop                                           ; $09a2: $00
    nop                                           ; $09a3: $00
    rra                                           ; $09a4: $1f
    rrca                                          ; $09a5: $0f
    dec bc                                        ; $09a6: $0b
    rlca                                          ; $09a7: $07
    nop                                           ; $09a8: $00
    nop                                           ; $09a9: $00
    nop                                           ; $09aa: $00
    nop                                           ; $09ab: $00
    nop                                           ; $09ac: $00
    nop                                           ; $09ad: $00
    nop                                           ; $09ae: $00
    nop                                           ; $09af: $00
    nop                                           ; $09b0: $00
    nop                                           ; $09b1: $00
    nop                                           ; $09b2: $00
    nop                                           ; $09b3: $00
    add b                                         ; $09b4: $80
    ret nz                                        ; $09b5: $c0

    add b                                         ; $09b6: $80
    ret nz                                        ; $09b7: $c0

    nop                                           ; $09b8: $00
    nop                                           ; $09b9: $00
    nop                                           ; $09ba: $00
    nop                                           ; $09bb: $00
    nop                                           ; $09bc: $00
    nop                                           ; $09bd: $00
    nop                                           ; $09be: $00
    nop                                           ; $09bf: $00
    nop                                           ; $09c0: $00
    nop                                           ; $09c1: $00
    nop                                           ; $09c2: $00
    nop                                           ; $09c3: $00
    ccf                                           ; $09c4: $3f
    rra                                           ; $09c5: $1f
    rlca                                          ; $09c6: $07
    nop                                           ; $09c7: $00
    nop                                           ; $09c8: $00
    nop                                           ; $09c9: $00
    nop                                           ; $09ca: $00
    nop                                           ; $09cb: $00
    nop                                           ; $09cc: $00
    nop                                           ; $09cd: $00
    nop                                           ; $09ce: $00
    nop                                           ; $09cf: $00
    nop                                           ; $09d0: $00
    nop                                           ; $09d1: $00
    nop                                           ; $09d2: $00
    nop                                           ; $09d3: $00
    rst $38                                       ; $09d4: $ff
    rst $38                                       ; $09d5: $ff
    cp [hl]                                       ; $09d6: $be
    ld a, h                                       ; $09d7: $7c
    db $10                                        ; $09d8: $10
    ld h, b                                       ; $09d9: $60
    nop                                           ; $09da: $00
    nop                                           ; $09db: $00
    nop                                           ; $09dc: $00
    nop                                           ; $09dd: $00
    nop                                           ; $09de: $00
    nop                                           ; $09df: $00
    nop                                           ; $09e0: $00
    nop                                           ; $09e1: $00
    nop                                           ; $09e2: $00
    nop                                           ; $09e3: $00
    add sp, -$10                                  ; $09e4: $e8 $f0
    ret nz                                        ; $09e6: $c0

    nop                                           ; $09e7: $00
    nop                                           ; $09e8: $00
    nop                                           ; $09e9: $00
    nop                                           ; $09ea: $00
    nop                                           ; $09eb: $00
    nop                                           ; $09ec: $00
    nop                                           ; $09ed: $00
    nop                                           ; $09ee: $00
    nop                                           ; $09ef: $00
    nop                                           ; $09f0: $00
    nop                                           ; $09f1: $00
    nop                                           ; $09f2: $00
    nop                                           ; $09f3: $00
    rlca                                          ; $09f4: $07
    inc bc                                        ; $09f5: $03
    rlca                                          ; $09f6: $07
    inc bc                                        ; $09f7: $03
    rlca                                          ; $09f8: $07
    inc bc                                        ; $09f9: $03
    rlca                                          ; $09fa: $07
    inc bc                                        ; $09fb: $03
    rlca                                          ; $09fc: $07
    inc bc                                        ; $09fd: $03
    rlca                                          ; $09fe: $07
    inc bc                                        ; $09ff: $03
    rlca                                          ; $0a00: $07
    inc bc                                        ; $0a01: $03
    rlca                                          ; $0a02: $07
    inc bc                                        ; $0a03: $03
    ld hl, sp-$04                                 ; $0a04: $f8 $fc
    ld hl, sp-$04                                 ; $0a06: $f8 $fc
    ld hl, sp-$04                                 ; $0a08: $f8 $fc
    db $fc                                        ; $0a0a: $fc
    ld hl, sp-$04                                 ; $0a0b: $f8 $fc
    ld hl, sp-$04                                 ; $0a0d: $f8 $fc
    ld hl, sp-$08                                 ; $0a0f: $f8 $f8
    ld hl, sp-$08                                 ; $0a11: $f8 $f8
    ld hl, sp+$03                                 ; $0a13: $f8 $03
    rlca                                          ; $0a15: $07
    inc bc                                        ; $0a16: $03
    rlca                                          ; $0a17: $07
    inc bc                                        ; $0a18: $03
    rlca                                          ; $0a19: $07
    rlca                                          ; $0a1a: $07
    inc bc                                        ; $0a1b: $03
    rlca                                          ; $0a1c: $07
    inc bc                                        ; $0a1d: $03
    rlca                                          ; $0a1e: $07
    inc bc                                        ; $0a1f: $03
    rlca                                          ; $0a20: $07
    inc bc                                        ; $0a21: $03
    rlca                                          ; $0a22: $07
    inc bc                                        ; $0a23: $03
    ldh a, [$f8]                                  ; $0a24: $f0 $f8
    ld hl, sp-$10                                 ; $0a26: $f8 $f0
    ld hl, sp-$10                                 ; $0a28: $f8 $f0
    ldh a, [$f0]                                  ; $0a2a: $f0 $f0
    ldh [$f0], a                                  ; $0a2c: $e0 $f0
    ldh a, [$e0]                                  ; $0a2e: $f0 $e0
    ret nz                                        ; $0a30: $c0

    ldh [$c0], a                                  ; $0a31: $e0 $c0
    ldh [rTAC], a                                 ; $0a33: $e0 $07
    inc bc                                        ; $0a35: $03
    rlca                                          ; $0a36: $07
    inc bc                                        ; $0a37: $03
    rlca                                          ; $0a38: $07
    inc bc                                        ; $0a39: $03
    rlca                                          ; $0a3a: $07
    inc bc                                        ; $0a3b: $03
    inc bc                                        ; $0a3c: $03
    rlca                                          ; $0a3d: $07
    inc bc                                        ; $0a3e: $03
    rlca                                          ; $0a3f: $07
    inc bc                                        ; $0a40: $03
    rlca                                          ; $0a41: $07
    inc bc                                        ; $0a42: $03
    rlca                                          ; $0a43: $07
    ldh [$e0], a                                  ; $0a44: $e0 $e0
    ret nz                                        ; $0a46: $c0

    ldh [$c0], a                                  ; $0a47: $e0 $c0
    ldh [$e0], a                                  ; $0a49: $e0 $e0
    ret nz                                        ; $0a4b: $c0

    ldh [$c0], a                                  ; $0a4c: $e0 $c0
    ldh [$c0], a                                  ; $0a4e: $e0 $c0
    ret nz                                        ; $0a50: $c0

    ret nz                                        ; $0a51: $c0

    ret nz                                        ; $0a52: $c0

    ret nz                                        ; $0a53: $c0

    rlca                                          ; $0a54: $07
    rlca                                          ; $0a55: $07
    rlca                                          ; $0a56: $07
    rlca                                          ; $0a57: $07
    rlca                                          ; $0a58: $07
    rlca                                          ; $0a59: $07
    rlca                                          ; $0a5a: $07
    rlca                                          ; $0a5b: $07
    rlca                                          ; $0a5c: $07
    rlca                                          ; $0a5d: $07
    inc bc                                        ; $0a5e: $03
    rlca                                          ; $0a5f: $07
    inc bc                                        ; $0a60: $03
    rlca                                          ; $0a61: $07
    inc bc                                        ; $0a62: $03
    rlca                                          ; $0a63: $07
    ret nz                                        ; $0a64: $c0

    ret nz                                        ; $0a65: $c0

    ret nz                                        ; $0a66: $c0

    ret nz                                        ; $0a67: $c0

    ldh [$c0], a                                  ; $0a68: $e0 $c0
    ldh [$e0], a                                  ; $0a6a: $e0 $e0
    ld hl, sp-$10                                 ; $0a6c: $f8 $f0
    ei                                            ; $0a6e: $fb
    db $fc                                        ; $0a6f: $fc
    rst $38                                       ; $0a70: $ff
    rst $38                                       ; $0a71: $ff
    rst $38                                       ; $0a72: $ff
    rst $38                                       ; $0a73: $ff
    nop                                           ; $0a74: $00
    nop                                           ; $0a75: $00
    nop                                           ; $0a76: $00
    nop                                           ; $0a77: $00
    nop                                           ; $0a78: $00
    nop                                           ; $0a79: $00
    nop                                           ; $0a7a: $00
    nop                                           ; $0a7b: $00
    nop                                           ; $0a7c: $00
    nop                                           ; $0a7d: $00
    nop                                           ; $0a7e: $00
    nop                                           ; $0a7f: $00
    and b                                         ; $0a80: $a0
    ret nz                                        ; $0a81: $c0

    ldh [$c0], a                                  ; $0a82: $e0 $c0
    rlca                                          ; $0a84: $07
    inc bc                                        ; $0a85: $03
    rlca                                          ; $0a86: $07
    inc bc                                        ; $0a87: $03
    ld bc, $0103                                  ; $0a88: $01 $03 $01
    inc bc                                        ; $0a8b: $03
    ld bc, $0000                                  ; $0a8c: $01 $00 $00
    nop                                           ; $0a8f: $00
    nop                                           ; $0a90: $00
    nop                                           ; $0a91: $00
    nop                                           ; $0a92: $00
    nop                                           ; $0a93: $00
    rst $38                                       ; $0a94: $ff
    cp $fe                                        ; $0a95: $fe $fe
    rst $38                                       ; $0a97: $ff
    rst $38                                       ; $0a98: $ff
    rst $38                                       ; $0a99: $ff
    rst $38                                       ; $0a9a: $ff
    rst $38                                       ; $0a9b: $ff
    rst $38                                       ; $0a9c: $ff
    nop                                           ; $0a9d: $00
    nop                                           ; $0a9e: $00
    nop                                           ; $0a9f: $00
    nop                                           ; $0aa0: $00
    nop                                           ; $0aa1: $00
    nop                                           ; $0aa2: $00
    nop                                           ; $0aa3: $00
    add b                                         ; $0aa4: $80
    nop                                           ; $0aa5: $00
    add b                                         ; $0aa6: $80
    nop                                           ; $0aa7: $00
    ldh [$c0], a                                  ; $0aa8: $e0 $c0
    ldh [$f0], a                                  ; $0aaa: $e0 $f0
    ldh a, [rP1]                                  ; $0aac: $f0 $00
    nop                                           ; $0aae: $00
    nop                                           ; $0aaf: $00
    nop                                           ; $0ab0: $00
    nop                                           ; $0ab1: $00
    nop                                           ; $0ab2: $00
    nop                                           ; $0ab3: $00
    nop                                           ; $0ab4: $00
    ld bc, $0302                                  ; $0ab5: $01 $02 $03
    nop                                           ; $0ab8: $00
    nop                                           ; $0ab9: $00
    nop                                           ; $0aba: $00
    nop                                           ; $0abb: $00
    nop                                           ; $0abc: $00
    nop                                           ; $0abd: $00
    nop                                           ; $0abe: $00
    nop                                           ; $0abf: $00
    nop                                           ; $0ac0: $00
    nop                                           ; $0ac1: $00
    nop                                           ; $0ac2: $00
    nop                                           ; $0ac3: $00
    nop                                           ; $0ac4: $00
    nop                                           ; $0ac5: $00
    nop                                           ; $0ac6: $00
    nop                                           ; $0ac7: $00
    nop                                           ; $0ac8: $00
    nop                                           ; $0ac9: $00
    nop                                           ; $0aca: $00
    inc b                                         ; $0acb: $04
    dec b                                         ; $0acc: $05
    nop                                           ; $0acd: $00
    nop                                           ; $0ace: $00
    nop                                           ; $0acf: $00
    nop                                           ; $0ad0: $00
    nop                                           ; $0ad1: $00
    nop                                           ; $0ad2: $00
    nop                                           ; $0ad3: $00
    nop                                           ; $0ad4: $00
    nop                                           ; $0ad5: $00
    nop                                           ; $0ad6: $00
    nop                                           ; $0ad7: $00
    nop                                           ; $0ad8: $00
    nop                                           ; $0ad9: $00
    nop                                           ; $0ada: $00
    nop                                           ; $0adb: $00
    nop                                           ; $0adc: $00
    ld b, $07                                     ; $0add: $06 $07
    ld [$0a09], sp                                ; $0adf: $08 $09 $0a
    nop                                           ; $0ae2: $00
    nop                                           ; $0ae3: $00
    nop                                           ; $0ae4: $00
    nop                                           ; $0ae5: $00
    nop                                           ; $0ae6: $00
    nop                                           ; $0ae7: $00
    nop                                           ; $0ae8: $00
    nop                                           ; $0ae9: $00
    nop                                           ; $0aea: $00
    nop                                           ; $0aeb: $00
    nop                                           ; $0aec: $00
    nop                                           ; $0aed: $00
    nop                                           ; $0aee: $00
    nop                                           ; $0aef: $00
    nop                                           ; $0af0: $00
    dec bc                                        ; $0af1: $0b
    inc c                                         ; $0af2: $0c
    dec c                                         ; $0af3: $0d
    ld c, $0f                                     ; $0af4: $0e $0f
    nop                                           ; $0af6: $00
    stop                                          ; $0af7: $10 $00
    nop                                           ; $0af9: $00
    nop                                           ; $0afa: $00
    nop                                           ; $0afb: $00
    nop                                           ; $0afc: $00
    nop                                           ; $0afd: $00
    nop                                           ; $0afe: $00
    nop                                           ; $0aff: $00
    nop                                           ; $0b00: $00
    nop                                           ; $0b01: $00
    nop                                           ; $0b02: $00
    nop                                           ; $0b03: $00
    ld de, $1312                                  ; $0b04: $11 $12 $13
    inc d                                         ; $0b07: $14
    dec d                                         ; $0b08: $15
    ld d, $17                                     ; $0b09: $16 $17
    jr jr_000_0b0d                                ; $0b0b: $18 $00

jr_000_0b0d:
    nop                                           ; $0b0d: $00
    nop                                           ; $0b0e: $00
    nop                                           ; $0b0f: $00
    nop                                           ; $0b10: $00
    nop                                           ; $0b11: $00
    nop                                           ; $0b12: $00
    nop                                           ; $0b13: $00
    nop                                           ; $0b14: $00
    nop                                           ; $0b15: $00
    nop                                           ; $0b16: $00
    nop                                           ; $0b17: $00
    nop                                           ; $0b18: $00
    add hl, de                                    ; $0b19: $19
    ld a, [de]                                    ; $0b1a: $1a
    dec de                                        ; $0b1b: $1b
    inc e                                         ; $0b1c: $1c
    dec e                                         ; $0b1d: $1d
    ld e, $1f                                     ; $0b1e: $1e $1f
    jr nz, jr_000_0b22                            ; $0b20: $20 $00

jr_000_0b22:
    nop                                           ; $0b22: $00
    nop                                           ; $0b23: $00
    nop                                           ; $0b24: $00
    nop                                           ; $0b25: $00
    nop                                           ; $0b26: $00
    nop                                           ; $0b27: $00
    nop                                           ; $0b28: $00
    nop                                           ; $0b29: $00
    nop                                           ; $0b2a: $00
    nop                                           ; $0b2b: $00
    nop                                           ; $0b2c: $00
    ld hl, $2322                                  ; $0b2d: $21 $22 $23
    inc h                                         ; $0b30: $24
    dec h                                         ; $0b31: $25
    ld h, $27                                     ; $0b32: $26 $27
    nop                                           ; $0b34: $00
    nop                                           ; $0b35: $00
    nop                                           ; $0b36: $00
    nop                                           ; $0b37: $00
    nop                                           ; $0b38: $00
    nop                                           ; $0b39: $00
    nop                                           ; $0b3a: $00
    nop                                           ; $0b3b: $00
    nop                                           ; $0b3c: $00
    nop                                           ; $0b3d: $00
    nop                                           ; $0b3e: $00
    nop                                           ; $0b3f: $00
    nop                                           ; $0b40: $00
    nop                                           ; $0b41: $00
    jr z, jr_000_0b6d                             ; $0b42: $28 $29

    ld a, [hl+]                                   ; $0b44: $2a
    dec hl                                        ; $0b45: $2b
    inc l                                         ; $0b46: $2c
    dec l                                         ; $0b47: $2d
    nop                                           ; $0b48: $00
    nop                                           ; $0b49: $00
    nop                                           ; $0b4a: $00
    ld l, $2f                                     ; $0b4b: $2e $2f
    jr nc, jr_000_0b80                            ; $0b4d: $30 $31

    ld [hl-], a                                   ; $0b4f: $32
    inc sp                                        ; $0b50: $33
    nop                                           ; $0b51: $00
    nop                                           ; $0b52: $00
    nop                                           ; $0b53: $00
    nop                                           ; $0b54: $00
    nop                                           ; $0b55: $00
    nop                                           ; $0b56: $00
    inc [hl]                                      ; $0b57: $34
    dec [hl]                                      ; $0b58: $35
    ld [hl], $37                                  ; $0b59: $36 $37
    jr c, jr_000_0b5d                             ; $0b5b: $38 $00

jr_000_0b5d:
    nop                                           ; $0b5d: $00
    nop                                           ; $0b5e: $00
    add hl, sp                                    ; $0b5f: $39
    ld a, [hl-]                                   ; $0b60: $3a
    dec sp                                        ; $0b61: $3b
    inc a                                         ; $0b62: $3c
    dec a                                         ; $0b63: $3d
    ld a, $00                                     ; $0b64: $3e $00
    nop                                           ; $0b66: $00
    nop                                           ; $0b67: $00
    nop                                           ; $0b68: $00
    nop                                           ; $0b69: $00
    nop                                           ; $0b6a: $00
    ccf                                           ; $0b6b: $3f
    ld b, b                                       ; $0b6c: $40

jr_000_0b6d:
    ld b, c                                       ; $0b6d: $41
    ld b, d                                       ; $0b6e: $42
    ld b, e                                       ; $0b6f: $43
    nop                                           ; $0b70: $00
    nop                                           ; $0b71: $00
    nop                                           ; $0b72: $00
    ld b, h                                       ; $0b73: $44
    ld b, l                                       ; $0b74: $45
    ld b, [hl]                                    ; $0b75: $46
    ld b, a                                       ; $0b76: $47
    ld c, b                                       ; $0b77: $48
    ld c, c                                       ; $0b78: $49
    nop                                           ; $0b79: $00
    nop                                           ; $0b7a: $00
    nop                                           ; $0b7b: $00
    nop                                           ; $0b7c: $00
    nop                                           ; $0b7d: $00
    nop                                           ; $0b7e: $00
    nop                                           ; $0b7f: $00

jr_000_0b80:
    nop                                           ; $0b80: $00
    ld c, d                                       ; $0b81: $4a
    ld c, e                                       ; $0b82: $4b
    ld c, h                                       ; $0b83: $4c
    ld c, l                                       ; $0b84: $4d
    ld c, [hl]                                    ; $0b85: $4e
    ld c, a                                       ; $0b86: $4f
    ld d, b                                       ; $0b87: $50
    ld d, c                                       ; $0b88: $51
    ld d, d                                       ; $0b89: $52
    ld d, e                                       ; $0b8a: $53
    ld d, h                                       ; $0b8b: $54
    ld c, l                                       ; $0b8c: $4d
    ld d, l                                       ; $0b8d: $55
    ld d, [hl]                                    ; $0b8e: $56
    ld d, a                                       ; $0b8f: $57
    nop                                           ; $0b90: $00
    ld e, b                                       ; $0b91: $58
    ld e, c                                       ; $0b92: $59
    ld e, d                                       ; $0b93: $5a
    nop                                           ; $0b94: $00
    ld e, e                                       ; $0b95: $5b
    ld e, h                                       ; $0b96: $5c
    nop                                           ; $0b97: $00
    ld e, l                                       ; $0b98: $5d
    ld e, [hl]                                    ; $0b99: $5e
    ld e, a                                       ; $0b9a: $5f
    ld h, b                                       ; $0b9b: $60
    ld h, c                                       ; $0b9c: $61
    ld h, d                                       ; $0b9d: $62
    ld h, e                                       ; $0b9e: $63
    ld h, h                                       ; $0b9f: $64
    ld h, l                                       ; $0ba0: $65
    ld h, [hl]                                    ; $0ba1: $66
    ld h, a                                       ; $0ba2: $67
    ld l, b                                       ; $0ba3: $68
    nop                                           ; $0ba4: $00
    ld l, c                                       ; $0ba5: $69
    ld l, d                                       ; $0ba6: $6a
    ld l, e                                       ; $0ba7: $6b
    ld l, h                                       ; $0ba8: $6c
    ld l, l                                       ; $0ba9: $6d
    ld l, [hl]                                    ; $0baa: $6e
    nop                                           ; $0bab: $00
    ld l, a                                       ; $0bac: $6f
    ld [hl], b                                    ; $0bad: $70
    ld [hl], c                                    ; $0bae: $71
    ld [hl], d                                    ; $0baf: $72
    ld [hl], e                                    ; $0bb0: $73
    ld [hl], h                                    ; $0bb1: $74
    ld [hl], l                                    ; $0bb2: $75
    db $76                                        ; $0bb3: $76
    ld [hl], a                                    ; $0bb4: $77
    ld a, b                                       ; $0bb5: $78
    ld a, c                                       ; $0bb6: $79
    ld a, d                                       ; $0bb7: $7a
    nop                                           ; $0bb8: $00
    nop                                           ; $0bb9: $00
    ld a, e                                       ; $0bba: $7b
    ld a, h                                       ; $0bbb: $7c
    ld a, l                                       ; $0bbc: $7d
    ld a, [hl]                                    ; $0bbd: $7e
    ld a, a                                       ; $0bbe: $7f
    nop                                           ; $0bbf: $00
    nop                                           ; $0bc0: $00
    nop                                           ; $0bc1: $00
    nop                                           ; $0bc2: $00
    nop                                           ; $0bc3: $00
    nop                                           ; $0bc4: $00
    nop                                           ; $0bc5: $00
    nop                                           ; $0bc6: $00
    nop                                           ; $0bc7: $00
    nop                                           ; $0bc8: $00
    nop                                           ; $0bc9: $00
    nop                                           ; $0bca: $00
    nop                                           ; $0bcb: $00
    nop                                           ; $0bcc: $00
    nop                                           ; $0bcd: $00
    nop                                           ; $0bce: $00
    nop                                           ; $0bcf: $00
    nop                                           ; $0bd0: $00
    add b                                         ; $0bd1: $80
    add c                                         ; $0bd2: $81
    nop                                           ; $0bd3: $00
    nop                                           ; $0bd4: $00
    nop                                           ; $0bd5: $00
    nop                                           ; $0bd6: $00
    nop                                           ; $0bd7: $00
    nop                                           ; $0bd8: $00
    nop                                           ; $0bd9: $00
    nop                                           ; $0bda: $00
    nop                                           ; $0bdb: $00
    nop                                           ; $0bdc: $00
    nop                                           ; $0bdd: $00
    nop                                           ; $0bde: $00
    nop                                           ; $0bdf: $00
    nop                                           ; $0be0: $00
    nop                                           ; $0be1: $00
    nop                                           ; $0be2: $00
    nop                                           ; $0be3: $00
    nop                                           ; $0be4: $00
    add d                                         ; $0be5: $82
    add e                                         ; $0be6: $83
    nop                                           ; $0be7: $00
    nop                                           ; $0be8: $00
    nop                                           ; $0be9: $00
    nop                                           ; $0bea: $00
    nop                                           ; $0beb: $00
    nop                                           ; $0bec: $00
    nop                                           ; $0bed: $00
    nop                                           ; $0bee: $00
    nop                                           ; $0bef: $00
    nop                                           ; $0bf0: $00
    nop                                           ; $0bf1: $00
    nop                                           ; $0bf2: $00
    nop                                           ; $0bf3: $00
    nop                                           ; $0bf4: $00
    nop                                           ; $0bf5: $00
    nop                                           ; $0bf6: $00
    nop                                           ; $0bf7: $00
    nop                                           ; $0bf8: $00
    add h                                         ; $0bf9: $84
    add l                                         ; $0bfa: $85
    add [hl]                                      ; $0bfb: $86
    nop                                           ; $0bfc: $00
    nop                                           ; $0bfd: $00
    nop                                           ; $0bfe: $00
    nop                                           ; $0bff: $00
    nop                                           ; $0c00: $00
    nop                                           ; $0c01: $00
    nop                                           ; $0c02: $00
    nop                                           ; $0c03: $00
    nop                                           ; $0c04: $00
    nop                                           ; $0c05: $00
    nop                                           ; $0c06: $00
    nop                                           ; $0c07: $00
    nop                                           ; $0c08: $00
    nop                                           ; $0c09: $00
    nop                                           ; $0c0a: $00
    nop                                           ; $0c0b: $00
    nop                                           ; $0c0c: $00
    add a                                         ; $0c0d: $87
    adc b                                         ; $0c0e: $88
    adc c                                         ; $0c0f: $89
    nop                                           ; $0c10: $00
    nop                                           ; $0c11: $00
    nop                                           ; $0c12: $00
    nop                                           ; $0c13: $00
    nop                                           ; $0c14: $00
    nop                                           ; $0c15: $00
    nop                                           ; $0c16: $00
    nop                                           ; $0c17: $00
    nop                                           ; $0c18: $00
    nop                                           ; $0c19: $00
    nop                                           ; $0c1a: $00
    nop                                           ; $0c1b: $00

Call_000_0c1c:
    ld hl, $c798                                  ; $0c1c: $21 $98 $c7
    ld [hl], $00                                  ; $0c1f: $36 $00

Jump_000_0c21:
    ld hl, $c798                                  ; $0c21: $21 $98 $c7
    ld a, [hl]                                    ; $0c24: $7e
    cp $04                                        ; $0c25: $fe $04
    jp nc, Jump_000_0c70                          ; $0c27: $d2 $70 $0c

    xor a                                         ; $0c2a: $af
    ld a, $03                                     ; $0c2b: $3e $03
    sbc [hl]                                      ; $0c2d: $9e
    jp c, Jump_000_0c60                           ; $0c2e: $da $60 $0c

    ld e, [hl]                                    ; $0c31: $5e
    ld d, $00                                     ; $0c32: $16 $00
    ld hl, $0c3b                                  ; $0c34: $21 $3b $0c
    add hl, de                                    ; $0c37: $19
    add hl, de                                    ; $0c38: $19
    add hl, de                                    ; $0c39: $19
    jp hl                                         ; $0c3a: $e9


    jp Jump_000_0c47                              ; $0c3b: $c3 $47 $0c


    jp Jump_000_0c4e                              ; $0c3e: $c3 $4e $0c


    jp Jump_000_0c55                              ; $0c41: $c3 $55 $0c


    jp Jump_000_0c5c                              ; $0c44: $c3 $5c $0c


Jump_000_0c47:
    ld a, $e4                                     ; $0c47: $3e $e4
    ldh [rBGP], a                                 ; $0c49: $e0 $47
    jp Jump_000_0c60                              ; $0c4b: $c3 $60 $0c


Jump_000_0c4e:
    ld a, $f9                                     ; $0c4e: $3e $f9
    ldh [rBGP], a                                 ; $0c50: $e0 $47
    jp Jump_000_0c60                              ; $0c52: $c3 $60 $0c


Jump_000_0c55:
    ld a, $fe                                     ; $0c55: $3e $fe
    ldh [rBGP], a                                 ; $0c57: $e0 $47
    jp Jump_000_0c60                              ; $0c59: $c3 $60 $0c


Jump_000_0c5c:
    ld a, $ff                                     ; $0c5c: $3e $ff
    ldh [rBGP], a                                 ; $0c5e: $e0 $47

Jump_000_0c60:
    ld a, $0a                                     ; $0c60: $3e $0a
    push af                                       ; $0c62: $f5
    inc sp                                        ; $0c63: $33
    call Call_000_0200                            ; $0c64: $cd $00 $02
    add sp, $01                                   ; $0c67: $e8 $01
    ld hl, $c798                                  ; $0c69: $21 $98 $c7
    inc [hl]                                      ; $0c6c: $34
    jp Jump_000_0c21                              ; $0c6d: $c3 $21 $0c


Jump_000_0c70:
    ret                                           ; $0c70: $c9


Call_000_0c71:
    ld hl, $c798                                  ; $0c71: $21 $98 $c7
    ld [hl], $03                                  ; $0c74: $36 $03

Jump_000_0c76:
    xor a                                         ; $0c76: $af
    ld a, $00                                     ; $0c77: $3e $00
    ld hl, $c798                                  ; $0c79: $21 $98 $c7
    sbc [hl]                                      ; $0c7c: $9e
    jp nc, Jump_000_0cbd                          ; $0c7d: $d2 $bd $0c

    ld a, [hl]                                    ; $0c80: $7e
    cp $01                                        ; $0c81: $fe $01
    jp z, Jump_000_0c9b                           ; $0c83: $ca $9b $0c

    ld hl, $c798                                  ; $0c86: $21 $98 $c7
    ld a, [hl]                                    ; $0c89: $7e
    cp $02                                        ; $0c8a: $fe $02
    jp z, Jump_000_0ca2                           ; $0c8c: $ca $a2 $0c

    ld hl, $c798                                  ; $0c8f: $21 $98 $c7
    ld a, [hl]                                    ; $0c92: $7e
    cp $03                                        ; $0c93: $fe $03
    jp z, Jump_000_0ca9                           ; $0c95: $ca $a9 $0c

    jp Jump_000_0cad                              ; $0c98: $c3 $ad $0c


Jump_000_0c9b:
    ld a, $e4                                     ; $0c9b: $3e $e4
    ldh [rBGP], a                                 ; $0c9d: $e0 $47
    jp Jump_000_0cad                              ; $0c9f: $c3 $ad $0c


Jump_000_0ca2:
    ld a, $f9                                     ; $0ca2: $3e $f9
    ldh [rBGP], a                                 ; $0ca4: $e0 $47
    jp Jump_000_0cad                              ; $0ca6: $c3 $ad $0c


Jump_000_0ca9:
    ld a, $fe                                     ; $0ca9: $3e $fe
    ldh [rBGP], a                                 ; $0cab: $e0 $47

Jump_000_0cad:
    ld a, $14                                     ; $0cad: $3e $14
    push af                                       ; $0caf: $f5
    inc sp                                        ; $0cb0: $33
    call Call_000_0200                            ; $0cb1: $cd $00 $02
    add sp, $01                                   ; $0cb4: $e8 $01
    ld hl, $c798                                  ; $0cb6: $21 $98 $c7
    dec [hl]                                      ; $0cb9: $35
    jp Jump_000_0c76                              ; $0cba: $c3 $76 $0c


Jump_000_0cbd:
    ret                                           ; $0cbd: $c9


Call_000_0cbe:
    push bc                                       ; $0cbe: $c5
    ld hl, sp+$04                                 ; $0cbf: $f8 $04
    ld a, [hl]                                    ; $0cc1: $7e
    cp $88                                        ; $0cc2: $fe $88
    jp nz, Jump_000_0cc9                          ; $0cc4: $c2 $c9 $0c

    jr jr_000_0ccc                                ; $0cc7: $18 $03

Jump_000_0cc9:
    jp Jump_000_0cd4                              ; $0cc9: $c3 $d4 $0c


jr_000_0ccc:
    ld hl, sp+$05                                 ; $0ccc: $f8 $05
    ld a, [hl]                                    ; $0cce: $7e
    cp $90                                        ; $0ccf: $fe $90
    jp z, Jump_000_0cee                           ; $0cd1: $ca $ee $0c

Jump_000_0cd4:
    ld hl, sp+$04                                 ; $0cd4: $f8 $04
    ld a, [hl]                                    ; $0cd6: $7e
    cp $98                                        ; $0cd7: $fe $98
    jp nz, Jump_000_0cde                          ; $0cd9: $c2 $de $0c

    jr jr_000_0ce1                                ; $0cdc: $18 $03

Jump_000_0cde:
    jp Jump_000_0cf3                              ; $0cde: $c3 $f3 $0c


jr_000_0ce1:
    ld hl, sp+$05                                 ; $0ce1: $f8 $05
    ld a, [hl]                                    ; $0ce3: $7e
    cp $90                                        ; $0ce4: $fe $90
    jp nz, Jump_000_0ceb                          ; $0ce6: $c2 $eb $0c

    jr jr_000_0cee                                ; $0ce9: $18 $03

Jump_000_0ceb:
    jp Jump_000_0cf3                              ; $0ceb: $c3 $f3 $0c


Jump_000_0cee:
jr_000_0cee:
    ld e, $01                                     ; $0cee: $1e $01
    jp Jump_000_0d59                              ; $0cf0: $c3 $59 $0d


Jump_000_0cf3:
    xor a                                         ; $0cf3: $af
    ld a, $98                                     ; $0cf4: $3e $98
    ld hl, sp+$04                                 ; $0cf6: $f8 $04
    sbc [hl]                                      ; $0cf8: $9e
    ld a, $00                                     ; $0cf9: $3e $00
    rla                                           ; $0cfb: $17
    ld c, a                                       ; $0cfc: $4f
    xor a                                         ; $0cfd: $af
    or c                                          ; $0cfe: $b1
    sub $01                                       ; $0cff: $d6 $01
    ld a, $00                                     ; $0d01: $3e $00
    rla                                           ; $0d03: $17
    ld c, a                                       ; $0d04: $4f
    ld a, [hl]                                    ; $0d05: $7e
    cp $08                                        ; $0d06: $fe $08
    ld a, $00                                     ; $0d08: $3e $00
    rla                                           ; $0d0a: $17
    ld b, a                                       ; $0d0b: $47
    xor a                                         ; $0d0c: $af
    or b                                          ; $0d0d: $b0
    sub $01                                       ; $0d0e: $d6 $01
    ld a, $00                                     ; $0d10: $3e $00
    rla                                           ; $0d12: $17
    ld b, a                                       ; $0d13: $47
    xor a                                         ; $0d14: $af
    or c                                          ; $0d15: $b1
    jr z, jr_000_0d1a                             ; $0d16: $28 $02

    xor a                                         ; $0d18: $af
    or b                                          ; $0d19: $b0

jr_000_0d1a:
    jr z, jr_000_0d1e                             ; $0d1a: $28 $02

    ld a, $01                                     ; $0d1c: $3e $01

jr_000_0d1e:
    ld c, a                                       ; $0d1e: $4f
    ld hl, sp+$05                                 ; $0d1f: $f8 $05
    ld a, [hl]                                    ; $0d21: $7e
    cp $50                                        ; $0d22: $fe $50
    ld a, $00                                     ; $0d24: $3e $00
    rla                                           ; $0d26: $17
    ld b, a                                       ; $0d27: $47
    xor a                                         ; $0d28: $af
    or b                                          ; $0d29: $b0
    sub $01                                       ; $0d2a: $d6 $01
    ld a, $00                                     ; $0d2c: $3e $00
    rla                                           ; $0d2e: $17
    ld b, a                                       ; $0d2f: $47
    xor a                                         ; $0d30: $af
    or c                                          ; $0d31: $b1
    jr z, jr_000_0d36                             ; $0d32: $28 $02

    xor a                                         ; $0d34: $af
    or b                                          ; $0d35: $b0

jr_000_0d36:
    jr z, jr_000_0d3a                             ; $0d36: $28 $02

    ld a, $01                                     ; $0d38: $3e $01

jr_000_0d3a:
    ld c, a                                       ; $0d3a: $4f
    xor a                                         ; $0d3b: $af
    ld a, $80                                     ; $0d3c: $3e $80
    ld hl, sp+$05                                 ; $0d3e: $f8 $05
    sbc [hl]                                      ; $0d40: $9e
    ld a, $00                                     ; $0d41: $3e $00
    rla                                           ; $0d43: $17
    ld b, a                                       ; $0d44: $47
    xor a                                         ; $0d45: $af
    or b                                          ; $0d46: $b0
    sub $01                                       ; $0d47: $d6 $01
    ld a, $00                                     ; $0d49: $3e $00
    rla                                           ; $0d4b: $17
    ld b, a                                       ; $0d4c: $47
    xor a                                         ; $0d4d: $af
    or c                                          ; $0d4e: $b1
    jr z, jr_000_0d53                             ; $0d4f: $28 $02

    xor a                                         ; $0d51: $af
    or b                                          ; $0d52: $b0

jr_000_0d53:
    jr z, jr_000_0d57                             ; $0d53: $28 $02

    ld a, $01                                     ; $0d55: $3e $01

jr_000_0d57:
    ld c, a                                       ; $0d57: $4f
    ld e, c                                       ; $0d58: $59

Jump_000_0d59:
    pop bc                                        ; $0d59: $c1
    ret                                           ; $0d5a: $c9


Call_000_0d5b:
    ld hl, $c79a                                  ; $0d5b: $21 $9a $c7
    push hl                                       ; $0d5e: $e5
    ld a, $01                                     ; $0d5f: $3e $01
    push af                                       ; $0d61: $f5
    inc sp                                        ; $0d62: $33
    ld a, $14                                     ; $0d63: $3e $14
    push af                                       ; $0d65: $f5
    inc sp                                        ; $0d66: $33
    ld a, $06                                     ; $0d67: $3e $06
    push af                                       ; $0d69: $f5
    inc sp                                        ; $0d6a: $33
    ld a, $00                                     ; $0d6b: $3e $00
    push af                                       ; $0d6d: $f5
    inc sp                                        ; $0d6e: $33
    call Call_000_15f4                            ; $0d6f: $cd $f4 $15
    add sp, $06                                   ; $0d72: $e8 $06
    ret                                           ; $0d74: $c9


Call_000_0d75:
    push bc                                       ; $0d75: $c5
    add sp, -$02                                  ; $0d76: $e8 $fe
    ld hl, sp+$06                                 ; $0d78: $f8 $06
    ld a, [hl+]                                   ; $0d7a: $2a
    ld e, [hl]                                    ; $0d7b: $5e
    ld hl, sp+$00                                 ; $0d7c: $f8 $00
    ld [hl+], a                                   ; $0d7e: $22
    ld [hl], e                                    ; $0d7f: $73
    dec hl                                        ; $0d80: $2b
    ld e, [hl]                                    ; $0d81: $5e
    inc hl                                        ; $0d82: $23
    ld d, [hl]                                    ; $0d83: $56
    ld hl, $0003                                  ; $0d84: $21 $03 $00
    add hl, de                                    ; $0d87: $19
    ld e, l                                       ; $0d88: $5d
    ld d, h                                       ; $0d89: $54
    ld a, [de]                                    ; $0d8a: $1a
    ld c, a                                       ; $0d8b: $4f
    ld a, $0a                                     ; $0d8c: $3e $0a
    push af                                       ; $0d8e: $f5
    inc sp                                        ; $0d8f: $33
    ld a, c                                       ; $0d90: $79
    push af                                       ; $0d91: $f5
    inc sp                                        ; $0d92: $33
    call Call_000_1566                            ; $0d93: $cd $66 $15
    ld c, e                                       ; $0d96: $4b
    add sp, $02                                   ; $0d97: $e8 $02
    ld hl, sp+$00                                 ; $0d99: $f8 $00
    ld e, [hl]                                    ; $0d9b: $5e
    inc hl                                        ; $0d9c: $23
    ld d, [hl]                                    ; $0d9d: $56
    inc de                                        ; $0d9e: $13
    inc de                                        ; $0d9f: $13
    ld a, [de]                                    ; $0da0: $1a
    add c                                         ; $0da1: $81
    ld c, a                                       ; $0da2: $4f
    inc c                                         ; $0da3: $0c
    inc c                                         ; $0da4: $0c
    ld hl, $c7ae                                  ; $0da5: $21 $ae $c7
    ld a, [hl]                                    ; $0da8: $7e
    cp $14                                        ; $0da9: $fe $14
    jp nz, Jump_000_0db0                          ; $0dab: $c2 $b0 $0d

    jr jr_000_0db3                                ; $0dae: $18 $03

Jump_000_0db0:
    jp Jump_000_0db6                              ; $0db0: $c3 $b6 $0d


jr_000_0db3:
    jp Jump_000_0dc6                              ; $0db3: $c3 $c6 $0d


Jump_000_0db6:
    ld hl, $c7ae                                  ; $0db6: $21 $ae $c7
    ld b, [hl]                                    ; $0db9: $46
    inc [hl]                                      ; $0dba: $34
    ld a, $9a                                     ; $0dbb: $3e $9a
    add b                                         ; $0dbd: $80
    ld e, a                                       ; $0dbe: $5f
    ld a, $c7                                     ; $0dbf: $3e $c7
    adc $00                                       ; $0dc1: $ce $00
    ld d, a                                       ; $0dc3: $57
    ld a, c                                       ; $0dc4: $79
    ld [de], a                                    ; $0dc5: $12

Jump_000_0dc6:
    add sp, $02                                   ; $0dc6: $e8 $02
    pop bc                                        ; $0dc8: $c1
    ret                                           ; $0dc9: $c9


Call_000_0dca:
    push bc                                       ; $0dca: $c5
    xor a                                         ; $0dcb: $af
    ld a, $00                                     ; $0dcc: $3e $00
    ld hl, $c7ae                                  ; $0dce: $21 $ae $c7
    sbc [hl]                                      ; $0dd1: $9e
    jp nc, Jump_000_0de3                          ; $0dd2: $d2 $e3 $0d

    dec [hl]                                      ; $0dd5: $35
    ld c, [hl]                                    ; $0dd6: $4e
    ld a, $9a                                     ; $0dd7: $3e $9a
    add c                                         ; $0dd9: $81
    ld e, a                                       ; $0dda: $5f
    ld a, $c7                                     ; $0ddb: $3e $c7
    adc $00                                       ; $0ddd: $ce $00
    ld d, a                                       ; $0ddf: $57
    ld a, $01                                     ; $0de0: $3e $01
    ld [de], a                                    ; $0de2: $12

Jump_000_0de3:
    pop bc                                        ; $0de3: $c1
    ret                                           ; $0de4: $c9


Call_000_0de5:
    push bc                                       ; $0de5: $c5
    add sp, -$02                                  ; $0de6: $e8 $fe
    ld hl, sp+$06                                 ; $0de8: $f8 $06
    ld a, [hl+]                                   ; $0dea: $2a
    ld e, [hl]                                    ; $0deb: $5e
    ld hl, sp+$00                                 ; $0dec: $f8 $00
    ld [hl+], a                                   ; $0dee: $22
    ld [hl], e                                    ; $0def: $73
    dec hl                                        ; $0df0: $2b
    ld e, [hl]                                    ; $0df1: $5e
    inc hl                                        ; $0df2: $23
    ld d, [hl]                                    ; $0df3: $56
    inc de                                        ; $0df4: $13
    inc de                                        ; $0df5: $13
    ld a, [de]                                    ; $0df6: $1a
    ld c, a                                       ; $0df7: $4f
    ld a, c                                       ; $0df8: $79
    cp $08                                        ; $0df9: $fe $08
    jp nz, Jump_000_0e00                          ; $0dfb: $c2 $00 $0e

    jr jr_000_0e03                                ; $0dfe: $18 $03

Jump_000_0e00:
    jp Jump_000_0e24                              ; $0e00: $c3 $24 $0e


jr_000_0e03:
    ld hl, sp+$00                                 ; $0e03: $f8 $00
    ld e, [hl]                                    ; $0e05: $5e
    inc hl                                        ; $0e06: $23
    ld d, [hl]                                    ; $0e07: $56
    ld hl, $0003                                  ; $0e08: $21 $03 $00
    add hl, de                                    ; $0e0b: $19
    ld e, l                                       ; $0e0c: $5d
    ld d, h                                       ; $0e0d: $54
    ld a, [de]                                    ; $0e0e: $1a
    ld b, a                                       ; $0e0f: $47
    ld a, b                                       ; $0e10: $78
    cp $04                                        ; $0e11: $fe $04
    jp nz, Jump_000_0e18                          ; $0e13: $c2 $18 $0e

    jr jr_000_0e1b                                ; $0e16: $18 $03

Jump_000_0e18:
    jp Jump_000_0e24                              ; $0e18: $c3 $24 $0e


jr_000_0e1b:
    call Call_000_0dca                            ; $0e1b: $cd $ca $0d
    call Call_000_0d5b                            ; $0e1e: $cd $5b $0d
    jp Jump_000_0e5d                              ; $0e21: $c3 $5d $0e


Jump_000_0e24:
    ld a, c                                       ; $0e24: $79
    cp $09                                        ; $0e25: $fe $09
    jp nz, Jump_000_0e2c                          ; $0e27: $c2 $2c $0e

    jr jr_000_0e2f                                ; $0e2a: $18 $03

Jump_000_0e2c:
    jp Jump_000_0e4f                              ; $0e2c: $c3 $4f $0e


jr_000_0e2f:
    ld hl, sp+$00                                 ; $0e2f: $f8 $00
    ld e, [hl]                                    ; $0e31: $5e
    inc hl                                        ; $0e32: $23
    ld d, [hl]                                    ; $0e33: $56
    ld hl, $0003                                  ; $0e34: $21 $03 $00
    add hl, de                                    ; $0e37: $19
    ld e, l                                       ; $0e38: $5d
    ld d, h                                       ; $0e39: $54
    ld a, [de]                                    ; $0e3a: $1a
    ld c, a                                       ; $0e3b: $4f
    ld a, c                                       ; $0e3c: $79
    cp $04                                        ; $0e3d: $fe $04
    jp nz, Jump_000_0e44                          ; $0e3f: $c2 $44 $0e

    jr jr_000_0e47                                ; $0e42: $18 $03

Jump_000_0e44:
    jp Jump_000_0e4f                              ; $0e44: $c3 $4f $0e


jr_000_0e47:
    ld hl, $c7af                                  ; $0e47: $21 $af $c7
    ld [hl], $01                                  ; $0e4a: $36 $01
    jp Jump_000_0e5d                              ; $0e4c: $c3 $5d $0e


Jump_000_0e4f:
    ld hl, sp+$00                                 ; $0e4f: $f8 $00
    ld a, [hl+]                                   ; $0e51: $2a
    ld h, [hl]                                    ; $0e52: $66
    ld l, a                                       ; $0e53: $6f
    push hl                                       ; $0e54: $e5
    call Call_000_0d75                            ; $0e55: $cd $75 $0d
    add sp, $02                                   ; $0e58: $e8 $02
    call Call_000_0d5b                            ; $0e5a: $cd $5b $0d

Jump_000_0e5d:
    add sp, $02                                   ; $0e5d: $e8 $02
    pop bc                                        ; $0e5f: $c1
    ret                                           ; $0e60: $c9


Call_000_0e61:
    push bc                                       ; $0e61: $c5
    add sp, -$16                                  ; $0e62: $e8 $ea
    ld hl, sp+$02                                 ; $0e64: $f8 $02
    ld d, h                                       ; $0e66: $54
    ld e, l                                       ; $0e67: $5d
    ld hl, sp+$00                                 ; $0e68: $f8 $00
    ld [hl], e                                    ; $0e6a: $73
    inc hl                                        ; $0e6b: $23
    ld [hl], d                                    ; $0e6c: $72
    dec hl                                        ; $0e6d: $2b
    ld e, [hl]                                    ; $0e6e: $5e
    inc hl                                        ; $0e6f: $23
    ld d, [hl]                                    ; $0e70: $56
    ld a, $10                                     ; $0e71: $3e $10
    ld [de], a                                    ; $0e73: $12
    dec hl                                        ; $0e74: $2b
    ld e, [hl]                                    ; $0e75: $5e
    inc hl                                        ; $0e76: $23
    ld d, [hl]                                    ; $0e77: $56
    inc de                                        ; $0e78: $13
    ld a, $09                                     ; $0e79: $3e $09
    ld [de], a                                    ; $0e7b: $12
    dec hl                                        ; $0e7c: $2b
    ld e, [hl]                                    ; $0e7d: $5e
    inc hl                                        ; $0e7e: $23
    ld d, [hl]                                    ; $0e7f: $56
    inc de                                        ; $0e80: $13
    inc de                                        ; $0e81: $13
    ld a, $0e                                     ; $0e82: $3e $0e
    ld [de], a                                    ; $0e84: $12
    dec hl                                        ; $0e85: $2b
    ld e, [hl]                                    ; $0e86: $5e
    inc hl                                        ; $0e87: $23
    ld d, [hl]                                    ; $0e88: $56
    ld hl, $0003                                  ; $0e89: $21 $03 $00
    add hl, de                                    ; $0e8c: $19
    ld e, l                                       ; $0e8d: $5d
    ld d, h                                       ; $0e8e: $54
    ld a, $1a                                     ; $0e8f: $3e $1a
    ld [de], a                                    ; $0e91: $12
    ld hl, sp+$00                                 ; $0e92: $f8 $00
    ld e, [hl]                                    ; $0e94: $5e
    inc hl                                        ; $0e95: $23
    ld d, [hl]                                    ; $0e96: $56
    ld hl, $0004                                  ; $0e97: $21 $04 $00
    add hl, de                                    ; $0e9a: $19
    ld e, l                                       ; $0e9b: $5d
    ld d, h                                       ; $0e9c: $54
    ld a, $08                                     ; $0e9d: $3e $08
    ld [de], a                                    ; $0e9f: $12
    ld hl, sp+$00                                 ; $0ea0: $f8 $00
    ld e, [hl]                                    ; $0ea2: $5e
    inc hl                                        ; $0ea3: $23
    ld d, [hl]                                    ; $0ea4: $56
    ld hl, $0005                                  ; $0ea5: $21 $05 $00
    add hl, de                                    ; $0ea8: $19
    ld e, l                                       ; $0ea9: $5d
    ld d, h                                       ; $0eaa: $54
    ld a, $10                                     ; $0eab: $3e $10
    ld [de], a                                    ; $0ead: $12
    ld hl, sp+$00                                 ; $0eae: $f8 $00
    ld e, [hl]                                    ; $0eb0: $5e
    inc hl                                        ; $0eb1: $23
    ld d, [hl]                                    ; $0eb2: $56
    ld hl, $0006                                  ; $0eb3: $21 $06 $00
    add hl, de                                    ; $0eb6: $19
    ld e, l                                       ; $0eb7: $5d
    ld d, h                                       ; $0eb8: $54
    ld a, $05                                     ; $0eb9: $3e $05
    ld [de], a                                    ; $0ebb: $12
    ld hl, sp+$00                                 ; $0ebc: $f8 $00
    ld e, [hl]                                    ; $0ebe: $5e
    inc hl                                        ; $0ebf: $23
    ld d, [hl]                                    ; $0ec0: $56
    ld hl, $0007                                  ; $0ec1: $21 $07 $00
    add hl, de                                    ; $0ec4: $19
    ld e, l                                       ; $0ec5: $5d
    ld d, h                                       ; $0ec6: $54
    ld a, $1a                                     ; $0ec7: $3e $1a
    ld [de], a                                    ; $0ec9: $12
    ld hl, sp+$00                                 ; $0eca: $f8 $00
    ld e, [hl]                                    ; $0ecc: $5e
    inc hl                                        ; $0ecd: $23
    ld d, [hl]                                    ; $0ece: $56
    ld hl, $0008                                  ; $0ecf: $21 $08 $00
    add hl, de                                    ; $0ed2: $19
    ld e, l                                       ; $0ed3: $5d
    ld d, h                                       ; $0ed4: $54
    ld a, $20                                     ; $0ed5: $3e $20
    ld [de], a                                    ; $0ed7: $12
    ld hl, sp+$00                                 ; $0ed8: $f8 $00
    ld e, [hl]                                    ; $0eda: $5e
    inc hl                                        ; $0edb: $23
    ld d, [hl]                                    ; $0edc: $56
    ld hl, $0009                                  ; $0edd: $21 $09 $00
    add hl, de                                    ; $0ee0: $19
    ld e, l                                       ; $0ee1: $5d
    ld d, h                                       ; $0ee2: $54
    ld a, $16                                     ; $0ee3: $3e $16
    ld [de], a                                    ; $0ee5: $12
    ld hl, sp+$00                                 ; $0ee6: $f8 $00
    ld e, [hl]                                    ; $0ee8: $5e
    inc hl                                        ; $0ee9: $23
    ld d, [hl]                                    ; $0eea: $56
    ld hl, $000a                                  ; $0eeb: $21 $0a $00
    add hl, de                                    ; $0eee: $19
    ld e, l                                       ; $0eef: $5d
    ld d, h                                       ; $0ef0: $54
    ld a, $02                                     ; $0ef1: $3e $02
    ld [de], a                                    ; $0ef3: $12
    ld hl, sp+$00                                 ; $0ef4: $f8 $00
    ld e, [hl]                                    ; $0ef6: $5e
    inc hl                                        ; $0ef7: $23
    ld d, [hl]                                    ; $0ef8: $56
    ld hl, $000b                                  ; $0ef9: $21 $0b $00
    add hl, de                                    ; $0efc: $19
    ld e, l                                       ; $0efd: $5d
    ld d, h                                       ; $0efe: $54
    ld a, $13                                     ; $0eff: $3e $13
    ld [de], a                                    ; $0f01: $12
    ld hl, sp+$00                                 ; $0f02: $f8 $00
    ld e, [hl]                                    ; $0f04: $5e
    inc hl                                        ; $0f05: $23
    ld d, [hl]                                    ; $0f06: $56
    ld hl, $000c                                  ; $0f07: $21 $0c $00
    add hl, de                                    ; $0f0a: $19
    ld e, l                                       ; $0f0b: $5d
    ld d, h                                       ; $0f0c: $54
    ld a, $06                                     ; $0f0d: $3e $06
    ld [de], a                                    ; $0f0f: $12
    ld hl, sp+$00                                 ; $0f10: $f8 $00
    ld e, [hl]                                    ; $0f12: $5e
    inc hl                                        ; $0f13: $23
    ld d, [hl]                                    ; $0f14: $56
    ld hl, $000d                                  ; $0f15: $21 $0d $00
    add hl, de                                    ; $0f18: $19
    ld e, l                                       ; $0f19: $5d
    ld d, h                                       ; $0f1a: $54
    ld a, $08                                     ; $0f1b: $3e $08
    ld [de], a                                    ; $0f1d: $12
    ld hl, sp+$00                                 ; $0f1e: $f8 $00
    ld e, [hl]                                    ; $0f20: $5e
    inc hl                                        ; $0f21: $23
    ld d, [hl]                                    ; $0f22: $56
    ld hl, $000e                                  ; $0f23: $21 $0e $00
    add hl, de                                    ; $0f26: $19
    ld e, l                                       ; $0f27: $5d
    ld d, h                                       ; $0f28: $54
    ld a, $02                                     ; $0f29: $3e $02
    ld [de], a                                    ; $0f2b: $12
    ld hl, sp+$00                                 ; $0f2c: $f8 $00
    ld e, [hl]                                    ; $0f2e: $5e
    inc hl                                        ; $0f2f: $23
    ld d, [hl]                                    ; $0f30: $56
    ld hl, $000f                                  ; $0f31: $21 $0f $00
    add hl, de                                    ; $0f34: $19
    ld e, l                                       ; $0f35: $5d
    ld d, h                                       ; $0f36: $54
    ld a, $0e                                     ; $0f37: $3e $0e
    ld [de], a                                    ; $0f39: $12
    ld hl, sp+$00                                 ; $0f3a: $f8 $00
    ld e, [hl]                                    ; $0f3c: $5e
    inc hl                                        ; $0f3d: $23
    ld d, [hl]                                    ; $0f3e: $56
    ld hl, $0010                                  ; $0f3f: $21 $10 $00
    add hl, de                                    ; $0f42: $19
    ld e, l                                       ; $0f43: $5d
    ld d, h                                       ; $0f44: $54
    ld a, $23                                     ; $0f45: $3e $23
    ld [de], a                                    ; $0f47: $12
    ld hl, sp+$00                                 ; $0f48: $f8 $00
    ld e, [hl]                                    ; $0f4a: $5e
    inc hl                                        ; $0f4b: $23
    ld d, [hl]                                    ; $0f4c: $56
    ld hl, $0011                                  ; $0f4d: $21 $11 $00
    add hl, de                                    ; $0f50: $19
    ld e, l                                       ; $0f51: $5d
    ld d, h                                       ; $0f52: $54
    ld a, $03                                     ; $0f53: $3e $03
    ld [de], a                                    ; $0f55: $12
    ld hl, sp+$00                                 ; $0f56: $f8 $00
    ld e, [hl]                                    ; $0f58: $5e
    inc hl                                        ; $0f59: $23
    ld d, [hl]                                    ; $0f5a: $56
    ld hl, $0012                                  ; $0f5b: $21 $12 $00
    add hl, de                                    ; $0f5e: $19
    ld e, l                                       ; $0f5f: $5d
    ld d, h                                       ; $0f60: $54
    ld a, $20                                     ; $0f61: $3e $20
    ld [de], a                                    ; $0f63: $12
    ld hl, sp+$00                                 ; $0f64: $f8 $00
    ld e, [hl]                                    ; $0f66: $5e
    inc hl                                        ; $0f67: $23
    ld d, [hl]                                    ; $0f68: $56
    ld hl, $0013                                  ; $0f69: $21 $13 $00
    add hl, de                                    ; $0f6c: $19
    ld e, l                                       ; $0f6d: $5d
    ld d, h                                       ; $0f6e: $54
    ld a, $1a                                     ; $0f6f: $3e $1a
    ld [de], a                                    ; $0f71: $12
    ld hl, $c798                                  ; $0f72: $21 $98 $c7
    ld [hl], $00                                  ; $0f75: $36 $00

Jump_000_0f77:
    ld hl, $c798                                  ; $0f77: $21 $98 $c7
    ld a, [hl]                                    ; $0f7a: $7e
    cp $14                                        ; $0f7b: $fe $14
    jp nc, Jump_000_0fae                          ; $0f7d: $d2 $ae $0f

    ld c, [hl]                                    ; $0f80: $4e
    ld hl, sp+$00                                 ; $0f81: $f8 $00
    ld e, [hl]                                    ; $0f83: $5e
    inc hl                                        ; $0f84: $23
    ld d, [hl]                                    ; $0f85: $56
    ld l, c                                       ; $0f86: $69
    ld h, $00                                     ; $0f87: $26 $00
    add hl, de                                    ; $0f89: $19
    ld e, l                                       ; $0f8a: $5d
    ld d, h                                       ; $0f8b: $54
    ld a, [de]                                    ; $0f8c: $1a
    ld c, a                                       ; $0f8d: $4f
    ld hl, $c798                                  ; $0f8e: $21 $98 $c7
    ld b, [hl]                                    ; $0f91: $46
    ld a, $9a                                     ; $0f92: $3e $9a
    add b                                         ; $0f94: $80
    ld e, a                                       ; $0f95: $5f
    ld a, $c7                                     ; $0f96: $3e $c7
    adc $00                                       ; $0f98: $ce $00
    ld d, a                                       ; $0f9a: $57
    ld a, [de]                                    ; $0f9b: $1a
    cp c                                          ; $0f9c: $b9
    jr nz, jr_000_0fa2                            ; $0f9d: $20 $03

    jp Jump_000_0fa7                              ; $0f9f: $c3 $a7 $0f


jr_000_0fa2:
    ld e, $00                                     ; $0fa2: $1e $00
    jp Jump_000_0fb0                              ; $0fa4: $c3 $b0 $0f


Jump_000_0fa7:
    ld hl, $c798                                  ; $0fa7: $21 $98 $c7
    inc [hl]                                      ; $0faa: $34
    jp Jump_000_0f77                              ; $0fab: $c3 $77 $0f


Jump_000_0fae:
    ld e, $01                                     ; $0fae: $1e $01

Jump_000_0fb0:
    add sp, $16                                   ; $0fb0: $e8 $16
    pop bc                                        ; $0fb2: $c1
    ret                                           ; $0fb3: $c9


    push bc                                       ; $0fb4: $c5
    add sp, -$06                                  ; $0fb5: $e8 $fa
    ld hl, $0214                                  ; $0fb7: $21 $14 $02
    push hl                                       ; $0fba: $e5
    ld a, $8a                                     ; $0fbb: $3e $8a
    push af                                       ; $0fbd: $f5
    inc sp                                        ; $0fbe: $33
    ld a, $00                                     ; $0fbf: $3e $00
    push af                                       ; $0fc1: $f5
    inc sp                                        ; $0fc2: $33
    call Call_000_14ea                            ; $0fc3: $cd $ea $14
    add sp, $04                                   ; $0fc6: $e8 $04
    ld hl, $0ab4                                  ; $0fc8: $21 $b4 $0a
    push hl                                       ; $0fcb: $e5
    ld a, $12                                     ; $0fcc: $3e $12
    push af                                       ; $0fce: $f5
    inc sp                                        ; $0fcf: $33
    ld a, $14                                     ; $0fd0: $3e $14
    push af                                       ; $0fd2: $f5
    inc sp                                        ; $0fd3: $33
    ld a, $00                                     ; $0fd4: $3e $00
    push af                                       ; $0fd6: $f5
    inc sp                                        ; $0fd7: $33
    ld a, $00                                     ; $0fd8: $3e $00
    push af                                       ; $0fda: $f5
    inc sp                                        ; $0fdb: $33
    call Call_000_15f4                            ; $0fdc: $cd $f4 $15
    add sp, $06                                   ; $0fdf: $e8 $06
    ldh a, [rLCDC]                                ; $0fe1: $f0 $40
    or $01                                        ; $0fe3: $f6 $01
    ldh [rLCDC], a                                ; $0fe5: $e0 $40
    ldh a, [rLCDC]                                ; $0fe7: $f0 $40
    or $02                                        ; $0fe9: $f6 $02
    ldh [rLCDC], a                                ; $0feb: $e0 $40
    ldh a, [rLCDC]                                ; $0fed: $f0 $40
    or $80                                        ; $0fef: $f6 $80
    ldh [rLCDC], a                                ; $0ff1: $e0 $40
    ld a, $80                                     ; $0ff3: $3e $80
    push af                                       ; $0ff5: $f5
    inc sp                                        ; $0ff6: $33
    call Call_000_14c4                            ; $0ff7: $cd $c4 $14
    add sp, $01                                   ; $0ffa: $e8 $01
    call Call_000_0c1c                            ; $0ffc: $cd $1c $0c
    ld hl, $c208                                  ; $0fff: $21 $08 $c2
    push hl                                       ; $1002: $e5
    ld a, $2b                                     ; $1003: $3e $2b
    push af                                       ; $1005: $f5
    inc sp                                        ; $1006: $33
    ld a, $01                                     ; $1007: $3e $01
    push af                                       ; $1009: $f5
    inc sp                                        ; $100a: $33
    call Call_000_14ea                            ; $100b: $cd $ea $14
    add sp, $04                                   ; $100e: $e8 $04
    ld hl, $c0a0                                  ; $1010: $21 $a0 $c0
    push hl                                       ; $1013: $e5
    ld a, $12                                     ; $1014: $3e $12
    push af                                       ; $1016: $f5
    inc sp                                        ; $1017: $33
    ld a, $14                                     ; $1018: $3e $14
    push af                                       ; $101a: $f5
    inc sp                                        ; $101b: $33
    ld a, $00                                     ; $101c: $3e $00
    push af                                       ; $101e: $f5
    inc sp                                        ; $101f: $33
    ld a, $00                                     ; $1020: $3e $00
    push af                                       ; $1022: $f5
    inc sp                                        ; $1023: $33
    call Call_000_15f4                            ; $1024: $cd $f4 $15
    add sp, $06                                   ; $1027: $e8 $06
    call Call_000_0c71                            ; $1029: $cd $71 $0c
    ld de, $c7b0                                  ; $102c: $11 $b0 $c7
    ld a, $08                                     ; $102f: $3e $08
    ld [de], a                                    ; $1031: $12
    ld de, $c7b0                                  ; $1032: $11 $b0 $c7
    ld hl, $0001                                  ; $1035: $21 $01 $00
    add hl, de                                    ; $1038: $19
    ld a, l                                       ; $1039: $7d
    ld d, h                                       ; $103a: $54
    ld hl, sp+$04                                 ; $103b: $f8 $04
    ld [hl+], a                                   ; $103d: $22
    ld [hl], d                                    ; $103e: $72
    dec hl                                        ; $103f: $2b
    ld e, [hl]                                    ; $1040: $5e
    inc hl                                        ; $1041: $23
    ld d, [hl]                                    ; $1042: $56
    ld a, $50                                     ; $1043: $3e $50
    ld [de], a                                    ; $1045: $12
    ld de, $c7b0                                  ; $1046: $11 $b0 $c7
    ld hl, $0002                                  ; $1049: $21 $02 $00
    add hl, de                                    ; $104c: $19
    ld a, l                                       ; $104d: $7d
    ld d, h                                       ; $104e: $54
    ld hl, sp+$02                                 ; $104f: $f8 $02
    ld [hl+], a                                   ; $1051: $22
    ld [hl], d                                    ; $1052: $72
    dec hl                                        ; $1053: $2b
    ld e, [hl]                                    ; $1054: $5e
    inc hl                                        ; $1055: $23
    ld d, [hl]                                    ; $1056: $56
    ld a, $00                                     ; $1057: $3e $00
    ld [de], a                                    ; $1059: $12
    ld de, $c7b0                                  ; $105a: $11 $b0 $c7
    ld hl, $0003                                  ; $105d: $21 $03 $00
    add hl, de                                    ; $1060: $19
    ld a, l                                       ; $1061: $7d
    ld d, h                                       ; $1062: $54
    ld hl, sp+$00                                 ; $1063: $f8 $00
    ld [hl+], a                                   ; $1065: $22
    ld [hl], d                                    ; $1066: $72
    dec hl                                        ; $1067: $2b
    ld e, [hl]                                    ; $1068: $5e
    inc hl                                        ; $1069: $23
    ld d, [hl]                                    ; $106a: $56
    ld a, $00                                     ; $106b: $3e $00
    ld [de], a                                    ; $106d: $12
    ld hl, $c4b8                                  ; $106e: $21 $b8 $c4
    push hl                                       ; $1071: $e5
    ld a, $01                                     ; $1072: $3e $01
    push af                                       ; $1074: $f5
    inc sp                                        ; $1075: $33
    ld a, $00                                     ; $1076: $3e $00
    push af                                       ; $1078: $f5
    inc sp                                        ; $1079: $33
    call Call_000_1537                            ; $107a: $cd $37 $15
    add sp, $04                                   ; $107d: $e8 $04
    ld a, $00                                     ; $107f: $3e $00
    push af                                       ; $1081: $f5
    inc sp                                        ; $1082: $33
    ld a, $00                                     ; $1083: $3e $00
    push af                                       ; $1085: $f5
    inc sp                                        ; $1086: $33
    call Call_000_15c7                            ; $1087: $cd $c7 $15
    add sp, $02                                   ; $108a: $e8 $02
    ld hl, sp+$04                                 ; $108c: $f8 $04
    ld e, [hl]                                    ; $108e: $5e
    inc hl                                        ; $108f: $23
    ld d, [hl]                                    ; $1090: $56
    ld a, [de]                                    ; $1091: $1a
    ld c, a                                       ; $1092: $4f
    ld de, $c7b0                                  ; $1093: $11 $b0 $c7
    ld a, [de]                                    ; $1096: $1a
    ld b, a                                       ; $1097: $47
    ld a, c                                       ; $1098: $79
    push af                                       ; $1099: $f5
    inc sp                                        ; $109a: $33
    ld a, b                                       ; $109b: $78
    push af                                       ; $109c: $f5
    inc sp                                        ; $109d: $33
    ld a, $00                                     ; $109e: $3e $00
    push af                                       ; $10a0: $f5
    inc sp                                        ; $10a1: $33
    call Call_000_14dd                            ; $10a2: $cd $dd $14
    add sp, $03                                   ; $10a5: $e8 $03
    ld hl, $c799                                  ; $10a7: $21 $99 $c7
    ld [hl], $00                                  ; $10aa: $36 $00
    ld hl, $c7ae                                  ; $10ac: $21 $ae $c7
    ld [hl], $00                                  ; $10af: $36 $00
    ld hl, $c7af                                  ; $10b1: $21 $af $c7
    ld [hl], $00                                  ; $10b4: $36 $00
    ld hl, $c798                                  ; $10b6: $21 $98 $c7
    ld [hl], $14                                  ; $10b9: $36 $14

Jump_000_10bb:
    ld hl, $c798                                  ; $10bb: $21 $98 $c7
    ld a, [hl]                                    ; $10be: $7e
    add $ff                                       ; $10bf: $c6 $ff
    ld c, a                                       ; $10c1: $4f
    ld a, $9a                                     ; $10c2: $3e $9a
    add c                                         ; $10c4: $81
    ld e, a                                       ; $10c5: $5f
    ld a, $c7                                     ; $10c6: $3e $c7
    adc $00                                       ; $10c8: $ce $00
    ld d, a                                       ; $10ca: $57
    ld a, $01                                     ; $10cb: $3e $01
    ld [de], a                                    ; $10cd: $12
    ld [hl], c                                    ; $10ce: $71
    xor a                                         ; $10cf: $af
    or [hl]                                       ; $10d0: $b6
    jp nz, Jump_000_10bb                          ; $10d1: $c2 $bb $10

    ld [hl], $13                                  ; $10d4: $36 $13

Jump_000_10d6:
    xor a                                         ; $10d6: $af
    ld hl, $c7af                                  ; $10d7: $21 $af $c7
    or [hl]                                       ; $10da: $b6
    or a                                          ; $10db: $b7
    jp nz, Jump_000_128d                          ; $10dc: $c2 $8d $12

    xor a                                         ; $10df: $af
    ld hl, $c799                                  ; $10e0: $21 $99 $c7
    or [hl]                                       ; $10e3: $b6
    or a                                          ; $10e4: $b7
    jp z, Jump_000_10f0                           ; $10e5: $ca $f0 $10

    call Call_000_147b                            ; $10e8: $cd $7b $14
    ld hl, $c799                                  ; $10eb: $21 $99 $c7
    ld [hl], $00                                  ; $10ee: $36 $00

Jump_000_10f0:
    call Call_000_14bf                            ; $10f0: $cd $bf $14
    ld c, e                                       ; $10f3: $4b
    ld a, c                                       ; $10f4: $79
    cp $01                                        ; $10f5: $fe $01
    jp z, Jump_000_116b                           ; $10f7: $ca $6b $11

    ld a, c                                       ; $10fa: $79
    cp $02                                        ; $10fb: $fe $02
    jp z, Jump_000_1115                           ; $10fd: $ca $15 $11

    ld a, c                                       ; $1100: $79
    cp $04                                        ; $1101: $fe $04
    jp z, Jump_000_11c1                           ; $1103: $ca $c1 $11

    ld a, c                                       ; $1106: $79
    cp $08                                        ; $1107: $fe $08
    jp z, Jump_000_121a                           ; $1109: $ca $1a $12

    ld a, c                                       ; $110c: $79
    cp $10                                        ; $110d: $fe $10
    jp z, Jump_000_1273                           ; $110f: $ca $73 $12

    jp Jump_000_1281                              ; $1112: $c3 $81 $12


Jump_000_1115:
    ld hl, sp+$04                                 ; $1115: $f8 $04
    ld e, [hl]                                    ; $1117: $5e
    inc hl                                        ; $1118: $23
    ld d, [hl]                                    ; $1119: $56
    ld a, [de]                                    ; $111a: $1a
    ld c, a                                       ; $111b: $4f
    ld de, $c7b0                                  ; $111c: $11 $b0 $c7
    ld a, [de]                                    ; $111f: $1a
    ld b, a                                       ; $1120: $47
    ld a, b                                       ; $1121: $78
    add $f0                                       ; $1122: $c6 $f0
    ld b, a                                       ; $1124: $47
    ld a, c                                       ; $1125: $79
    push af                                       ; $1126: $f5
    inc sp                                        ; $1127: $33
    ld a, b                                       ; $1128: $78
    push af                                       ; $1129: $f5
    inc sp                                        ; $112a: $33
    call Call_000_0cbe                            ; $112b: $cd $be $0c
    ld c, e                                       ; $112e: $4b
    add sp, $02                                   ; $112f: $e8 $02
    xor a                                         ; $1131: $af
    or c                                          ; $1132: $b1
    jp z, Jump_000_1281                           ; $1133: $ca $81 $12

    ld hl, sp+$02                                 ; $1136: $f8 $02
    ld e, [hl]                                    ; $1138: $5e
    inc hl                                        ; $1139: $23
    ld d, [hl]                                    ; $113a: $56
    ld a, [de]                                    ; $113b: $1a
    ld c, a                                       ; $113c: $4f
    dec c                                         ; $113d: $0d
    dec hl                                        ; $113e: $2b
    ld e, [hl]                                    ; $113f: $5e
    inc hl                                        ; $1140: $23
    ld d, [hl]                                    ; $1141: $56
    ld a, c                                       ; $1142: $79
    ld [de], a                                    ; $1143: $12
    ld de, $c7b0                                  ; $1144: $11 $b0 $c7
    ld a, [de]                                    ; $1147: $1a
    ld c, a                                       ; $1148: $4f
    ld a, c                                       ; $1149: $79
    add $f0                                       ; $114a: $c6 $f0
    ld c, a                                       ; $114c: $4f
    ld de, $c7b0                                  ; $114d: $11 $b0 $c7
    ld a, c                                       ; $1150: $79
    ld [de], a                                    ; $1151: $12
    ld a, $00                                     ; $1152: $3e $00
    push af                                       ; $1154: $f5
    inc sp                                        ; $1155: $33
    ld a, $f0                                     ; $1156: $3e $f0
    push af                                       ; $1158: $f5
    inc sp                                        ; $1159: $33
    ld a, $00                                     ; $115a: $3e $00
    push af                                       ; $115c: $f5
    inc sp                                        ; $115d: $33
    call Call_000_15ad                            ; $115e: $cd $ad $15
    add sp, $03                                   ; $1161: $e8 $03
    ld hl, $c799                                  ; $1163: $21 $99 $c7
    ld [hl], $01                                  ; $1166: $36 $01
    jp Jump_000_1281                              ; $1168: $c3 $81 $12


Jump_000_116b:
    ld hl, sp+$04                                 ; $116b: $f8 $04
    ld e, [hl]                                    ; $116d: $5e
    inc hl                                        ; $116e: $23
    ld d, [hl]                                    ; $116f: $56
    ld a, [de]                                    ; $1170: $1a
    ld c, a                                       ; $1171: $4f
    ld de, $c7b0                                  ; $1172: $11 $b0 $c7
    ld a, [de]                                    ; $1175: $1a
    ld b, a                                       ; $1176: $47
    ld a, b                                       ; $1177: $78
    add $10                                       ; $1178: $c6 $10
    ld b, a                                       ; $117a: $47
    ld a, c                                       ; $117b: $79
    push af                                       ; $117c: $f5
    inc sp                                        ; $117d: $33
    ld a, b                                       ; $117e: $78
    push af                                       ; $117f: $f5
    inc sp                                        ; $1180: $33
    call Call_000_0cbe                            ; $1181: $cd $be $0c
    ld c, e                                       ; $1184: $4b
    add sp, $02                                   ; $1185: $e8 $02
    xor a                                         ; $1187: $af
    or c                                          ; $1188: $b1
    jp z, Jump_000_1281                           ; $1189: $ca $81 $12

    ld hl, sp+$02                                 ; $118c: $f8 $02
    ld e, [hl]                                    ; $118e: $5e
    inc hl                                        ; $118f: $23
    ld d, [hl]                                    ; $1190: $56
    ld a, [de]                                    ; $1191: $1a
    ld c, a                                       ; $1192: $4f
    inc c                                         ; $1193: $0c
    dec hl                                        ; $1194: $2b
    ld e, [hl]                                    ; $1195: $5e
    inc hl                                        ; $1196: $23
    ld d, [hl]                                    ; $1197: $56
    ld a, c                                       ; $1198: $79
    ld [de], a                                    ; $1199: $12
    ld de, $c7b0                                  ; $119a: $11 $b0 $c7
    ld a, [de]                                    ; $119d: $1a
    ld c, a                                       ; $119e: $4f
    ld a, c                                       ; $119f: $79
    add $10                                       ; $11a0: $c6 $10
    ld c, a                                       ; $11a2: $4f
    ld de, $c7b0                                  ; $11a3: $11 $b0 $c7
    ld a, c                                       ; $11a6: $79
    ld [de], a                                    ; $11a7: $12
    ld a, $00                                     ; $11a8: $3e $00
    push af                                       ; $11aa: $f5
    inc sp                                        ; $11ab: $33
    ld a, $10                                     ; $11ac: $3e $10
    push af                                       ; $11ae: $f5
    inc sp                                        ; $11af: $33
    ld a, $00                                     ; $11b0: $3e $00
    push af                                       ; $11b2: $f5
    inc sp                                        ; $11b3: $33
    call Call_000_15ad                            ; $11b4: $cd $ad $15
    add sp, $03                                   ; $11b7: $e8 $03
    ld hl, $c799                                  ; $11b9: $21 $99 $c7
    ld [hl], $01                                  ; $11bc: $36 $01
    jp Jump_000_1281                              ; $11be: $c3 $81 $12


Jump_000_11c1:
    ld hl, sp+$04                                 ; $11c1: $f8 $04
    ld e, [hl]                                    ; $11c3: $5e
    inc hl                                        ; $11c4: $23
    ld d, [hl]                                    ; $11c5: $56
    ld a, [de]                                    ; $11c6: $1a
    ld c, a                                       ; $11c7: $4f
    ld a, c                                       ; $11c8: $79
    add $f0                                       ; $11c9: $c6 $f0
    ld c, a                                       ; $11cb: $4f
    ld de, $c7b0                                  ; $11cc: $11 $b0 $c7
    ld a, [de]                                    ; $11cf: $1a
    ld b, a                                       ; $11d0: $47
    ld a, c                                       ; $11d1: $79
    push af                                       ; $11d2: $f5
    inc sp                                        ; $11d3: $33
    ld a, b                                       ; $11d4: $78
    push af                                       ; $11d5: $f5
    inc sp                                        ; $11d6: $33
    call Call_000_0cbe                            ; $11d7: $cd $be $0c
    ld c, e                                       ; $11da: $4b
    add sp, $02                                   ; $11db: $e8 $02
    xor a                                         ; $11dd: $af
    or c                                          ; $11de: $b1
    jp z, Jump_000_1281                           ; $11df: $ca $81 $12

    ld hl, sp+$00                                 ; $11e2: $f8 $00
    ld e, [hl]                                    ; $11e4: $5e
    inc hl                                        ; $11e5: $23
    ld d, [hl]                                    ; $11e6: $56
    ld a, [de]                                    ; $11e7: $1a
    ld c, a                                       ; $11e8: $4f
    dec c                                         ; $11e9: $0d
    dec hl                                        ; $11ea: $2b
    ld e, [hl]                                    ; $11eb: $5e
    inc hl                                        ; $11ec: $23
    ld d, [hl]                                    ; $11ed: $56
    ld a, c                                       ; $11ee: $79
    ld [de], a                                    ; $11ef: $12
    ld hl, sp+$04                                 ; $11f0: $f8 $04
    ld e, [hl]                                    ; $11f2: $5e
    inc hl                                        ; $11f3: $23
    ld d, [hl]                                    ; $11f4: $56
    ld a, [de]                                    ; $11f5: $1a
    ld c, a                                       ; $11f6: $4f
    ld a, c                                       ; $11f7: $79
    add $f0                                       ; $11f8: $c6 $f0
    ld c, a                                       ; $11fa: $4f
    dec hl                                        ; $11fb: $2b
    ld e, [hl]                                    ; $11fc: $5e
    inc hl                                        ; $11fd: $23
    ld d, [hl]                                    ; $11fe: $56
    ld a, c                                       ; $11ff: $79
    ld [de], a                                    ; $1200: $12
    ld a, $f0                                     ; $1201: $3e $f0
    push af                                       ; $1203: $f5
    inc sp                                        ; $1204: $33
    ld a, $00                                     ; $1205: $3e $00
    push af                                       ; $1207: $f5
    inc sp                                        ; $1208: $33
    ld a, $00                                     ; $1209: $3e $00
    push af                                       ; $120b: $f5
    inc sp                                        ; $120c: $33
    call Call_000_15ad                            ; $120d: $cd $ad $15
    add sp, $03                                   ; $1210: $e8 $03
    ld hl, $c799                                  ; $1212: $21 $99 $c7
    ld [hl], $01                                  ; $1215: $36 $01
    jp Jump_000_1281                              ; $1217: $c3 $81 $12


Jump_000_121a:
    ld hl, sp+$04                                 ; $121a: $f8 $04
    ld e, [hl]                                    ; $121c: $5e
    inc hl                                        ; $121d: $23
    ld d, [hl]                                    ; $121e: $56
    ld a, [de]                                    ; $121f: $1a
    ld c, a                                       ; $1220: $4f
    ld a, c                                       ; $1221: $79
    add $10                                       ; $1222: $c6 $10
    ld c, a                                       ; $1224: $4f
    ld de, $c7b0                                  ; $1225: $11 $b0 $c7
    ld a, [de]                                    ; $1228: $1a
    ld b, a                                       ; $1229: $47
    ld a, c                                       ; $122a: $79
    push af                                       ; $122b: $f5
    inc sp                                        ; $122c: $33
    ld a, b                                       ; $122d: $78
    push af                                       ; $122e: $f5
    inc sp                                        ; $122f: $33
    call Call_000_0cbe                            ; $1230: $cd $be $0c
    ld c, e                                       ; $1233: $4b
    add sp, $02                                   ; $1234: $e8 $02
    xor a                                         ; $1236: $af
    or c                                          ; $1237: $b1
    jp z, Jump_000_1281                           ; $1238: $ca $81 $12

    ld hl, sp+$00                                 ; $123b: $f8 $00
    ld e, [hl]                                    ; $123d: $5e
    inc hl                                        ; $123e: $23
    ld d, [hl]                                    ; $123f: $56
    ld a, [de]                                    ; $1240: $1a
    ld c, a                                       ; $1241: $4f
    inc c                                         ; $1242: $0c
    dec hl                                        ; $1243: $2b
    ld e, [hl]                                    ; $1244: $5e
    inc hl                                        ; $1245: $23
    ld d, [hl]                                    ; $1246: $56
    ld a, c                                       ; $1247: $79
    ld [de], a                                    ; $1248: $12
    ld hl, sp+$04                                 ; $1249: $f8 $04
    ld e, [hl]                                    ; $124b: $5e
    inc hl                                        ; $124c: $23
    ld d, [hl]                                    ; $124d: $56
    ld a, [de]                                    ; $124e: $1a
    ld c, a                                       ; $124f: $4f
    ld a, c                                       ; $1250: $79
    add $10                                       ; $1251: $c6 $10
    ld c, a                                       ; $1253: $4f
    dec hl                                        ; $1254: $2b
    ld e, [hl]                                    ; $1255: $5e
    inc hl                                        ; $1256: $23
    ld d, [hl]                                    ; $1257: $56
    ld a, c                                       ; $1258: $79
    ld [de], a                                    ; $1259: $12
    ld a, $10                                     ; $125a: $3e $10
    push af                                       ; $125c: $f5
    inc sp                                        ; $125d: $33
    ld a, $00                                     ; $125e: $3e $00
    push af                                       ; $1260: $f5
    inc sp                                        ; $1261: $33
    ld a, $00                                     ; $1262: $3e $00
    push af                                       ; $1264: $f5
    inc sp                                        ; $1265: $33
    call Call_000_15ad                            ; $1266: $cd $ad $15
    add sp, $03                                   ; $1269: $e8 $03
    ld hl, $c799                                  ; $126b: $21 $99 $c7
    ld [hl], $01                                  ; $126e: $36 $01
    jp Jump_000_1281                              ; $1270: $c3 $81 $12


Jump_000_1273:
    ld hl, $c7b0                                  ; $1273: $21 $b0 $c7
    push hl                                       ; $1276: $e5
    call Call_000_0de5                            ; $1277: $cd $e5 $0d
    add sp, $02                                   ; $127a: $e8 $02
    ld hl, $c799                                  ; $127c: $21 $99 $c7
    ld [hl], $01                                  ; $127f: $36 $01

Jump_000_1281:
    ld a, $02                                     ; $1281: $3e $02
    push af                                       ; $1283: $f5
    inc sp                                        ; $1284: $33
    call Call_000_0200                            ; $1285: $cd $00 $02
    add sp, $01                                   ; $1288: $e8 $01
    jp Jump_000_10d6                              ; $128a: $c3 $d6 $10


Jump_000_128d:
    call Call_000_0e61                            ; $128d: $cd $61 $0e
    ld c, e                                       ; $1290: $4b
    xor a                                         ; $1291: $af
    or c                                          ; $1292: $b1
    jp z, Jump_000_12b2                           ; $1293: $ca $b2 $12

    ld hl, $c4c8                                  ; $1296: $21 $c8 $c4
    push hl                                       ; $1299: $e5
    ld a, $12                                     ; $129a: $3e $12
    push af                                       ; $129c: $f5
    inc sp                                        ; $129d: $33
    ld a, $14                                     ; $129e: $3e $14
    push af                                       ; $12a0: $f5
    inc sp                                        ; $12a1: $33
    ld a, $00                                     ; $12a2: $3e $00
    push af                                       ; $12a4: $f5
    inc sp                                        ; $12a5: $33
    ld a, $00                                     ; $12a6: $3e $00
    push af                                       ; $12a8: $f5
    inc sp                                        ; $12a9: $33
    call Call_000_15f4                            ; $12aa: $cd $f4 $15
    add sp, $06                                   ; $12ad: $e8 $06
    jp Jump_000_12cb                              ; $12af: $c3 $cb $12


Jump_000_12b2:
    ld hl, $c630                                  ; $12b2: $21 $30 $c6
    push hl                                       ; $12b5: $e5
    ld a, $12                                     ; $12b6: $3e $12
    push af                                       ; $12b8: $f5
    inc sp                                        ; $12b9: $33
    ld a, $14                                     ; $12ba: $3e $14
    push af                                       ; $12bc: $f5
    inc sp                                        ; $12bd: $33
    ld a, $00                                     ; $12be: $3e $00
    push af                                       ; $12c0: $f5
    inc sp                                        ; $12c1: $33
    ld a, $00                                     ; $12c2: $3e $00
    push af                                       ; $12c4: $f5
    inc sp                                        ; $12c5: $33
    call Call_000_15f4                            ; $12c6: $cd $f4 $15
    add sp, $06                                   ; $12c9: $e8 $06

Jump_000_12cb:
    add sp, $06                                   ; $12cb: $e8 $06
    pop bc                                        ; $12cd: $c1
    ret                                           ; $12ce: $c9


Call_000_12cf:
    ld a, l                                       ; $12cf: $7d
    ld [$c7b5], a                                 ; $12d0: $ea $b5 $c7
    and $03                                       ; $12d3: $e6 $03
    ld l, a                                       ; $12d5: $6f
    ld bc, $01e0                                  ; $12d6: $01 $e0 $01
    sla l                                         ; $12d9: $cb $25
    sla l                                         ; $12db: $cb $25
    add hl, bc                                    ; $12dd: $09
    jp hl                                         ; $12de: $e9


Call_000_12df:
    ld hl, $c7bd                                  ; $12df: $21 $bd $c7
    jp Jump_000_131b                              ; $12e2: $c3 $1b $13


Call_000_12e5:
    ld hl, $c7cd                                  ; $12e5: $21 $cd $c7
    jp Jump_000_131b                              ; $12e8: $c3 $1b $13


Call_000_12eb:
    ld hl, $c7dd                                  ; $12eb: $21 $dd $c7
    jp Jump_000_131b                              ; $12ee: $c3 $1b $13


Call_000_12f1:
    ld hl, $c7ed                                  ; $12f1: $21 $ed $c7
    jp Jump_000_131b                              ; $12f4: $c3 $1b $13


Call_000_12f7:
    ld hl, $c7fd                                  ; $12f7: $21 $fd $c7
    jp Jump_000_131b                              ; $12fa: $c3 $1b $13


Call_000_12fd:
    ld hl, $c7bd                                  ; $12fd: $21 $bd $c7
    jp Jump_000_133b                              ; $1300: $c3 $3b $13


Call_000_1303:
    ld hl, $c7cd                                  ; $1303: $21 $cd $c7
    jp Jump_000_133b                              ; $1306: $c3 $3b $13


Call_000_1309:
    ld hl, $c7dd                                  ; $1309: $21 $dd $c7
    jp Jump_000_133b                              ; $130c: $c3 $3b $13


Call_000_130f:
    ld hl, $c7ed                                  ; $130f: $21 $ed $c7
    jp Jump_000_133b                              ; $1312: $c3 $3b $13


Call_000_1315:
    ld hl, $c7fd                                  ; $1315: $21 $fd $c7
    jp Jump_000_133b                              ; $1318: $c3 $3b $13


Jump_000_131b:
jr_000_131b:
    ld a, [hl+]                                   ; $131b: $2a
    ld e, a                                       ; $131c: $5f
    ld d, [hl]                                    ; $131d: $56
    or d                                          ; $131e: $b2
    ret z                                         ; $131f: $c8

    ld a, e                                       ; $1320: $7b
    cp c                                          ; $1321: $b9
    jr nz, jr_000_131b                            ; $1322: $20 $f7

    ld a, d                                       ; $1324: $7a
    cp b                                          ; $1325: $b8
    jr nz, jr_000_131b                            ; $1326: $20 $f3

    xor a                                         ; $1328: $af
    ld [hl-], a                                   ; $1329: $32
    ld [hl], a                                    ; $132a: $77
    inc a                                         ; $132b: $3c
    ld d, h                                       ; $132c: $54
    ld e, l                                       ; $132d: $5d
    dec de                                        ; $132e: $1b
    inc hl                                        ; $132f: $23

jr_000_1330:
    ld a, [hl+]                                   ; $1330: $2a
    ld [de], a                                    ; $1331: $12
    ld b, a                                       ; $1332: $47
    inc de                                        ; $1333: $13
    ld a, [hl+]                                   ; $1334: $2a
    ld [de], a                                    ; $1335: $12
    inc de                                        ; $1336: $13
    or b                                          ; $1337: $b0
    ret z                                         ; $1338: $c8

    jr jr_000_1330                                ; $1339: $18 $f5

Jump_000_133b:
jr_000_133b:
    ld a, [hl+]                                   ; $133b: $2a
    or [hl]                                       ; $133c: $b6
    jr z, jr_000_1342                             ; $133d: $28 $03

    inc hl                                        ; $133f: $23
    jr jr_000_133b                                ; $1340: $18 $f9

jr_000_1342:
    ld [hl], b                                    ; $1342: $70
    dec hl                                        ; $1343: $2b
    ld [hl], c                                    ; $1344: $71
    ret                                           ; $1345: $c9


    ld hl, $c7bb                                  ; $1346: $21 $bb $c7
    inc [hl]                                      ; $1349: $34
    jr nz, jr_000_134e                            ; $134a: $20 $02

    inc hl                                        ; $134c: $23
    inc [hl]                                      ; $134d: $34

jr_000_134e:
    call $ff80                                    ; $134e: $cd $80 $ff
    ld a, $01                                     ; $1351: $3e $01
    ld [$c7b9], a                                 ; $1353: $ea $b9 $c7
    ret                                           ; $1356: $c9


Call_000_1357:
    ldh a, [rLCDC]                                ; $1357: $f0 $40
    add a                                         ; $1359: $87
    ret nc                                        ; $135a: $d0

    xor a                                         ; $135b: $af
    di                                            ; $135c: $f3
    ld [$c7b9], a                                 ; $135d: $ea $b9 $c7
    ei                                            ; $1360: $fb

jr_000_1361:
    halt                                          ; $1361: $76 $00
    ld a, [$c7b9]                                 ; $1363: $fa $b9 $c7
    or a                                          ; $1366: $b7
    jr z, jr_000_1361                             ; $1367: $28 $f8

    xor a                                         ; $1369: $af
    ld [$c7b9], a                                 ; $136a: $ea $b9 $c7
    ret                                           ; $136d: $c9


Call_000_136e:
    ldh a, [rLCDC]                                ; $136e: $f0 $40
    add a                                         ; $1370: $87
    ret nc                                        ; $1371: $d0

jr_000_1372:
    ldh a, [rLY]                                  ; $1372: $f0 $44
    cp $92                                        ; $1374: $fe $92
    jr nc, jr_000_1372                            ; $1376: $30 $fa

jr_000_1378:
    ldh a, [rLY]                                  ; $1378: $f0 $44
    cp $91                                        ; $137a: $fe $91
    jr c, jr_000_1378                             ; $137c: $38 $fa

    ldh a, [rLCDC]                                ; $137e: $f0 $40
    and $7f                                       ; $1380: $e6 $7f
    ldh [rLCDC], a                                ; $1382: $e0 $40
    ret                                           ; $1384: $c9


    ld a, $c0                                     ; $1385: $3e $c0
    ldh [rDMA], a                                 ; $1387: $e0 $46
    ld a, $28                                     ; $1389: $3e $28

jr_000_138b:
    dec a                                         ; $138b: $3d
    jr nz, jr_000_138b                            ; $138c: $20 $fd

    ret                                           ; $138e: $c9


    ld a, [$c7b8]                                 ; $138f: $fa $b8 $c7
    cp $02                                        ; $1392: $fe $02
    jr nz, jr_000_139f                            ; $1394: $20 $09

    ldh a, [rSB]                                  ; $1396: $f0 $01
    ld [$c7b7], a                                 ; $1398: $ea $b7 $c7
    ld a, $00                                     ; $139b: $3e $00
    jr jr_000_13ad                                ; $139d: $18 $0e

jr_000_139f:
    cp $01                                        ; $139f: $fe $01
    jr nz, jr_000_13b9                            ; $13a1: $20 $16

    ldh a, [rSB]                                  ; $13a3: $f0 $01
    cp $55                                        ; $13a5: $fe $55
    jr z, jr_000_13ad                             ; $13a7: $28 $04

    ld a, $04                                     ; $13a9: $3e $04
    jr jr_000_13af                                ; $13ab: $18 $02

jr_000_13ad:
    ld a, $00                                     ; $13ad: $3e $00

jr_000_13af:
    ld [$c7b8], a                                 ; $13af: $ea $b8 $c7
    xor a                                         ; $13b2: $af
    ldh [rSC], a                                  ; $13b3: $e0 $02
    ld a, $66                                     ; $13b5: $3e $66
    ldh [rSB], a                                  ; $13b7: $e0 $01

jr_000_13b9:
    ld a, $80                                     ; $13b9: $3e $80
    ldh [rSC], a                                  ; $13bb: $e0 $02
    ret                                           ; $13bd: $c9


    ld hl, sp+$02                                 ; $13be: $f8 $02
    ld l, [hl]                                    ; $13c0: $6e
    ld h, $00                                     ; $13c1: $26 $00
    call Call_000_12cf                            ; $13c3: $cd $cf $12
    ret                                           ; $13c6: $c9


    ld hl, $c7b5                                  ; $13c7: $21 $b5 $c7
    ld e, [hl]                                    ; $13ca: $5e
    ret                                           ; $13cb: $c9


    ei                                            ; $13cc: $fb
    ret                                           ; $13cd: $c9


    di                                            ; $13ce: $f3
    ret                                           ; $13cf: $c9


    ld a, [$c7b4]                                 ; $13d0: $fa $b4 $c7
    jp Jump_000_0150                              ; $13d3: $c3 $50 $01


    di                                            ; $13d6: $f3
    ld hl, sp+$02                                 ; $13d7: $f8 $02
    xor a                                         ; $13d9: $af
    ldh [rIF], a                                  ; $13da: $e0 $0f
    ld a, [hl]                                    ; $13dc: $7e
    ldh [rIE], a                                  ; $13dd: $e0 $ff
    ei                                            ; $13df: $fb
    ret                                           ; $13e0: $c9


    push bc                                       ; $13e1: $c5
    ld hl, sp+$04                                 ; $13e2: $f8 $04
    ld c, [hl]                                    ; $13e4: $4e
    inc hl                                        ; $13e5: $23
    ld b, [hl]                                    ; $13e6: $46
    call Call_000_12df                            ; $13e7: $cd $df $12
    pop bc                                        ; $13ea: $c1
    ret                                           ; $13eb: $c9


    push bc                                       ; $13ec: $c5
    ld hl, sp+$04                                 ; $13ed: $f8 $04
    ld c, [hl]                                    ; $13ef: $4e
    inc hl                                        ; $13f0: $23
    ld b, [hl]                                    ; $13f1: $46
    call Call_000_12e5                            ; $13f2: $cd $e5 $12
    pop bc                                        ; $13f5: $c1
    ret                                           ; $13f6: $c9


    push bc                                       ; $13f7: $c5
    ld hl, sp+$04                                 ; $13f8: $f8 $04
    ld c, [hl]                                    ; $13fa: $4e
    inc hl                                        ; $13fb: $23
    ld b, [hl]                                    ; $13fc: $46
    call Call_000_12eb                            ; $13fd: $cd $eb $12
    pop bc                                        ; $1400: $c1
    ret                                           ; $1401: $c9


    push bc                                       ; $1402: $c5
    ld hl, sp+$04                                 ; $1403: $f8 $04
    ld c, [hl]                                    ; $1405: $4e
    inc hl                                        ; $1406: $23
    ld b, [hl]                                    ; $1407: $46
    call Call_000_12f1                            ; $1408: $cd $f1 $12
    pop bc                                        ; $140b: $c1
    ret                                           ; $140c: $c9


    push bc                                       ; $140d: $c5
    ld hl, sp+$04                                 ; $140e: $f8 $04
    ld c, [hl]                                    ; $1410: $4e
    inc hl                                        ; $1411: $23
    ld b, [hl]                                    ; $1412: $46
    call Call_000_12f7                            ; $1413: $cd $f7 $12
    pop bc                                        ; $1416: $c1
    ret                                           ; $1417: $c9


    push bc                                       ; $1418: $c5
    ld hl, sp+$04                                 ; $1419: $f8 $04
    ld c, [hl]                                    ; $141b: $4e
    inc hl                                        ; $141c: $23
    ld b, [hl]                                    ; $141d: $46
    call Call_000_12fd                            ; $141e: $cd $fd $12
    pop bc                                        ; $1421: $c1
    ret                                           ; $1422: $c9


    push bc                                       ; $1423: $c5
    ld hl, sp+$04                                 ; $1424: $f8 $04
    ld c, [hl]                                    ; $1426: $4e
    inc hl                                        ; $1427: $23
    ld b, [hl]                                    ; $1428: $46
    call Call_000_1303                            ; $1429: $cd $03 $13
    pop bc                                        ; $142c: $c1
    ret                                           ; $142d: $c9


    push bc                                       ; $142e: $c5
    ld hl, sp+$04                                 ; $142f: $f8 $04
    ld c, [hl]                                    ; $1431: $4e
    inc hl                                        ; $1432: $23
    ld b, [hl]                                    ; $1433: $46
    call Call_000_1309                            ; $1434: $cd $09 $13
    pop bc                                        ; $1437: $c1
    ret                                           ; $1438: $c9


    push bc                                       ; $1439: $c5
    ld hl, sp+$04                                 ; $143a: $f8 $04
    ld c, [hl]                                    ; $143c: $4e
    inc hl                                        ; $143d: $23
    ld b, [hl]                                    ; $143e: $46
    call Call_000_130f                            ; $143f: $cd $0f $13
    pop bc                                        ; $1442: $c1
    ret                                           ; $1443: $c9


    push bc                                       ; $1444: $c5
    ld hl, sp+$04                                 ; $1445: $f8 $04
    ld c, [hl]                                    ; $1447: $4e
    inc hl                                        ; $1448: $23
    ld b, [hl]                                    ; $1449: $46
    call Call_000_1315                            ; $144a: $cd $15 $13
    pop bc                                        ; $144d: $c1
    ret                                           ; $144e: $c9


    ld hl, $c7bb                                  ; $144f: $21 $bb $c7
    di                                            ; $1452: $f3
    ld a, [hl+]                                   ; $1453: $2a
    ei                                            ; $1454: $fb
    ld d, [hl]                                    ; $1455: $56
    ld e, a                                       ; $1456: $5f
    ret                                           ; $1457: $c9


    ret                                           ; $1458: $c9


Call_000_1459:
    pop hl                                        ; $1459: $e1
    ld a, [$c7ba]                                 ; $145a: $fa $ba $c7
    push af                                       ; $145d: $f5
    ld e, [hl]                                    ; $145e: $5e
    inc hl                                        ; $145f: $23
    ld d, [hl]                                    ; $1460: $56
    inc hl                                        ; $1461: $23
    ld a, [hl+]                                   ; $1462: $2a
    inc hl                                        ; $1463: $23
    push hl                                       ; $1464: $e5
    ld [$c7ba], a                                 ; $1465: $ea $ba $c7
    ld [$2000], a                                 ; $1468: $ea $00 $20
    ld hl, $1472                                  ; $146b: $21 $72 $14
    push hl                                       ; $146e: $e5
    ld l, e                                       ; $146f: $6b
    ld h, d                                       ; $1470: $62
    jp hl                                         ; $1471: $e9


    pop hl                                        ; $1472: $e1
    pop af                                        ; $1473: $f1
    ld [$2000], a                                 ; $1474: $ea $00 $20
    ld [$c7ba], a                                 ; $1477: $ea $ba $c7
    jp hl                                         ; $147a: $e9


Call_000_147b:
    push af                                       ; $147b: $f5
    push bc                                       ; $147c: $c5

jr_000_147d:
    ld b, $ff                                     ; $147d: $06 $ff

jr_000_147f:
    call Call_000_148b                            ; $147f: $cd $8b $14
    or a                                          ; $1482: $b7
    jr nz, jr_000_147d                            ; $1483: $20 $f8

    dec b                                         ; $1485: $05
    jr nz, jr_000_147f                            ; $1486: $20 $f7

    pop bc                                        ; $1488: $c1
    pop af                                        ; $1489: $f1
    ret                                           ; $148a: $c9


Call_000_148b:
    push bc                                       ; $148b: $c5
    ld a, $20                                     ; $148c: $3e $20
    ldh [rP1], a                                  ; $148e: $e0 $00
    ldh a, [rP1]                                  ; $1490: $f0 $00
    ldh a, [rP1]                                  ; $1492: $f0 $00
    cpl                                           ; $1494: $2f
    and $0f                                       ; $1495: $e6 $0f
    swap a                                        ; $1497: $cb $37
    ld b, a                                       ; $1499: $47
    ld a, $10                                     ; $149a: $3e $10
    ldh [rP1], a                                  ; $149c: $e0 $00
    ldh a, [rP1]                                  ; $149e: $f0 $00
    ldh a, [rP1]                                  ; $14a0: $f0 $00
    ldh a, [rP1]                                  ; $14a2: $f0 $00
    ldh a, [rP1]                                  ; $14a4: $f0 $00
    ldh a, [rP1]                                  ; $14a6: $f0 $00
    ldh a, [rP1]                                  ; $14a8: $f0 $00
    cpl                                           ; $14aa: $2f
    and $0f                                       ; $14ab: $e6 $0f
    or b                                          ; $14ad: $b0
    swap a                                        ; $14ae: $cb $37
    ld b, a                                       ; $14b0: $47
    ld a, $30                                     ; $14b1: $3e $30
    ldh [rP1], a                                  ; $14b3: $e0 $00
    ld a, b                                       ; $14b5: $78
    pop bc                                        ; $14b6: $c1
    ret                                           ; $14b7: $c9


Call_000_14b8:
jr_000_14b8:
    call Call_000_148b                            ; $14b8: $cd $8b $14
    and b                                         ; $14bb: $a0
    jr z, jr_000_14b8                             ; $14bc: $28 $fa

    ret                                           ; $14be: $c9


Call_000_14bf:
    call Call_000_148b                            ; $14bf: $cd $8b $14
    ld e, a                                       ; $14c2: $5f
    ret                                           ; $14c3: $c9


Call_000_14c4:
    push bc                                       ; $14c4: $c5
    ld hl, sp+$04                                 ; $14c5: $f8 $04
    ld b, [hl]                                    ; $14c7: $46
    call Call_000_14b8                            ; $14c8: $cd $b8 $14
    ld e, a                                       ; $14cb: $5f
    pop bc                                        ; $14cc: $c1
    ret                                           ; $14cd: $c9


Call_000_14ce:
    ld hl, $c000                                  ; $14ce: $21 $00 $c0
    sla c                                         ; $14d1: $cb $21
    sla c                                         ; $14d3: $cb $21
    ld b, $00                                     ; $14d5: $06 $00
    add hl, bc                                    ; $14d7: $09
    ld a, e                                       ; $14d8: $7b
    ld [hl+], a                                   ; $14d9: $22
    ld a, d                                       ; $14da: $7a
    ld [hl+], a                                   ; $14db: $22
    ret                                           ; $14dc: $c9


Call_000_14dd:
    push bc                                       ; $14dd: $c5
    ld hl, sp+$04                                 ; $14de: $f8 $04
    ld c, [hl]                                    ; $14e0: $4e
    inc hl                                        ; $14e1: $23
    ld d, [hl]                                    ; $14e2: $56
    inc hl                                        ; $14e3: $23
    ld e, [hl]                                    ; $14e4: $5e
    call Call_000_14ce                            ; $14e5: $cd $ce $14
    pop bc                                        ; $14e8: $c1
    ret                                           ; $14e9: $c9


Call_000_14ea:
    ldh a, [rLCDC]                                ; $14ea: $f0 $40
    bit 4, a                                      ; $14ec: $cb $67
    jp nz, Jump_000_1537                          ; $14ee: $c2 $37 $15

    push bc                                       ; $14f1: $c5
    ld hl, sp+$07                                 ; $14f2: $f8 $07
    ld b, [hl]                                    ; $14f4: $46
    dec hl                                        ; $14f5: $2b
    ld c, [hl]                                    ; $14f6: $4e
    dec hl                                        ; $14f7: $2b
    ld e, [hl]                                    ; $14f8: $5e
    dec hl                                        ; $14f9: $2b
    ld l, [hl]                                    ; $14fa: $6e
    push hl                                       ; $14fb: $e5
    xor a                                         ; $14fc: $af
    or e                                          ; $14fd: $b3
    jr nz, jr_000_1505                            ; $14fe: $20 $05

    ld de, $1000                                  ; $1500: $11 $00 $10
    jr jr_000_150e                                ; $1503: $18 $09

jr_000_1505:
    ld h, $00                                     ; $1505: $26 $00
    ld l, e                                       ; $1507: $6b
    add hl, hl                                    ; $1508: $29
    add hl, hl                                    ; $1509: $29
    add hl, hl                                    ; $150a: $29
    add hl, hl                                    ; $150b: $29
    ld d, h                                       ; $150c: $54
    ld e, l                                       ; $150d: $5d

jr_000_150e:
    pop hl                                        ; $150e: $e1
    ld a, l                                       ; $150f: $7d
    rlca                                          ; $1510: $07
    sbc a                                         ; $1511: $9f
    ld h, a                                       ; $1512: $67
    add hl, hl                                    ; $1513: $29
    add hl, hl                                    ; $1514: $29
    add hl, hl                                    ; $1515: $29
    add hl, hl                                    ; $1516: $29
    push bc                                       ; $1517: $c5
    ld bc, $9000                                  ; $1518: $01 $00 $90
    add hl, bc                                    ; $151b: $09
    pop bc                                        ; $151c: $c1

jr_000_151d:
    bit 3, h                                      ; $151d: $cb $5c
    jr z, jr_000_1527                             ; $151f: $28 $06

    bit 4, h                                      ; $1521: $cb $64
    jr z, jr_000_1527                             ; $1523: $28 $02

    res 4, h                                      ; $1525: $cb $a4

jr_000_1527:
    ldh a, [rSTAT]                                ; $1527: $f0 $41
    and $02                                       ; $1529: $e6 $02
    jr nz, jr_000_1527                            ; $152b: $20 $fa

    ld a, [bc]                                    ; $152d: $0a
    ld [hl+], a                                   ; $152e: $22
    inc bc                                        ; $152f: $03
    dec de                                        ; $1530: $1b
    ld a, d                                       ; $1531: $7a
    or e                                          ; $1532: $b3
    jr nz, jr_000_151d                            ; $1533: $20 $e8

    pop bc                                        ; $1535: $c1
    ret                                           ; $1536: $c9


Call_000_1537:
Jump_000_1537:
    push bc                                       ; $1537: $c5
    ld hl, sp+$07                                 ; $1538: $f8 $07
    ld b, [hl]                                    ; $153a: $46
    dec hl                                        ; $153b: $2b
    ld c, [hl]                                    ; $153c: $4e
    dec hl                                        ; $153d: $2b
    ld e, [hl]                                    ; $153e: $5e
    dec hl                                        ; $153f: $2b
    ld l, [hl]                                    ; $1540: $6e
    push hl                                       ; $1541: $e5
    xor a                                         ; $1542: $af
    or e                                          ; $1543: $b3
    jr nz, jr_000_154b                            ; $1544: $20 $05

    ld de, $1000                                  ; $1546: $11 $00 $10
    jr jr_000_1554                                ; $1549: $18 $09

jr_000_154b:
    ld h, $00                                     ; $154b: $26 $00
    ld l, e                                       ; $154d: $6b
    add hl, hl                                    ; $154e: $29
    add hl, hl                                    ; $154f: $29
    add hl, hl                                    ; $1550: $29
    add hl, hl                                    ; $1551: $29
    ld d, h                                       ; $1552: $54
    ld e, l                                       ; $1553: $5d

jr_000_1554:
    pop hl                                        ; $1554: $e1
    ld h, $00                                     ; $1555: $26 $00
    add hl, hl                                    ; $1557: $29
    add hl, hl                                    ; $1558: $29
    add hl, hl                                    ; $1559: $29
    add hl, hl                                    ; $155a: $29
    push bc                                       ; $155b: $c5
    ld bc, $8000                                  ; $155c: $01 $00 $80
    add hl, bc                                    ; $155f: $09
    pop bc                                        ; $1560: $c1
    call Call_000_15d2                            ; $1561: $cd $d2 $15
    pop bc                                        ; $1564: $c1
    ret                                           ; $1565: $c9


Call_000_1566:
    push bc                                       ; $1566: $c5
    ld hl, sp+$04                                 ; $1567: $f8 $04
    ld c, [hl]                                    ; $1569: $4e
    inc hl                                        ; $156a: $23
    ld e, [hl]                                    ; $156b: $5e
    call Call_000_1583                            ; $156c: $cd $83 $15
    ld e, l                                       ; $156f: $5d
    pop bc                                        ; $1570: $c1
    ret                                           ; $1571: $c9


    push bc                                       ; $1572: $c5
    ld hl, sp+$04                                 ; $1573: $f8 $04
    ld c, [hl]                                    ; $1575: $4e
    inc hl                                        ; $1576: $23
    ld b, [hl]                                    ; $1577: $46
    inc hl                                        ; $1578: $23
    ld e, [hl]                                    ; $1579: $5e
    inc hl                                        ; $157a: $23
    ld d, [hl]                                    ; $157b: $56
    call Call_000_1586                            ; $157c: $cd $86 $15
    ld e, l                                       ; $157f: $5d
    ld d, h                                       ; $1580: $54
    pop bc                                        ; $1581: $c1
    ret                                           ; $1582: $c9


Call_000_1583:
    ld b, $00                                     ; $1583: $06 $00
    ld d, b                                       ; $1585: $50

Call_000_1586:
    ld hl, $0000                                  ; $1586: $21 $00 $00
    ld a, $0f                                     ; $1589: $3e $0f

jr_000_158b:
    sla e                                         ; $158b: $cb $23
    rl d                                          ; $158d: $cb $12
    jr nc, jr_000_1592                            ; $158f: $30 $01

    add hl, bc                                    ; $1591: $09

jr_000_1592:
    add hl, hl                                    ; $1592: $29
    dec a                                         ; $1593: $3d
    jr nz, jr_000_158b                            ; $1594: $20 $f5

    bit 7, d                                      ; $1596: $cb $7a
    jr z, jr_000_159b                             ; $1598: $28 $01

    add hl, bc                                    ; $159a: $09

jr_000_159b:
    ret                                           ; $159b: $c9


Call_000_159c:
    ld hl, $c000                                  ; $159c: $21 $00 $c0
    sla c                                         ; $159f: $cb $21
    sla c                                         ; $15a1: $cb $21
    ld b, $00                                     ; $15a3: $06 $00
    add hl, bc                                    ; $15a5: $09
    ld a, [hl]                                    ; $15a6: $7e
    add e                                         ; $15a7: $83
    ld [hl+], a                                   ; $15a8: $22
    ld a, [hl]                                    ; $15a9: $7e
    add d                                         ; $15aa: $82
    ld [hl+], a                                   ; $15ab: $22
    ret                                           ; $15ac: $c9


Call_000_15ad:
    push bc                                       ; $15ad: $c5
    ld hl, sp+$04                                 ; $15ae: $f8 $04
    ld c, [hl]                                    ; $15b0: $4e
    inc hl                                        ; $15b1: $23
    ld d, [hl]                                    ; $15b2: $56
    inc hl                                        ; $15b3: $23
    ld e, [hl]                                    ; $15b4: $5e
    call Call_000_159c                            ; $15b5: $cd $9c $15
    pop bc                                        ; $15b8: $c1
    ret                                           ; $15b9: $c9


Call_000_15ba:
    ld hl, $c002                                  ; $15ba: $21 $02 $c0
    sla c                                         ; $15bd: $cb $21
    sla c                                         ; $15bf: $cb $21
    ld b, $00                                     ; $15c1: $06 $00
    add hl, bc                                    ; $15c3: $09
    ld a, d                                       ; $15c4: $7a
    ld [hl], a                                    ; $15c5: $77
    ret                                           ; $15c6: $c9


Call_000_15c7:
    push bc                                       ; $15c7: $c5
    ld hl, sp+$04                                 ; $15c8: $f8 $04
    ld c, [hl]                                    ; $15ca: $4e
    inc hl                                        ; $15cb: $23
    ld d, [hl]                                    ; $15cc: $56
    call Call_000_15ba                            ; $15cd: $cd $ba $15
    pop bc                                        ; $15d0: $c1
    ret                                           ; $15d1: $c9


Call_000_15d2:
jr_000_15d2:
    ldh a, [rSTAT]                                ; $15d2: $f0 $41
    and $02                                       ; $15d4: $e6 $02
    jr nz, jr_000_15d2                            ; $15d6: $20 $fa

    ld a, [bc]                                    ; $15d8: $0a
    ld [hl+], a                                   ; $15d9: $22
    inc bc                                        ; $15da: $03
    dec de                                        ; $15db: $1b
    ld a, d                                       ; $15dc: $7a
    or e                                          ; $15dd: $b3
    jr nz, jr_000_15d2                            ; $15de: $20 $f2

    ret                                           ; $15e0: $c9


    push bc                                       ; $15e1: $c5
    ld hl, sp+$09                                 ; $15e2: $f8 $09
    ld d, [hl]                                    ; $15e4: $56
    dec hl                                        ; $15e5: $2b
    ld e, [hl]                                    ; $15e6: $5e
    dec hl                                        ; $15e7: $2b
    ld b, [hl]                                    ; $15e8: $46
    dec hl                                        ; $15e9: $2b
    ld c, [hl]                                    ; $15ea: $4e
    dec hl                                        ; $15eb: $2b
    ld a, [hl-]                                   ; $15ec: $3a
    ld l, [hl]                                    ; $15ed: $6e
    ld h, a                                       ; $15ee: $67
    call Call_000_15d2                            ; $15ef: $cd $d2 $15
    pop bc                                        ; $15f2: $c1
    ret                                           ; $15f3: $c9


Call_000_15f4:
    push bc                                       ; $15f4: $c5
    ld hl, sp+$04                                 ; $15f5: $f8 $04
    ld d, [hl]                                    ; $15f7: $56
    inc hl                                        ; $15f8: $23
    ld e, [hl]                                    ; $15f9: $5e
    ld hl, sp+$09                                 ; $15fa: $f8 $09
    ld b, [hl]                                    ; $15fc: $46
    dec hl                                        ; $15fd: $2b
    ld c, [hl]                                    ; $15fe: $4e
    dec hl                                        ; $15ff: $2b
    ld a, [hl-]                                   ; $1600: $3a
    ld h, [hl]                                    ; $1601: $66
    ld l, a                                       ; $1602: $6f
    call Call_000_1619                            ; $1603: $cd $19 $16
    pop bc                                        ; $1606: $c1
    ret                                           ; $1607: $c9


    push hl                                       ; $1608: $e5
    ldh a, [rLCDC]                                ; $1609: $f0 $40
    bit 6, a                                      ; $160b: $cb $77
    jr nz, jr_000_1614                            ; $160d: $20 $05

    ld hl, $9800                                  ; $160f: $21 $00 $98
    jr jr_000_1628                                ; $1612: $18 $14

jr_000_1614:
    ld hl, $9c00                                  ; $1614: $21 $00 $9c
    jr jr_000_1628                                ; $1617: $18 $0f

Call_000_1619:
    push hl                                       ; $1619: $e5
    ldh a, [rLCDC]                                ; $161a: $f0 $40
    bit 3, a                                      ; $161c: $cb $5f
    jr nz, jr_000_1625                            ; $161e: $20 $05

    ld hl, $9800                                  ; $1620: $21 $00 $98
    jr jr_000_1628                                ; $1623: $18 $03

jr_000_1625:
    ld hl, $9c00                                  ; $1625: $21 $00 $9c

Call_000_1628:
jr_000_1628:
    push bc                                       ; $1628: $c5
    xor a                                         ; $1629: $af
    or e                                          ; $162a: $b3
    jr z, jr_000_1634                             ; $162b: $28 $07

    ld bc, $0020                                  ; $162d: $01 $20 $00

jr_000_1630:
    add hl, bc                                    ; $1630: $09
    dec e                                         ; $1631: $1d
    jr nz, jr_000_1630                            ; $1632: $20 $fc

jr_000_1634:
    ld b, $00                                     ; $1634: $06 $00
    ld c, d                                       ; $1636: $4a
    add hl, bc                                    ; $1637: $09
    pop bc                                        ; $1638: $c1
    pop de                                        ; $1639: $d1
    push hl                                       ; $163a: $e5
    push de                                       ; $163b: $d5

jr_000_163c:
    ldh a, [rSTAT]                                ; $163c: $f0 $41
    and $02                                       ; $163e: $e6 $02
    jr nz, jr_000_163c                            ; $1640: $20 $fa

    ld a, [bc]                                    ; $1642: $0a
    ld [hl+], a                                   ; $1643: $22
    inc bc                                        ; $1644: $03
    dec d                                         ; $1645: $15
    jr nz, jr_000_163c                            ; $1646: $20 $f4

    pop hl                                        ; $1648: $e1
    ld d, h                                       ; $1649: $54
    pop hl                                        ; $164a: $e1
    dec e                                         ; $164b: $1d
    jr z, jr_000_1658                             ; $164c: $28 $0a

    push bc                                       ; $164e: $c5
    ld bc, $0020                                  ; $164f: $01 $20 $00
    add hl, bc                                    ; $1652: $09
    pop bc                                        ; $1653: $c1
    push hl                                       ; $1654: $e5
    push de                                       ; $1655: $d5
    jr jr_000_163c                                ; $1656: $18 $e4

jr_000_1658:
    ret                                           ; $1658: $c9


    push bc                                       ; $1659: $c5
    ld hl, sp+$0b                                 ; $165a: $f8 $0b
    ld b, [hl]                                    ; $165c: $46
    dec hl                                        ; $165d: $2b
    ld c, [hl]                                    ; $165e: $4e
    dec hl                                        ; $165f: $2b
    ld d, [hl]                                    ; $1660: $56
    dec hl                                        ; $1661: $2b
    ld e, [hl]                                    ; $1662: $5e
    ld hl, sp+$04                                 ; $1663: $f8 $04
    push de                                       ; $1665: $d5
    ld d, [hl]                                    ; $1666: $56
    inc hl                                        ; $1667: $23
    ld e, [hl]                                    ; $1668: $5e
    inc hl                                        ; $1669: $23
    ld a, [hl+]                                   ; $166a: $2a
    ld l, [hl]                                    ; $166b: $6e
    ld h, a                                       ; $166c: $67
    call Call_000_1628                            ; $166d: $cd $28 $16
    pop bc                                        ; $1670: $c1
    ret                                           ; $1671: $c9


Call_000_1672:
    ld de, $c0a0                                  ; $1672: $11 $a0 $c0
    ld a, $01                                     ; $1675: $3e $01
    ld [de], a                                    ; $1677: $12
    ld de, $c0a1                                  ; $1678: $11 $a1 $c0
    ld a, $01                                     ; $167b: $3e $01
    ld [de], a                                    ; $167d: $12
    ld de, $c0a2                                  ; $167e: $11 $a2 $c0
    ld a, $01                                     ; $1681: $3e $01
    ld [de], a                                    ; $1683: $12
    ld de, $c0a3                                  ; $1684: $11 $a3 $c0
    ld a, $01                                     ; $1687: $3e $01
    ld [de], a                                    ; $1689: $12
    ld de, $c0a4                                  ; $168a: $11 $a4 $c0
    ld a, $01                                     ; $168d: $3e $01
    ld [de], a                                    ; $168f: $12
    ld de, $c0a5                                  ; $1690: $11 $a5 $c0
    ld a, $01                                     ; $1693: $3e $01
    ld [de], a                                    ; $1695: $12
    ld de, $c0a6                                  ; $1696: $11 $a6 $c0
    ld a, $01                                     ; $1699: $3e $01
    ld [de], a                                    ; $169b: $12
    ld de, $c0a7                                  ; $169c: $11 $a7 $c0
    ld a, $01                                     ; $169f: $3e $01
    ld [de], a                                    ; $16a1: $12
    ld de, $c0a8                                  ; $16a2: $11 $a8 $c0
    ld a, $01                                     ; $16a5: $3e $01
    ld [de], a                                    ; $16a7: $12
    ld de, $c0a9                                  ; $16a8: $11 $a9 $c0
    ld a, $01                                     ; $16ab: $3e $01
    ld [de], a                                    ; $16ad: $12
    ld de, $c0aa                                  ; $16ae: $11 $aa $c0
    ld a, $01                                     ; $16b1: $3e $01
    ld [de], a                                    ; $16b3: $12
    ld de, $c0ab                                  ; $16b4: $11 $ab $c0
    ld a, $01                                     ; $16b7: $3e $01
    ld [de], a                                    ; $16b9: $12
    ld de, $c0ac                                  ; $16ba: $11 $ac $c0
    ld a, $01                                     ; $16bd: $3e $01
    ld [de], a                                    ; $16bf: $12
    ld de, $c0ad                                  ; $16c0: $11 $ad $c0
    ld a, $01                                     ; $16c3: $3e $01
    ld [de], a                                    ; $16c5: $12
    ld de, $c0ae                                  ; $16c6: $11 $ae $c0
    ld a, $01                                     ; $16c9: $3e $01
    ld [de], a                                    ; $16cb: $12
    ld de, $c0af                                  ; $16cc: $11 $af $c0
    ld a, $01                                     ; $16cf: $3e $01
    ld [de], a                                    ; $16d1: $12
    ld de, $c0b0                                  ; $16d2: $11 $b0 $c0
    ld a, $01                                     ; $16d5: $3e $01
    ld [de], a                                    ; $16d7: $12
    ld de, $c0b1                                  ; $16d8: $11 $b1 $c0
    ld a, $01                                     ; $16db: $3e $01
    ld [de], a                                    ; $16dd: $12
    ld de, $c0b2                                  ; $16de: $11 $b2 $c0
    ld a, $01                                     ; $16e1: $3e $01
    ld [de], a                                    ; $16e3: $12
    ld de, $c0b3                                  ; $16e4: $11 $b3 $c0
    ld a, $01                                     ; $16e7: $3e $01
    ld [de], a                                    ; $16e9: $12
    ld de, $c0b4                                  ; $16ea: $11 $b4 $c0
    ld a, $01                                     ; $16ed: $3e $01
    ld [de], a                                    ; $16ef: $12
    ld de, $c0b5                                  ; $16f0: $11 $b5 $c0
    ld a, $01                                     ; $16f3: $3e $01
    ld [de], a                                    ; $16f5: $12
    ld de, $c0b6                                  ; $16f6: $11 $b6 $c0
    ld a, $01                                     ; $16f9: $3e $01
    ld [de], a                                    ; $16fb: $12
    ld de, $c0b7                                  ; $16fc: $11 $b7 $c0
    ld a, $01                                     ; $16ff: $3e $01
    ld [de], a                                    ; $1701: $12
    ld de, $c0b8                                  ; $1702: $11 $b8 $c0
    ld a, $01                                     ; $1705: $3e $01
    ld [de], a                                    ; $1707: $12
    ld de, $c0b9                                  ; $1708: $11 $b9 $c0
    ld a, $01                                     ; $170b: $3e $01
    ld [de], a                                    ; $170d: $12
    ld de, $c0ba                                  ; $170e: $11 $ba $c0
    ld a, $01                                     ; $1711: $3e $01
    ld [de], a                                    ; $1713: $12
    ld de, $c0bb                                  ; $1714: $11 $bb $c0
    ld a, $01                                     ; $1717: $3e $01
    ld [de], a                                    ; $1719: $12
    ld de, $c0bc                                  ; $171a: $11 $bc $c0
    ld a, $01                                     ; $171d: $3e $01
    ld [de], a                                    ; $171f: $12
    ld de, $c0bd                                  ; $1720: $11 $bd $c0
    ld a, $01                                     ; $1723: $3e $01
    ld [de], a                                    ; $1725: $12
    ld de, $c0be                                  ; $1726: $11 $be $c0
    ld a, $01                                     ; $1729: $3e $01
    ld [de], a                                    ; $172b: $12
    ld de, $c0bf                                  ; $172c: $11 $bf $c0
    ld a, $01                                     ; $172f: $3e $01
    ld [de], a                                    ; $1731: $12
    ld de, $c0c0                                  ; $1732: $11 $c0 $c0
    ld a, $01                                     ; $1735: $3e $01
    ld [de], a                                    ; $1737: $12
    ld de, $c0c1                                  ; $1738: $11 $c1 $c0
    ld a, $01                                     ; $173b: $3e $01
    ld [de], a                                    ; $173d: $12
    ld de, $c0c2                                  ; $173e: $11 $c2 $c0
    ld a, $01                                     ; $1741: $3e $01
    ld [de], a                                    ; $1743: $12
    ld de, $c0c3                                  ; $1744: $11 $c3 $c0
    ld a, $01                                     ; $1747: $3e $01
    ld [de], a                                    ; $1749: $12
    ld de, $c0c4                                  ; $174a: $11 $c4 $c0
    ld a, $01                                     ; $174d: $3e $01
    ld [de], a                                    ; $174f: $12
    ld de, $c0c5                                  ; $1750: $11 $c5 $c0
    ld a, $01                                     ; $1753: $3e $01
    ld [de], a                                    ; $1755: $12
    ld de, $c0c6                                  ; $1756: $11 $c6 $c0
    ld a, $01                                     ; $1759: $3e $01
    ld [de], a                                    ; $175b: $12
    ld de, $c0c7                                  ; $175c: $11 $c7 $c0
    ld a, $01                                     ; $175f: $3e $01
    ld [de], a                                    ; $1761: $12
    ld de, $c0c8                                  ; $1762: $11 $c8 $c0
    ld a, $01                                     ; $1765: $3e $01
    ld [de], a                                    ; $1767: $12
    ld de, $c0c9                                  ; $1768: $11 $c9 $c0
    ld a, $01                                     ; $176b: $3e $01
    ld [de], a                                    ; $176d: $12
    ld de, $c0ca                                  ; $176e: $11 $ca $c0
    ld a, $01                                     ; $1771: $3e $01
    ld [de], a                                    ; $1773: $12
    ld de, $c0cb                                  ; $1774: $11 $cb $c0
    ld a, $01                                     ; $1777: $3e $01
    ld [de], a                                    ; $1779: $12
    ld de, $c0cc                                  ; $177a: $11 $cc $c0
    ld a, $01                                     ; $177d: $3e $01
    ld [de], a                                    ; $177f: $12
    ld de, $c0cd                                  ; $1780: $11 $cd $c0
    ld a, $01                                     ; $1783: $3e $01
    ld [de], a                                    ; $1785: $12
    ld de, $c0ce                                  ; $1786: $11 $ce $c0
    ld a, $01                                     ; $1789: $3e $01
    ld [de], a                                    ; $178b: $12
    ld de, $c0cf                                  ; $178c: $11 $cf $c0
    ld a, $01                                     ; $178f: $3e $01
    ld [de], a                                    ; $1791: $12
    ld de, $c0d0                                  ; $1792: $11 $d0 $c0
    ld a, $01                                     ; $1795: $3e $01
    ld [de], a                                    ; $1797: $12
    ld de, $c0d1                                  ; $1798: $11 $d1 $c0
    ld a, $01                                     ; $179b: $3e $01
    ld [de], a                                    ; $179d: $12
    ld de, $c0d2                                  ; $179e: $11 $d2 $c0
    ld a, $01                                     ; $17a1: $3e $01
    ld [de], a                                    ; $17a3: $12
    ld de, $c0d3                                  ; $17a4: $11 $d3 $c0
    ld a, $01                                     ; $17a7: $3e $01
    ld [de], a                                    ; $17a9: $12
    ld de, $c0d4                                  ; $17aa: $11 $d4 $c0
    ld a, $01                                     ; $17ad: $3e $01
    ld [de], a                                    ; $17af: $12
    ld de, $c0d5                                  ; $17b0: $11 $d5 $c0
    ld a, $01                                     ; $17b3: $3e $01
    ld [de], a                                    ; $17b5: $12
    ld de, $c0d6                                  ; $17b6: $11 $d6 $c0
    ld a, $01                                     ; $17b9: $3e $01
    ld [de], a                                    ; $17bb: $12
    ld de, $c0d7                                  ; $17bc: $11 $d7 $c0
    ld a, $01                                     ; $17bf: $3e $01
    ld [de], a                                    ; $17c1: $12
    ld de, $c0d8                                  ; $17c2: $11 $d8 $c0
    ld a, $01                                     ; $17c5: $3e $01
    ld [de], a                                    ; $17c7: $12
    ld de, $c0d9                                  ; $17c8: $11 $d9 $c0
    ld a, $01                                     ; $17cb: $3e $01
    ld [de], a                                    ; $17cd: $12
    ld de, $c0da                                  ; $17ce: $11 $da $c0
    ld a, $01                                     ; $17d1: $3e $01
    ld [de], a                                    ; $17d3: $12
    ld de, $c0db                                  ; $17d4: $11 $db $c0
    ld a, $01                                     ; $17d7: $3e $01
    ld [de], a                                    ; $17d9: $12
    ld de, $c0dc                                  ; $17da: $11 $dc $c0
    ld a, $01                                     ; $17dd: $3e $01
    ld [de], a                                    ; $17df: $12
    ld de, $c0dd                                  ; $17e0: $11 $dd $c0
    ld a, $01                                     ; $17e3: $3e $01
    ld [de], a                                    ; $17e5: $12
    ld de, $c0de                                  ; $17e6: $11 $de $c0
    ld a, $08                                     ; $17e9: $3e $08
    ld [de], a                                    ; $17eb: $12
    ld de, $c0df                                  ; $17ec: $11 $df $c0
    ld a, $0a                                     ; $17ef: $3e $0a
    ld [de], a                                    ; $17f1: $12
    ld de, $c0e0                                  ; $17f2: $11 $e0 $c0
    ld a, $17                                     ; $17f5: $3e $17
    ld [de], a                                    ; $17f7: $12
    ld de, $c0e1                                  ; $17f8: $11 $e1 $c0
    ld a, $06                                     ; $17fb: $3e $06
    ld [de], a                                    ; $17fd: $12
    ld de, $c0e2                                  ; $17fe: $11 $e2 $c0
    ld a, $01                                     ; $1801: $3e $01
    ld [de], a                                    ; $1803: $12
    ld de, $c0e3                                  ; $1804: $11 $e3 $c0
    ld a, $0e                                     ; $1807: $3e $0e
    ld [de], a                                    ; $1809: $12
    ld de, $c0e4                                  ; $180a: $11 $e4 $c0
    ld a, $06                                     ; $180d: $3e $06
    ld [de], a                                    ; $180f: $12
    ld de, $c0e5                                  ; $1810: $11 $e5 $c0
    ld a, $01                                     ; $1813: $3e $01
    ld [de], a                                    ; $1815: $12
    ld de, $c0e6                                  ; $1816: $11 $e6 $c0
    ld a, $14                                     ; $1819: $3e $14
    ld [de], a                                    ; $181b: $12
    ld de, $c0e7                                  ; $181c: $11 $e7 $c0
    ld a, $10                                     ; $181f: $3e $10
    ld [de], a                                    ; $1821: $12
    ld de, $c0e8                                  ; $1822: $11 $e8 $c0
    ld a, $0e                                     ; $1825: $3e $0e
    ld [de], a                                    ; $1827: $12
    ld de, $c0e9                                  ; $1828: $11 $e9 $c0
    ld a, $06                                     ; $182b: $3e $06
    ld [de], a                                    ; $182d: $12
    ld de, $c0ea                                  ; $182e: $11 $ea $c0
    ld a, $15                                     ; $1831: $3e $15
    ld [de], a                                    ; $1833: $12
    ld de, $c0eb                                  ; $1834: $11 $eb $c0
    ld a, $09                                     ; $1837: $3e $09
    ld [de], a                                    ; $1839: $12
    ld de, $c0ec                                  ; $183a: $11 $ec $c0
    ld a, $0a                                     ; $183d: $3e $0a
    ld [de], a                                    ; $183f: $12
    ld de, $c0ed                                  ; $1840: $11 $ed $c0
    ld a, $0f                                     ; $1843: $3e $0f
    ld [de], a                                    ; $1845: $12
    ld de, $c0ee                                  ; $1846: $11 $ee $c0
    ld a, $08                                     ; $1849: $3e $08
    ld [de], a                                    ; $184b: $12
    ld de, $c0ef                                  ; $184c: $11 $ef $c0
    ld a, $1f                                     ; $184f: $3e $1f
    ld [de], a                                    ; $1851: $12
    ld de, $c0f0                                  ; $1852: $11 $f0 $c0
    ld a, $01                                     ; $1855: $3e $01
    ld [de], a                                    ; $1857: $12
    ld de, $c0f1                                  ; $1858: $11 $f1 $c0
    ld a, $01                                     ; $185b: $3e $01
    ld [de], a                                    ; $185d: $12
    ld de, $c0f2                                  ; $185e: $11 $f2 $c0
    ld a, $01                                     ; $1861: $3e $01
    ld [de], a                                    ; $1863: $12
    ld de, $c0f3                                  ; $1864: $11 $f3 $c0
    ld a, $01                                     ; $1867: $3e $01
    ld [de], a                                    ; $1869: $12
    ld de, $c0f4                                  ; $186a: $11 $f4 $c0
    ld a, $01                                     ; $186d: $3e $01
    ld [de], a                                    ; $186f: $12
    ld de, $c0f5                                  ; $1870: $11 $f5 $c0
    ld a, $01                                     ; $1873: $3e $01
    ld [de], a                                    ; $1875: $12
    ld de, $c0f6                                  ; $1876: $11 $f6 $c0
    ld a, $01                                     ; $1879: $3e $01
    ld [de], a                                    ; $187b: $12
    ld de, $c0f7                                  ; $187c: $11 $f7 $c0
    ld a, $01                                     ; $187f: $3e $01
    ld [de], a                                    ; $1881: $12
    ld de, $c0f8                                  ; $1882: $11 $f8 $c0
    ld a, $01                                     ; $1885: $3e $01
    ld [de], a                                    ; $1887: $12
    ld de, $c0f9                                  ; $1888: $11 $f9 $c0
    ld a, $01                                     ; $188b: $3e $01
    ld [de], a                                    ; $188d: $12
    ld de, $c0fa                                  ; $188e: $11 $fa $c0
    ld a, $01                                     ; $1891: $3e $01
    ld [de], a                                    ; $1893: $12
    ld de, $c0fb                                  ; $1894: $11 $fb $c0
    ld a, $01                                     ; $1897: $3e $01
    ld [de], a                                    ; $1899: $12
    ld de, $c0fc                                  ; $189a: $11 $fc $c0
    ld a, $01                                     ; $189d: $3e $01
    ld [de], a                                    ; $189f: $12
    ld de, $c0fd                                  ; $18a0: $11 $fd $c0
    ld a, $01                                     ; $18a3: $3e $01
    ld [de], a                                    ; $18a5: $12
    ld de, $c0fe                                  ; $18a6: $11 $fe $c0
    ld a, $01                                     ; $18a9: $3e $01
    ld [de], a                                    ; $18ab: $12
    ld de, $c0ff                                  ; $18ac: $11 $ff $c0
    ld a, $01                                     ; $18af: $3e $01
    ld [de], a                                    ; $18b1: $12
    ld de, $c100                                  ; $18b2: $11 $00 $c1
    ld a, $01                                     ; $18b5: $3e $01
    ld [de], a                                    ; $18b7: $12
    ld de, $c101                                  ; $18b8: $11 $01 $c1
    ld a, $01                                     ; $18bb: $3e $01
    ld [de], a                                    ; $18bd: $12
    ld de, $c102                                  ; $18be: $11 $02 $c1
    ld a, $01                                     ; $18c1: $3e $01
    ld [de], a                                    ; $18c3: $12
    ld de, $c103                                  ; $18c4: $11 $03 $c1
    ld a, $01                                     ; $18c7: $3e $01
    ld [de], a                                    ; $18c9: $12
    ld de, $c104                                  ; $18ca: $11 $04 $c1
    ld a, $01                                     ; $18cd: $3e $01
    ld [de], a                                    ; $18cf: $12
    ld de, $c105                                  ; $18d0: $11 $05 $c1
    ld a, $01                                     ; $18d3: $3e $01
    ld [de], a                                    ; $18d5: $12
    ld de, $c106                                  ; $18d6: $11 $06 $c1
    ld a, $01                                     ; $18d9: $3e $01
    ld [de], a                                    ; $18db: $12
    ld de, $c107                                  ; $18dc: $11 $07 $c1
    ld a, $01                                     ; $18df: $3e $01
    ld [de], a                                    ; $18e1: $12
    ld de, $c108                                  ; $18e2: $11 $08 $c1
    ld a, $01                                     ; $18e5: $3e $01
    ld [de], a                                    ; $18e7: $12
    ld de, $c109                                  ; $18e8: $11 $09 $c1
    ld a, $01                                     ; $18eb: $3e $01
    ld [de], a                                    ; $18ed: $12
    ld de, $c10a                                  ; $18ee: $11 $0a $c1
    ld a, $01                                     ; $18f1: $3e $01
    ld [de], a                                    ; $18f3: $12
    ld de, $c10b                                  ; $18f4: $11 $0b $c1
    ld a, $01                                     ; $18f7: $3e $01
    ld [de], a                                    ; $18f9: $12
    ld de, $c10c                                  ; $18fa: $11 $0c $c1
    ld a, $01                                     ; $18fd: $3e $01
    ld [de], a                                    ; $18ff: $12
    ld de, $c10d                                  ; $1900: $11 $0d $c1
    ld a, $01                                     ; $1903: $3e $01
    ld [de], a                                    ; $1905: $12
    ld de, $c10e                                  ; $1906: $11 $0e $c1
    ld a, $01                                     ; $1909: $3e $01
    ld [de], a                                    ; $190b: $12
    ld de, $c10f                                  ; $190c: $11 $0f $c1
    ld a, $01                                     ; $190f: $3e $01
    ld [de], a                                    ; $1911: $12
    ld de, $c110                                  ; $1912: $11 $10 $c1
    ld a, $01                                     ; $1915: $3e $01
    ld [de], a                                    ; $1917: $12
    ld de, $c111                                  ; $1918: $11 $11 $c1
    ld a, $01                                     ; $191b: $3e $01
    ld [de], a                                    ; $191d: $12
    ld de, $c112                                  ; $191e: $11 $12 $c1
    ld a, $01                                     ; $1921: $3e $01
    ld [de], a                                    ; $1923: $12
    ld de, $c113                                  ; $1924: $11 $13 $c1
    ld a, $01                                     ; $1927: $3e $01
    ld [de], a                                    ; $1929: $12
    ld de, $c114                                  ; $192a: $11 $14 $c1
    ld a, $01                                     ; $192d: $3e $01
    ld [de], a                                    ; $192f: $12
    ld de, $c115                                  ; $1930: $11 $15 $c1
    ld a, $01                                     ; $1933: $3e $01
    ld [de], a                                    ; $1935: $12
    ld de, $c116                                  ; $1936: $11 $16 $c1
    ld a, $01                                     ; $1939: $3e $01
    ld [de], a                                    ; $193b: $12
    ld de, $c117                                  ; $193c: $11 $17 $c1
    ld a, $01                                     ; $193f: $3e $01
    ld [de], a                                    ; $1941: $12
    ld de, $c118                                  ; $1942: $11 $18 $c1
    ld a, $1c                                     ; $1945: $3e $1c
    ld [de], a                                    ; $1947: $12
    ld de, $c119                                  ; $1948: $11 $19 $c1
    ld a, $1c                                     ; $194b: $3e $1c
    ld [de], a                                    ; $194d: $12
    ld de, $c11a                                  ; $194e: $11 $1a $c1
    ld a, $1c                                     ; $1951: $3e $1c
    ld [de], a                                    ; $1953: $12
    ld de, $c11b                                  ; $1954: $11 $1b $c1
    ld a, $1c                                     ; $1957: $3e $1c
    ld [de], a                                    ; $1959: $12
    ld de, $c11c                                  ; $195a: $11 $1c $c1
    ld a, $1c                                     ; $195d: $3e $1c
    ld [de], a                                    ; $195f: $12
    ld de, $c11d                                  ; $1960: $11 $1d $c1
    ld a, $1c                                     ; $1963: $3e $1c
    ld [de], a                                    ; $1965: $12
    ld de, $c11e                                  ; $1966: $11 $1e $c1
    ld a, $1c                                     ; $1969: $3e $1c
    ld [de], a                                    ; $196b: $12
    ld de, $c11f                                  ; $196c: $11 $1f $c1
    ld a, $1c                                     ; $196f: $3e $1c
    ld [de], a                                    ; $1971: $12
    ld de, $c120                                  ; $1972: $11 $20 $c1
    ld a, $1c                                     ; $1975: $3e $1c
    ld [de], a                                    ; $1977: $12
    ld de, $c121                                  ; $1978: $11 $21 $c1
    ld a, $1c                                     ; $197b: $3e $1c
    ld [de], a                                    ; $197d: $12
    ld de, $c122                                  ; $197e: $11 $22 $c1
    ld a, $1c                                     ; $1981: $3e $1c
    ld [de], a                                    ; $1983: $12
    ld de, $c123                                  ; $1984: $11 $23 $c1
    ld a, $1c                                     ; $1987: $3e $1c
    ld [de], a                                    ; $1989: $12
    ld de, $c124                                  ; $198a: $11 $24 $c1
    ld a, $1c                                     ; $198d: $3e $1c
    ld [de], a                                    ; $198f: $12
    ld de, $c125                                  ; $1990: $11 $25 $c1
    ld a, $1c                                     ; $1993: $3e $1c
    ld [de], a                                    ; $1995: $12
    ld de, $c126                                  ; $1996: $11 $26 $c1
    ld a, $1c                                     ; $1999: $3e $1c
    ld [de], a                                    ; $199b: $12
    ld de, $c127                                  ; $199c: $11 $27 $c1
    ld a, $1c                                     ; $199f: $3e $1c
    ld [de], a                                    ; $19a1: $12
    ld de, $c128                                  ; $19a2: $11 $28 $c1
    ld a, $1c                                     ; $19a5: $3e $1c
    ld [de], a                                    ; $19a7: $12
    ld de, $c129                                  ; $19a8: $11 $29 $c1
    ld a, $1c                                     ; $19ab: $3e $1c
    ld [de], a                                    ; $19ad: $12
    ld de, $c12a                                  ; $19ae: $11 $2a $c1
    ld a, $1c                                     ; $19b1: $3e $1c
    ld [de], a                                    ; $19b3: $12
    ld de, $c12b                                  ; $19b4: $11 $2b $c1
    ld a, $01                                     ; $19b7: $3e $01
    ld [de], a                                    ; $19b9: $12
    ld de, $c12c                                  ; $19ba: $11 $2c $c1
    ld a, $01                                     ; $19bd: $3e $01
    ld [de], a                                    ; $19bf: $12
    ld de, $c12d                                  ; $19c0: $11 $2d $c1
    ld a, $01                                     ; $19c3: $3e $01
    ld [de], a                                    ; $19c5: $12
    ld de, $c12e                                  ; $19c6: $11 $2e $c1
    ld a, $01                                     ; $19c9: $3e $01
    ld [de], a                                    ; $19cb: $12
    ld de, $c12f                                  ; $19cc: $11 $2f $c1
    ld a, $01                                     ; $19cf: $3e $01
    ld [de], a                                    ; $19d1: $12
    ld de, $c130                                  ; $19d2: $11 $30 $c1
    ld a, $01                                     ; $19d5: $3e $01
    ld [de], a                                    ; $19d7: $12
    ld de, $c131                                  ; $19d8: $11 $31 $c1
    ld a, $01                                     ; $19db: $3e $01
    ld [de], a                                    ; $19dd: $12
    ld de, $c132                                  ; $19de: $11 $32 $c1
    ld a, $01                                     ; $19e1: $3e $01
    ld [de], a                                    ; $19e3: $12
    ld de, $c133                                  ; $19e4: $11 $33 $c1
    ld a, $01                                     ; $19e7: $3e $01
    ld [de], a                                    ; $19e9: $12
    ld de, $c134                                  ; $19ea: $11 $34 $c1
    ld a, $01                                     ; $19ed: $3e $01
    ld [de], a                                    ; $19ef: $12
    ld de, $c135                                  ; $19f0: $11 $35 $c1
    ld a, $01                                     ; $19f3: $3e $01
    ld [de], a                                    ; $19f5: $12
    ld de, $c136                                  ; $19f6: $11 $36 $c1
    ld a, $01                                     ; $19f9: $3e $01
    ld [de], a                                    ; $19fb: $12
    ld de, $c137                                  ; $19fc: $11 $37 $c1
    ld a, $01                                     ; $19ff: $3e $01
    ld [de], a                                    ; $1a01: $12
    ld de, $c138                                  ; $1a02: $11 $38 $c1
    ld a, $01                                     ; $1a05: $3e $01
    ld [de], a                                    ; $1a07: $12
    ld de, $c139                                  ; $1a08: $11 $39 $c1
    ld a, $01                                     ; $1a0b: $3e $01
    ld [de], a                                    ; $1a0d: $12
    ld de, $c13a                                  ; $1a0e: $11 $3a $c1
    ld a, $01                                     ; $1a11: $3e $01
    ld [de], a                                    ; $1a13: $12
    ld de, $c13b                                  ; $1a14: $11 $3b $c1
    ld a, $01                                     ; $1a17: $3e $01
    ld [de], a                                    ; $1a19: $12
    ld de, $c13c                                  ; $1a1a: $11 $3c $c1
    ld a, $01                                     ; $1a1d: $3e $01
    ld [de], a                                    ; $1a1f: $12
    ld de, $c13d                                  ; $1a20: $11 $3d $c1
    ld a, $01                                     ; $1a23: $3e $01
    ld [de], a                                    ; $1a25: $12
    ld de, $c13e                                  ; $1a26: $11 $3e $c1
    ld a, $01                                     ; $1a29: $3e $01
    ld [de], a                                    ; $1a2b: $12
    ld de, $c13f                                  ; $1a2c: $11 $3f $c1
    ld a, $01                                     ; $1a2f: $3e $01
    ld [de], a                                    ; $1a31: $12
    ld de, $c140                                  ; $1a32: $11 $40 $c1
    ld a, $02                                     ; $1a35: $3e $02
    ld [de], a                                    ; $1a37: $12
    ld de, $c141                                  ; $1a38: $11 $41 $c1
    ld a, $01                                     ; $1a3b: $3e $01
    ld [de], a                                    ; $1a3d: $12
    ld de, $c142                                  ; $1a3e: $11 $42 $c1
    ld a, $03                                     ; $1a41: $3e $03
    ld [de], a                                    ; $1a43: $12
    ld de, $c143                                  ; $1a44: $11 $43 $c1
    ld a, $01                                     ; $1a47: $3e $01
    ld [de], a                                    ; $1a49: $12
    ld de, $c144                                  ; $1a4a: $11 $44 $c1
    ld a, $04                                     ; $1a4d: $3e $04
    ld [de], a                                    ; $1a4f: $12
    ld de, $c145                                  ; $1a50: $11 $45 $c1
    ld a, $01                                     ; $1a53: $3e $01
    ld [de], a                                    ; $1a55: $12
    ld de, $c146                                  ; $1a56: $11 $46 $c1
    ld a, $05                                     ; $1a59: $3e $05
    ld [de], a                                    ; $1a5b: $12
    ld de, $c147                                  ; $1a5c: $11 $47 $c1
    ld a, $01                                     ; $1a5f: $3e $01
    ld [de], a                                    ; $1a61: $12
    ld de, $c148                                  ; $1a62: $11 $48 $c1
    ld a, $06                                     ; $1a65: $3e $06
    ld [de], a                                    ; $1a67: $12
    ld de, $c149                                  ; $1a68: $11 $49 $c1
    ld a, $01                                     ; $1a6b: $3e $01
    ld [de], a                                    ; $1a6d: $12
    ld de, $c14a                                  ; $1a6e: $11 $4a $c1
    ld a, $07                                     ; $1a71: $3e $07
    ld [de], a                                    ; $1a73: $12
    ld de, $c14b                                  ; $1a74: $11 $4b $c1
    ld a, $01                                     ; $1a77: $3e $01
    ld [de], a                                    ; $1a79: $12
    ld de, $c14c                                  ; $1a7a: $11 $4c $c1
    ld a, $08                                     ; $1a7d: $3e $08
    ld [de], a                                    ; $1a7f: $12
    ld de, $c14d                                  ; $1a80: $11 $4d $c1
    ld a, $01                                     ; $1a83: $3e $01
    ld [de], a                                    ; $1a85: $12
    ld de, $c14e                                  ; $1a86: $11 $4e $c1
    ld a, $09                                     ; $1a89: $3e $09
    ld [de], a                                    ; $1a8b: $12
    ld de, $c14f                                  ; $1a8c: $11 $4f $c1
    ld a, $01                                     ; $1a8f: $3e $01
    ld [de], a                                    ; $1a91: $12
    ld de, $c150                                  ; $1a92: $11 $50 $c1
    ld a, $0a                                     ; $1a95: $3e $0a
    ld [de], a                                    ; $1a97: $12
    ld de, $c151                                  ; $1a98: $11 $51 $c1
    ld a, $01                                     ; $1a9b: $3e $01
    ld [de], a                                    ; $1a9d: $12
    ld de, $c152                                  ; $1a9e: $11 $52 $c1
    ld a, $0b                                     ; $1aa1: $3e $0b
    ld [de], a                                    ; $1aa3: $12
    ld de, $c153                                  ; $1aa4: $11 $53 $c1
    ld a, $01                                     ; $1aa7: $3e $01
    ld [de], a                                    ; $1aa9: $12
    ld de, $c154                                  ; $1aaa: $11 $54 $c1
    ld a, $01                                     ; $1aad: $3e $01
    ld [de], a                                    ; $1aaf: $12
    ld de, $c155                                  ; $1ab0: $11 $55 $c1
    ld a, $01                                     ; $1ab3: $3e $01
    ld [de], a                                    ; $1ab5: $12
    ld de, $c156                                  ; $1ab6: $11 $56 $c1
    ld a, $01                                     ; $1ab9: $3e $01
    ld [de], a                                    ; $1abb: $12
    ld de, $c157                                  ; $1abc: $11 $57 $c1
    ld a, $01                                     ; $1abf: $3e $01
    ld [de], a                                    ; $1ac1: $12
    ld de, $c158                                  ; $1ac2: $11 $58 $c1
    ld a, $01                                     ; $1ac5: $3e $01
    ld [de], a                                    ; $1ac7: $12
    ld de, $c159                                  ; $1ac8: $11 $59 $c1
    ld a, $01                                     ; $1acb: $3e $01
    ld [de], a                                    ; $1acd: $12
    ld de, $c15a                                  ; $1ace: $11 $5a $c1
    ld a, $01                                     ; $1ad1: $3e $01
    ld [de], a                                    ; $1ad3: $12
    ld de, $c15b                                  ; $1ad4: $11 $5b $c1
    ld a, $01                                     ; $1ad7: $3e $01
    ld [de], a                                    ; $1ad9: $12
    ld de, $c15c                                  ; $1ada: $11 $5c $c1
    ld a, $01                                     ; $1add: $3e $01
    ld [de], a                                    ; $1adf: $12
    ld de, $c15d                                  ; $1ae0: $11 $5d $c1
    ld a, $01                                     ; $1ae3: $3e $01
    ld [de], a                                    ; $1ae5: $12
    ld de, $c15e                                  ; $1ae6: $11 $5e $c1
    ld a, $01                                     ; $1ae9: $3e $01
    ld [de], a                                    ; $1aeb: $12
    ld de, $c15f                                  ; $1aec: $11 $5f $c1
    ld a, $01                                     ; $1aef: $3e $01
    ld [de], a                                    ; $1af1: $12
    ld de, $c160                                  ; $1af2: $11 $60 $c1
    ld a, $01                                     ; $1af5: $3e $01
    ld [de], a                                    ; $1af7: $12
    ld de, $c161                                  ; $1af8: $11 $61 $c1
    ld a, $01                                     ; $1afb: $3e $01
    ld [de], a                                    ; $1afd: $12
    ld de, $c162                                  ; $1afe: $11 $62 $c1
    ld a, $01                                     ; $1b01: $3e $01
    ld [de], a                                    ; $1b03: $12
    ld de, $c163                                  ; $1b04: $11 $63 $c1
    ld a, $01                                     ; $1b07: $3e $01
    ld [de], a                                    ; $1b09: $12
    ld de, $c164                                  ; $1b0a: $11 $64 $c1
    ld a, $01                                     ; $1b0d: $3e $01
    ld [de], a                                    ; $1b0f: $12
    ld de, $c165                                  ; $1b10: $11 $65 $c1
    ld a, $01                                     ; $1b13: $3e $01
    ld [de], a                                    ; $1b15: $12
    ld de, $c166                                  ; $1b16: $11 $66 $c1
    ld a, $01                                     ; $1b19: $3e $01
    ld [de], a                                    ; $1b1b: $12
    ld de, $c167                                  ; $1b1c: $11 $67 $c1
    ld a, $01                                     ; $1b1f: $3e $01
    ld [de], a                                    ; $1b21: $12
    ld de, $c168                                  ; $1b22: $11 $68 $c1
    ld a, $0c                                     ; $1b25: $3e $0c
    ld [de], a                                    ; $1b27: $12
    ld de, $c169                                  ; $1b28: $11 $69 $c1
    ld a, $01                                     ; $1b2b: $3e $01
    ld [de], a                                    ; $1b2d: $12
    ld de, $c16a                                  ; $1b2e: $11 $6a $c1
    ld a, $0d                                     ; $1b31: $3e $0d
    ld [de], a                                    ; $1b33: $12
    ld de, $c16b                                  ; $1b34: $11 $6b $c1
    ld a, $01                                     ; $1b37: $3e $01
    ld [de], a                                    ; $1b39: $12
    ld de, $c16c                                  ; $1b3a: $11 $6c $c1
    ld a, $0e                                     ; $1b3d: $3e $0e
    ld [de], a                                    ; $1b3f: $12
    ld de, $c16d                                  ; $1b40: $11 $6d $c1
    ld a, $01                                     ; $1b43: $3e $01
    ld [de], a                                    ; $1b45: $12
    ld de, $c16e                                  ; $1b46: $11 $6e $c1
    ld a, $0f                                     ; $1b49: $3e $0f
    ld [de], a                                    ; $1b4b: $12
    ld de, $c16f                                  ; $1b4c: $11 $6f $c1
    ld a, $01                                     ; $1b4f: $3e $01
    ld [de], a                                    ; $1b51: $12
    ld de, $c170                                  ; $1b52: $11 $70 $c1
    ld a, $10                                     ; $1b55: $3e $10
    ld [de], a                                    ; $1b57: $12
    ld de, $c171                                  ; $1b58: $11 $71 $c1
    ld a, $01                                     ; $1b5b: $3e $01
    ld [de], a                                    ; $1b5d: $12
    ld de, $c172                                  ; $1b5e: $11 $72 $c1
    ld a, $11                                     ; $1b61: $3e $11
    ld [de], a                                    ; $1b63: $12
    ld de, $c173                                  ; $1b64: $11 $73 $c1
    ld a, $01                                     ; $1b67: $3e $01
    ld [de], a                                    ; $1b69: $12
    ld de, $c174                                  ; $1b6a: $11 $74 $c1
    ld a, $12                                     ; $1b6d: $3e $12
    ld [de], a                                    ; $1b6f: $12
    ld de, $c175                                  ; $1b70: $11 $75 $c1
    ld a, $01                                     ; $1b73: $3e $01
    ld [de], a                                    ; $1b75: $12
    ld de, $c176                                  ; $1b76: $11 $76 $c1
    ld a, $13                                     ; $1b79: $3e $13
    ld [de], a                                    ; $1b7b: $12
    ld de, $c177                                  ; $1b7c: $11 $77 $c1
    ld a, $01                                     ; $1b7f: $3e $01
    ld [de], a                                    ; $1b81: $12
    ld de, $c178                                  ; $1b82: $11 $78 $c1
    ld a, $14                                     ; $1b85: $3e $14
    ld [de], a                                    ; $1b87: $12
    ld de, $c179                                  ; $1b88: $11 $79 $c1
    ld a, $01                                     ; $1b8b: $3e $01
    ld [de], a                                    ; $1b8d: $12
    ld de, $c17a                                  ; $1b8e: $11 $7a $c1
    ld a, $15                                     ; $1b91: $3e $15
    ld [de], a                                    ; $1b93: $12
    ld de, $c17b                                  ; $1b94: $11 $7b $c1
    ld a, $01                                     ; $1b97: $3e $01
    ld [de], a                                    ; $1b99: $12
    ld de, $c17c                                  ; $1b9a: $11 $7c $c1
    ld a, $01                                     ; $1b9d: $3e $01
    ld [de], a                                    ; $1b9f: $12
    ld de, $c17d                                  ; $1ba0: $11 $7d $c1
    ld a, $01                                     ; $1ba3: $3e $01
    ld [de], a                                    ; $1ba5: $12
    ld de, $c17e                                  ; $1ba6: $11 $7e $c1
    ld a, $01                                     ; $1ba9: $3e $01
    ld [de], a                                    ; $1bab: $12
    ld de, $c17f                                  ; $1bac: $11 $7f $c1
    ld a, $01                                     ; $1baf: $3e $01
    ld [de], a                                    ; $1bb1: $12
    ld de, $c180                                  ; $1bb2: $11 $80 $c1
    ld a, $01                                     ; $1bb5: $3e $01
    ld [de], a                                    ; $1bb7: $12
    ld de, $c181                                  ; $1bb8: $11 $81 $c1
    ld a, $01                                     ; $1bbb: $3e $01
    ld [de], a                                    ; $1bbd: $12
    ld de, $c182                                  ; $1bbe: $11 $82 $c1
    ld a, $01                                     ; $1bc1: $3e $01
    ld [de], a                                    ; $1bc3: $12
    ld de, $c183                                  ; $1bc4: $11 $83 $c1
    ld a, $01                                     ; $1bc7: $3e $01
    ld [de], a                                    ; $1bc9: $12
    ld de, $c184                                  ; $1bca: $11 $84 $c1
    ld a, $01                                     ; $1bcd: $3e $01
    ld [de], a                                    ; $1bcf: $12
    ld de, $c185                                  ; $1bd0: $11 $85 $c1
    ld a, $01                                     ; $1bd3: $3e $01
    ld [de], a                                    ; $1bd5: $12
    ld de, $c186                                  ; $1bd6: $11 $86 $c1
    ld a, $01                                     ; $1bd9: $3e $01
    ld [de], a                                    ; $1bdb: $12
    ld de, $c187                                  ; $1bdc: $11 $87 $c1
    ld a, $01                                     ; $1bdf: $3e $01
    ld [de], a                                    ; $1be1: $12
    ld de, $c188                                  ; $1be2: $11 $88 $c1
    ld a, $01                                     ; $1be5: $3e $01
    ld [de], a                                    ; $1be7: $12
    ld de, $c189                                  ; $1be8: $11 $89 $c1
    ld a, $01                                     ; $1beb: $3e $01
    ld [de], a                                    ; $1bed: $12
    ld de, $c18a                                  ; $1bee: $11 $8a $c1
    ld a, $01                                     ; $1bf1: $3e $01
    ld [de], a                                    ; $1bf3: $12
    ld de, $c18b                                  ; $1bf4: $11 $8b $c1
    ld a, $01                                     ; $1bf7: $3e $01
    ld [de], a                                    ; $1bf9: $12
    ld de, $c18c                                  ; $1bfa: $11 $8c $c1
    ld a, $01                                     ; $1bfd: $3e $01
    ld [de], a                                    ; $1bff: $12
    ld de, $c18d                                  ; $1c00: $11 $8d $c1
    ld a, $01                                     ; $1c03: $3e $01
    ld [de], a                                    ; $1c05: $12
    ld de, $c18e                                  ; $1c06: $11 $8e $c1
    ld a, $01                                     ; $1c09: $3e $01
    ld [de], a                                    ; $1c0b: $12
    ld de, $c18f                                  ; $1c0c: $11 $8f $c1
    ld a, $01                                     ; $1c0f: $3e $01
    ld [de], a                                    ; $1c11: $12
    ld de, $c190                                  ; $1c12: $11 $90 $c1
    ld a, $16                                     ; $1c15: $3e $16
    ld [de], a                                    ; $1c17: $12
    ld de, $c191                                  ; $1c18: $11 $91 $c1
    ld a, $01                                     ; $1c1b: $3e $01
    ld [de], a                                    ; $1c1d: $12
    ld de, $c192                                  ; $1c1e: $11 $92 $c1
    ld a, $17                                     ; $1c21: $3e $17
    ld [de], a                                    ; $1c23: $12
    ld de, $c193                                  ; $1c24: $11 $93 $c1
    ld a, $01                                     ; $1c27: $3e $01
    ld [de], a                                    ; $1c29: $12
    ld de, $c194                                  ; $1c2a: $11 $94 $c1
    ld a, $18                                     ; $1c2d: $3e $18
    ld [de], a                                    ; $1c2f: $12
    ld de, $c195                                  ; $1c30: $11 $95 $c1
    ld a, $01                                     ; $1c33: $3e $01
    ld [de], a                                    ; $1c35: $12
    ld de, $c196                                  ; $1c36: $11 $96 $c1
    ld a, $19                                     ; $1c39: $3e $19
    ld [de], a                                    ; $1c3b: $12
    ld de, $c197                                  ; $1c3c: $11 $97 $c1
    ld a, $01                                     ; $1c3f: $3e $01
    ld [de], a                                    ; $1c41: $12
    ld de, $c198                                  ; $1c42: $11 $98 $c1
    ld a, $1a                                     ; $1c45: $3e $1a
    ld [de], a                                    ; $1c47: $12
    ld de, $c199                                  ; $1c48: $11 $99 $c1
    ld a, $01                                     ; $1c4b: $3e $01
    ld [de], a                                    ; $1c4d: $12
    ld de, $c19a                                  ; $1c4e: $11 $9a $c1
    ld a, $1b                                     ; $1c51: $3e $1b
    ld [de], a                                    ; $1c53: $12
    ld de, $c19b                                  ; $1c54: $11 $9b $c1
    ld a, $01                                     ; $1c57: $3e $01
    ld [de], a                                    ; $1c59: $12
    ld de, $c19c                                  ; $1c5a: $11 $9c $c1
    ld a, $1c                                     ; $1c5d: $3e $1c
    ld [de], a                                    ; $1c5f: $12
    ld de, $c19d                                  ; $1c60: $11 $9d $c1
    ld a, $01                                     ; $1c63: $3e $01
    ld [de], a                                    ; $1c65: $12
    ld de, $c19e                                  ; $1c66: $11 $9e $c1
    ld a, $1d                                     ; $1c69: $3e $1d
    ld [de], a                                    ; $1c6b: $12
    ld de, $c19f                                  ; $1c6c: $11 $9f $c1
    ld a, $01                                     ; $1c6f: $3e $01
    ld [de], a                                    ; $1c71: $12
    ld de, $c1a0                                  ; $1c72: $11 $a0 $c1
    ld a, $1e                                     ; $1c75: $3e $1e
    ld [de], a                                    ; $1c77: $12
    ld de, $c1a1                                  ; $1c78: $11 $a1 $c1
    ld a, $01                                     ; $1c7b: $3e $01
    ld [de], a                                    ; $1c7d: $12
    ld de, $c1a2                                  ; $1c7e: $11 $a2 $c1
    ld a, $1f                                     ; $1c81: $3e $1f
    ld [de], a                                    ; $1c83: $12
    ld de, $c1a3                                  ; $1c84: $11 $a3 $c1
    ld a, $01                                     ; $1c87: $3e $01
    ld [de], a                                    ; $1c89: $12
    ld de, $c1a4                                  ; $1c8a: $11 $a4 $c1
    ld a, $01                                     ; $1c8d: $3e $01
    ld [de], a                                    ; $1c8f: $12
    ld de, $c1a5                                  ; $1c90: $11 $a5 $c1
    ld a, $01                                     ; $1c93: $3e $01
    ld [de], a                                    ; $1c95: $12
    ld de, $c1a6                                  ; $1c96: $11 $a6 $c1
    ld a, $01                                     ; $1c99: $3e $01
    ld [de], a                                    ; $1c9b: $12
    ld de, $c1a7                                  ; $1c9c: $11 $a7 $c1
    ld a, $01                                     ; $1c9f: $3e $01
    ld [de], a                                    ; $1ca1: $12
    ld de, $c1a8                                  ; $1ca2: $11 $a8 $c1
    ld a, $01                                     ; $1ca5: $3e $01
    ld [de], a                                    ; $1ca7: $12
    ld de, $c1a9                                  ; $1ca8: $11 $a9 $c1
    ld a, $01                                     ; $1cab: $3e $01
    ld [de], a                                    ; $1cad: $12
    ld de, $c1aa                                  ; $1cae: $11 $aa $c1
    ld a, $01                                     ; $1cb1: $3e $01
    ld [de], a                                    ; $1cb3: $12
    ld de, $c1ab                                  ; $1cb4: $11 $ab $c1
    ld a, $01                                     ; $1cb7: $3e $01
    ld [de], a                                    ; $1cb9: $12
    ld de, $c1ac                                  ; $1cba: $11 $ac $c1
    ld a, $01                                     ; $1cbd: $3e $01
    ld [de], a                                    ; $1cbf: $12
    ld de, $c1ad                                  ; $1cc0: $11 $ad $c1
    ld a, $01                                     ; $1cc3: $3e $01
    ld [de], a                                    ; $1cc5: $12
    ld de, $c1ae                                  ; $1cc6: $11 $ae $c1
    ld a, $01                                     ; $1cc9: $3e $01
    ld [de], a                                    ; $1ccb: $12
    ld de, $c1af                                  ; $1ccc: $11 $af $c1
    ld a, $01                                     ; $1ccf: $3e $01
    ld [de], a                                    ; $1cd1: $12
    ld de, $c1b0                                  ; $1cd2: $11 $b0 $c1
    ld a, $01                                     ; $1cd5: $3e $01
    ld [de], a                                    ; $1cd7: $12
    ld de, $c1b1                                  ; $1cd8: $11 $b1 $c1
    ld a, $01                                     ; $1cdb: $3e $01
    ld [de], a                                    ; $1cdd: $12
    ld de, $c1b2                                  ; $1cde: $11 $b2 $c1
    ld a, $01                                     ; $1ce1: $3e $01
    ld [de], a                                    ; $1ce3: $12
    ld de, $c1b3                                  ; $1ce4: $11 $b3 $c1
    ld a, $01                                     ; $1ce7: $3e $01
    ld [de], a                                    ; $1ce9: $12
    ld de, $c1b4                                  ; $1cea: $11 $b4 $c1
    ld a, $01                                     ; $1ced: $3e $01
    ld [de], a                                    ; $1cef: $12
    ld de, $c1b5                                  ; $1cf0: $11 $b5 $c1
    ld a, $01                                     ; $1cf3: $3e $01
    ld [de], a                                    ; $1cf5: $12
    ld de, $c1b6                                  ; $1cf6: $11 $b6 $c1
    ld a, $01                                     ; $1cf9: $3e $01
    ld [de], a                                    ; $1cfb: $12
    ld de, $c1b7                                  ; $1cfc: $11 $b7 $c1
    ld a, $01                                     ; $1cff: $3e $01
    ld [de], a                                    ; $1d01: $12
    ld de, $c1b8                                  ; $1d02: $11 $b8 $c1
    ld a, $20                                     ; $1d05: $3e $20
    ld [de], a                                    ; $1d07: $12
    ld de, $c1b9                                  ; $1d08: $11 $b9 $c1
    ld a, $01                                     ; $1d0b: $3e $01
    ld [de], a                                    ; $1d0d: $12
    ld de, $c1ba                                  ; $1d0e: $11 $ba $c1
    ld a, $21                                     ; $1d11: $3e $21
    ld [de], a                                    ; $1d13: $12
    ld de, $c1bb                                  ; $1d14: $11 $bb $c1
    ld a, $01                                     ; $1d17: $3e $01
    ld [de], a                                    ; $1d19: $12
    ld de, $c1bc                                  ; $1d1a: $11 $bc $c1
    ld a, $22                                     ; $1d1d: $3e $22
    ld [de], a                                    ; $1d1f: $12
    ld de, $c1bd                                  ; $1d20: $11 $bd $c1
    ld a, $01                                     ; $1d23: $3e $01
    ld [de], a                                    ; $1d25: $12
    ld de, $c1be                                  ; $1d26: $11 $be $c1
    ld a, $23                                     ; $1d29: $3e $23
    ld [de], a                                    ; $1d2b: $12
    ld de, $c1bf                                  ; $1d2c: $11 $bf $c1
    ld a, $01                                     ; $1d2f: $3e $01
    ld [de], a                                    ; $1d31: $12
    ld de, $c1c0                                  ; $1d32: $11 $c0 $c1
    ld a, $24                                     ; $1d35: $3e $24
    ld [de], a                                    ; $1d37: $12
    ld de, $c1c1                                  ; $1d38: $11 $c1 $c1
    ld a, $01                                     ; $1d3b: $3e $01
    ld [de], a                                    ; $1d3d: $12
    ld de, $c1c2                                  ; $1d3e: $11 $c2 $c1
    ld a, $25                                     ; $1d41: $3e $25
    ld [de], a                                    ; $1d43: $12
    ld de, $c1c3                                  ; $1d44: $11 $c3 $c1
    ld a, $01                                     ; $1d47: $3e $01
    ld [de], a                                    ; $1d49: $12
    ld de, $c1c4                                  ; $1d4a: $11 $c4 $c1
    ld a, $26                                     ; $1d4d: $3e $26
    ld [de], a                                    ; $1d4f: $12
    ld de, $c1c5                                  ; $1d50: $11 $c5 $c1
    ld a, $01                                     ; $1d53: $3e $01
    ld [de], a                                    ; $1d55: $12
    ld de, $c1c6                                  ; $1d56: $11 $c6 $c1
    ld a, $27                                     ; $1d59: $3e $27
    ld [de], a                                    ; $1d5b: $12
    ld de, $c1c7                                  ; $1d5c: $11 $c7 $c1
    ld a, $01                                     ; $1d5f: $3e $01
    ld [de], a                                    ; $1d61: $12
    ld de, $c1c8                                  ; $1d62: $11 $c8 $c1
    ld a, $28                                     ; $1d65: $3e $28
    ld [de], a                                    ; $1d67: $12
    ld de, $c1c9                                  ; $1d68: $11 $c9 $c1
    ld a, $01                                     ; $1d6b: $3e $01
    ld [de], a                                    ; $1d6d: $12
    ld de, $c1ca                                  ; $1d6e: $11 $ca $c1
    ld a, $29                                     ; $1d71: $3e $29
    ld [de], a                                    ; $1d73: $12
    ld de, $c1cb                                  ; $1d74: $11 $cb $c1
    ld a, $01                                     ; $1d77: $3e $01
    ld [de], a                                    ; $1d79: $12
    ld de, $c1cc                                  ; $1d7a: $11 $cc $c1
    ld a, $01                                     ; $1d7d: $3e $01
    ld [de], a                                    ; $1d7f: $12
    ld de, $c1cd                                  ; $1d80: $11 $cd $c1
    ld a, $01                                     ; $1d83: $3e $01
    ld [de], a                                    ; $1d85: $12
    ld de, $c1ce                                  ; $1d86: $11 $ce $c1
    ld a, $01                                     ; $1d89: $3e $01
    ld [de], a                                    ; $1d8b: $12
    ld de, $c1cf                                  ; $1d8c: $11 $cf $c1
    ld a, $01                                     ; $1d8f: $3e $01
    ld [de], a                                    ; $1d91: $12
    ld de, $c1d0                                  ; $1d92: $11 $d0 $c1
    ld a, $01                                     ; $1d95: $3e $01
    ld [de], a                                    ; $1d97: $12
    ld de, $c1d1                                  ; $1d98: $11 $d1 $c1
    ld a, $01                                     ; $1d9b: $3e $01
    ld [de], a                                    ; $1d9d: $12
    ld de, $c1d2                                  ; $1d9e: $11 $d2 $c1
    ld a, $01                                     ; $1da1: $3e $01
    ld [de], a                                    ; $1da3: $12
    ld de, $c1d3                                  ; $1da4: $11 $d3 $c1
    ld a, $01                                     ; $1da7: $3e $01
    ld [de], a                                    ; $1da9: $12
    ld de, $c1d4                                  ; $1daa: $11 $d4 $c1
    ld a, $01                                     ; $1dad: $3e $01
    ld [de], a                                    ; $1daf: $12
    ld de, $c1d5                                  ; $1db0: $11 $d5 $c1
    ld a, $01                                     ; $1db3: $3e $01
    ld [de], a                                    ; $1db5: $12
    ld de, $c1d6                                  ; $1db6: $11 $d6 $c1
    ld a, $01                                     ; $1db9: $3e $01
    ld [de], a                                    ; $1dbb: $12
    ld de, $c1d7                                  ; $1dbc: $11 $d7 $c1
    ld a, $01                                     ; $1dbf: $3e $01
    ld [de], a                                    ; $1dc1: $12
    ld de, $c1d8                                  ; $1dc2: $11 $d8 $c1
    ld a, $01                                     ; $1dc5: $3e $01
    ld [de], a                                    ; $1dc7: $12
    ld de, $c1d9                                  ; $1dc8: $11 $d9 $c1
    ld a, $01                                     ; $1dcb: $3e $01
    ld [de], a                                    ; $1dcd: $12
    ld de, $c1da                                  ; $1dce: $11 $da $c1
    ld a, $01                                     ; $1dd1: $3e $01
    ld [de], a                                    ; $1dd3: $12
    ld de, $c1db                                  ; $1dd4: $11 $db $c1
    ld a, $01                                     ; $1dd7: $3e $01
    ld [de], a                                    ; $1dd9: $12
    ld de, $c1dc                                  ; $1dda: $11 $dc $c1
    ld a, $01                                     ; $1ddd: $3e $01
    ld [de], a                                    ; $1ddf: $12
    ld de, $c1dd                                  ; $1de0: $11 $dd $c1
    ld a, $01                                     ; $1de3: $3e $01
    ld [de], a                                    ; $1de5: $12
    ld de, $c1de                                  ; $1de6: $11 $de $c1
    ld a, $01                                     ; $1de9: $3e $01
    ld [de], a                                    ; $1deb: $12
    ld de, $c1df                                  ; $1dec: $11 $df $c1
    ld a, $01                                     ; $1def: $3e $01
    ld [de], a                                    ; $1df1: $12
    ld de, $c1e0                                  ; $1df2: $11 $e0 $c1
    ld a, $01                                     ; $1df5: $3e $01
    ld [de], a                                    ; $1df7: $12
    ld de, $c1e1                                  ; $1df8: $11 $e1 $c1
    ld a, $01                                     ; $1dfb: $3e $01
    ld [de], a                                    ; $1dfd: $12
    ld de, $c1e2                                  ; $1dfe: $11 $e2 $c1
    ld a, $01                                     ; $1e01: $3e $01
    ld [de], a                                    ; $1e03: $12
    ld de, $c1e3                                  ; $1e04: $11 $e3 $c1
    ld a, $01                                     ; $1e07: $3e $01
    ld [de], a                                    ; $1e09: $12
    ld de, $c1e4                                  ; $1e0a: $11 $e4 $c1
    ld a, $01                                     ; $1e0d: $3e $01
    ld [de], a                                    ; $1e0f: $12
    ld de, $c1e5                                  ; $1e10: $11 $e5 $c1
    ld a, $01                                     ; $1e13: $3e $01
    ld [de], a                                    ; $1e15: $12
    ld de, $c1e6                                  ; $1e16: $11 $e6 $c1
    ld a, $01                                     ; $1e19: $3e $01
    ld [de], a                                    ; $1e1b: $12
    ld de, $c1e7                                  ; $1e1c: $11 $e7 $c1
    ld a, $01                                     ; $1e1f: $3e $01
    ld [de], a                                    ; $1e21: $12
    ld de, $c1e8                                  ; $1e22: $11 $e8 $c1
    ld a, $01                                     ; $1e25: $3e $01
    ld [de], a                                    ; $1e27: $12
    ld de, $c1e9                                  ; $1e28: $11 $e9 $c1
    ld a, $01                                     ; $1e2b: $3e $01
    ld [de], a                                    ; $1e2d: $12
    ld de, $c1ea                                  ; $1e2e: $11 $ea $c1
    ld a, $01                                     ; $1e31: $3e $01
    ld [de], a                                    ; $1e33: $12
    ld de, $c1eb                                  ; $1e34: $11 $eb $c1
    ld a, $01                                     ; $1e37: $3e $01
    ld [de], a                                    ; $1e39: $12
    ld de, $c1ec                                  ; $1e3a: $11 $ec $c1
    ld a, $01                                     ; $1e3d: $3e $01
    ld [de], a                                    ; $1e3f: $12
    ld de, $c1ed                                  ; $1e40: $11 $ed $c1
    ld a, $01                                     ; $1e43: $3e $01
    ld [de], a                                    ; $1e45: $12
    ld de, $c1ee                                  ; $1e46: $11 $ee $c1
    ld a, $01                                     ; $1e49: $3e $01
    ld [de], a                                    ; $1e4b: $12
    ld de, $c1ef                                  ; $1e4c: $11 $ef $c1
    ld a, $01                                     ; $1e4f: $3e $01
    ld [de], a                                    ; $1e51: $12
    ld de, $c1f0                                  ; $1e52: $11 $f0 $c1
    ld a, $2a                                     ; $1e55: $3e $2a
    ld [de], a                                    ; $1e57: $12
    ld de, $c1f1                                  ; $1e58: $11 $f1 $c1
    ld a, $01                                     ; $1e5b: $3e $01
    ld [de], a                                    ; $1e5d: $12
    ld de, $c1f2                                  ; $1e5e: $11 $f2 $c1
    ld a, $2b                                     ; $1e61: $3e $2b
    ld [de], a                                    ; $1e63: $12
    ld de, $c1f3                                  ; $1e64: $11 $f3 $c1
    ld a, $01                                     ; $1e67: $3e $01
    ld [de], a                                    ; $1e69: $12
    ld de, $c1f4                                  ; $1e6a: $11 $f4 $c1
    ld a, $01                                     ; $1e6d: $3e $01
    ld [de], a                                    ; $1e6f: $12
    ld de, $c1f5                                  ; $1e70: $11 $f5 $c1
    ld a, $01                                     ; $1e73: $3e $01
    ld [de], a                                    ; $1e75: $12
    ld de, $c1f6                                  ; $1e76: $11 $f6 $c1
    ld a, $01                                     ; $1e79: $3e $01
    ld [de], a                                    ; $1e7b: $12
    ld de, $c1f7                                  ; $1e7c: $11 $f7 $c1
    ld a, $01                                     ; $1e7f: $3e $01
    ld [de], a                                    ; $1e81: $12
    ld de, $c1f8                                  ; $1e82: $11 $f8 $c1
    ld a, $01                                     ; $1e85: $3e $01
    ld [de], a                                    ; $1e87: $12
    ld de, $c1f9                                  ; $1e88: $11 $f9 $c1
    ld a, $01                                     ; $1e8b: $3e $01
    ld [de], a                                    ; $1e8d: $12
    ld de, $c1fa                                  ; $1e8e: $11 $fa $c1
    ld a, $01                                     ; $1e91: $3e $01
    ld [de], a                                    ; $1e93: $12
    ld de, $c1fb                                  ; $1e94: $11 $fb $c1
    ld a, $01                                     ; $1e97: $3e $01
    ld [de], a                                    ; $1e99: $12
    ld de, $c1fc                                  ; $1e9a: $11 $fc $c1
    ld a, $01                                     ; $1e9d: $3e $01
    ld [de], a                                    ; $1e9f: $12
    ld de, $c1fd                                  ; $1ea0: $11 $fd $c1
    ld a, $01                                     ; $1ea3: $3e $01
    ld [de], a                                    ; $1ea5: $12
    ld de, $c1fe                                  ; $1ea6: $11 $fe $c1
    ld a, $01                                     ; $1ea9: $3e $01
    ld [de], a                                    ; $1eab: $12
    ld de, $c1ff                                  ; $1eac: $11 $ff $c1
    ld a, $01                                     ; $1eaf: $3e $01
    ld [de], a                                    ; $1eb1: $12
    ld de, $c200                                  ; $1eb2: $11 $00 $c2
    ld a, $01                                     ; $1eb5: $3e $01
    ld [de], a                                    ; $1eb7: $12
    ld de, $c201                                  ; $1eb8: $11 $01 $c2
    ld a, $01                                     ; $1ebb: $3e $01
    ld [de], a                                    ; $1ebd: $12
    ld de, $c202                                  ; $1ebe: $11 $02 $c2
    ld a, $01                                     ; $1ec1: $3e $01
    ld [de], a                                    ; $1ec3: $12
    ld de, $c203                                  ; $1ec4: $11 $03 $c2
    ld a, $01                                     ; $1ec7: $3e $01
    ld [de], a                                    ; $1ec9: $12
    ld de, $c204                                  ; $1eca: $11 $04 $c2
    ld a, $01                                     ; $1ecd: $3e $01
    ld [de], a                                    ; $1ecf: $12
    ld de, $c205                                  ; $1ed0: $11 $05 $c2
    ld a, $01                                     ; $1ed3: $3e $01
    ld [de], a                                    ; $1ed5: $12
    ld de, $c206                                  ; $1ed6: $11 $06 $c2
    ld a, $01                                     ; $1ed9: $3e $01
    ld [de], a                                    ; $1edb: $12
    ld de, $c207                                  ; $1edc: $11 $07 $c2
    ld a, $01                                     ; $1edf: $3e $01
    ld [de], a                                    ; $1ee1: $12
    ld de, $c208                                  ; $1ee2: $11 $08 $c2
    ld a, $ff                                     ; $1ee5: $3e $ff
    ld [de], a                                    ; $1ee7: $12
    ld de, $c209                                  ; $1ee8: $11 $09 $c2
    ld a, $ff                                     ; $1eeb: $3e $ff
    ld [de], a                                    ; $1eed: $12
    ld de, $c20a                                  ; $1eee: $11 $0a $c2
    ld a, $ff                                     ; $1ef1: $3e $ff
    ld [de], a                                    ; $1ef3: $12
    ld de, $c20b                                  ; $1ef4: $11 $0b $c2
    ld a, $ff                                     ; $1ef7: $3e $ff
    ld [de], a                                    ; $1ef9: $12
    ld de, $c20c                                  ; $1efa: $11 $0c $c2
    ld a, $ff                                     ; $1efd: $3e $ff
    ld [de], a                                    ; $1eff: $12
    ld de, $c20d                                  ; $1f00: $11 $0d $c2
    ld a, $ff                                     ; $1f03: $3e $ff
    ld [de], a                                    ; $1f05: $12
    ld de, $c20e                                  ; $1f06: $11 $0e $c2
    ld a, $ff                                     ; $1f09: $3e $ff
    ld [de], a                                    ; $1f0b: $12
    ld de, $c20f                                  ; $1f0c: $11 $0f $c2
    ld a, $ff                                     ; $1f0f: $3e $ff
    ld [de], a                                    ; $1f11: $12
    ld de, $c210                                  ; $1f12: $11 $10 $c2
    ld a, $ff                                     ; $1f15: $3e $ff
    ld [de], a                                    ; $1f17: $12
    ld de, $c211                                  ; $1f18: $11 $11 $c2
    ld a, $ff                                     ; $1f1b: $3e $ff
    ld [de], a                                    ; $1f1d: $12
    ld de, $c212                                  ; $1f1e: $11 $12 $c2
    ld a, $ff                                     ; $1f21: $3e $ff
    ld [de], a                                    ; $1f23: $12
    ld de, $c213                                  ; $1f24: $11 $13 $c2
    ld a, $ff                                     ; $1f27: $3e $ff
    ld [de], a                                    ; $1f29: $12
    ld de, $c214                                  ; $1f2a: $11 $14 $c2
    ld a, $ff                                     ; $1f2d: $3e $ff
    ld [de], a                                    ; $1f2f: $12
    ld de, $c215                                  ; $1f30: $11 $15 $c2
    ld a, $ff                                     ; $1f33: $3e $ff
    ld [de], a                                    ; $1f35: $12
    ld de, $c216                                  ; $1f36: $11 $16 $c2
    ld a, $ff                                     ; $1f39: $3e $ff
    ld [de], a                                    ; $1f3b: $12
    ld de, $c217                                  ; $1f3c: $11 $17 $c2
    ld a, $ff                                     ; $1f3f: $3e $ff
    ld [de], a                                    ; $1f41: $12
    ld de, $c218                                  ; $1f42: $11 $18 $c2
    ld a, $e7                                     ; $1f45: $3e $e7
    ld [de], a                                    ; $1f47: $12
    ld de, $c219                                  ; $1f48: $11 $19 $c2
    ld a, $e7                                     ; $1f4b: $3e $e7
    ld [de], a                                    ; $1f4d: $12
    ld de, $c21a                                  ; $1f4e: $11 $1a $c2
    ld a, $c3                                     ; $1f51: $3e $c3
    ld [de], a                                    ; $1f53: $12
    ld de, $c21b                                  ; $1f54: $11 $1b $c2
    ld a, $c3                                     ; $1f57: $3e $c3
    ld [de], a                                    ; $1f59: $12
    ld de, $c21c                                  ; $1f5a: $11 $1c $c2
    ld a, $99                                     ; $1f5d: $3e $99
    ld [de], a                                    ; $1f5f: $12
    ld de, $c21d                                  ; $1f60: $11 $1d $c2
    ld a, $99                                     ; $1f63: $3e $99
    ld [de], a                                    ; $1f65: $12
    ld de, $c21e                                  ; $1f66: $11 $1e $c2
    ld a, $3c                                     ; $1f69: $3e $3c
    ld [de], a                                    ; $1f6b: $12
    ld de, $c21f                                  ; $1f6c: $11 $1f $c2
    ld a, $3c                                     ; $1f6f: $3e $3c
    ld [de], a                                    ; $1f71: $12
    ld de, $c220                                  ; $1f72: $11 $20 $c2
    ld a, $3c                                     ; $1f75: $3e $3c
    ld [de], a                                    ; $1f77: $12
    ld de, $c221                                  ; $1f78: $11 $21 $c2
    ld a, $3c                                     ; $1f7b: $3e $3c
    ld [de], a                                    ; $1f7d: $12
    ld de, $c222                                  ; $1f7e: $11 $22 $c2
    ld a, $00                                     ; $1f81: $3e $00
    ld [de], a                                    ; $1f83: $12
    ld de, $c223                                  ; $1f84: $11 $23 $c2
    ld a, $00                                     ; $1f87: $3e $00
    ld [de], a                                    ; $1f89: $12
    ld de, $c224                                  ; $1f8a: $11 $24 $c2
    ld a, $3c                                     ; $1f8d: $3e $3c
    ld [de], a                                    ; $1f8f: $12
    ld de, $c225                                  ; $1f90: $11 $25 $c2
    ld a, $3c                                     ; $1f93: $3e $3c
    ld [de], a                                    ; $1f95: $12
    ld de, $c226                                  ; $1f96: $11 $26 $c2
    ld a, $3c                                     ; $1f99: $3e $3c
    ld [de], a                                    ; $1f9b: $12
    ld de, $c227                                  ; $1f9c: $11 $27 $c2
    ld a, $3c                                     ; $1f9f: $3e $3c
    ld [de], a                                    ; $1fa1: $12
    ld de, $c228                                  ; $1fa2: $11 $28 $c2
    ld a, $03                                     ; $1fa5: $3e $03
    ld [de], a                                    ; $1fa7: $12
    ld de, $c229                                  ; $1fa8: $11 $29 $c2
    ld a, $03                                     ; $1fab: $3e $03
    ld [de], a                                    ; $1fad: $12
    ld de, $c22a                                  ; $1fae: $11 $2a $c2
    ld a, $3d                                     ; $1fb1: $3e $3d
    ld [de], a                                    ; $1fb3: $12
    ld de, $c22b                                  ; $1fb4: $11 $2b $c2
    ld a, $3d                                     ; $1fb7: $3e $3d
    ld [de], a                                    ; $1fb9: $12
    ld de, $c22c                                  ; $1fba: $11 $2c $c2
    ld a, $3c                                     ; $1fbd: $3e $3c
    ld [de], a                                    ; $1fbf: $12
    ld de, $c22d                                  ; $1fc0: $11 $2d $c2
    ld a, $3c                                     ; $1fc3: $3e $3c
    ld [de], a                                    ; $1fc5: $12
    ld de, $c22e                                  ; $1fc6: $11 $2e $c2
    ld a, $3c                                     ; $1fc9: $3e $3c
    ld [de], a                                    ; $1fcb: $12
    ld de, $c22f                                  ; $1fcc: $11 $2f $c2
    ld a, $3c                                     ; $1fcf: $3e $3c
    ld [de], a                                    ; $1fd1: $12
    ld de, $c230                                  ; $1fd2: $11 $30 $c2
    ld a, $01                                     ; $1fd5: $3e $01
    ld [de], a                                    ; $1fd7: $12
    ld de, $c231                                  ; $1fd8: $11 $31 $c2
    ld a, $01                                     ; $1fdb: $3e $01
    ld [de], a                                    ; $1fdd: $12
    ld de, $c232                                  ; $1fde: $11 $32 $c2
    ld a, $3c                                     ; $1fe1: $3e $3c
    ld [de], a                                    ; $1fe3: $12
    ld de, $c233                                  ; $1fe4: $11 $33 $c2
    ld a, $3c                                     ; $1fe7: $3e $3c
    ld [de], a                                    ; $1fe9: $12
    ld de, $c234                                  ; $1fea: $11 $34 $c2
    ld a, $3c                                     ; $1fed: $3e $3c
    ld [de], a                                    ; $1fef: $12
    ld de, $c235                                  ; $1ff0: $11 $35 $c2
    ld a, $3c                                     ; $1ff3: $3e $3c
    ld [de], a                                    ; $1ff5: $12
    ld de, $c236                                  ; $1ff6: $11 $36 $c2
    ld a, $01                                     ; $1ff9: $3e $01
    ld [de], a                                    ; $1ffb: $12
    ld de, $c237                                  ; $1ffc: $11 $37 $c2
    ld a, $01                                     ; $1fff: $3e $01
    ld [de], a                                    ; $2001: $12
    ld de, $c238                                  ; $2002: $11 $38 $c2
    ld a, $81                                     ; $2005: $3e $81
    ld [de], a                                    ; $2007: $12
    ld de, $c239                                  ; $2008: $11 $39 $c2
    ld a, $81                                     ; $200b: $3e $81
    ld [de], a                                    ; $200d: $12
    ld de, $c23a                                  ; $200e: $11 $3a $c2
    ld a, $00                                     ; $2011: $3e $00
    ld [de], a                                    ; $2013: $12
    ld de, $c23b                                  ; $2014: $11 $3b $c2
    ld a, $00                                     ; $2017: $3e $00
    ld [de], a                                    ; $2019: $12
    ld de, $c23c                                  ; $201a: $11 $3c $c2
    ld a, $3c                                     ; $201d: $3e $3c
    ld [de], a                                    ; $201f: $12
    ld de, $c23d                                  ; $2020: $11 $3d $c2
    ld a, $3c                                     ; $2023: $3e $3c
    ld [de], a                                    ; $2025: $12
    ld de, $c23e                                  ; $2026: $11 $3e $c2
    ld a, $3f                                     ; $2029: $3e $3f
    ld [de], a                                    ; $202b: $12
    ld de, $c23f                                  ; $202c: $11 $3f $c2
    ld a, $3f                                     ; $202f: $3e $3f
    ld [de], a                                    ; $2031: $12
    ld de, $c240                                  ; $2032: $11 $40 $c2
    ld a, $3f                                     ; $2035: $3e $3f
    ld [de], a                                    ; $2037: $12
    ld de, $c241                                  ; $2038: $11 $41 $c2
    ld a, $3f                                     ; $203b: $3e $3f
    ld [de], a                                    ; $203d: $12
    ld de, $c242                                  ; $203e: $11 $42 $c2
    ld a, $3c                                     ; $2041: $3e $3c
    ld [de], a                                    ; $2043: $12
    ld de, $c243                                  ; $2044: $11 $43 $c2
    ld a, $3c                                     ; $2047: $3e $3c
    ld [de], a                                    ; $2049: $12
    ld de, $c244                                  ; $204a: $11 $44 $c2
    ld a, $00                                     ; $204d: $3e $00
    ld [de], a                                    ; $204f: $12
    ld de, $c245                                  ; $2050: $11 $45 $c2
    ld a, $00                                     ; $2053: $3e $00
    ld [de], a                                    ; $2055: $12
    ld de, $c246                                  ; $2056: $11 $46 $c2
    ld a, $81                                     ; $2059: $3e $81
    ld [de], a                                    ; $205b: $12
    ld de, $c247                                  ; $205c: $11 $47 $c2
    ld a, $81                                     ; $205f: $3e $81
    ld [de], a                                    ; $2061: $12
    ld de, $c248                                  ; $2062: $11 $48 $c2
    ld a, $01                                     ; $2065: $3e $01
    ld [de], a                                    ; $2067: $12
    ld de, $c249                                  ; $2068: $11 $49 $c2
    ld a, $01                                     ; $206b: $3e $01
    ld [de], a                                    ; $206d: $12
    ld de, $c24a                                  ; $206e: $11 $4a $c2
    ld a, $00                                     ; $2071: $3e $00
    ld [de], a                                    ; $2073: $12
    ld de, $c24b                                  ; $2074: $11 $4b $c2
    ld a, $00                                     ; $2077: $3e $00
    ld [de], a                                    ; $2079: $12
    ld de, $c24c                                  ; $207a: $11 $4c $c2
    ld a, $3c                                     ; $207d: $3e $3c
    ld [de], a                                    ; $207f: $12
    ld de, $c24d                                  ; $2080: $11 $4d $c2
    ld a, $3c                                     ; $2083: $3e $3c
    ld [de], a                                    ; $2085: $12
    ld de, $c24e                                  ; $2086: $11 $4e $c2
    ld a, $3c                                     ; $2089: $3e $3c
    ld [de], a                                    ; $208b: $12
    ld de, $c24f                                  ; $208c: $11 $4f $c2
    ld a, $3c                                     ; $208f: $3e $3c
    ld [de], a                                    ; $2091: $12
    ld de, $c250                                  ; $2092: $11 $50 $c2
    ld a, $3c                                     ; $2095: $3e $3c
    ld [de], a                                    ; $2097: $12
    ld de, $c251                                  ; $2098: $11 $51 $c2
    ld a, $3c                                     ; $209b: $3e $3c
    ld [de], a                                    ; $209d: $12
    ld de, $c252                                  ; $209e: $11 $52 $c2
    ld a, $3c                                     ; $20a1: $3e $3c
    ld [de], a                                    ; $20a3: $12
    ld de, $c253                                  ; $20a4: $11 $53 $c2
    ld a, $3c                                     ; $20a7: $3e $3c
    ld [de], a                                    ; $20a9: $12
    ld de, $c254                                  ; $20aa: $11 $54 $c2
    ld a, $00                                     ; $20ad: $3e $00
    ld [de], a                                    ; $20af: $12
    ld de, $c255                                  ; $20b0: $11 $55 $c2
    ld a, $00                                     ; $20b3: $3e $00
    ld [de], a                                    ; $20b5: $12
    ld de, $c256                                  ; $20b6: $11 $56 $c2
    ld a, $01                                     ; $20b9: $3e $01
    ld [de], a                                    ; $20bb: $12
    ld de, $c257                                  ; $20bc: $11 $57 $c2
    ld a, $01                                     ; $20bf: $3e $01
    ld [de], a                                    ; $20c1: $12
    ld de, $c258                                  ; $20c2: $11 $58 $c2
    ld a, $00                                     ; $20c5: $3e $00
    ld [de], a                                    ; $20c7: $12
    ld de, $c259                                  ; $20c8: $11 $59 $c2
    ld a, $00                                     ; $20cb: $3e $00
    ld [de], a                                    ; $20cd: $12
    ld de, $c25a                                  ; $20ce: $11 $5a $c2
    ld a, $00                                     ; $20d1: $3e $00
    ld [de], a                                    ; $20d3: $12
    ld de, $c25b                                  ; $20d4: $11 $5b $c2
    ld a, $00                                     ; $20d7: $3e $00
    ld [de], a                                    ; $20d9: $12
    ld de, $c25c                                  ; $20da: $11 $5c $c2
    ld a, $3f                                     ; $20dd: $3e $3f
    ld [de], a                                    ; $20df: $12
    ld de, $c25d                                  ; $20e0: $11 $5d $c2
    ld a, $3f                                     ; $20e3: $3e $3f
    ld [de], a                                    ; $20e5: $12
    ld de, $c25e                                  ; $20e6: $11 $5e $c2
    ld a, $00                                     ; $20e9: $3e $00
    ld [de], a                                    ; $20eb: $12
    ld de, $c25f                                  ; $20ec: $11 $5f $c2
    ld a, $00                                     ; $20ef: $3e $00
    ld [de], a                                    ; $20f1: $12
    ld de, $c260                                  ; $20f2: $11 $60 $c2
    ld a, $00                                     ; $20f5: $3e $00
    ld [de], a                                    ; $20f7: $12
    ld de, $c261                                  ; $20f8: $11 $61 $c2
    ld a, $00                                     ; $20fb: $3e $00
    ld [de], a                                    ; $20fd: $12
    ld de, $c262                                  ; $20fe: $11 $62 $c2
    ld a, $3f                                     ; $2101: $3e $3f
    ld [de], a                                    ; $2103: $12
    ld de, $c263                                  ; $2104: $11 $63 $c2
    ld a, $3f                                     ; $2107: $3e $3f
    ld [de], a                                    ; $2109: $12
    ld de, $c264                                  ; $210a: $11 $64 $c2
    ld a, $00                                     ; $210d: $3e $00
    ld [de], a                                    ; $210f: $12
    ld de, $c265                                  ; $2110: $11 $65 $c2
    ld a, $00                                     ; $2113: $3e $00
    ld [de], a                                    ; $2115: $12
    ld de, $c266                                  ; $2116: $11 $66 $c2
    ld a, $00                                     ; $2119: $3e $00
    ld [de], a                                    ; $211b: $12
    ld de, $c267                                  ; $211c: $11 $67 $c2
    ld a, $00                                     ; $211f: $3e $00
    ld [de], a                                    ; $2121: $12
    ld de, $c268                                  ; $2122: $11 $68 $c2
    ld a, $00                                     ; $2125: $3e $00
    ld [de], a                                    ; $2127: $12
    ld de, $c269                                  ; $2128: $11 $69 $c2
    ld a, $00                                     ; $212b: $3e $00
    ld [de], a                                    ; $212d: $12
    ld de, $c26a                                  ; $212e: $11 $6a $c2
    ld a, $00                                     ; $2131: $3e $00
    ld [de], a                                    ; $2133: $12
    ld de, $c26b                                  ; $2134: $11 $6b $c2
    ld a, $00                                     ; $2137: $3e $00
    ld [de], a                                    ; $2139: $12
    ld de, $c26c                                  ; $213a: $11 $6c $c2
    ld a, $3f                                     ; $213d: $3e $3f
    ld [de], a                                    ; $213f: $12
    ld de, $c26d                                  ; $2140: $11 $6d $c2
    ld a, $3f                                     ; $2143: $3e $3f
    ld [de], a                                    ; $2145: $12
    ld de, $c26e                                  ; $2146: $11 $6e $c2
    ld a, $3f                                     ; $2149: $3e $3f
    ld [de], a                                    ; $214b: $12
    ld de, $c26f                                  ; $214c: $11 $6f $c2
    ld a, $3f                                     ; $214f: $3e $3f
    ld [de], a                                    ; $2151: $12
    ld de, $c270                                  ; $2152: $11 $70 $c2
    ld a, $00                                     ; $2155: $3e $00
    ld [de], a                                    ; $2157: $12
    ld de, $c271                                  ; $2158: $11 $71 $c2
    ld a, $00                                     ; $215b: $3e $00
    ld [de], a                                    ; $215d: $12
    ld de, $c272                                  ; $215e: $11 $72 $c2
    ld a, $00                                     ; $2161: $3e $00
    ld [de], a                                    ; $2163: $12
    ld de, $c273                                  ; $2164: $11 $73 $c2
    ld a, $00                                     ; $2167: $3e $00
    ld [de], a                                    ; $2169: $12
    ld de, $c274                                  ; $216a: $11 $74 $c2
    ld a, $3f                                     ; $216d: $3e $3f
    ld [de], a                                    ; $216f: $12
    ld de, $c275                                  ; $2170: $11 $75 $c2
    ld a, $3f                                     ; $2173: $3e $3f
    ld [de], a                                    ; $2175: $12
    ld de, $c276                                  ; $2176: $11 $76 $c2
    ld a, $3f                                     ; $2179: $3e $3f
    ld [de], a                                    ; $217b: $12
    ld de, $c277                                  ; $217c: $11 $77 $c2
    ld a, $3f                                     ; $217f: $3e $3f
    ld [de], a                                    ; $2181: $12
    ld de, $c278                                  ; $2182: $11 $78 $c2
    ld a, $c0                                     ; $2185: $3e $c0
    ld [de], a                                    ; $2187: $12
    ld de, $c279                                  ; $2188: $11 $79 $c2
    ld a, $c0                                     ; $218b: $3e $c0
    ld [de], a                                    ; $218d: $12
    ld de, $c27a                                  ; $218e: $11 $7a $c2
    ld a, $9f                                     ; $2191: $3e $9f
    ld [de], a                                    ; $2193: $12
    ld de, $c27b                                  ; $2194: $11 $7b $c2
    ld a, $9f                                     ; $2197: $3e $9f
    ld [de], a                                    ; $2199: $12
    ld de, $c27c                                  ; $219a: $11 $7c $c2
    ld a, $3f                                     ; $219d: $3e $3f
    ld [de], a                                    ; $219f: $12
    ld de, $c27d                                  ; $21a0: $11 $7d $c2
    ld a, $3f                                     ; $21a3: $3e $3f
    ld [de], a                                    ; $21a5: $12
    ld de, $c27e                                  ; $21a6: $11 $7e $c2
    ld a, $3f                                     ; $21a9: $3e $3f
    ld [de], a                                    ; $21ab: $12
    ld de, $c27f                                  ; $21ac: $11 $7f $c2
    ld a, $3f                                     ; $21af: $3e $3f
    ld [de], a                                    ; $21b1: $12
    ld de, $c280                                  ; $21b2: $11 $80 $c2
    ld a, $38                                     ; $21b5: $3e $38
    ld [de], a                                    ; $21b7: $12
    ld de, $c281                                  ; $21b8: $11 $81 $c2
    ld a, $38                                     ; $21bb: $3e $38
    ld [de], a                                    ; $21bd: $12
    ld de, $c282                                  ; $21be: $11 $82 $c2
    ld a, $3c                                     ; $21c1: $3e $3c
    ld [de], a                                    ; $21c3: $12
    ld de, $c283                                  ; $21c4: $11 $83 $c2
    ld a, $3c                                     ; $21c7: $3e $3c
    ld [de], a                                    ; $21c9: $12
    ld de, $c284                                  ; $21ca: $11 $84 $c2
    ld a, $9c                                     ; $21cd: $3e $9c
    ld [de], a                                    ; $21cf: $12
    ld de, $c285                                  ; $21d0: $11 $85 $c2
    ld a, $9c                                     ; $21d3: $3e $9c
    ld [de], a                                    ; $21d5: $12
    ld de, $c286                                  ; $21d6: $11 $86 $c2
    ld a, $c0                                     ; $21d9: $3e $c0
    ld [de], a                                    ; $21db: $12
    ld de, $c287                                  ; $21dc: $11 $87 $c2
    ld a, $c0                                     ; $21df: $3e $c0
    ld [de], a                                    ; $21e1: $12
    ld de, $c288                                  ; $21e2: $11 $88 $c2
    ld a, $3c                                     ; $21e5: $3e $3c
    ld [de], a                                    ; $21e7: $12
    ld de, $c289                                  ; $21e8: $11 $89 $c2
    ld a, $3c                                     ; $21eb: $3e $3c
    ld [de], a                                    ; $21ed: $12
    ld de, $c28a                                  ; $21ee: $11 $8a $c2
    ld a, $3c                                     ; $21f1: $3e $3c
    ld [de], a                                    ; $21f3: $12
    ld de, $c28b                                  ; $21f4: $11 $8b $c2
    ld a, $3c                                     ; $21f7: $3e $3c
    ld [de], a                                    ; $21f9: $12
    ld de, $c28c                                  ; $21fa: $11 $8c $c2
    ld a, $3c                                     ; $21fd: $3e $3c
    ld [de], a                                    ; $21ff: $12
    ld de, $c28d                                  ; $2200: $11 $8d $c2
    ld a, $3c                                     ; $2203: $3e $3c
    ld [de], a                                    ; $2205: $12
    ld de, $c28e                                  ; $2206: $11 $8e $c2
    ld a, $00                                     ; $2209: $3e $00
    ld [de], a                                    ; $220b: $12
    ld de, $c28f                                  ; $220c: $11 $8f $c2
    ld a, $00                                     ; $220f: $3e $00
    ld [de], a                                    ; $2211: $12
    ld de, $c290                                  ; $2212: $11 $90 $c2
    ld a, $00                                     ; $2215: $3e $00
    ld [de], a                                    ; $2217: $12
    ld de, $c291                                  ; $2218: $11 $91 $c2
    ld a, $00                                     ; $221b: $3e $00
    ld [de], a                                    ; $221d: $12
    ld de, $c292                                  ; $221e: $11 $92 $c2
    ld a, $3c                                     ; $2221: $3e $3c
    ld [de], a                                    ; $2223: $12
    ld de, $c293                                  ; $2224: $11 $93 $c2
    ld a, $3c                                     ; $2227: $3e $3c
    ld [de], a                                    ; $2229: $12
    ld de, $c294                                  ; $222a: $11 $94 $c2
    ld a, $3c                                     ; $222d: $3e $3c
    ld [de], a                                    ; $222f: $12
    ld de, $c295                                  ; $2230: $11 $95 $c2
    ld a, $3c                                     ; $2233: $3e $3c
    ld [de], a                                    ; $2235: $12
    ld de, $c296                                  ; $2236: $11 $96 $c2
    ld a, $3c                                     ; $2239: $3e $3c
    ld [de], a                                    ; $223b: $12
    ld de, $c297                                  ; $223c: $11 $97 $c2
    ld a, $3c                                     ; $223f: $3e $3c
    ld [de], a                                    ; $2241: $12
    ld de, $c298                                  ; $2242: $11 $98 $c2
    ld a, $00                                     ; $2245: $3e $00
    ld [de], a                                    ; $2247: $12
    ld de, $c299                                  ; $2248: $11 $99 $c2
    ld a, $00                                     ; $224b: $3e $00
    ld [de], a                                    ; $224d: $12
    ld de, $c29a                                  ; $224e: $11 $9a $c2
    ld a, $00                                     ; $2251: $3e $00
    ld [de], a                                    ; $2253: $12
    ld de, $c29b                                  ; $2254: $11 $9b $c2
    ld a, $00                                     ; $2257: $3e $00
    ld [de], a                                    ; $2259: $12
    ld de, $c29c                                  ; $225a: $11 $9c $c2
    ld a, $e7                                     ; $225d: $3e $e7
    ld [de], a                                    ; $225f: $12
    ld de, $c29d                                  ; $2260: $11 $9d $c2
    ld a, $e7                                     ; $2263: $3e $e7
    ld [de], a                                    ; $2265: $12
    ld de, $c29e                                  ; $2266: $11 $9e $c2
    ld a, $e7                                     ; $2269: $3e $e7
    ld [de], a                                    ; $226b: $12
    ld de, $c29f                                  ; $226c: $11 $9f $c2
    ld a, $e7                                     ; $226f: $3e $e7
    ld [de], a                                    ; $2271: $12
    ld de, $c2a0                                  ; $2272: $11 $a0 $c2
    ld a, $e7                                     ; $2275: $3e $e7
    ld [de], a                                    ; $2277: $12
    ld de, $c2a1                                  ; $2278: $11 $a1 $c2
    ld a, $e7                                     ; $227b: $3e $e7
    ld [de], a                                    ; $227d: $12
    ld de, $c2a2                                  ; $227e: $11 $a2 $c2
    ld a, $e7                                     ; $2281: $3e $e7
    ld [de], a                                    ; $2283: $12
    ld de, $c2a3                                  ; $2284: $11 $a3 $c2
    ld a, $e7                                     ; $2287: $3e $e7
    ld [de], a                                    ; $2289: $12
    ld de, $c2a4                                  ; $228a: $11 $a4 $c2
    ld a, $00                                     ; $228d: $3e $00
    ld [de], a                                    ; $228f: $12
    ld de, $c2a5                                  ; $2290: $11 $a5 $c2
    ld a, $00                                     ; $2293: $3e $00
    ld [de], a                                    ; $2295: $12
    ld de, $c2a6                                  ; $2296: $11 $a6 $c2
    ld a, $00                                     ; $2299: $3e $00
    ld [de], a                                    ; $229b: $12
    ld de, $c2a7                                  ; $229c: $11 $a7 $c2
    ld a, $00                                     ; $229f: $3e $00
    ld [de], a                                    ; $22a1: $12
    ld de, $c2a8                                  ; $22a2: $11 $a8 $c2
    ld a, $f0                                     ; $22a5: $3e $f0
    ld [de], a                                    ; $22a7: $12
    ld de, $c2a9                                  ; $22a8: $11 $a9 $c2
    ld a, $f0                                     ; $22ab: $3e $f0
    ld [de], a                                    ; $22ad: $12
    ld de, $c2aa                                  ; $22ae: $11 $aa $c2
    ld a, $fc                                     ; $22b1: $3e $fc
    ld [de], a                                    ; $22b3: $12
    ld de, $c2ab                                  ; $22b4: $11 $ab $c2
    ld a, $fc                                     ; $22b7: $3e $fc
    ld [de], a                                    ; $22b9: $12
    ld de, $c2ac                                  ; $22ba: $11 $ac $c2
    ld a, $fc                                     ; $22bd: $3e $fc
    ld [de], a                                    ; $22bf: $12
    ld de, $c2ad                                  ; $22c0: $11 $ad $c2
    ld a, $fc                                     ; $22c3: $3e $fc
    ld [de], a                                    ; $22c5: $12
    ld de, $c2ae                                  ; $22c6: $11 $ae $c2
    ld a, $fc                                     ; $22c9: $3e $fc
    ld [de], a                                    ; $22cb: $12
    ld de, $c2af                                  ; $22cc: $11 $af $c2
    ld a, $fc                                     ; $22cf: $3e $fc
    ld [de], a                                    ; $22d1: $12
    ld de, $c2b0                                  ; $22d2: $11 $b0 $c2
    ld a, $fc                                     ; $22d5: $3e $fc
    ld [de], a                                    ; $22d7: $12
    ld de, $c2b1                                  ; $22d8: $11 $b1 $c2
    ld a, $fc                                     ; $22db: $3e $fc
    ld [de], a                                    ; $22dd: $12
    ld de, $c2b2                                  ; $22de: $11 $b2 $c2
    ld a, $3c                                     ; $22e1: $3e $3c
    ld [de], a                                    ; $22e3: $12
    ld de, $c2b3                                  ; $22e4: $11 $b3 $c2
    ld a, $3c                                     ; $22e7: $3e $3c
    ld [de], a                                    ; $22e9: $12
    ld de, $c2b4                                  ; $22ea: $11 $b4 $c2
    ld a, $3c                                     ; $22ed: $3e $3c
    ld [de], a                                    ; $22ef: $12
    ld de, $c2b5                                  ; $22f0: $11 $b5 $c2
    ld a, $3c                                     ; $22f3: $3e $3c
    ld [de], a                                    ; $22f5: $12
    ld de, $c2b6                                  ; $22f6: $11 $b6 $c2
    ld a, $81                                     ; $22f9: $3e $81
    ld [de], a                                    ; $22fb: $12
    ld de, $c2b7                                  ; $22fc: $11 $b7 $c2
    ld a, $81                                     ; $22ff: $3e $81
    ld [de], a                                    ; $2301: $12
    ld de, $c2b8                                  ; $2302: $11 $b8 $c2
    ld a, $3c                                     ; $2305: $3e $3c
    ld [de], a                                    ; $2307: $12
    ld de, $c2b9                                  ; $2308: $11 $b9 $c2
    ld a, $3c                                     ; $230b: $3e $3c
    ld [de], a                                    ; $230d: $12
    ld de, $c2ba                                  ; $230e: $11 $ba $c2
    ld a, $39                                     ; $2311: $3e $39
    ld [de], a                                    ; $2313: $12
    ld de, $c2bb                                  ; $2314: $11 $bb $c2
    ld a, $39                                     ; $2317: $3e $39
    ld [de], a                                    ; $2319: $12
    ld de, $c2bc                                  ; $231a: $11 $bc $c2
    ld a, $33                                     ; $231d: $3e $33
    ld [de], a                                    ; $231f: $12
    ld de, $c2bd                                  ; $2320: $11 $bd $c2
    ld a, $33                                     ; $2323: $3e $33
    ld [de], a                                    ; $2325: $12
    ld de, $c2be                                  ; $2326: $11 $be $c2
    ld a, $07                                     ; $2329: $3e $07
    ld [de], a                                    ; $232b: $12
    ld de, $c2bf                                  ; $232c: $11 $bf $c2
    ld a, $07                                     ; $232f: $3e $07
    ld [de], a                                    ; $2331: $12
    ld de, $c2c0                                  ; $2332: $11 $c0 $c2
    ld a, $07                                     ; $2335: $3e $07
    ld [de], a                                    ; $2337: $12
    ld de, $c2c1                                  ; $2338: $11 $c1 $c2
    ld a, $07                                     ; $233b: $3e $07
    ld [de], a                                    ; $233d: $12
    ld de, $c2c2                                  ; $233e: $11 $c2 $c2
    ld a, $23                                     ; $2341: $3e $23
    ld [de], a                                    ; $2343: $12
    ld de, $c2c3                                  ; $2344: $11 $c3 $c2
    ld a, $23                                     ; $2347: $3e $23
    ld [de], a                                    ; $2349: $12
    ld de, $c2c4                                  ; $234a: $11 $c4 $c2
    ld a, $31                                     ; $234d: $3e $31
    ld [de], a                                    ; $234f: $12
    ld de, $c2c5                                  ; $2350: $11 $c5 $c2
    ld a, $31                                     ; $2353: $3e $31
    ld [de], a                                    ; $2355: $12
    ld de, $c2c6                                  ; $2356: $11 $c6 $c2
    ld a, $38                                     ; $2359: $3e $38
    ld [de], a                                    ; $235b: $12
    ld de, $c2c7                                  ; $235c: $11 $c7 $c2
    ld a, $38                                     ; $235f: $3e $38
    ld [de], a                                    ; $2361: $12
    ld de, $c2c8                                  ; $2362: $11 $c8 $c2
    ld a, $3f                                     ; $2365: $3e $3f
    ld [de], a                                    ; $2367: $12
    ld de, $c2c9                                  ; $2368: $11 $c9 $c2
    ld a, $3f                                     ; $236b: $3e $3f
    ld [de], a                                    ; $236d: $12
    ld de, $c2ca                                  ; $236e: $11 $ca $c2
    ld a, $3f                                     ; $2371: $3e $3f
    ld [de], a                                    ; $2373: $12
    ld de, $c2cb                                  ; $2374: $11 $cb $c2
    ld a, $3f                                     ; $2377: $3e $3f
    ld [de], a                                    ; $2379: $12
    ld de, $c2cc                                  ; $237a: $11 $cc $c2
    ld a, $3f                                     ; $237d: $3e $3f
    ld [de], a                                    ; $237f: $12
    ld de, $c2cd                                  ; $2380: $11 $cd $c2
    ld a, $3f                                     ; $2383: $3e $3f
    ld [de], a                                    ; $2385: $12
    ld de, $c2ce                                  ; $2386: $11 $ce $c2
    ld a, $3f                                     ; $2389: $3e $3f
    ld [de], a                                    ; $238b: $12
    ld de, $c2cf                                  ; $238c: $11 $cf $c2
    ld a, $3f                                     ; $238f: $3e $3f
    ld [de], a                                    ; $2391: $12
    ld de, $c2d0                                  ; $2392: $11 $d0 $c2
    ld a, $3f                                     ; $2395: $3e $3f
    ld [de], a                                    ; $2397: $12
    ld de, $c2d1                                  ; $2398: $11 $d1 $c2
    ld a, $3f                                     ; $239b: $3e $3f
    ld [de], a                                    ; $239d: $12
    ld de, $c2d2                                  ; $239e: $11 $d2 $c2
    ld a, $3f                                     ; $23a1: $3e $3f
    ld [de], a                                    ; $23a3: $12
    ld de, $c2d3                                  ; $23a4: $11 $d3 $c2
    ld a, $3f                                     ; $23a7: $3e $3f
    ld [de], a                                    ; $23a9: $12
    ld de, $c2d4                                  ; $23aa: $11 $d4 $c2
    ld a, $3f                                     ; $23ad: $3e $3f
    ld [de], a                                    ; $23af: $12
    ld de, $c2d5                                  ; $23b0: $11 $d5 $c2
    ld a, $3f                                     ; $23b3: $3e $3f
    ld [de], a                                    ; $23b5: $12
    ld de, $c2d6                                  ; $23b6: $11 $d6 $c2
    ld a, $01                                     ; $23b9: $3e $01
    ld [de], a                                    ; $23bb: $12
    ld de, $c2d7                                  ; $23bc: $11 $d7 $c2
    ld a, $01                                     ; $23bf: $3e $01
    ld [de], a                                    ; $23c1: $12
    ld de, $c2d8                                  ; $23c2: $11 $d8 $c2
    ld a, $3c                                     ; $23c5: $3e $3c
    ld [de], a                                    ; $23c7: $12
    ld de, $c2d9                                  ; $23c8: $11 $d9 $c2
    ld a, $3c                                     ; $23cb: $3e $3c
    ld [de], a                                    ; $23cd: $12
    ld de, $c2da                                  ; $23ce: $11 $da $c2
    ld a, $18                                     ; $23d1: $3e $18
    ld [de], a                                    ; $23d3: $12
    ld de, $c2db                                  ; $23d4: $11 $db $c2
    ld a, $18                                     ; $23d7: $3e $18
    ld [de], a                                    ; $23d9: $12
    ld de, $c2dc                                  ; $23da: $11 $dc $c2
    ld a, $18                                     ; $23dd: $3e $18
    ld [de], a                                    ; $23df: $12
    ld de, $c2dd                                  ; $23e0: $11 $dd $c2
    ld a, $18                                     ; $23e3: $3e $18
    ld [de], a                                    ; $23e5: $12
    ld de, $c2de                                  ; $23e6: $11 $de $c2
    ld a, $00                                     ; $23e9: $3e $00
    ld [de], a                                    ; $23eb: $12
    ld de, $c2df                                  ; $23ec: $11 $df $c2
    ld a, $00                                     ; $23ef: $3e $00
    ld [de], a                                    ; $23f1: $12
    ld de, $c2e0                                  ; $23f2: $11 $e0 $c2
    ld a, $24                                     ; $23f5: $3e $24
    ld [de], a                                    ; $23f7: $12
    ld de, $c2e1                                  ; $23f8: $11 $e1 $c2
    ld a, $24                                     ; $23fb: $3e $24
    ld [de], a                                    ; $23fd: $12
    ld de, $c2e2                                  ; $23fe: $11 $e2 $c2
    ld a, $3c                                     ; $2401: $3e $3c
    ld [de], a                                    ; $2403: $12
    ld de, $c2e3                                  ; $2404: $11 $e3 $c2
    ld a, $3c                                     ; $2407: $3e $3c
    ld [de], a                                    ; $2409: $12
    ld de, $c2e4                                  ; $240a: $11 $e4 $c2
    ld a, $3c                                     ; $240d: $3e $3c
    ld [de], a                                    ; $240f: $12
    ld de, $c2e5                                  ; $2410: $11 $e5 $c2
    ld a, $3c                                     ; $2413: $3e $3c
    ld [de], a                                    ; $2415: $12
    ld de, $c2e6                                  ; $2416: $11 $e6 $c2
    ld a, $3c                                     ; $2419: $3e $3c
    ld [de], a                                    ; $241b: $12
    ld de, $c2e7                                  ; $241c: $11 $e7 $c2
    ld a, $3c                                     ; $241f: $3e $3c
    ld [de], a                                    ; $2421: $12
    ld de, $c2e8                                  ; $2422: $11 $e8 $c2
    ld a, $3c                                     ; $2425: $3e $3c
    ld [de], a                                    ; $2427: $12
    ld de, $c2e9                                  ; $2428: $11 $e9 $c2
    ld a, $3c                                     ; $242b: $3e $3c
    ld [de], a                                    ; $242d: $12
    ld de, $c2ea                                  ; $242e: $11 $ea $c2
    ld a, $1c                                     ; $2431: $3e $1c
    ld [de], a                                    ; $2433: $12
    ld de, $c2eb                                  ; $2434: $11 $eb $c2
    ld a, $1c                                     ; $2437: $3e $1c
    ld [de], a                                    ; $2439: $12
    ld de, $c2ec                                  ; $243a: $11 $ec $c2
    ld a, $0c                                     ; $243d: $3e $0c
    ld [de], a                                    ; $243f: $12
    ld de, $c2ed                                  ; $2440: $11 $ed $c2
    ld a, $0c                                     ; $2443: $3e $0c
    ld [de], a                                    ; $2445: $12
    ld de, $c2ee                                  ; $2446: $11 $ee $c2
    ld a, $04                                     ; $2449: $3e $04
    ld [de], a                                    ; $244b: $12
    ld de, $c2ef                                  ; $244c: $11 $ef $c2
    ld a, $04                                     ; $244f: $3e $04
    ld [de], a                                    ; $2451: $12
    ld de, $c2f0                                  ; $2452: $11 $f0 $c2
    ld a, $20                                     ; $2455: $3e $20
    ld [de], a                                    ; $2457: $12
    ld de, $c2f1                                  ; $2458: $11 $f1 $c2
    ld a, $20                                     ; $245b: $3e $20
    ld [de], a                                    ; $245d: $12
    ld de, $c2f2                                  ; $245e: $11 $f2 $c2
    ld a, $30                                     ; $2461: $3e $30
    ld [de], a                                    ; $2463: $12
    ld de, $c2f3                                  ; $2464: $11 $f3 $c2
    ld a, $30                                     ; $2467: $3e $30
    ld [de], a                                    ; $2469: $12
    ld de, $c2f4                                  ; $246a: $11 $f4 $c2
    ld a, $38                                     ; $246d: $3e $38
    ld [de], a                                    ; $246f: $12
    ld de, $c2f5                                  ; $2470: $11 $f5 $c2
    ld a, $38                                     ; $2473: $3e $38
    ld [de], a                                    ; $2475: $12
    ld de, $c2f6                                  ; $2476: $11 $f6 $c2
    ld a, $38                                     ; $2479: $3e $38
    ld [de], a                                    ; $247b: $12
    ld de, $c2f7                                  ; $247c: $11 $f7 $c2
    ld a, $38                                     ; $247f: $3e $38
    ld [de], a                                    ; $2481: $12
    ld de, $c2f8                                  ; $2482: $11 $f8 $c2
    ld a, $81                                     ; $2485: $3e $81
    ld [de], a                                    ; $2487: $12
    ld de, $c2f9                                  ; $2488: $11 $f9 $c2
    ld a, $81                                     ; $248b: $3e $81
    ld [de], a                                    ; $248d: $12
    ld de, $c2fa                                  ; $248e: $11 $fa $c2
    ld a, $3c                                     ; $2491: $3e $3c
    ld [de], a                                    ; $2493: $12
    ld de, $c2fb                                  ; $2494: $11 $fb $c2
    ld a, $3c                                     ; $2497: $3e $3c
    ld [de], a                                    ; $2499: $12
    ld de, $c2fc                                  ; $249a: $11 $fc $c2
    ld a, $3c                                     ; $249d: $3e $3c
    ld [de], a                                    ; $249f: $12
    ld de, $c2fd                                  ; $24a0: $11 $fd $c2
    ld a, $3c                                     ; $24a3: $3e $3c
    ld [de], a                                    ; $24a5: $12
    ld de, $c2fe                                  ; $24a6: $11 $fe $c2
    ld a, $3c                                     ; $24a9: $3e $3c
    ld [de], a                                    ; $24ab: $12
    ld de, $c2ff                                  ; $24ac: $11 $ff $c2
    ld a, $3c                                     ; $24af: $3e $3c
    ld [de], a                                    ; $24b1: $12
    ld de, $c300                                  ; $24b2: $11 $00 $c3
    ld a, $3c                                     ; $24b5: $3e $3c
    ld [de], a                                    ; $24b7: $12
    ld de, $c301                                  ; $24b8: $11 $01 $c3
    ld a, $3c                                     ; $24bb: $3e $3c
    ld [de], a                                    ; $24bd: $12
    ld de, $c302                                  ; $24be: $11 $02 $c3
    ld a, $3c                                     ; $24c1: $3e $3c
    ld [de], a                                    ; $24c3: $12
    ld de, $c303                                  ; $24c4: $11 $03 $c3
    ld a, $3c                                     ; $24c7: $3e $3c
    ld [de], a                                    ; $24c9: $12
    ld de, $c304                                  ; $24ca: $11 $04 $c3
    ld a, $3c                                     ; $24cd: $3e $3c
    ld [de], a                                    ; $24cf: $12
    ld de, $c305                                  ; $24d0: $11 $05 $c3
    ld a, $3c                                     ; $24d3: $3e $3c
    ld [de], a                                    ; $24d5: $12
    ld de, $c306                                  ; $24d6: $11 $06 $c3
    ld a, $81                                     ; $24d9: $3e $81
    ld [de], a                                    ; $24db: $12
    ld de, $c307                                  ; $24dc: $11 $07 $c3
    ld a, $81                                     ; $24df: $3e $81
    ld [de], a                                    ; $24e1: $12
    ld de, $c308                                  ; $24e2: $11 $08 $c3
    ld a, $01                                     ; $24e5: $3e $01
    ld [de], a                                    ; $24e7: $12
    ld de, $c309                                  ; $24e8: $11 $09 $c3
    ld a, $01                                     ; $24eb: $3e $01
    ld [de], a                                    ; $24ed: $12
    ld de, $c30a                                  ; $24ee: $11 $0a $c3
    ld a, $00                                     ; $24f1: $3e $00
    ld [de], a                                    ; $24f3: $12
    ld de, $c30b                                  ; $24f4: $11 $0b $c3
    ld a, $00                                     ; $24f7: $3e $00
    ld [de], a                                    ; $24f9: $12
    ld de, $c30c                                  ; $24fa: $11 $0c $c3
    ld a, $3c                                     ; $24fd: $3e $3c
    ld [de], a                                    ; $24ff: $12
    ld de, $c30d                                  ; $2500: $11 $0d $c3
    ld a, $3c                                     ; $2503: $3e $3c
    ld [de], a                                    ; $2505: $12
    ld de, $c30e                                  ; $2506: $11 $0e $c3
    ld a, $3c                                     ; $2509: $3e $3c
    ld [de], a                                    ; $250b: $12
    ld de, $c30f                                  ; $250c: $11 $0f $c3
    ld a, $3c                                     ; $250f: $3e $3c
    ld [de], a                                    ; $2511: $12
    ld de, $c310                                  ; $2512: $11 $10 $c3
    ld a, $00                                     ; $2515: $3e $00
    ld [de], a                                    ; $2517: $12
    ld de, $c311                                  ; $2518: $11 $11 $c3
    ld a, $00                                     ; $251b: $3e $00
    ld [de], a                                    ; $251d: $12
    ld de, $c312                                  ; $251e: $11 $12 $c3
    ld a, $01                                     ; $2521: $3e $01
    ld [de], a                                    ; $2523: $12
    ld de, $c313                                  ; $2524: $11 $13 $c3
    ld a, $01                                     ; $2527: $3e $01
    ld [de], a                                    ; $2529: $12
    ld de, $c314                                  ; $252a: $11 $14 $c3
    ld a, $3f                                     ; $252d: $3e $3f
    ld [de], a                                    ; $252f: $12
    ld de, $c315                                  ; $2530: $11 $15 $c3
    ld a, $3f                                     ; $2533: $3e $3f
    ld [de], a                                    ; $2535: $12
    ld de, $c316                                  ; $2536: $11 $16 $c3
    ld a, $3f                                     ; $2539: $3e $3f
    ld [de], a                                    ; $253b: $12
    ld de, $c317                                  ; $253c: $11 $17 $c3
    ld a, $3f                                     ; $253f: $3e $3f
    ld [de], a                                    ; $2541: $12
    ld de, $c318                                  ; $2542: $11 $18 $c3
    ld a, $81                                     ; $2545: $3e $81
    ld [de], a                                    ; $2547: $12
    ld de, $c319                                  ; $2548: $11 $19 $c3
    ld a, $81                                     ; $254b: $3e $81
    ld [de], a                                    ; $254d: $12
    ld de, $c31a                                  ; $254e: $11 $1a $c3
    ld a, $3c                                     ; $2551: $3e $3c
    ld [de], a                                    ; $2553: $12
    ld de, $c31b                                  ; $2554: $11 $1b $c3
    ld a, $3c                                     ; $2557: $3e $3c
    ld [de], a                                    ; $2559: $12
    ld de, $c31c                                  ; $255a: $11 $1c $c3
    ld a, $3c                                     ; $255d: $3e $3c
    ld [de], a                                    ; $255f: $12
    ld de, $c31d                                  ; $2560: $11 $1d $c3
    ld a, $3c                                     ; $2563: $3e $3c
    ld [de], a                                    ; $2565: $12
    ld de, $c31e                                  ; $2566: $11 $1e $c3
    ld a, $3c                                     ; $2569: $3e $3c
    ld [de], a                                    ; $256b: $12
    ld de, $c31f                                  ; $256c: $11 $1f $c3
    ld a, $3c                                     ; $256f: $3e $3c
    ld [de], a                                    ; $2571: $12
    ld de, $c320                                  ; $2572: $11 $20 $c3
    ld a, $3c                                     ; $2575: $3e $3c
    ld [de], a                                    ; $2577: $12
    ld de, $c321                                  ; $2578: $11 $21 $c3
    ld a, $3c                                     ; $257b: $3e $3c
    ld [de], a                                    ; $257d: $12
    ld de, $c322                                  ; $257e: $11 $22 $c3
    ld a, $30                                     ; $2581: $3e $30
    ld [de], a                                    ; $2583: $12
    ld de, $c323                                  ; $2584: $11 $23 $c3
    ld a, $30                                     ; $2587: $3e $30
    ld [de], a                                    ; $2589: $12
    ld de, $c324                                  ; $258a: $11 $24 $c3
    ld a, $39                                     ; $258d: $3e $39
    ld [de], a                                    ; $258f: $12
    ld de, $c325                                  ; $2590: $11 $25 $c3
    ld a, $39                                     ; $2593: $3e $39
    ld [de], a                                    ; $2595: $12
    ld de, $c326                                  ; $2596: $11 $26 $c3
    ld a, $82                                     ; $2599: $3e $82
    ld [de], a                                    ; $259b: $12
    ld de, $c327                                  ; $259c: $11 $27 $c3
    ld a, $82                                     ; $259f: $3e $82
    ld [de], a                                    ; $25a1: $12
    ld de, $c328                                  ; $25a2: $11 $28 $c3
    ld a, $01                                     ; $25a5: $3e $01
    ld [de], a                                    ; $25a7: $12
    ld de, $c329                                  ; $25a8: $11 $29 $c3
    ld a, $01                                     ; $25ab: $3e $01
    ld [de], a                                    ; $25ad: $12
    ld de, $c32a                                  ; $25ae: $11 $2a $c3
    ld a, $3c                                     ; $25b1: $3e $3c
    ld [de], a                                    ; $25b3: $12
    ld de, $c32b                                  ; $25b4: $11 $2b $c3
    ld a, $3c                                     ; $25b7: $3e $3c
    ld [de], a                                    ; $25b9: $12
    ld de, $c32c                                  ; $25ba: $11 $2c $c3
    ld a, $3c                                     ; $25bd: $3e $3c
    ld [de], a                                    ; $25bf: $12
    ld de, $c32d                                  ; $25c0: $11 $2d $c3
    ld a, $3c                                     ; $25c3: $3e $3c
    ld [de], a                                    ; $25c5: $12
    ld de, $c32e                                  ; $25c6: $11 $2e $c3
    ld a, $38                                     ; $25c9: $3e $38
    ld [de], a                                    ; $25cb: $12
    ld de, $c32f                                  ; $25cc: $11 $2f $c3
    ld a, $38                                     ; $25cf: $3e $38
    ld [de], a                                    ; $25d1: $12
    ld de, $c330                                  ; $25d2: $11 $30 $c3
    ld a, $03                                     ; $25d5: $3e $03
    ld [de], a                                    ; $25d7: $12
    ld de, $c331                                  ; $25d8: $11 $31 $c3
    ld a, $03                                     ; $25db: $3e $03
    ld [de], a                                    ; $25dd: $12
    ld de, $c332                                  ; $25de: $11 $32 $c3
    ld a, $23                                     ; $25e1: $3e $23
    ld [de], a                                    ; $25e3: $12
    ld de, $c333                                  ; $25e4: $11 $33 $c3
    ld a, $23                                     ; $25e7: $3e $23
    ld [de], a                                    ; $25e9: $12
    ld de, $c334                                  ; $25ea: $11 $34 $c3
    ld a, $39                                     ; $25ed: $3e $39
    ld [de], a                                    ; $25ef: $12
    ld de, $c335                                  ; $25f0: $11 $35 $c3
    ld a, $39                                     ; $25f3: $3e $39
    ld [de], a                                    ; $25f5: $12
    ld de, $c336                                  ; $25f6: $11 $36 $c3
    ld a, $3c                                     ; $25f9: $3e $3c
    ld [de], a                                    ; $25fb: $12
    ld de, $c337                                  ; $25fc: $11 $37 $c3
    ld a, $3c                                     ; $25ff: $3e $3c
    ld [de], a                                    ; $2601: $12
    ld de, $c338                                  ; $2602: $11 $38 $c3
    ld a, $81                                     ; $2605: $3e $81
    ld [de], a                                    ; $2607: $12
    ld de, $c339                                  ; $2608: $11 $39 $c3
    ld a, $81                                     ; $260b: $3e $81
    ld [de], a                                    ; $260d: $12
    ld de, $c33a                                  ; $260e: $11 $3a $c3
    ld a, $3c                                     ; $2611: $3e $3c
    ld [de], a                                    ; $2613: $12
    ld de, $c33b                                  ; $2614: $11 $3b $c3
    ld a, $3c                                     ; $2617: $3e $3c
    ld [de], a                                    ; $2619: $12
    ld de, $c33c                                  ; $261a: $11 $3c $c3
    ld a, $3f                                     ; $261d: $3e $3f
    ld [de], a                                    ; $261f: $12
    ld de, $c33d                                  ; $2620: $11 $3d $c3
    ld a, $3f                                     ; $2623: $3e $3f
    ld [de], a                                    ; $2625: $12
    ld de, $c33e                                  ; $2626: $11 $3e $c3
    ld a, $3f                                     ; $2629: $3e $3f
    ld [de], a                                    ; $262b: $12
    ld de, $c33f                                  ; $262c: $11 $3f $c3
    ld a, $3f                                     ; $262f: $3e $3f
    ld [de], a                                    ; $2631: $12
    ld de, $c340                                  ; $2632: $11 $40 $c3
    ld a, $81                                     ; $2635: $3e $81
    ld [de], a                                    ; $2637: $12
    ld de, $c341                                  ; $2638: $11 $41 $c3
    ld a, $81                                     ; $263b: $3e $81
    ld [de], a                                    ; $263d: $12
    ld de, $c342                                  ; $263e: $11 $42 $c3
    ld a, $fc                                     ; $2641: $3e $fc
    ld [de], a                                    ; $2643: $12
    ld de, $c343                                  ; $2644: $11 $43 $c3
    ld a, $fc                                     ; $2647: $3e $fc
    ld [de], a                                    ; $2649: $12
    ld de, $c344                                  ; $264a: $11 $44 $c3
    ld a, $3c                                     ; $264d: $3e $3c
    ld [de], a                                    ; $264f: $12
    ld de, $c345                                  ; $2650: $11 $45 $c3
    ld a, $3c                                     ; $2653: $3e $3c
    ld [de], a                                    ; $2655: $12
    ld de, $c346                                  ; $2656: $11 $46 $c3
    ld a, $81                                     ; $2659: $3e $81
    ld [de], a                                    ; $265b: $12
    ld de, $c347                                  ; $265c: $11 $47 $c3
    ld a, $81                                     ; $265f: $3e $81
    ld [de], a                                    ; $2661: $12
    ld de, $c348                                  ; $2662: $11 $48 $c3
    ld a, $00                                     ; $2665: $3e $00
    ld [de], a                                    ; $2667: $12
    ld de, $c349                                  ; $2668: $11 $49 $c3
    ld a, $00                                     ; $266b: $3e $00
    ld [de], a                                    ; $266d: $12
    ld de, $c34a                                  ; $266e: $11 $4a $c3
    ld a, $00                                     ; $2671: $3e $00
    ld [de], a                                    ; $2673: $12
    ld de, $c34b                                  ; $2674: $11 $4b $c3
    ld a, $00                                     ; $2677: $3e $00
    ld [de], a                                    ; $2679: $12
    ld de, $c34c                                  ; $267a: $11 $4c $c3
    ld a, $e7                                     ; $267d: $3e $e7
    ld [de], a                                    ; $267f: $12
    ld de, $c34d                                  ; $2680: $11 $4d $c3
    ld a, $e7                                     ; $2683: $3e $e7
    ld [de], a                                    ; $2685: $12
    ld de, $c34e                                  ; $2686: $11 $4e $c3
    ld a, $e7                                     ; $2689: $3e $e7
    ld [de], a                                    ; $268b: $12
    ld de, $c34f                                  ; $268c: $11 $4f $c3
    ld a, $e7                                     ; $268f: $3e $e7
    ld [de], a                                    ; $2691: $12
    ld de, $c350                                  ; $2692: $11 $50 $c3
    ld a, $e7                                     ; $2695: $3e $e7
    ld [de], a                                    ; $2697: $12
    ld de, $c351                                  ; $2698: $11 $51 $c3
    ld a, $e7                                     ; $269b: $3e $e7
    ld [de], a                                    ; $269d: $12
    ld de, $c352                                  ; $269e: $11 $52 $c3
    ld a, $e7                                     ; $26a1: $3e $e7
    ld [de], a                                    ; $26a3: $12
    ld de, $c353                                  ; $26a4: $11 $53 $c3
    ld a, $e7                                     ; $26a7: $3e $e7
    ld [de], a                                    ; $26a9: $12
    ld de, $c354                                  ; $26aa: $11 $54 $c3
    ld a, $e7                                     ; $26ad: $3e $e7
    ld [de], a                                    ; $26af: $12
    ld de, $c355                                  ; $26b0: $11 $55 $c3
    ld a, $e7                                     ; $26b3: $3e $e7
    ld [de], a                                    ; $26b5: $12
    ld de, $c356                                  ; $26b6: $11 $56 $c3
    ld a, $e7                                     ; $26b9: $3e $e7
    ld [de], a                                    ; $26bb: $12
    ld de, $c357                                  ; $26bc: $11 $57 $c3
    ld a, $e7                                     ; $26bf: $3e $e7
    ld [de], a                                    ; $26c1: $12
    ld de, $c358                                  ; $26c2: $11 $58 $c3
    ld a, $3c                                     ; $26c5: $3e $3c
    ld [de], a                                    ; $26c7: $12
    ld de, $c359                                  ; $26c8: $11 $59 $c3
    ld a, $3c                                     ; $26cb: $3e $3c
    ld [de], a                                    ; $26cd: $12
    ld de, $c35a                                  ; $26ce: $11 $5a $c3
    ld a, $3c                                     ; $26d1: $3e $3c
    ld [de], a                                    ; $26d3: $12
    ld de, $c35b                                  ; $26d4: $11 $5b $c3
    ld a, $3c                                     ; $26d7: $3e $3c
    ld [de], a                                    ; $26d9: $12
    ld de, $c35c                                  ; $26da: $11 $5c $c3
    ld a, $3c                                     ; $26dd: $3e $3c
    ld [de], a                                    ; $26df: $12
    ld de, $c35d                                  ; $26e0: $11 $5d $c3
    ld a, $3c                                     ; $26e3: $3e $3c
    ld [de], a                                    ; $26e5: $12
    ld de, $c35e                                  ; $26e6: $11 $5e $c3
    ld a, $3c                                     ; $26e9: $3e $3c
    ld [de], a                                    ; $26eb: $12
    ld de, $c35f                                  ; $26ec: $11 $5f $c3
    ld a, $3c                                     ; $26ef: $3e $3c
    ld [de], a                                    ; $26f1: $12
    ld de, $c360                                  ; $26f2: $11 $60 $c3
    ld a, $3c                                     ; $26f5: $3e $3c
    ld [de], a                                    ; $26f7: $12
    ld de, $c361                                  ; $26f8: $11 $61 $c3
    ld a, $3c                                     ; $26fb: $3e $3c
    ld [de], a                                    ; $26fd: $12
    ld de, $c362                                  ; $26fe: $11 $62 $c3
    ld a, $3c                                     ; $2701: $3e $3c
    ld [de], a                                    ; $2703: $12
    ld de, $c363                                  ; $2704: $11 $63 $c3
    ld a, $3c                                     ; $2707: $3e $3c
    ld [de], a                                    ; $2709: $12
    ld de, $c364                                  ; $270a: $11 $64 $c3
    ld a, $3c                                     ; $270d: $3e $3c
    ld [de], a                                    ; $270f: $12
    ld de, $c365                                  ; $2710: $11 $65 $c3
    ld a, $3c                                     ; $2713: $3e $3c
    ld [de], a                                    ; $2715: $12
    ld de, $c366                                  ; $2716: $11 $66 $c3
    ld a, $81                                     ; $2719: $3e $81
    ld [de], a                                    ; $271b: $12
    ld de, $c367                                  ; $271c: $11 $67 $c3
    ld a, $81                                     ; $271f: $3e $81
    ld [de], a                                    ; $2721: $12
    ld de, $c368                                  ; $2722: $11 $68 $c3
    ld a, $3c                                     ; $2725: $3e $3c
    ld [de], a                                    ; $2727: $12
    ld de, $c369                                  ; $2728: $11 $69 $c3
    ld a, $3c                                     ; $272b: $3e $3c
    ld [de], a                                    ; $272d: $12
    ld de, $c36a                                  ; $272e: $11 $6a $c3
    ld a, $3c                                     ; $2731: $3e $3c
    ld [de], a                                    ; $2733: $12
    ld de, $c36b                                  ; $2734: $11 $6b $c3
    ld a, $3c                                     ; $2737: $3e $3c
    ld [de], a                                    ; $2739: $12
    ld de, $c36c                                  ; $273a: $11 $6c $c3
    ld a, $3c                                     ; $273d: $3e $3c
    ld [de], a                                    ; $273f: $12
    ld de, $c36d                                  ; $2740: $11 $6d $c3
    ld a, $3c                                     ; $2743: $3e $3c
    ld [de], a                                    ; $2745: $12
    ld de, $c36e                                  ; $2746: $11 $6e $c3
    ld a, $3c                                     ; $2749: $3e $3c
    ld [de], a                                    ; $274b: $12
    ld de, $c36f                                  ; $274c: $11 $6f $c3
    ld a, $3c                                     ; $274f: $3e $3c
    ld [de], a                                    ; $2751: $12
    ld de, $c370                                  ; $2752: $11 $70 $c3
    ld a, $3c                                     ; $2755: $3e $3c
    ld [de], a                                    ; $2757: $12
    ld de, $c371                                  ; $2758: $11 $71 $c3
    ld a, $3c                                     ; $275b: $3e $3c
    ld [de], a                                    ; $275d: $12
    ld de, $c372                                  ; $275e: $11 $72 $c3
    ld a, $99                                     ; $2761: $3e $99
    ld [de], a                                    ; $2763: $12
    ld de, $c373                                  ; $2764: $11 $73 $c3
    ld a, $99                                     ; $2767: $3e $99
    ld [de], a                                    ; $2769: $12
    ld de, $c374                                  ; $276a: $11 $74 $c3
    ld a, $c3                                     ; $276d: $3e $c3
    ld [de], a                                    ; $276f: $12
    ld de, $c375                                  ; $2770: $11 $75 $c3
    ld a, $c3                                     ; $2773: $3e $c3
    ld [de], a                                    ; $2775: $12
    ld de, $c376                                  ; $2776: $11 $76 $c3
    ld a, $e7                                     ; $2779: $3e $e7
    ld [de], a                                    ; $277b: $12
    ld de, $c377                                  ; $277c: $11 $77 $c3
    ld a, $e7                                     ; $277f: $3e $e7
    ld [de], a                                    ; $2781: $12
    ld de, $c378                                  ; $2782: $11 $78 $c3
    ld a, $3c                                     ; $2785: $3e $3c
    ld [de], a                                    ; $2787: $12
    ld de, $c379                                  ; $2788: $11 $79 $c3
    ld a, $3c                                     ; $278b: $3e $3c
    ld [de], a                                    ; $278d: $12
    ld de, $c37a                                  ; $278e: $11 $7a $c3
    ld a, $3c                                     ; $2791: $3e $3c
    ld [de], a                                    ; $2793: $12
    ld de, $c37b                                  ; $2794: $11 $7b $c3
    ld a, $3c                                     ; $2797: $3e $3c
    ld [de], a                                    ; $2799: $12
    ld de, $c37c                                  ; $279a: $11 $7c $c3
    ld a, $3c                                     ; $279d: $3e $3c
    ld [de], a                                    ; $279f: $12
    ld de, $c37d                                  ; $27a0: $11 $7d $c3
    ld a, $3c                                     ; $27a3: $3e $3c
    ld [de], a                                    ; $27a5: $12
    ld de, $c37e                                  ; $27a6: $11 $7e $c3
    ld a, $3c                                     ; $27a9: $3e $3c
    ld [de], a                                    ; $27ab: $12
    ld de, $c37f                                  ; $27ac: $11 $7f $c3
    ld a, $3c                                     ; $27af: $3e $3c
    ld [de], a                                    ; $27b1: $12
    ld de, $c380                                  ; $27b2: $11 $80 $c3
    ld a, $24                                     ; $27b5: $3e $24
    ld [de], a                                    ; $27b7: $12
    ld de, $c381                                  ; $27b8: $11 $81 $c3
    ld a, $24                                     ; $27bb: $3e $24
    ld [de], a                                    ; $27bd: $12
    ld de, $c382                                  ; $27be: $11 $82 $c3
    ld a, $00                                     ; $27c1: $3e $00
    ld [de], a                                    ; $27c3: $12
    ld de, $c383                                  ; $27c4: $11 $83 $c3
    ld a, $00                                     ; $27c7: $3e $00
    ld [de], a                                    ; $27c9: $12
    ld de, $c384                                  ; $27ca: $11 $84 $c3
    ld a, $18                                     ; $27cd: $3e $18
    ld [de], a                                    ; $27cf: $12
    ld de, $c385                                  ; $27d0: $11 $85 $c3
    ld a, $18                                     ; $27d3: $3e $18
    ld [de], a                                    ; $27d5: $12
    ld de, $c386                                  ; $27d6: $11 $86 $c3
    ld a, $3c                                     ; $27d9: $3e $3c
    ld [de], a                                    ; $27db: $12
    ld de, $c387                                  ; $27dc: $11 $87 $c3
    ld a, $3c                                     ; $27df: $3e $3c
    ld [de], a                                    ; $27e1: $12
    ld de, $c388                                  ; $27e2: $11 $88 $c3
    ld a, $3c                                     ; $27e5: $3e $3c
    ld [de], a                                    ; $27e7: $12
    ld de, $c389                                  ; $27e8: $11 $89 $c3
    ld a, $3c                                     ; $27eb: $3e $3c
    ld [de], a                                    ; $27ed: $12
    ld de, $c38a                                  ; $27ee: $11 $8a $c3
    ld a, $18                                     ; $27f1: $3e $18
    ld [de], a                                    ; $27f3: $12
    ld de, $c38b                                  ; $27f4: $11 $8b $c3
    ld a, $18                                     ; $27f7: $3e $18
    ld [de], a                                    ; $27f9: $12
    ld de, $c38c                                  ; $27fa: $11 $8c $c3
    ld a, $99                                     ; $27fd: $3e $99
    ld [de], a                                    ; $27ff: $12
    ld de, $c38d                                  ; $2800: $11 $8d $c3
    ld a, $99                                     ; $2803: $3e $99
    ld [de], a                                    ; $2805: $12
    ld de, $c38e                                  ; $2806: $11 $8e $c3
    ld a, $c3                                     ; $2809: $3e $c3
    ld [de], a                                    ; $280b: $12
    ld de, $c38f                                  ; $280c: $11 $8f $c3
    ld a, $c3                                     ; $280f: $3e $c3
    ld [de], a                                    ; $2811: $12
    ld de, $c390                                  ; $2812: $11 $90 $c3
    ld a, $c3                                     ; $2815: $3e $c3
    ld [de], a                                    ; $2817: $12
    ld de, $c391                                  ; $2818: $11 $91 $c3
    ld a, $c3                                     ; $281b: $3e $c3
    ld [de], a                                    ; $281d: $12
    ld de, $c392                                  ; $281e: $11 $92 $c3
    ld a, $99                                     ; $2821: $3e $99
    ld [de], a                                    ; $2823: $12
    ld de, $c393                                  ; $2824: $11 $93 $c3
    ld a, $99                                     ; $2827: $3e $99
    ld [de], a                                    ; $2829: $12
    ld de, $c394                                  ; $282a: $11 $94 $c3
    ld a, $18                                     ; $282d: $3e $18
    ld [de], a                                    ; $282f: $12
    ld de, $c395                                  ; $2830: $11 $95 $c3
    ld a, $18                                     ; $2833: $3e $18
    ld [de], a                                    ; $2835: $12
    ld de, $c396                                  ; $2836: $11 $96 $c3
    ld a, $3c                                     ; $2839: $3e $3c
    ld [de], a                                    ; $283b: $12
    ld de, $c397                                  ; $283c: $11 $97 $c3
    ld a, $3c                                     ; $283f: $3e $3c
    ld [de], a                                    ; $2841: $12
    ld de, $c398                                  ; $2842: $11 $98 $c3
    ld a, $3c                                     ; $2845: $3e $3c
    ld [de], a                                    ; $2847: $12
    ld de, $c399                                  ; $2848: $11 $99 $c3
    ld a, $3c                                     ; $284b: $3e $3c
    ld [de], a                                    ; $284d: $12
    ld de, $c39a                                  ; $284e: $11 $9a $c3
    ld a, $3c                                     ; $2851: $3e $3c
    ld [de], a                                    ; $2853: $12
    ld de, $c39b                                  ; $2854: $11 $9b $c3
    ld a, $3c                                     ; $2857: $3e $3c
    ld [de], a                                    ; $2859: $12
    ld de, $c39c                                  ; $285a: $11 $9c $c3
    ld a, $18                                     ; $285d: $3e $18
    ld [de], a                                    ; $285f: $12
    ld de, $c39d                                  ; $2860: $11 $9d $c3
    ld a, $18                                     ; $2863: $3e $18
    ld [de], a                                    ; $2865: $12
    ld de, $c39e                                  ; $2866: $11 $9e $c3
    ld a, $81                                     ; $2869: $3e $81
    ld [de], a                                    ; $286b: $12
    ld de, $c39f                                  ; $286c: $11 $9f $c3
    ld a, $81                                     ; $286f: $3e $81
    ld [de], a                                    ; $2871: $12
    ld de, $c3a0                                  ; $2872: $11 $a0 $c3
    ld a, $c3                                     ; $2875: $3e $c3
    ld [de], a                                    ; $2877: $12
    ld de, $c3a1                                  ; $2878: $11 $a1 $c3
    ld a, $c3                                     ; $287b: $3e $c3
    ld [de], a                                    ; $287d: $12
    ld de, $c3a2                                  ; $287e: $11 $a2 $c3
    ld a, $e7                                     ; $2881: $3e $e7
    ld [de], a                                    ; $2883: $12
    ld de, $c3a3                                  ; $2884: $11 $a3 $c3
    ld a, $e7                                     ; $2887: $3e $e7
    ld [de], a                                    ; $2889: $12
    ld de, $c3a4                                  ; $288a: $11 $a4 $c3
    ld a, $e7                                     ; $288d: $3e $e7
    ld [de], a                                    ; $288f: $12
    ld de, $c3a5                                  ; $2890: $11 $a5 $c3
    ld a, $e7                                     ; $2893: $3e $e7
    ld [de], a                                    ; $2895: $12
    ld de, $c3a6                                  ; $2896: $11 $a6 $c3
    ld a, $e7                                     ; $2899: $3e $e7
    ld [de], a                                    ; $289b: $12
    ld de, $c3a7                                  ; $289c: $11 $a7 $c3
    ld a, $e7                                     ; $289f: $3e $e7
    ld [de], a                                    ; $28a1: $12
    ld de, $c3a8                                  ; $28a2: $11 $a8 $c3
    ld a, $00                                     ; $28a5: $3e $00
    ld [de], a                                    ; $28a7: $12
    ld de, $c3a9                                  ; $28a8: $11 $a9 $c3
    ld a, $00                                     ; $28ab: $3e $00
    ld [de], a                                    ; $28ad: $12
    ld de, $c3aa                                  ; $28ae: $11 $aa $c3
    ld a, $fc                                     ; $28b1: $3e $fc
    ld [de], a                                    ; $28b3: $12
    ld de, $c3ab                                  ; $28b4: $11 $ab $c3
    ld a, $fc                                     ; $28b7: $3e $fc
    ld [de], a                                    ; $28b9: $12
    ld de, $c3ac                                  ; $28ba: $11 $ac $c3
    ld a, $f9                                     ; $28bd: $3e $f9
    ld [de], a                                    ; $28bf: $12
    ld de, $c3ad                                  ; $28c0: $11 $ad $c3
    ld a, $f9                                     ; $28c3: $3e $f9
    ld [de], a                                    ; $28c5: $12
    ld de, $c3ae                                  ; $28c6: $11 $ae $c3
    ld a, $e3                                     ; $28c9: $3e $e3
    ld [de], a                                    ; $28cb: $12
    ld de, $c3af                                  ; $28cc: $11 $af $c3
    ld a, $e3                                     ; $28cf: $3e $e3
    ld [de], a                                    ; $28d1: $12
    ld de, $c3b0                                  ; $28d2: $11 $b0 $c3
    ld a, $c7                                     ; $28d5: $3e $c7
    ld [de], a                                    ; $28d7: $12
    ld de, $c3b1                                  ; $28d8: $11 $b1 $c3
    ld a, $c7                                     ; $28db: $3e $c7
    ld [de], a                                    ; $28dd: $12
    ld de, $c3b2                                  ; $28de: $11 $b2 $c3
    ld a, $9f                                     ; $28e1: $3e $9f
    ld [de], a                                    ; $28e3: $12
    ld de, $c3b3                                  ; $28e4: $11 $b3 $c3
    ld a, $9f                                     ; $28e7: $3e $9f
    ld [de], a                                    ; $28e9: $12
    ld de, $c3b4                                  ; $28ea: $11 $b4 $c3
    ld a, $3f                                     ; $28ed: $3e $3f
    ld [de], a                                    ; $28ef: $12
    ld de, $c3b5                                  ; $28f0: $11 $b5 $c3
    ld a, $3f                                     ; $28f3: $3e $3f
    ld [de], a                                    ; $28f5: $12
    ld de, $c3b6                                  ; $28f6: $11 $b6 $c3
    ld a, $00                                     ; $28f9: $3e $00
    ld [de], a                                    ; $28fb: $12
    ld de, $c3b7                                  ; $28fc: $11 $b7 $c3
    ld a, $00                                     ; $28ff: $3e $00
    ld [de], a                                    ; $2901: $12
    ld de, $c3b8                                  ; $2902: $11 $b8 $c3
    ld a, $ff                                     ; $2905: $3e $ff
    ld [de], a                                    ; $2907: $12
    ld de, $c3b9                                  ; $2908: $11 $b9 $c3
    ld a, $ff                                     ; $290b: $3e $ff
    ld [de], a                                    ; $290d: $12
    ld de, $c3ba                                  ; $290e: $11 $ba $c3
    ld a, $ff                                     ; $2911: $3e $ff
    ld [de], a                                    ; $2913: $12
    ld de, $c3bb                                  ; $2914: $11 $bb $c3
    ld a, $ff                                     ; $2917: $3e $ff
    ld [de], a                                    ; $2919: $12
    ld de, $c3bc                                  ; $291a: $11 $bc $c3
    ld a, $ff                                     ; $291d: $3e $ff
    ld [de], a                                    ; $291f: $12
    ld de, $c3bd                                  ; $2920: $11 $bd $c3
    ld a, $ff                                     ; $2923: $3e $ff
    ld [de], a                                    ; $2925: $12
    ld de, $c3be                                  ; $2926: $11 $be $c3
    ld a, $ff                                     ; $2929: $3e $ff
    ld [de], a                                    ; $292b: $12
    ld de, $c3bf                                  ; $292c: $11 $bf $c3
    ld a, $ff                                     ; $292f: $3e $ff
    ld [de], a                                    ; $2931: $12
    ld de, $c3c0                                  ; $2932: $11 $c0 $c3
    ld a, $ff                                     ; $2935: $3e $ff
    ld [de], a                                    ; $2937: $12
    ld de, $c3c1                                  ; $2938: $11 $c1 $c3
    ld a, $ff                                     ; $293b: $3e $ff
    ld [de], a                                    ; $293d: $12
    ld de, $c3c2                                  ; $293e: $11 $c2 $c3
    ld a, $ff                                     ; $2941: $3e $ff
    ld [de], a                                    ; $2943: $12
    ld de, $c3c3                                  ; $2944: $11 $c3 $c3
    ld a, $ff                                     ; $2947: $3e $ff
    ld [de], a                                    ; $2949: $12
    ld de, $c3c4                                  ; $294a: $11 $c4 $c3
    ld a, $ff                                     ; $294d: $3e $ff
    ld [de], a                                    ; $294f: $12
    ld de, $c3c5                                  ; $2950: $11 $c5 $c3
    ld a, $ff                                     ; $2953: $3e $ff
    ld [de], a                                    ; $2955: $12
    ld de, $c3c6                                  ; $2956: $11 $c6 $c3
    ld a, $00                                     ; $2959: $3e $00
    ld [de], a                                    ; $295b: $12
    ld de, $c3c7                                  ; $295c: $11 $c7 $c3
    ld a, $00                                     ; $295f: $3e $00
    ld [de], a                                    ; $2961: $12
    ld de, $c3c8                                  ; $2962: $11 $c8 $c3
    ld a, $ff                                     ; $2965: $3e $ff
    ld [de], a                                    ; $2967: $12
    ld de, $c3c9                                  ; $2968: $11 $c9 $c3
    ld a, $ff                                     ; $296b: $3e $ff
    ld [de], a                                    ; $296d: $12
    ld de, $c3ca                                  ; $296e: $11 $ca $c3
    ld a, $ff                                     ; $2971: $3e $ff
    ld [de], a                                    ; $2973: $12
    ld de, $c3cb                                  ; $2974: $11 $cb $c3
    ld a, $ff                                     ; $2977: $3e $ff
    ld [de], a                                    ; $2979: $12
    ld de, $c3cc                                  ; $297a: $11 $cc $c3
    ld a, $ff                                     ; $297d: $3e $ff
    ld [de], a                                    ; $297f: $12
    ld de, $c3cd                                  ; $2980: $11 $cd $c3
    ld a, $ff                                     ; $2983: $3e $ff
    ld [de], a                                    ; $2985: $12
    ld de, $c3ce                                  ; $2986: $11 $ce $c3
    ld a, $ff                                     ; $2989: $3e $ff
    ld [de], a                                    ; $298b: $12
    ld de, $c3cf                                  ; $298c: $11 $cf $c3
    ld a, $ff                                     ; $298f: $3e $ff
    ld [de], a                                    ; $2991: $12
    ld de, $c3d0                                  ; $2992: $11 $d0 $c3
    ld a, $ff                                     ; $2995: $3e $ff
    ld [de], a                                    ; $2997: $12
    ld de, $c3d1                                  ; $2998: $11 $d1 $c3
    ld a, $ff                                     ; $299b: $3e $ff
    ld [de], a                                    ; $299d: $12
    ld de, $c3d2                                  ; $299e: $11 $d2 $c3
    ld a, $ff                                     ; $29a1: $3e $ff
    ld [de], a                                    ; $29a3: $12
    ld de, $c3d3                                  ; $29a4: $11 $d3 $c3
    ld a, $ff                                     ; $29a7: $3e $ff
    ld [de], a                                    ; $29a9: $12
    ld de, $c3d4                                  ; $29aa: $11 $d4 $c3
    ld a, $3f                                     ; $29ad: $3e $3f
    ld [de], a                                    ; $29af: $12
    ld de, $c3d5                                  ; $29b0: $11 $d5 $c3
    ld a, $3f                                     ; $29b3: $3e $3f
    ld [de], a                                    ; $29b5: $12
    ld de, $c3d6                                  ; $29b6: $11 $d6 $c3
    ld a, $3f                                     ; $29b9: $3e $3f
    ld [de], a                                    ; $29bb: $12
    ld de, $c3d7                                  ; $29bc: $11 $d7 $c3
    ld a, $3f                                     ; $29bf: $3e $3f
    ld [de], a                                    ; $29c1: $12
    ld de, $c3d8                                  ; $29c2: $11 $d8 $c3
    ld a, $ff                                     ; $29c5: $3e $ff
    ld [de], a                                    ; $29c7: $12
    ld de, $c3d9                                  ; $29c8: $11 $d9 $c3
    ld a, $ff                                     ; $29cb: $3e $ff
    ld [de], a                                    ; $29cd: $12
    ld de, $c3da                                  ; $29ce: $11 $da $c3
    ld a, $ff                                     ; $29d1: $3e $ff
    ld [de], a                                    ; $29d3: $12
    ld de, $c3db                                  ; $29d4: $11 $db $c3
    ld a, $ff                                     ; $29d7: $3e $ff
    ld [de], a                                    ; $29d9: $12
    ld de, $c3dc                                  ; $29da: $11 $dc $c3
    ld a, $ff                                     ; $29dd: $3e $ff
    ld [de], a                                    ; $29df: $12
    ld de, $c3dd                                  ; $29e0: $11 $dd $c3
    ld a, $ff                                     ; $29e3: $3e $ff
    ld [de], a                                    ; $29e5: $12
    ld de, $c3de                                  ; $29e6: $11 $de $c3
    ld a, $81                                     ; $29e9: $3e $81
    ld [de], a                                    ; $29eb: $12
    ld de, $c3df                                  ; $29ec: $11 $df $c3
    ld a, $81                                     ; $29ef: $3e $81
    ld [de], a                                    ; $29f1: $12
    ld de, $c3e0                                  ; $29f2: $11 $e0 $c3
    ld a, $81                                     ; $29f5: $3e $81
    ld [de], a                                    ; $29f7: $12
    ld de, $c3e1                                  ; $29f8: $11 $e1 $c3
    ld a, $81                                     ; $29fb: $3e $81
    ld [de], a                                    ; $29fd: $12
    ld de, $c3e2                                  ; $29fe: $11 $e2 $c3
    ld a, $ff                                     ; $2a01: $3e $ff
    ld [de], a                                    ; $2a03: $12
    ld de, $c3e3                                  ; $2a04: $11 $e3 $c3
    ld a, $ff                                     ; $2a07: $3e $ff
    ld [de], a                                    ; $2a09: $12
    ld de, $c3e4                                  ; $2a0a: $11 $e4 $c3
    ld a, $ff                                     ; $2a0d: $3e $ff
    ld [de], a                                    ; $2a0f: $12
    ld de, $c3e5                                  ; $2a10: $11 $e5 $c3
    ld a, $ff                                     ; $2a13: $3e $ff
    ld [de], a                                    ; $2a15: $12
    ld de, $c3e6                                  ; $2a16: $11 $e6 $c3
    ld a, $ff                                     ; $2a19: $3e $ff
    ld [de], a                                    ; $2a1b: $12
    ld de, $c3e7                                  ; $2a1c: $11 $e7 $c3
    ld a, $ff                                     ; $2a1f: $3e $ff
    ld [de], a                                    ; $2a21: $12
    ld de, $c3e8                                  ; $2a22: $11 $e8 $c3
    ld a, $e7                                     ; $2a25: $3e $e7
    ld [de], a                                    ; $2a27: $12
    ld de, $c3e9                                  ; $2a28: $11 $e9 $c3
    ld a, $e7                                     ; $2a2b: $3e $e7
    ld [de], a                                    ; $2a2d: $12
    ld de, $c3ea                                  ; $2a2e: $11 $ea $c3
    ld a, $e7                                     ; $2a31: $3e $e7
    ld [de], a                                    ; $2a33: $12
    ld de, $c3eb                                  ; $2a34: $11 $eb $c3
    ld a, $e7                                     ; $2a37: $3e $e7
    ld [de], a                                    ; $2a39: $12
    ld de, $c3ec                                  ; $2a3a: $11 $ec $c3
    ld a, $e7                                     ; $2a3d: $3e $e7
    ld [de], a                                    ; $2a3f: $12
    ld de, $c3ed                                  ; $2a40: $11 $ed $c3
    ld a, $e7                                     ; $2a43: $3e $e7
    ld [de], a                                    ; $2a45: $12
    ld de, $c3ee                                  ; $2a46: $11 $ee $c3
    ld a, $e7                                     ; $2a49: $3e $e7
    ld [de], a                                    ; $2a4b: $12
    ld de, $c3ef                                  ; $2a4c: $11 $ef $c3
    ld a, $e7                                     ; $2a4f: $3e $e7
    ld [de], a                                    ; $2a51: $12
    ld de, $c3f0                                  ; $2a52: $11 $f0 $c3
    ld a, $e7                                     ; $2a55: $3e $e7
    ld [de], a                                    ; $2a57: $12
    ld de, $c3f1                                  ; $2a58: $11 $f1 $c3
    ld a, $e7                                     ; $2a5b: $3e $e7
    ld [de], a                                    ; $2a5d: $12
    ld de, $c3f2                                  ; $2a5e: $11 $f2 $c3
    ld a, $ff                                     ; $2a61: $3e $ff
    ld [de], a                                    ; $2a63: $12
    ld de, $c3f3                                  ; $2a64: $11 $f3 $c3
    ld a, $ff                                     ; $2a67: $3e $ff
    ld [de], a                                    ; $2a69: $12
    ld de, $c3f4                                  ; $2a6a: $11 $f4 $c3
    ld a, $e7                                     ; $2a6d: $3e $e7
    ld [de], a                                    ; $2a6f: $12
    ld de, $c3f5                                  ; $2a70: $11 $f5 $c3
    ld a, $e7                                     ; $2a73: $3e $e7
    ld [de], a                                    ; $2a75: $12
    ld de, $c3f6                                  ; $2a76: $11 $f6 $c3
    ld a, $e7                                     ; $2a79: $3e $e7
    ld [de], a                                    ; $2a7b: $12
    ld de, $c3f7                                  ; $2a7c: $11 $f7 $c3
    ld a, $e7                                     ; $2a7f: $3e $e7
    ld [de], a                                    ; $2a81: $12
    ld de, $c3f8                                  ; $2a82: $11 $f8 $c3
    ld a, $c3                                     ; $2a85: $3e $c3
    ld [de], a                                    ; $2a87: $12
    ld de, $c3f9                                  ; $2a88: $11 $f9 $c3
    ld a, $c3                                     ; $2a8b: $3e $c3
    ld [de], a                                    ; $2a8d: $12
    ld de, $c3fa                                  ; $2a8e: $11 $fa $c3
    ld a, $b9                                     ; $2a91: $3e $b9
    ld [de], a                                    ; $2a93: $12
    ld de, $c3fb                                  ; $2a94: $11 $fb $c3
    ld a, $b9                                     ; $2a97: $3e $b9
    ld [de], a                                    ; $2a99: $12
    ld de, $c3fc                                  ; $2a9a: $11 $fc $c3
    ld a, $3c                                     ; $2a9d: $3e $3c
    ld [de], a                                    ; $2a9f: $12
    ld de, $c3fd                                  ; $2aa0: $11 $fd $c3
    ld a, $3c                                     ; $2aa3: $3e $3c
    ld [de], a                                    ; $2aa5: $12
    ld de, $c3fe                                  ; $2aa6: $11 $fe $c3
    ld a, $3c                                     ; $2aa9: $3e $3c
    ld [de], a                                    ; $2aab: $12
    ld de, $c3ff                                  ; $2aac: $11 $ff $c3
    ld a, $3c                                     ; $2aaf: $3e $3c
    ld [de], a                                    ; $2ab1: $12
    ld de, $c400                                  ; $2ab2: $11 $00 $c4
    ld a, $3c                                     ; $2ab5: $3e $3c
    ld [de], a                                    ; $2ab7: $12
    ld de, $c401                                  ; $2ab8: $11 $01 $c4
    ld a, $3c                                     ; $2abb: $3e $3c
    ld [de], a                                    ; $2abd: $12
    ld de, $c402                                  ; $2abe: $11 $02 $c4
    ld a, $3c                                     ; $2ac1: $3e $3c
    ld [de], a                                    ; $2ac3: $12
    ld de, $c403                                  ; $2ac4: $11 $03 $c4
    ld a, $3c                                     ; $2ac7: $3e $3c
    ld [de], a                                    ; $2ac9: $12
    ld de, $c404                                  ; $2aca: $11 $04 $c4
    ld a, $9d                                     ; $2acd: $3e $9d
    ld [de], a                                    ; $2acf: $12
    ld de, $c405                                  ; $2ad0: $11 $05 $c4
    ld a, $9d                                     ; $2ad3: $3e $9d
    ld [de], a                                    ; $2ad5: $12
    ld de, $c406                                  ; $2ad6: $11 $06 $c4
    ld a, $c3                                     ; $2ad9: $3e $c3
    ld [de], a                                    ; $2adb: $12
    ld de, $c407                                  ; $2adc: $11 $07 $c4
    ld a, $c3                                     ; $2adf: $3e $c3
    ld [de], a                                    ; $2ae1: $12
    ld de, $c408                                  ; $2ae2: $11 $08 $c4
    ld a, $e7                                     ; $2ae5: $3e $e7
    ld [de], a                                    ; $2ae7: $12
    ld de, $c409                                  ; $2ae8: $11 $09 $c4
    ld a, $e7                                     ; $2aeb: $3e $e7
    ld [de], a                                    ; $2aed: $12
    ld de, $c40a                                  ; $2aee: $11 $0a $c4
    ld a, $c7                                     ; $2af1: $3e $c7
    ld [de], a                                    ; $2af3: $12
    ld de, $c40b                                  ; $2af4: $11 $0b $c4
    ld a, $c7                                     ; $2af7: $3e $c7
    ld [de], a                                    ; $2af9: $12
    ld de, $c40c                                  ; $2afa: $11 $0c $c4
    ld a, $e7                                     ; $2afd: $3e $e7
    ld [de], a                                    ; $2aff: $12
    ld de, $c40d                                  ; $2b00: $11 $0d $c4
    ld a, $e7                                     ; $2b03: $3e $e7
    ld [de], a                                    ; $2b05: $12
    ld de, $c40e                                  ; $2b06: $11 $0e $c4
    ld a, $e7                                     ; $2b09: $3e $e7
    ld [de], a                                    ; $2b0b: $12
    ld de, $c40f                                  ; $2b0c: $11 $0f $c4
    ld a, $e7                                     ; $2b0f: $3e $e7
    ld [de], a                                    ; $2b11: $12
    ld de, $c410                                  ; $2b12: $11 $10 $c4
    ld a, $e7                                     ; $2b15: $3e $e7
    ld [de], a                                    ; $2b17: $12
    ld de, $c411                                  ; $2b18: $11 $11 $c4
    ld a, $e7                                     ; $2b1b: $3e $e7
    ld [de], a                                    ; $2b1d: $12
    ld de, $c412                                  ; $2b1e: $11 $12 $c4
    ld a, $e7                                     ; $2b21: $3e $e7
    ld [de], a                                    ; $2b23: $12
    ld de, $c413                                  ; $2b24: $11 $13 $c4
    ld a, $e7                                     ; $2b27: $3e $e7
    ld [de], a                                    ; $2b29: $12
    ld de, $c414                                  ; $2b2a: $11 $14 $c4
    ld a, $e7                                     ; $2b2d: $3e $e7
    ld [de], a                                    ; $2b2f: $12
    ld de, $c415                                  ; $2b30: $11 $15 $c4
    ld a, $e7                                     ; $2b33: $3e $e7
    ld [de], a                                    ; $2b35: $12
    ld de, $c416                                  ; $2b36: $11 $16 $c4
    ld a, $81                                     ; $2b39: $3e $81
    ld [de], a                                    ; $2b3b: $12
    ld de, $c417                                  ; $2b3c: $11 $17 $c4
    ld a, $81                                     ; $2b3f: $3e $81
    ld [de], a                                    ; $2b41: $12
    ld de, $c418                                  ; $2b42: $11 $18 $c4
    ld a, $81                                     ; $2b45: $3e $81
    ld [de], a                                    ; $2b47: $12
    ld de, $c419                                  ; $2b48: $11 $19 $c4
    ld a, $81                                     ; $2b4b: $3e $81
    ld [de], a                                    ; $2b4d: $12
    ld de, $c41a                                  ; $2b4e: $11 $1a $c4
    ld a, $3c                                     ; $2b51: $3e $3c
    ld [de], a                                    ; $2b53: $12
    ld de, $c41b                                  ; $2b54: $11 $1b $c4
    ld a, $3c                                     ; $2b57: $3e $3c
    ld [de], a                                    ; $2b59: $12
    ld de, $c41c                                  ; $2b5a: $11 $1c $c4
    ld a, $fc                                     ; $2b5d: $3e $fc
    ld [de], a                                    ; $2b5f: $12
    ld de, $c41d                                  ; $2b60: $11 $1d $c4
    ld a, $fc                                     ; $2b63: $3e $fc
    ld [de], a                                    ; $2b65: $12
    ld de, $c41e                                  ; $2b66: $11 $1e $c4
    ld a, $f9                                     ; $2b69: $3e $f9
    ld [de], a                                    ; $2b6b: $12
    ld de, $c41f                                  ; $2b6c: $11 $1f $c4
    ld a, $f9                                     ; $2b6f: $3e $f9
    ld [de], a                                    ; $2b71: $12
    ld de, $c420                                  ; $2b72: $11 $20 $c4
    ld a, $f3                                     ; $2b75: $3e $f3
    ld [de], a                                    ; $2b77: $12
    ld de, $c421                                  ; $2b78: $11 $21 $c4
    ld a, $f3                                     ; $2b7b: $3e $f3
    ld [de], a                                    ; $2b7d: $12
    ld de, $c422                                  ; $2b7e: $11 $22 $c4
    ld a, $c7                                     ; $2b81: $3e $c7
    ld [de], a                                    ; $2b83: $12
    ld de, $c423                                  ; $2b84: $11 $23 $c4
    ld a, $c7                                     ; $2b87: $3e $c7
    ld [de], a                                    ; $2b89: $12
    ld de, $c424                                  ; $2b8a: $11 $24 $c4
    ld a, $8f                                     ; $2b8d: $3e $8f
    ld [de], a                                    ; $2b8f: $12
    ld de, $c425                                  ; $2b90: $11 $25 $c4
    ld a, $8f                                     ; $2b93: $3e $8f
    ld [de], a                                    ; $2b95: $12
    ld de, $c426                                  ; $2b96: $11 $26 $c4
    ld a, $00                                     ; $2b99: $3e $00
    ld [de], a                                    ; $2b9b: $12
    ld de, $c427                                  ; $2b9c: $11 $27 $c4
    ld a, $00                                     ; $2b9f: $3e $00
    ld [de], a                                    ; $2ba1: $12
    ld de, $c428                                  ; $2ba2: $11 $28 $c4
    ld a, $c0                                     ; $2ba5: $3e $c0
    ld [de], a                                    ; $2ba7: $12
    ld de, $c429                                  ; $2ba8: $11 $29 $c4
    ld a, $c0                                     ; $2bab: $3e $c0
    ld [de], a                                    ; $2bad: $12
    ld de, $c42a                                  ; $2bae: $11 $2a $c4
    ld a, $f9                                     ; $2bb1: $3e $f9
    ld [de], a                                    ; $2bb3: $12
    ld de, $c42b                                  ; $2bb4: $11 $2b $c4
    ld a, $f9                                     ; $2bb7: $3e $f9
    ld [de], a                                    ; $2bb9: $12
    ld de, $c42c                                  ; $2bba: $11 $2c $c4
    ld a, $f3                                     ; $2bbd: $3e $f3
    ld [de], a                                    ; $2bbf: $12
    ld de, $c42d                                  ; $2bc0: $11 $2d $c4
    ld a, $f3                                     ; $2bc3: $3e $f3
    ld [de], a                                    ; $2bc5: $12
    ld de, $c42e                                  ; $2bc6: $11 $2e $c4
    ld a, $e7                                     ; $2bc9: $3e $e7
    ld [de], a                                    ; $2bcb: $12
    ld de, $c42f                                  ; $2bcc: $11 $2f $c4
    ld a, $e7                                     ; $2bcf: $3e $e7
    ld [de], a                                    ; $2bd1: $12
    ld de, $c430                                  ; $2bd2: $11 $30 $c4
    ld a, $c1                                     ; $2bd5: $3e $c1
    ld [de], a                                    ; $2bd7: $12
    ld de, $c431                                  ; $2bd8: $11 $31 $c4
    ld a, $c1                                     ; $2bdb: $3e $c1
    ld [de], a                                    ; $2bdd: $12
    ld de, $c432                                  ; $2bde: $11 $32 $c4
    ld a, $fc                                     ; $2be1: $3e $fc
    ld [de], a                                    ; $2be3: $12
    ld de, $c433                                  ; $2be4: $11 $33 $c4
    ld a, $fc                                     ; $2be7: $3e $fc
    ld [de], a                                    ; $2be9: $12
    ld de, $c434                                  ; $2bea: $11 $34 $c4
    ld a, $3c                                     ; $2bed: $3e $3c
    ld [de], a                                    ; $2bef: $12
    ld de, $c435                                  ; $2bf0: $11 $35 $c4
    ld a, $3c                                     ; $2bf3: $3e $3c
    ld [de], a                                    ; $2bf5: $12
    ld de, $c436                                  ; $2bf6: $11 $36 $c4
    ld a, $81                                     ; $2bf9: $3e $81
    ld [de], a                                    ; $2bfb: $12
    ld de, $c437                                  ; $2bfc: $11 $37 $c4
    ld a, $81                                     ; $2bff: $3e $81
    ld [de], a                                    ; $2c01: $12
    ld de, $c438                                  ; $2c02: $11 $38 $c4
    ld a, $f3                                     ; $2c05: $3e $f3
    ld [de], a                                    ; $2c07: $12
    ld de, $c439                                  ; $2c08: $11 $39 $c4
    ld a, $f3                                     ; $2c0b: $3e $f3
    ld [de], a                                    ; $2c0d: $12
    ld de, $c43a                                  ; $2c0e: $11 $3a $c4
    ld a, $e3                                     ; $2c11: $3e $e3
    ld [de], a                                    ; $2c13: $12
    ld de, $c43b                                  ; $2c14: $11 $3b $c4
    ld a, $e3                                     ; $2c17: $3e $e3
    ld [de], a                                    ; $2c19: $12
    ld de, $c43c                                  ; $2c1a: $11 $3c $c4
    ld a, $c3                                     ; $2c1d: $3e $c3
    ld [de], a                                    ; $2c1f: $12
    ld de, $c43d                                  ; $2c20: $11 $3d $c4
    ld a, $c3                                     ; $2c23: $3e $c3
    ld [de], a                                    ; $2c25: $12
    ld de, $c43e                                  ; $2c26: $11 $3e $c4
    ld a, $93                                     ; $2c29: $3e $93
    ld [de], a                                    ; $2c2b: $12
    ld de, $c43f                                  ; $2c2c: $11 $3f $c4
    ld a, $93                                     ; $2c2f: $3e $93
    ld [de], a                                    ; $2c31: $12
    ld de, $c440                                  ; $2c32: $11 $40 $c4
    ld a, $33                                     ; $2c35: $3e $33
    ld [de], a                                    ; $2c37: $12
    ld de, $c441                                  ; $2c38: $11 $41 $c4
    ld a, $33                                     ; $2c3b: $3e $33
    ld [de], a                                    ; $2c3d: $12
    ld de, $c442                                  ; $2c3e: $11 $42 $c4
    ld a, $00                                     ; $2c41: $3e $00
    ld [de], a                                    ; $2c43: $12
    ld de, $c443                                  ; $2c44: $11 $43 $c4
    ld a, $00                                     ; $2c47: $3e $00
    ld [de], a                                    ; $2c49: $12
    ld de, $c444                                  ; $2c4a: $11 $44 $c4
    ld a, $f3                                     ; $2c4d: $3e $f3
    ld [de], a                                    ; $2c4f: $12
    ld de, $c445                                  ; $2c50: $11 $45 $c4
    ld a, $f3                                     ; $2c53: $3e $f3
    ld [de], a                                    ; $2c55: $12
    ld de, $c446                                  ; $2c56: $11 $46 $c4
    ld a, $f3                                     ; $2c59: $3e $f3
    ld [de], a                                    ; $2c5b: $12
    ld de, $c447                                  ; $2c5c: $11 $47 $c4
    ld a, $f3                                     ; $2c5f: $3e $f3
    ld [de], a                                    ; $2c61: $12
    ld de, $c448                                  ; $2c62: $11 $48 $c4
    ld a, $03                                     ; $2c65: $3e $03
    ld [de], a                                    ; $2c67: $12
    ld de, $c449                                  ; $2c68: $11 $49 $c4
    ld a, $03                                     ; $2c6b: $3e $03
    ld [de], a                                    ; $2c6d: $12
    ld de, $c44a                                  ; $2c6e: $11 $4a $c4
    ld a, $7f                                     ; $2c71: $3e $7f
    ld [de], a                                    ; $2c73: $12
    ld de, $c44b                                  ; $2c74: $11 $4b $c4
    ld a, $7f                                     ; $2c77: $3e $7f
    ld [de], a                                    ; $2c79: $12
    ld de, $c44c                                  ; $2c7a: $11 $4c $c4
    ld a, $01                                     ; $2c7d: $3e $01
    ld [de], a                                    ; $2c7f: $12
    ld de, $c44d                                  ; $2c80: $11 $4d $c4
    ld a, $01                                     ; $2c83: $3e $01
    ld [de], a                                    ; $2c85: $12
    ld de, $c44e                                  ; $2c86: $11 $4e $c4
    ld a, $fc                                     ; $2c89: $3e $fc
    ld [de], a                                    ; $2c8b: $12
    ld de, $c44f                                  ; $2c8c: $11 $4f $c4
    ld a, $fc                                     ; $2c8f: $3e $fc
    ld [de], a                                    ; $2c91: $12
    ld de, $c450                                  ; $2c92: $11 $50 $c4
    ld a, $fc                                     ; $2c95: $3e $fc
    ld [de], a                                    ; $2c97: $12
    ld de, $c451                                  ; $2c98: $11 $51 $c4
    ld a, $fc                                     ; $2c9b: $3e $fc
    ld [de], a                                    ; $2c9d: $12
    ld de, $c452                                  ; $2c9e: $11 $52 $c4
    ld a, $fc                                     ; $2ca1: $3e $fc
    ld [de], a                                    ; $2ca3: $12
    ld de, $c453                                  ; $2ca4: $11 $53 $c4
    ld a, $fc                                     ; $2ca7: $3e $fc
    ld [de], a                                    ; $2ca9: $12
    ld de, $c454                                  ; $2caa: $11 $54 $c4
    ld a, $3c                                     ; $2cad: $3e $3c
    ld [de], a                                    ; $2caf: $12
    ld de, $c455                                  ; $2cb0: $11 $55 $c4
    ld a, $3c                                     ; $2cb3: $3e $3c
    ld [de], a                                    ; $2cb5: $12
    ld de, $c456                                  ; $2cb6: $11 $56 $c4
    ld a, $81                                     ; $2cb9: $3e $81
    ld [de], a                                    ; $2cbb: $12
    ld de, $c457                                  ; $2cbc: $11 $57 $c4
    ld a, $81                                     ; $2cbf: $3e $81
    ld [de], a                                    ; $2cc1: $12
    ld de, $c458                                  ; $2cc2: $11 $58 $c4
    ld a, $e0                                     ; $2cc5: $3e $e0
    ld [de], a                                    ; $2cc7: $12
    ld de, $c459                                  ; $2cc8: $11 $59 $c4
    ld a, $e0                                     ; $2ccb: $3e $e0
    ld [de], a                                    ; $2ccd: $12
    ld de, $c45a                                  ; $2cce: $11 $5a $c4
    ld a, $cf                                     ; $2cd1: $3e $cf
    ld [de], a                                    ; $2cd3: $12
    ld de, $c45b                                  ; $2cd4: $11 $5b $c4
    ld a, $cf                                     ; $2cd7: $3e $cf
    ld [de], a                                    ; $2cd9: $12
    ld de, $c45c                                  ; $2cda: $11 $5c $c4
    ld a, $9f                                     ; $2cdd: $3e $9f
    ld [de], a                                    ; $2cdf: $12
    ld de, $c45d                                  ; $2ce0: $11 $5d $c4
    ld a, $9f                                     ; $2ce3: $3e $9f
    ld [de], a                                    ; $2ce5: $12
    ld de, $c45e                                  ; $2ce6: $11 $5e $c4
    ld a, $3f                                     ; $2ce9: $3e $3f
    ld [de], a                                    ; $2ceb: $12
    ld de, $c45f                                  ; $2cec: $11 $5f $c4
    ld a, $3f                                     ; $2cef: $3e $3f
    ld [de], a                                    ; $2cf1: $12
    ld de, $c460                                  ; $2cf2: $11 $60 $c4
    ld a, $00                                     ; $2cf5: $3e $00
    ld [de], a                                    ; $2cf7: $12
    ld de, $c461                                  ; $2cf8: $11 $61 $c4
    ld a, $00                                     ; $2cfb: $3e $00
    ld [de], a                                    ; $2cfd: $12
    ld de, $c462                                  ; $2cfe: $11 $62 $c4
    ld a, $3c                                     ; $2d01: $3e $3c
    ld [de], a                                    ; $2d03: $12
    ld de, $c463                                  ; $2d04: $11 $63 $c4
    ld a, $3c                                     ; $2d07: $3e $3c
    ld [de], a                                    ; $2d09: $12
    ld de, $c464                                  ; $2d0a: $11 $64 $c4
    ld a, $3c                                     ; $2d0d: $3e $3c
    ld [de], a                                    ; $2d0f: $12
    ld de, $c465                                  ; $2d10: $11 $65 $c4
    ld a, $3c                                     ; $2d13: $3e $3c
    ld [de], a                                    ; $2d15: $12
    ld de, $c466                                  ; $2d16: $11 $66 $c4
    ld a, $81                                     ; $2d19: $3e $81
    ld [de], a                                    ; $2d1b: $12
    ld de, $c467                                  ; $2d1c: $11 $67 $c4
    ld a, $81                                     ; $2d1f: $3e $81
    ld [de], a                                    ; $2d21: $12
    ld de, $c468                                  ; $2d22: $11 $68 $c4
    ld a, $00                                     ; $2d25: $3e $00
    ld [de], a                                    ; $2d27: $12
    ld de, $c469                                  ; $2d28: $11 $69 $c4
    ld a, $00                                     ; $2d2b: $3e $00
    ld [de], a                                    ; $2d2d: $12
    ld de, $c46a                                  ; $2d2e: $11 $6a $c4
    ld a, $3c                                     ; $2d31: $3e $3c
    ld [de], a                                    ; $2d33: $12
    ld de, $c46b                                  ; $2d34: $11 $6b $c4
    ld a, $3c                                     ; $2d37: $3e $3c
    ld [de], a                                    ; $2d39: $12
    ld de, $c46c                                  ; $2d3a: $11 $6c $c4
    ld a, $f9                                     ; $2d3d: $3e $f9
    ld [de], a                                    ; $2d3f: $12
    ld de, $c46d                                  ; $2d40: $11 $6d $c4
    ld a, $f9                                     ; $2d43: $3e $f9
    ld [de], a                                    ; $2d45: $12
    ld de, $c46e                                  ; $2d46: $11 $6e $c4
    ld a, $f3                                     ; $2d49: $3e $f3
    ld [de], a                                    ; $2d4b: $12
    ld de, $c46f                                  ; $2d4c: $11 $6f $c4
    ld a, $f3                                     ; $2d4f: $3e $f3
    ld [de], a                                    ; $2d51: $12
    ld de, $c470                                  ; $2d52: $11 $70 $c4
    ld a, $e7                                     ; $2d55: $3e $e7
    ld [de], a                                    ; $2d57: $12
    ld de, $c471                                  ; $2d58: $11 $71 $c4
    ld a, $e7                                     ; $2d5b: $3e $e7
    ld [de], a                                    ; $2d5d: $12
    ld de, $c472                                  ; $2d5e: $11 $72 $c4
    ld a, $e7                                     ; $2d61: $3e $e7
    ld [de], a                                    ; $2d63: $12
    ld de, $c473                                  ; $2d64: $11 $73 $c4
    ld a, $e7                                     ; $2d67: $3e $e7
    ld [de], a                                    ; $2d69: $12
    ld de, $c474                                  ; $2d6a: $11 $74 $c4
    ld a, $e7                                     ; $2d6d: $3e $e7
    ld [de], a                                    ; $2d6f: $12
    ld de, $c475                                  ; $2d70: $11 $75 $c4
    ld a, $e7                                     ; $2d73: $3e $e7
    ld [de], a                                    ; $2d75: $12
    ld de, $c476                                  ; $2d76: $11 $76 $c4
    ld a, $e7                                     ; $2d79: $3e $e7
    ld [de], a                                    ; $2d7b: $12
    ld de, $c477                                  ; $2d7c: $11 $77 $c4
    ld a, $e7                                     ; $2d7f: $3e $e7
    ld [de], a                                    ; $2d81: $12
    ld de, $c478                                  ; $2d82: $11 $78 $c4
    ld a, $c3                                     ; $2d85: $3e $c3
    ld [de], a                                    ; $2d87: $12
    ld de, $c479                                  ; $2d88: $11 $79 $c4
    ld a, $c3                                     ; $2d8b: $3e $c3
    ld [de], a                                    ; $2d8d: $12
    ld de, $c47a                                  ; $2d8e: $11 $7a $c4
    ld a, $bd                                     ; $2d91: $3e $bd
    ld [de], a                                    ; $2d93: $12
    ld de, $c47b                                  ; $2d94: $11 $7b $c4
    ld a, $bd                                     ; $2d97: $3e $bd
    ld [de], a                                    ; $2d99: $12
    ld de, $c47c                                  ; $2d9a: $11 $7c $c4
    ld a, $99                                     ; $2d9d: $3e $99
    ld [de], a                                    ; $2d9f: $12
    ld de, $c47d                                  ; $2da0: $11 $7d $c4
    ld a, $99                                     ; $2da3: $3e $99
    ld [de], a                                    ; $2da5: $12
    ld de, $c47e                                  ; $2da6: $11 $7e $c4
    ld a, $e3                                     ; $2da9: $3e $e3
    ld [de], a                                    ; $2dab: $12
    ld de, $c47f                                  ; $2dac: $11 $7f $c4
    ld a, $e3                                     ; $2daf: $3e $e3
    ld [de], a                                    ; $2db1: $12
    ld de, $c480                                  ; $2db2: $11 $80 $c4
    ld a, $c7                                     ; $2db5: $3e $c7
    ld [de], a                                    ; $2db7: $12
    ld de, $c481                                  ; $2db8: $11 $81 $c4
    ld a, $c7                                     ; $2dbb: $3e $c7
    ld [de], a                                    ; $2dbd: $12
    ld de, $c482                                  ; $2dbe: $11 $82 $c4
    ld a, $99                                     ; $2dc1: $3e $99
    ld [de], a                                    ; $2dc3: $12
    ld de, $c483                                  ; $2dc4: $11 $83 $c4
    ld a, $99                                     ; $2dc7: $3e $99
    ld [de], a                                    ; $2dc9: $12
    ld de, $c484                                  ; $2dca: $11 $84 $c4
    ld a, $bd                                     ; $2dcd: $3e $bd
    ld [de], a                                    ; $2dcf: $12
    ld de, $c485                                  ; $2dd0: $11 $85 $c4
    ld a, $bd                                     ; $2dd3: $3e $bd
    ld [de], a                                    ; $2dd5: $12
    ld de, $c486                                  ; $2dd6: $11 $86 $c4
    ld a, $c3                                     ; $2dd9: $3e $c3
    ld [de], a                                    ; $2ddb: $12
    ld de, $c487                                  ; $2ddc: $11 $87 $c4
    ld a, $c3                                     ; $2ddf: $3e $c3
    ld [de], a                                    ; $2de1: $12
    ld de, $c488                                  ; $2de2: $11 $88 $c4
    ld a, $81                                     ; $2de5: $3e $81
    ld [de], a                                    ; $2de7: $12
    ld de, $c489                                  ; $2de8: $11 $89 $c4
    ld a, $81                                     ; $2deb: $3e $81
    ld [de], a                                    ; $2ded: $12
    ld de, $c48a                                  ; $2dee: $11 $8a $c4
    ld a, $3c                                     ; $2df1: $3e $3c
    ld [de], a                                    ; $2df3: $12
    ld de, $c48b                                  ; $2df4: $11 $8b $c4
    ld a, $3c                                     ; $2df7: $3e $3c
    ld [de], a                                    ; $2df9: $12
    ld de, $c48c                                  ; $2dfa: $11 $8c $c4
    ld a, $3c                                     ; $2dfd: $3e $3c
    ld [de], a                                    ; $2dff: $12
    ld de, $c48d                                  ; $2e00: $11 $8d $c4
    ld a, $3c                                     ; $2e03: $3e $3c
    ld [de], a                                    ; $2e05: $12
    ld de, $c48e                                  ; $2e06: $11 $8e $c4
    ld a, $00                                     ; $2e09: $3e $00
    ld [de], a                                    ; $2e0b: $12
    ld de, $c48f                                  ; $2e0c: $11 $8f $c4
    ld a, $00                                     ; $2e0f: $3e $00
    ld [de], a                                    ; $2e11: $12
    ld de, $c490                                  ; $2e12: $11 $90 $c4
    ld a, $fc                                     ; $2e15: $3e $fc
    ld [de], a                                    ; $2e17: $12
    ld de, $c491                                  ; $2e18: $11 $91 $c4
    ld a, $fc                                     ; $2e1b: $3e $fc
    ld [de], a                                    ; $2e1d: $12
    ld de, $c492                                  ; $2e1e: $11 $92 $c4
    ld a, $fc                                     ; $2e21: $3e $fc
    ld [de], a                                    ; $2e23: $12
    ld de, $c493                                  ; $2e24: $11 $93 $c4
    ld a, $fc                                     ; $2e27: $3e $fc
    ld [de], a                                    ; $2e29: $12
    ld de, $c494                                  ; $2e2a: $11 $94 $c4
    ld a, $39                                     ; $2e2d: $3e $39
    ld [de], a                                    ; $2e2f: $12
    ld de, $c495                                  ; $2e30: $11 $95 $c4
    ld a, $39                                     ; $2e33: $3e $39
    ld [de], a                                    ; $2e35: $12
    ld de, $c496                                  ; $2e36: $11 $96 $c4
    ld a, $83                                     ; $2e39: $3e $83
    ld [de], a                                    ; $2e3b: $12
    ld de, $c497                                  ; $2e3c: $11 $97 $c4
    ld a, $83                                     ; $2e3f: $3e $83
    ld [de], a                                    ; $2e41: $12
    ld de, $c498                                  ; $2e42: $11 $98 $c4
    ld a, $ff                                     ; $2e45: $3e $ff
    ld [de], a                                    ; $2e47: $12
    ld de, $c499                                  ; $2e48: $11 $99 $c4
    ld a, $ff                                     ; $2e4b: $3e $ff
    ld [de], a                                    ; $2e4d: $12
    ld de, $c49a                                  ; $2e4e: $11 $9a $c4
    ld a, $99                                     ; $2e51: $3e $99
    ld [de], a                                    ; $2e53: $12
    ld de, $c49b                                  ; $2e54: $11 $9b $c4
    ld a, $99                                     ; $2e57: $3e $99
    ld [de], a                                    ; $2e59: $12
    ld de, $c49c                                  ; $2e5a: $11 $9c $c4
    ld a, $c3                                     ; $2e5d: $3e $c3
    ld [de], a                                    ; $2e5f: $12
    ld de, $c49d                                  ; $2e60: $11 $9d $c4
    ld a, $c3                                     ; $2e63: $3e $c3
    ld [de], a                                    ; $2e65: $12
    ld de, $c49e                                  ; $2e66: $11 $9e $c4
    ld a, $e7                                     ; $2e69: $3e $e7
    ld [de], a                                    ; $2e6b: $12
    ld de, $c49f                                  ; $2e6c: $11 $9f $c4
    ld a, $e7                                     ; $2e6f: $3e $e7
    ld [de], a                                    ; $2e71: $12
    ld de, $c4a0                                  ; $2e72: $11 $a0 $c4
    ld a, $c3                                     ; $2e75: $3e $c3
    ld [de], a                                    ; $2e77: $12
    ld de, $c4a1                                  ; $2e78: $11 $a1 $c4
    ld a, $c3                                     ; $2e7b: $3e $c3
    ld [de], a                                    ; $2e7d: $12
    ld de, $c4a2                                  ; $2e7e: $11 $a2 $c4
    ld a, $99                                     ; $2e81: $3e $99
    ld [de], a                                    ; $2e83: $12
    ld de, $c4a3                                  ; $2e84: $11 $a3 $c4
    ld a, $99                                     ; $2e87: $3e $99
    ld [de], a                                    ; $2e89: $12
    ld de, $c4a4                                  ; $2e8a: $11 $a4 $c4
    ld a, $3c                                     ; $2e8d: $3e $3c
    ld [de], a                                    ; $2e8f: $12
    ld de, $c4a5                                  ; $2e90: $11 $a5 $c4
    ld a, $3c                                     ; $2e93: $3e $3c
    ld [de], a                                    ; $2e95: $12
    ld de, $c4a6                                  ; $2e96: $11 $a6 $c4
    ld a, $ff                                     ; $2e99: $3e $ff
    ld [de], a                                    ; $2e9b: $12
    ld de, $c4a7                                  ; $2e9c: $11 $a7 $c4
    ld a, $ff                                     ; $2e9f: $3e $ff
    ld [de], a                                    ; $2ea1: $12
    ld de, $c4a8                                  ; $2ea2: $11 $a8 $c4
    ld a, $fe                                     ; $2ea5: $3e $fe
    ld [de], a                                    ; $2ea7: $12
    ld de, $c4a9                                  ; $2ea8: $11 $a9 $c4
    ld a, $fe                                     ; $2eab: $3e $fe
    ld [de], a                                    ; $2ead: $12
    ld de, $c4aa                                  ; $2eae: $11 $aa $c4
    ld a, $fc                                     ; $2eb1: $3e $fc
    ld [de], a                                    ; $2eb3: $12
    ld de, $c4ab                                  ; $2eb4: $11 $ab $c4
    ld a, $fc                                     ; $2eb7: $3e $fc
    ld [de], a                                    ; $2eb9: $12
    ld de, $c4ac                                  ; $2eba: $11 $ac $c4
    ld a, $fc                                     ; $2ebd: $3e $fc
    ld [de], a                                    ; $2ebf: $12
    ld de, $c4ad                                  ; $2ec0: $11 $ad $c4
    ld a, $fc                                     ; $2ec3: $3e $fc
    ld [de], a                                    ; $2ec5: $12
    ld de, $c4ae                                  ; $2ec6: $11 $ae $c4
    ld a, $f9                                     ; $2ec9: $3e $f9
    ld [de], a                                    ; $2ecb: $12
    ld de, $c4af                                  ; $2ecc: $11 $af $c4
    ld a, $f9                                     ; $2ecf: $3e $f9
    ld [de], a                                    ; $2ed1: $12
    ld de, $c4b0                                  ; $2ed2: $11 $b0 $c4
    ld a, $39                                     ; $2ed5: $3e $39
    ld [de], a                                    ; $2ed7: $12
    ld de, $c4b1                                  ; $2ed8: $11 $b1 $c4
    ld a, $39                                     ; $2edb: $3e $39
    ld [de], a                                    ; $2edd: $12
    ld de, $c4b2                                  ; $2ede: $11 $b2 $c4
    ld a, $13                                     ; $2ee1: $3e $13
    ld [de], a                                    ; $2ee3: $12
    ld de, $c4b3                                  ; $2ee4: $11 $b3 $c4
    ld a, $13                                     ; $2ee7: $3e $13
    ld [de], a                                    ; $2ee9: $12
    ld de, $c4b4                                  ; $2eea: $11 $b4 $c4
    ld a, $83                                     ; $2eed: $3e $83
    ld [de], a                                    ; $2eef: $12
    ld de, $c4b5                                  ; $2ef0: $11 $b5 $c4
    ld a, $83                                     ; $2ef3: $3e $83
    ld [de], a                                    ; $2ef5: $12
    ld de, $c4b6                                  ; $2ef6: $11 $b6 $c4
    ld a, $cf                                     ; $2ef9: $3e $cf
    ld [de], a                                    ; $2efb: $12
    ld de, $c4b7                                  ; $2efc: $11 $b7 $c4
    ld a, $cf                                     ; $2eff: $3e $cf
    ld [de], a                                    ; $2f01: $12
    ld de, $c4b8                                  ; $2f02: $11 $b8 $c4
    ld a, $e7                                     ; $2f05: $3e $e7
    ld [de], a                                    ; $2f07: $12
    ld de, $c4b9                                  ; $2f08: $11 $b9 $c4
    ld a, $00                                     ; $2f0b: $3e $00
    ld [de], a                                    ; $2f0d: $12
    ld de, $c4ba                                  ; $2f0e: $11 $ba $c4
    ld a, $81                                     ; $2f11: $3e $81
    ld [de], a                                    ; $2f13: $12
    ld de, $c4bb                                  ; $2f14: $11 $bb $c4
    ld a, $00                                     ; $2f17: $3e $00
    ld [de], a                                    ; $2f19: $12
    ld de, $c4bc                                  ; $2f1a: $11 $bc $c4
    ld a, $81                                     ; $2f1d: $3e $81
    ld [de], a                                    ; $2f1f: $12
    ld de, $c4bd                                  ; $2f20: $11 $bd $c4
    ld a, $00                                     ; $2f23: $3e $00
    ld [de], a                                    ; $2f25: $12
    ld de, $c4be                                  ; $2f26: $11 $be $c4
    ld a, $00                                     ; $2f29: $3e $00
    ld [de], a                                    ; $2f2b: $12
    ld de, $c4bf                                  ; $2f2c: $11 $bf $c4
    ld a, $00                                     ; $2f2f: $3e $00
    ld [de], a                                    ; $2f31: $12
    ld de, $c4c0                                  ; $2f32: $11 $c0 $c4
    ld a, $00                                     ; $2f35: $3e $00
    ld [de], a                                    ; $2f37: $12
    ld de, $c4c1                                  ; $2f38: $11 $c1 $c4
    ld a, $00                                     ; $2f3b: $3e $00
    ld [de], a                                    ; $2f3d: $12
    ld de, $c4c2                                  ; $2f3e: $11 $c2 $c4
    ld a, $81                                     ; $2f41: $3e $81
    ld [de], a                                    ; $2f43: $12
    ld de, $c4c3                                  ; $2f44: $11 $c3 $c4
    ld a, $00                                     ; $2f47: $3e $00
    ld [de], a                                    ; $2f49: $12
    ld de, $c4c4                                  ; $2f4a: $11 $c4 $c4
    ld a, $81                                     ; $2f4d: $3e $81
    ld [de], a                                    ; $2f4f: $12
    ld de, $c4c5                                  ; $2f50: $11 $c5 $c4
    ld a, $00                                     ; $2f53: $3e $00
    ld [de], a                                    ; $2f55: $12
    ld de, $c4c6                                  ; $2f56: $11 $c6 $c4
    ld a, $e7                                     ; $2f59: $3e $e7
    ld [de], a                                    ; $2f5b: $12
    ld de, $c4c7                                  ; $2f5c: $11 $c7 $c4
    ld a, $00                                     ; $2f5f: $3e $00
    ld [de], a                                    ; $2f61: $12
    ld de, $c4c8                                  ; $2f62: $11 $c8 $c4
    ld a, $01                                     ; $2f65: $3e $01
    ld [de], a                                    ; $2f67: $12
    ld de, $c4c9                                  ; $2f68: $11 $c9 $c4
    ld a, $01                                     ; $2f6b: $3e $01
    ld [de], a                                    ; $2f6d: $12
    ld de, $c4ca                                  ; $2f6e: $11 $ca $c4
    ld a, $1f                                     ; $2f71: $3e $1f
    ld [de], a                                    ; $2f73: $12
    ld de, $c4cb                                  ; $2f74: $11 $cb $c4
    ld a, $01                                     ; $2f77: $3e $01
    ld [de], a                                    ; $2f79: $12
    ld de, $c4cc                                  ; $2f7a: $11 $cc $c4
    ld a, $01                                     ; $2f7d: $3e $01
    ld [de], a                                    ; $2f7f: $12
    ld de, $c4cd                                  ; $2f80: $11 $cd $c4
    ld a, $01                                     ; $2f83: $3e $01
    ld [de], a                                    ; $2f85: $12
    ld de, $c4ce                                  ; $2f86: $11 $ce $c4
    ld a, $01                                     ; $2f89: $3e $01
    ld [de], a                                    ; $2f8b: $12
    ld de, $c4cf                                  ; $2f8c: $11 $cf $c4
    ld a, $01                                     ; $2f8f: $3e $01
    ld [de], a                                    ; $2f91: $12
    ld de, $c4d0                                  ; $2f92: $11 $d0 $c4
    ld a, $01                                     ; $2f95: $3e $01
    ld [de], a                                    ; $2f97: $12
    ld de, $c4d1                                  ; $2f98: $11 $d1 $c4
    ld a, $01                                     ; $2f9b: $3e $01
    ld [de], a                                    ; $2f9d: $12
    ld de, $c4d2                                  ; $2f9e: $11 $d2 $c4
    ld a, $01                                     ; $2fa1: $3e $01
    ld [de], a                                    ; $2fa3: $12
    ld de, $c4d3                                  ; $2fa4: $11 $d3 $c4
    ld a, $01                                     ; $2fa7: $3e $01
    ld [de], a                                    ; $2fa9: $12
    ld de, $c4d4                                  ; $2faa: $11 $d4 $c4
    ld a, $01                                     ; $2fad: $3e $01
    ld [de], a                                    ; $2faf: $12
    ld de, $c4d5                                  ; $2fb0: $11 $d5 $c4
    ld a, $01                                     ; $2fb3: $3e $01
    ld [de], a                                    ; $2fb5: $12
    ld de, $c4d6                                  ; $2fb6: $11 $d6 $c4
    ld a, $01                                     ; $2fb9: $3e $01
    ld [de], a                                    ; $2fbb: $12
    ld de, $c4d7                                  ; $2fbc: $11 $d7 $c4
    ld a, $01                                     ; $2fbf: $3e $01
    ld [de], a                                    ; $2fc1: $12
    ld de, $c4d8                                  ; $2fc2: $11 $d8 $c4
    ld a, $01                                     ; $2fc5: $3e $01
    ld [de], a                                    ; $2fc7: $12
    ld de, $c4d9                                  ; $2fc8: $11 $d9 $c4
    ld a, $01                                     ; $2fcb: $3e $01
    ld [de], a                                    ; $2fcd: $12
    ld de, $c4da                                  ; $2fce: $11 $da $c4
    ld a, $01                                     ; $2fd1: $3e $01
    ld [de], a                                    ; $2fd3: $12
    ld de, $c4db                                  ; $2fd4: $11 $db $c4
    ld a, $01                                     ; $2fd7: $3e $01
    ld [de], a                                    ; $2fd9: $12
    ld de, $c4dc                                  ; $2fda: $11 $dc $c4
    ld a, $01                                     ; $2fdd: $3e $01
    ld [de], a                                    ; $2fdf: $12
    ld de, $c4dd                                  ; $2fe0: $11 $dd $c4
    ld a, $01                                     ; $2fe3: $3e $01
    ld [de], a                                    ; $2fe5: $12
    ld de, $c4de                                  ; $2fe6: $11 $de $c4
    ld a, $01                                     ; $2fe9: $3e $01
    ld [de], a                                    ; $2feb: $12
    ld de, $c4df                                  ; $2fec: $11 $df $c4
    ld a, $01                                     ; $2fef: $3e $01
    ld [de], a                                    ; $2ff1: $12
    ld de, $c4e0                                  ; $2ff2: $11 $e0 $c4
    ld a, $01                                     ; $2ff5: $3e $01
    ld [de], a                                    ; $2ff7: $12
    ld de, $c4e1                                  ; $2ff8: $11 $e1 $c4
    ld a, $01                                     ; $2ffb: $3e $01
    ld [de], a                                    ; $2ffd: $12
    ld de, $c4e2                                  ; $2ffe: $11 $e2 $c4
    ld a, $01                                     ; $3001: $3e $01
    ld [de], a                                    ; $3003: $12
    ld de, $c4e3                                  ; $3004: $11 $e3 $c4
    ld a, $01                                     ; $3007: $3e $01
    ld [de], a                                    ; $3009: $12
    ld de, $c4e4                                  ; $300a: $11 $e4 $c4
    ld a, $01                                     ; $300d: $3e $01
    ld [de], a                                    ; $300f: $12
    ld de, $c4e5                                  ; $3010: $11 $e5 $c4
    ld a, $01                                     ; $3013: $3e $01
    ld [de], a                                    ; $3015: $12
    ld de, $c4e6                                  ; $3016: $11 $e6 $c4
    ld a, $01                                     ; $3019: $3e $01
    ld [de], a                                    ; $301b: $12
    ld de, $c4e7                                  ; $301c: $11 $e7 $c4
    ld a, $01                                     ; $301f: $3e $01
    ld [de], a                                    ; $3021: $12
    ld de, $c4e8                                  ; $3022: $11 $e8 $c4
    ld a, $01                                     ; $3025: $3e $01
    ld [de], a                                    ; $3027: $12
    ld de, $c4e9                                  ; $3028: $11 $e9 $c4
    ld a, $01                                     ; $302b: $3e $01
    ld [de], a                                    ; $302d: $12
    ld de, $c4ea                                  ; $302e: $11 $ea $c4
    ld a, $01                                     ; $3031: $3e $01
    ld [de], a                                    ; $3033: $12
    ld de, $c4eb                                  ; $3034: $11 $eb $c4
    ld a, $1f                                     ; $3037: $3e $1f
    ld [de], a                                    ; $3039: $12
    ld de, $c4ec                                  ; $303a: $11 $ec $c4
    ld a, $01                                     ; $303d: $3e $01
    ld [de], a                                    ; $303f: $12
    ld de, $c4ed                                  ; $3040: $11 $ed $c4
    ld a, $01                                     ; $3043: $3e $01
    ld [de], a                                    ; $3045: $12
    ld de, $c4ee                                  ; $3046: $11 $ee $c4
    ld a, $01                                     ; $3049: $3e $01
    ld [de], a                                    ; $304b: $12
    ld de, $c4ef                                  ; $304c: $11 $ef $c4
    ld a, $01                                     ; $304f: $3e $01
    ld [de], a                                    ; $3051: $12
    ld de, $c4f0                                  ; $3052: $11 $f0 $c4
    ld a, $01                                     ; $3055: $3e $01
    ld [de], a                                    ; $3057: $12
    ld de, $c4f1                                  ; $3058: $11 $f1 $c4
    ld a, $01                                     ; $305b: $3e $01
    ld [de], a                                    ; $305d: $12
    ld de, $c4f2                                  ; $305e: $11 $f2 $c4
    ld a, $01                                     ; $3061: $3e $01
    ld [de], a                                    ; $3063: $12
    ld de, $c4f3                                  ; $3064: $11 $f3 $c4
    ld a, $01                                     ; $3067: $3e $01
    ld [de], a                                    ; $3069: $12
    ld de, $c4f4                                  ; $306a: $11 $f4 $c4
    ld a, $01                                     ; $306d: $3e $01
    ld [de], a                                    ; $306f: $12
    ld de, $c4f5                                  ; $3070: $11 $f5 $c4
    ld a, $01                                     ; $3073: $3e $01
    ld [de], a                                    ; $3075: $12
    ld de, $c4f6                                  ; $3076: $11 $f6 $c4
    ld a, $01                                     ; $3079: $3e $01
    ld [de], a                                    ; $307b: $12
    ld de, $c4f7                                  ; $307c: $11 $f7 $c4
    ld a, $01                                     ; $307f: $3e $01
    ld [de], a                                    ; $3081: $12
    ld de, $c4f8                                  ; $3082: $11 $f8 $c4
    ld a, $1f                                     ; $3085: $3e $1f
    ld [de], a                                    ; $3087: $12
    ld de, $c4f9                                  ; $3088: $11 $f9 $c4
    ld a, $01                                     ; $308b: $3e $01
    ld [de], a                                    ; $308d: $12
    ld de, $c4fa                                  ; $308e: $11 $fa $c4
    ld a, $01                                     ; $3091: $3e $01
    ld [de], a                                    ; $3093: $12
    ld de, $c4fb                                  ; $3094: $11 $fb $c4
    ld a, $01                                     ; $3097: $3e $01
    ld [de], a                                    ; $3099: $12
    ld de, $c4fc                                  ; $309a: $11 $fc $c4
    ld a, $01                                     ; $309d: $3e $01
    ld [de], a                                    ; $309f: $12
    ld de, $c4fd                                  ; $30a0: $11 $fd $c4
    ld a, $01                                     ; $30a3: $3e $01
    ld [de], a                                    ; $30a5: $12
    ld de, $c4fe                                  ; $30a6: $11 $fe $c4
    ld a, $01                                     ; $30a9: $3e $01
    ld [de], a                                    ; $30ab: $12
    ld de, $c4ff                                  ; $30ac: $11 $ff $c4
    ld a, $01                                     ; $30af: $3e $01
    ld [de], a                                    ; $30b1: $12
    ld de, $c500                                  ; $30b2: $11 $00 $c5
    ld a, $01                                     ; $30b5: $3e $01
    ld [de], a                                    ; $30b7: $12
    ld de, $c501                                  ; $30b8: $11 $01 $c5
    ld a, $01                                     ; $30bb: $3e $01
    ld [de], a                                    ; $30bd: $12
    ld de, $c502                                  ; $30be: $11 $02 $c5
    ld a, $01                                     ; $30c1: $3e $01
    ld [de], a                                    ; $30c3: $12
    ld de, $c503                                  ; $30c4: $11 $03 $c5
    ld a, $01                                     ; $30c7: $3e $01
    ld [de], a                                    ; $30c9: $12
    ld de, $c504                                  ; $30ca: $11 $04 $c5
    ld a, $01                                     ; $30cd: $3e $01
    ld [de], a                                    ; $30cf: $12
    ld de, $c505                                  ; $30d0: $11 $05 $c5
    ld a, $01                                     ; $30d3: $3e $01
    ld [de], a                                    ; $30d5: $12
    ld de, $c506                                  ; $30d6: $11 $06 $c5
    ld a, $01                                     ; $30d9: $3e $01
    ld [de], a                                    ; $30db: $12
    ld de, $c507                                  ; $30dc: $11 $07 $c5
    ld a, $01                                     ; $30df: $3e $01
    ld [de], a                                    ; $30e1: $12
    ld de, $c508                                  ; $30e2: $11 $08 $c5
    ld a, $01                                     ; $30e5: $3e $01
    ld [de], a                                    ; $30e7: $12
    ld de, $c509                                  ; $30e8: $11 $09 $c5
    ld a, $01                                     ; $30eb: $3e $01
    ld [de], a                                    ; $30ed: $12
    ld de, $c50a                                  ; $30ee: $11 $0a $c5
    ld a, $01                                     ; $30f1: $3e $01
    ld [de], a                                    ; $30f3: $12
    ld de, $c50b                                  ; $30f4: $11 $0b $c5
    ld a, $01                                     ; $30f7: $3e $01
    ld [de], a                                    ; $30f9: $12
    ld de, $c50c                                  ; $30fa: $11 $0c $c5
    ld a, $01                                     ; $30fd: $3e $01
    ld [de], a                                    ; $30ff: $12
    ld de, $c50d                                  ; $3100: $11 $0d $c5
    ld a, $01                                     ; $3103: $3e $01
    ld [de], a                                    ; $3105: $12
    ld de, $c50e                                  ; $3106: $11 $0e $c5
    ld a, $01                                     ; $3109: $3e $01
    ld [de], a                                    ; $310b: $12
    ld de, $c50f                                  ; $310c: $11 $0f $c5
    ld a, $01                                     ; $310f: $3e $01
    ld [de], a                                    ; $3111: $12
    ld de, $c510                                  ; $3112: $11 $10 $c5
    ld a, $01                                     ; $3115: $3e $01
    ld [de], a                                    ; $3117: $12
    ld de, $c511                                  ; $3118: $11 $11 $c5
    ld a, $01                                     ; $311b: $3e $01
    ld [de], a                                    ; $311d: $12
    ld de, $c512                                  ; $311e: $11 $12 $c5
    ld a, $01                                     ; $3121: $3e $01
    ld [de], a                                    ; $3123: $12
    ld de, $c513                                  ; $3124: $11 $13 $c5
    ld a, $01                                     ; $3127: $3e $01
    ld [de], a                                    ; $3129: $12
    ld de, $c514                                  ; $312a: $11 $14 $c5
    ld a, $01                                     ; $312d: $3e $01
    ld [de], a                                    ; $312f: $12
    ld de, $c515                                  ; $3130: $11 $15 $c5
    ld a, $01                                     ; $3133: $3e $01
    ld [de], a                                    ; $3135: $12
    ld de, $c516                                  ; $3136: $11 $16 $c5
    ld a, $01                                     ; $3139: $3e $01
    ld [de], a                                    ; $313b: $12
    ld de, $c517                                  ; $313c: $11 $17 $c5
    ld a, $01                                     ; $313f: $3e $01
    ld [de], a                                    ; $3141: $12
    ld de, $c518                                  ; $3142: $11 $18 $c5
    ld a, $01                                     ; $3145: $3e $01
    ld [de], a                                    ; $3147: $12
    ld de, $c519                                  ; $3148: $11 $19 $c5
    ld a, $01                                     ; $314b: $3e $01
    ld [de], a                                    ; $314d: $12
    ld de, $c51a                                  ; $314e: $11 $1a $c5
    ld a, $01                                     ; $3151: $3e $01
    ld [de], a                                    ; $3153: $12
    ld de, $c51b                                  ; $3154: $11 $1b $c5
    ld a, $01                                     ; $3157: $3e $01
    ld [de], a                                    ; $3159: $12
    ld de, $c51c                                  ; $315a: $11 $1c $c5
    ld a, $01                                     ; $315d: $3e $01
    ld [de], a                                    ; $315f: $12
    ld de, $c51d                                  ; $3160: $11 $1d $c5
    ld a, $01                                     ; $3163: $3e $01
    ld [de], a                                    ; $3165: $12
    ld de, $c51e                                  ; $3166: $11 $1e $c5
    ld a, $01                                     ; $3169: $3e $01
    ld [de], a                                    ; $316b: $12
    ld de, $c51f                                  ; $316c: $11 $1f $c5
    ld a, $01                                     ; $316f: $3e $01
    ld [de], a                                    ; $3171: $12
    ld de, $c520                                  ; $3172: $11 $20 $c5
    ld a, $01                                     ; $3175: $3e $01
    ld [de], a                                    ; $3177: $12
    ld de, $c521                                  ; $3178: $11 $21 $c5
    ld a, $01                                     ; $317b: $3e $01
    ld [de], a                                    ; $317d: $12
    ld de, $c522                                  ; $317e: $11 $22 $c5
    ld a, $01                                     ; $3181: $3e $01
    ld [de], a                                    ; $3183: $12
    ld de, $c523                                  ; $3184: $11 $23 $c5
    ld a, $01                                     ; $3187: $3e $01
    ld [de], a                                    ; $3189: $12
    ld de, $c524                                  ; $318a: $11 $24 $c5
    ld a, $01                                     ; $318d: $3e $01
    ld [de], a                                    ; $318f: $12
    ld de, $c525                                  ; $3190: $11 $25 $c5
    ld a, $01                                     ; $3193: $3e $01
    ld [de], a                                    ; $3195: $12
    ld de, $c526                                  ; $3196: $11 $26 $c5
    ld a, $01                                     ; $3199: $3e $01
    ld [de], a                                    ; $319b: $12
    ld de, $c527                                  ; $319c: $11 $27 $c5
    ld a, $01                                     ; $319f: $3e $01
    ld [de], a                                    ; $31a1: $12
    ld de, $c528                                  ; $31a2: $11 $28 $c5
    ld a, $01                                     ; $31a5: $3e $01
    ld [de], a                                    ; $31a7: $12
    ld de, $c529                                  ; $31a8: $11 $29 $c5
    ld a, $01                                     ; $31ab: $3e $01
    ld [de], a                                    ; $31ad: $12
    ld de, $c52a                                  ; $31ae: $11 $2a $c5
    ld a, $01                                     ; $31b1: $3e $01
    ld [de], a                                    ; $31b3: $12
    ld de, $c52b                                  ; $31b4: $11 $2b $c5
    ld a, $01                                     ; $31b7: $3e $01
    ld [de], a                                    ; $31b9: $12
    ld de, $c52c                                  ; $31ba: $11 $2c $c5
    ld a, $01                                     ; $31bd: $3e $01
    ld [de], a                                    ; $31bf: $12
    ld de, $c52d                                  ; $31c0: $11 $2d $c5
    ld a, $01                                     ; $31c3: $3e $01
    ld [de], a                                    ; $31c5: $12
    ld de, $c52e                                  ; $31c6: $11 $2e $c5
    ld a, $01                                     ; $31c9: $3e $01
    ld [de], a                                    ; $31cb: $12
    ld de, $c52f                                  ; $31cc: $11 $2f $c5
    ld a, $01                                     ; $31cf: $3e $01
    ld [de], a                                    ; $31d1: $12
    ld de, $c530                                  ; $31d2: $11 $30 $c5
    ld a, $01                                     ; $31d5: $3e $01
    ld [de], a                                    ; $31d7: $12
    ld de, $c531                                  ; $31d8: $11 $31 $c5
    ld a, $01                                     ; $31db: $3e $01
    ld [de], a                                    ; $31dd: $12
    ld de, $c532                                  ; $31de: $11 $32 $c5
    ld a, $01                                     ; $31e1: $3e $01
    ld [de], a                                    ; $31e3: $12
    ld de, $c533                                  ; $31e4: $11 $33 $c5
    ld a, $01                                     ; $31e7: $3e $01
    ld [de], a                                    ; $31e9: $12
    ld de, $c534                                  ; $31ea: $11 $34 $c5
    ld a, $01                                     ; $31ed: $3e $01
    ld [de], a                                    ; $31ef: $12
    ld de, $c535                                  ; $31f0: $11 $35 $c5
    ld a, $01                                     ; $31f3: $3e $01
    ld [de], a                                    ; $31f5: $12
    ld de, $c536                                  ; $31f6: $11 $36 $c5
    ld a, $01                                     ; $31f9: $3e $01
    ld [de], a                                    ; $31fb: $12
    ld de, $c537                                  ; $31fc: $11 $37 $c5
    ld a, $01                                     ; $31ff: $3e $01
    ld [de], a                                    ; $3201: $12
    ld de, $c538                                  ; $3202: $11 $38 $c5
    ld a, $01                                     ; $3205: $3e $01
    ld [de], a                                    ; $3207: $12
    ld de, $c539                                  ; $3208: $11 $39 $c5
    ld a, $01                                     ; $320b: $3e $01
    ld [de], a                                    ; $320d: $12
    ld de, $c53a                                  ; $320e: $11 $3a $c5
    ld a, $01                                     ; $3211: $3e $01
    ld [de], a                                    ; $3213: $12
    ld de, $c53b                                  ; $3214: $11 $3b $c5
    ld a, $01                                     ; $3217: $3e $01
    ld [de], a                                    ; $3219: $12
    ld de, $c53c                                  ; $321a: $11 $3c $c5
    ld a, $01                                     ; $321d: $3e $01
    ld [de], a                                    ; $321f: $12
    ld de, $c53d                                  ; $3220: $11 $3d $c5
    ld a, $01                                     ; $3223: $3e $01
    ld [de], a                                    ; $3225: $12
    ld de, $c53e                                  ; $3226: $11 $3e $c5
    ld a, $01                                     ; $3229: $3e $01
    ld [de], a                                    ; $322b: $12
    ld de, $c53f                                  ; $322c: $11 $3f $c5
    ld a, $01                                     ; $322f: $3e $01
    ld [de], a                                    ; $3231: $12
    ld de, $c540                                  ; $3232: $11 $40 $c5
    ld a, $01                                     ; $3235: $3e $01
    ld [de], a                                    ; $3237: $12
    ld de, $c541                                  ; $3238: $11 $41 $c5
    ld a, $01                                     ; $323b: $3e $01
    ld [de], a                                    ; $323d: $12
    ld de, $c542                                  ; $323e: $11 $42 $c5
    ld a, $01                                     ; $3241: $3e $01
    ld [de], a                                    ; $3243: $12
    ld de, $c543                                  ; $3244: $11 $43 $c5
    ld a, $1a                                     ; $3247: $3e $1a
    ld [de], a                                    ; $3249: $12
    ld de, $c544                                  ; $324a: $11 $44 $c5
    ld a, $01                                     ; $324d: $3e $01
    ld [de], a                                    ; $324f: $12
    ld de, $c545                                  ; $3250: $11 $45 $c5
    ld a, $01                                     ; $3253: $3e $01
    ld [de], a                                    ; $3255: $12
    ld de, $c546                                  ; $3256: $11 $46 $c5
    ld a, $01                                     ; $3259: $3e $01
    ld [de], a                                    ; $325b: $12
    ld de, $c547                                  ; $325c: $11 $47 $c5
    ld a, $06                                     ; $325f: $3e $06
    ld [de], a                                    ; $3261: $12
    ld de, $c548                                  ; $3262: $11 $48 $c5
    ld a, $01                                     ; $3265: $3e $01
    ld [de], a                                    ; $3267: $12
    ld de, $c549                                  ; $3268: $11 $49 $c5
    ld a, $01                                     ; $326b: $3e $01
    ld [de], a                                    ; $326d: $12
    ld de, $c54a                                  ; $326e: $11 $4a $c5
    ld a, $01                                     ; $3271: $3e $01
    ld [de], a                                    ; $3273: $12
    ld de, $c54b                                  ; $3274: $11 $4b $c5
    ld a, $02                                     ; $3277: $3e $02
    ld [de], a                                    ; $3279: $12
    ld de, $c54c                                  ; $327a: $11 $4c $c5
    ld a, $01                                     ; $327d: $3e $01
    ld [de], a                                    ; $327f: $12
    ld de, $c54d                                  ; $3280: $11 $4d $c5
    ld a, $01                                     ; $3283: $3e $01
    ld [de], a                                    ; $3285: $12
    ld de, $c54e                                  ; $3286: $11 $4e $c5
    ld a, $01                                     ; $3289: $3e $01
    ld [de], a                                    ; $328b: $12
    ld de, $c54f                                  ; $328c: $11 $4f $c5
    ld a, $09                                     ; $328f: $3e $09
    ld [de], a                                    ; $3291: $12
    ld de, $c550                                  ; $3292: $11 $50 $c5
    ld a, $01                                     ; $3295: $3e $01
    ld [de], a                                    ; $3297: $12
    ld de, $c551                                  ; $3298: $11 $51 $c5
    ld a, $1f                                     ; $329b: $3e $1f
    ld [de], a                                    ; $329d: $12
    ld de, $c552                                  ; $329e: $11 $52 $c5
    ld a, $01                                     ; $32a1: $3e $01
    ld [de], a                                    ; $32a3: $12
    ld de, $c553                                  ; $32a4: $11 $53 $c5
    ld a, $01                                     ; $32a7: $3e $01
    ld [de], a                                    ; $32a9: $12
    ld de, $c554                                  ; $32aa: $11 $54 $c5
    ld a, $01                                     ; $32ad: $3e $01
    ld [de], a                                    ; $32af: $12
    ld de, $c555                                  ; $32b0: $11 $55 $c5
    ld a, $01                                     ; $32b3: $3e $01
    ld [de], a                                    ; $32b5: $12
    ld de, $c556                                  ; $32b6: $11 $56 $c5
    ld a, $01                                     ; $32b9: $3e $01
    ld [de], a                                    ; $32bb: $12
    ld de, $c557                                  ; $32bc: $11 $57 $c5
    ld a, $01                                     ; $32bf: $3e $01
    ld [de], a                                    ; $32c1: $12
    ld de, $c558                                  ; $32c2: $11 $58 $c5
    ld a, $01                                     ; $32c5: $3e $01
    ld [de], a                                    ; $32c7: $12
    ld de, $c559                                  ; $32c8: $11 $59 $c5
    ld a, $01                                     ; $32cb: $3e $01
    ld [de], a                                    ; $32cd: $12
    ld de, $c55a                                  ; $32ce: $11 $5a $c5
    ld a, $01                                     ; $32d1: $3e $01
    ld [de], a                                    ; $32d3: $12
    ld de, $c55b                                  ; $32d4: $11 $5b $c5
    ld a, $01                                     ; $32d7: $3e $01
    ld [de], a                                    ; $32d9: $12
    ld de, $c55c                                  ; $32da: $11 $5c $c5
    ld a, $01                                     ; $32dd: $3e $01
    ld [de], a                                    ; $32df: $12
    ld de, $c55d                                  ; $32e0: $11 $5d $c5
    ld a, $01                                     ; $32e3: $3e $01
    ld [de], a                                    ; $32e5: $12
    ld de, $c55e                                  ; $32e6: $11 $5e $c5
    ld a, $01                                     ; $32e9: $3e $01
    ld [de], a                                    ; $32eb: $12
    ld de, $c55f                                  ; $32ec: $11 $5f $c5
    ld a, $01                                     ; $32ef: $3e $01
    ld [de], a                                    ; $32f1: $12
    ld de, $c560                                  ; $32f2: $11 $60 $c5
    ld a, $01                                     ; $32f5: $3e $01
    ld [de], a                                    ; $32f7: $12
    ld de, $c561                                  ; $32f8: $11 $61 $c5
    ld a, $01                                     ; $32fb: $3e $01
    ld [de], a                                    ; $32fd: $12
    ld de, $c562                                  ; $32fe: $11 $62 $c5
    ld a, $01                                     ; $3301: $3e $01
    ld [de], a                                    ; $3303: $12
    ld de, $c563                                  ; $3304: $11 $63 $c5
    ld a, $01                                     ; $3307: $3e $01
    ld [de], a                                    ; $3309: $12
    ld de, $c564                                  ; $330a: $11 $64 $c5
    ld a, $01                                     ; $330d: $3e $01
    ld [de], a                                    ; $330f: $12
    ld de, $c565                                  ; $3310: $11 $65 $c5
    ld a, $01                                     ; $3313: $3e $01
    ld [de], a                                    ; $3315: $12
    ld de, $c566                                  ; $3316: $11 $66 $c5
    ld a, $01                                     ; $3319: $3e $01
    ld [de], a                                    ; $331b: $12
    ld de, $c567                                  ; $331c: $11 $67 $c5
    ld a, $01                                     ; $331f: $3e $01
    ld [de], a                                    ; $3321: $12
    ld de, $c568                                  ; $3322: $11 $68 $c5
    ld a, $01                                     ; $3325: $3e $01
    ld [de], a                                    ; $3327: $12
    ld de, $c569                                  ; $3328: $11 $69 $c5
    ld a, $01                                     ; $332b: $3e $01
    ld [de], a                                    ; $332d: $12
    ld de, $c56a                                  ; $332e: $11 $6a $c5
    ld a, $01                                     ; $3331: $3e $01
    ld [de], a                                    ; $3333: $12
    ld de, $c56b                                  ; $3334: $11 $6b $c5
    ld a, $01                                     ; $3337: $3e $01
    ld [de], a                                    ; $3339: $12
    ld de, $c56c                                  ; $333a: $11 $6c $c5
    ld a, $01                                     ; $333d: $3e $01
    ld [de], a                                    ; $333f: $12
    ld de, $c56d                                  ; $3340: $11 $6d $c5
    ld a, $01                                     ; $3343: $3e $01
    ld [de], a                                    ; $3345: $12
    ld de, $c56e                                  ; $3346: $11 $6e $c5
    ld a, $01                                     ; $3349: $3e $01
    ld [de], a                                    ; $334b: $12
    ld de, $c56f                                  ; $334c: $11 $6f $c5
    ld a, $01                                     ; $334f: $3e $01
    ld [de], a                                    ; $3351: $12
    ld de, $c570                                  ; $3352: $11 $70 $c5
    ld a, $01                                     ; $3355: $3e $01
    ld [de], a                                    ; $3357: $12
    ld de, $c571                                  ; $3358: $11 $71 $c5
    ld a, $01                                     ; $335b: $3e $01
    ld [de], a                                    ; $335d: $12
    ld de, $c572                                  ; $335e: $11 $72 $c5
    ld a, $01                                     ; $3361: $3e $01
    ld [de], a                                    ; $3363: $12
    ld de, $c573                                  ; $3364: $11 $73 $c5
    ld a, $01                                     ; $3367: $3e $01
    ld [de], a                                    ; $3369: $12
    ld de, $c574                                  ; $336a: $11 $74 $c5
    ld a, $01                                     ; $336d: $3e $01
    ld [de], a                                    ; $336f: $12
    ld de, $c575                                  ; $3370: $11 $75 $c5
    ld a, $01                                     ; $3373: $3e $01
    ld [de], a                                    ; $3375: $12
    ld de, $c576                                  ; $3376: $11 $76 $c5
    ld a, $01                                     ; $3379: $3e $01
    ld [de], a                                    ; $337b: $12
    ld de, $c577                                  ; $337c: $11 $77 $c5
    ld a, $01                                     ; $337f: $3e $01
    ld [de], a                                    ; $3381: $12
    ld de, $c578                                  ; $3382: $11 $78 $c5
    ld a, $01                                     ; $3385: $3e $01
    ld [de], a                                    ; $3387: $12
    ld de, $c579                                  ; $3388: $11 $79 $c5
    ld a, $01                                     ; $338b: $3e $01
    ld [de], a                                    ; $338d: $12
    ld de, $c57a                                  ; $338e: $11 $7a $c5
    ld a, $01                                     ; $3391: $3e $01
    ld [de], a                                    ; $3393: $12
    ld de, $c57b                                  ; $3394: $11 $7b $c5
    ld a, $01                                     ; $3397: $3e $01
    ld [de], a                                    ; $3399: $12
    ld de, $c57c                                  ; $339a: $11 $7c $c5
    ld a, $01                                     ; $339d: $3e $01
    ld [de], a                                    ; $339f: $12
    ld de, $c57d                                  ; $33a0: $11 $7d $c5
    ld a, $01                                     ; $33a3: $3e $01
    ld [de], a                                    ; $33a5: $12
    ld de, $c57e                                  ; $33a6: $11 $7e $c5
    ld a, $01                                     ; $33a9: $3e $01
    ld [de], a                                    ; $33ab: $12
    ld de, $c57f                                  ; $33ac: $11 $7f $c5
    ld a, $01                                     ; $33af: $3e $01
    ld [de], a                                    ; $33b1: $12
    ld de, $c580                                  ; $33b2: $11 $80 $c5
    ld a, $01                                     ; $33b5: $3e $01
    ld [de], a                                    ; $33b7: $12
    ld de, $c581                                  ; $33b8: $11 $81 $c5
    ld a, $01                                     ; $33bb: $3e $01
    ld [de], a                                    ; $33bd: $12
    ld de, $c582                                  ; $33be: $11 $82 $c5
    ld a, $01                                     ; $33c1: $3e $01
    ld [de], a                                    ; $33c3: $12
    ld de, $c583                                  ; $33c4: $11 $83 $c5
    ld a, $01                                     ; $33c7: $3e $01
    ld [de], a                                    ; $33c9: $12
    ld de, $c584                                  ; $33ca: $11 $84 $c5
    ld a, $01                                     ; $33cd: $3e $01
    ld [de], a                                    ; $33cf: $12
    ld de, $c585                                  ; $33d0: $11 $85 $c5
    ld a, $01                                     ; $33d3: $3e $01
    ld [de], a                                    ; $33d5: $12
    ld de, $c586                                  ; $33d6: $11 $86 $c5
    ld a, $01                                     ; $33d9: $3e $01
    ld [de], a                                    ; $33db: $12
    ld de, $c587                                  ; $33dc: $11 $87 $c5
    ld a, $01                                     ; $33df: $3e $01
    ld [de], a                                    ; $33e1: $12
    ld de, $c588                                  ; $33e2: $11 $88 $c5
    ld a, $01                                     ; $33e5: $3e $01
    ld [de], a                                    ; $33e7: $12
    ld de, $c589                                  ; $33e8: $11 $89 $c5
    ld a, $01                                     ; $33eb: $3e $01
    ld [de], a                                    ; $33ed: $12
    ld de, $c58a                                  ; $33ee: $11 $8a $c5
    ld a, $01                                     ; $33f1: $3e $01
    ld [de], a                                    ; $33f3: $12
    ld de, $c58b                                  ; $33f4: $11 $8b $c5
    ld a, $01                                     ; $33f7: $3e $01
    ld [de], a                                    ; $33f9: $12
    ld de, $c58c                                  ; $33fa: $11 $8c $c5
    ld a, $01                                     ; $33fd: $3e $01
    ld [de], a                                    ; $33ff: $12
    ld de, $c58d                                  ; $3400: $11 $8d $c5
    ld a, $01                                     ; $3403: $3e $01
    ld [de], a                                    ; $3405: $12
    ld de, $c58e                                  ; $3406: $11 $8e $c5
    ld a, $01                                     ; $3409: $3e $01
    ld [de], a                                    ; $340b: $12
    ld de, $c58f                                  ; $340c: $11 $8f $c5
    ld a, $1f                                     ; $340f: $3e $1f
    ld [de], a                                    ; $3411: $12
    ld de, $c590                                  ; $3412: $11 $90 $c5
    ld a, $01                                     ; $3415: $3e $01
    ld [de], a                                    ; $3417: $12
    ld de, $c591                                  ; $3418: $11 $91 $c5
    ld a, $01                                     ; $341b: $3e $01
    ld [de], a                                    ; $341d: $12
    ld de, $c592                                  ; $341e: $11 $92 $c5
    ld a, $01                                     ; $3421: $3e $01
    ld [de], a                                    ; $3423: $12
    ld de, $c593                                  ; $3424: $11 $93 $c5
    ld a, $01                                     ; $3427: $3e $01
    ld [de], a                                    ; $3429: $12
    ld de, $c594                                  ; $342a: $11 $94 $c5
    ld a, $01                                     ; $342d: $3e $01
    ld [de], a                                    ; $342f: $12
    ld de, $c595                                  ; $3430: $11 $95 $c5
    ld a, $01                                     ; $3433: $3e $01
    ld [de], a                                    ; $3435: $12
    ld de, $c596                                  ; $3436: $11 $96 $c5
    ld a, $1f                                     ; $3439: $3e $1f
    ld [de], a                                    ; $343b: $12
    ld de, $c597                                  ; $343c: $11 $97 $c5
    ld a, $01                                     ; $343f: $3e $01
    ld [de], a                                    ; $3441: $12
    ld de, $c598                                  ; $3442: $11 $98 $c5
    ld a, $01                                     ; $3445: $3e $01
    ld [de], a                                    ; $3447: $12
    ld de, $c599                                  ; $3448: $11 $99 $c5
    ld a, $01                                     ; $344b: $3e $01
    ld [de], a                                    ; $344d: $12
    ld de, $c59a                                  ; $344e: $11 $9a $c5
    ld a, $01                                     ; $3451: $3e $01
    ld [de], a                                    ; $3453: $12
    ld de, $c59b                                  ; $3454: $11 $9b $c5
    ld a, $01                                     ; $3457: $3e $01
    ld [de], a                                    ; $3459: $12
    ld de, $c59c                                  ; $345a: $11 $9c $c5
    ld a, $01                                     ; $345d: $3e $01
    ld [de], a                                    ; $345f: $12
    ld de, $c59d                                  ; $3460: $11 $9d $c5
    ld a, $01                                     ; $3463: $3e $01
    ld [de], a                                    ; $3465: $12
    ld de, $c59e                                  ; $3466: $11 $9e $c5
    ld a, $01                                     ; $3469: $3e $01
    ld [de], a                                    ; $346b: $12
    ld de, $c59f                                  ; $346c: $11 $9f $c5
    ld a, $01                                     ; $346f: $3e $01
    ld [de], a                                    ; $3471: $12
    ld de, $c5a0                                  ; $3472: $11 $a0 $c5
    ld a, $01                                     ; $3475: $3e $01
    ld [de], a                                    ; $3477: $12
    ld de, $c5a1                                  ; $3478: $11 $a1 $c5
    ld a, $01                                     ; $347b: $3e $01
    ld [de], a                                    ; $347d: $12
    ld de, $c5a2                                  ; $347e: $11 $a2 $c5
    ld a, $01                                     ; $3481: $3e $01
    ld [de], a                                    ; $3483: $12
    ld de, $c5a3                                  ; $3484: $11 $a3 $c5
    ld a, $01                                     ; $3487: $3e $01
    ld [de], a                                    ; $3489: $12
    ld de, $c5a4                                  ; $348a: $11 $a4 $c5
    ld a, $01                                     ; $348d: $3e $01
    ld [de], a                                    ; $348f: $12
    ld de, $c5a5                                  ; $3490: $11 $a5 $c5
    ld a, $01                                     ; $3493: $3e $01
    ld [de], a                                    ; $3495: $12
    ld de, $c5a6                                  ; $3496: $11 $a6 $c5
    ld a, $01                                     ; $3499: $3e $01
    ld [de], a                                    ; $349b: $12
    ld de, $c5a7                                  ; $349c: $11 $a7 $c5
    ld a, $01                                     ; $349f: $3e $01
    ld [de], a                                    ; $34a1: $12
    ld de, $c5a8                                  ; $34a2: $11 $a8 $c5
    ld a, $01                                     ; $34a5: $3e $01
    ld [de], a                                    ; $34a7: $12
    ld de, $c5a9                                  ; $34a8: $11 $a9 $c5
    ld a, $01                                     ; $34ab: $3e $01
    ld [de], a                                    ; $34ad: $12
    ld de, $c5aa                                  ; $34ae: $11 $aa $c5
    ld a, $01                                     ; $34b1: $3e $01
    ld [de], a                                    ; $34b3: $12
    ld de, $c5ab                                  ; $34b4: $11 $ab $c5
    ld a, $01                                     ; $34b7: $3e $01
    ld [de], a                                    ; $34b9: $12
    ld de, $c5ac                                  ; $34ba: $11 $ac $c5
    ld a, $01                                     ; $34bd: $3e $01
    ld [de], a                                    ; $34bf: $12
    ld de, $c5ad                                  ; $34c0: $11 $ad $c5
    ld a, $01                                     ; $34c3: $3e $01
    ld [de], a                                    ; $34c5: $12
    ld de, $c5ae                                  ; $34c6: $11 $ae $c5
    ld a, $01                                     ; $34c9: $3e $01
    ld [de], a                                    ; $34cb: $12
    ld de, $c5af                                  ; $34cc: $11 $af $c5
    ld a, $01                                     ; $34cf: $3e $01
    ld [de], a                                    ; $34d1: $12
    ld de, $c5b0                                  ; $34d2: $11 $b0 $c5
    ld a, $01                                     ; $34d5: $3e $01
    ld [de], a                                    ; $34d7: $12
    ld de, $c5b1                                  ; $34d8: $11 $b1 $c5
    ld a, $01                                     ; $34db: $3e $01
    ld [de], a                                    ; $34dd: $12
    ld de, $c5b2                                  ; $34de: $11 $b2 $c5
    ld a, $01                                     ; $34e1: $3e $01
    ld [de], a                                    ; $34e3: $12
    ld de, $c5b3                                  ; $34e4: $11 $b3 $c5
    ld a, $01                                     ; $34e7: $3e $01
    ld [de], a                                    ; $34e9: $12
    ld de, $c5b4                                  ; $34ea: $11 $b4 $c5
    ld a, $01                                     ; $34ed: $3e $01
    ld [de], a                                    ; $34ef: $12
    ld de, $c5b5                                  ; $34f0: $11 $b5 $c5
    ld a, $01                                     ; $34f3: $3e $01
    ld [de], a                                    ; $34f5: $12
    ld de, $c5b6                                  ; $34f6: $11 $b6 $c5
    ld a, $01                                     ; $34f9: $3e $01
    ld [de], a                                    ; $34fb: $12
    ld de, $c5b7                                  ; $34fc: $11 $b7 $c5
    ld a, $01                                     ; $34ff: $3e $01
    ld [de], a                                    ; $3501: $12
    ld de, $c5b8                                  ; $3502: $11 $b8 $c5
    ld a, $01                                     ; $3505: $3e $01
    ld [de], a                                    ; $3507: $12
    ld de, $c5b9                                  ; $3508: $11 $b9 $c5
    ld a, $01                                     ; $350b: $3e $01
    ld [de], a                                    ; $350d: $12
    ld de, $c5ba                                  ; $350e: $11 $ba $c5
    ld a, $01                                     ; $3511: $3e $01
    ld [de], a                                    ; $3513: $12
    ld de, $c5bb                                  ; $3514: $11 $bb $c5
    ld a, $01                                     ; $3517: $3e $01
    ld [de], a                                    ; $3519: $12
    ld de, $c5bc                                  ; $351a: $11 $bc $c5
    ld a, $01                                     ; $351d: $3e $01
    ld [de], a                                    ; $351f: $12
    ld de, $c5bd                                  ; $3520: $11 $bd $c5
    ld a, $01                                     ; $3523: $3e $01
    ld [de], a                                    ; $3525: $12
    ld de, $c5be                                  ; $3526: $11 $be $c5
    ld a, $01                                     ; $3529: $3e $01
    ld [de], a                                    ; $352b: $12
    ld de, $c5bf                                  ; $352c: $11 $bf $c5
    ld a, $01                                     ; $352f: $3e $01
    ld [de], a                                    ; $3531: $12
    ld de, $c5c0                                  ; $3532: $11 $c0 $c5
    ld a, $01                                     ; $3535: $3e $01
    ld [de], a                                    ; $3537: $12
    ld de, $c5c1                                  ; $3538: $11 $c1 $c5
    ld a, $01                                     ; $353b: $3e $01
    ld [de], a                                    ; $353d: $12
    ld de, $c5c2                                  ; $353e: $11 $c2 $c5
    ld a, $01                                     ; $3541: $3e $01
    ld [de], a                                    ; $3543: $12
    ld de, $c5c3                                  ; $3544: $11 $c3 $c5
    ld a, $01                                     ; $3547: $3e $01
    ld [de], a                                    ; $3549: $12
    ld de, $c5c4                                  ; $354a: $11 $c4 $c5
    ld a, $01                                     ; $354d: $3e $01
    ld [de], a                                    ; $354f: $12
    ld de, $c5c5                                  ; $3550: $11 $c5 $c5
    ld a, $01                                     ; $3553: $3e $01
    ld [de], a                                    ; $3555: $12
    ld de, $c5c6                                  ; $3556: $11 $c6 $c5
    ld a, $1f                                     ; $3559: $3e $1f
    ld [de], a                                    ; $355b: $12
    ld de, $c5c7                                  ; $355c: $11 $c7 $c5
    ld a, $01                                     ; $355f: $3e $01
    ld [de], a                                    ; $3561: $12
    ld de, $c5c8                                  ; $3562: $11 $c8 $c5
    ld a, $01                                     ; $3565: $3e $01
    ld [de], a                                    ; $3567: $12
    ld de, $c5c9                                  ; $3568: $11 $c9 $c5
    ld a, $01                                     ; $356b: $3e $01
    ld [de], a                                    ; $356d: $12
    ld de, $c5ca                                  ; $356e: $11 $ca $c5
    ld a, $01                                     ; $3571: $3e $01
    ld [de], a                                    ; $3573: $12
    ld de, $c5cb                                  ; $3574: $11 $cb $c5
    ld a, $01                                     ; $3577: $3e $01
    ld [de], a                                    ; $3579: $12
    ld de, $c5cc                                  ; $357a: $11 $cc $c5
    ld a, $01                                     ; $357d: $3e $01
    ld [de], a                                    ; $357f: $12
    ld de, $c5cd                                  ; $3580: $11 $cd $c5
    ld a, $01                                     ; $3583: $3e $01
    ld [de], a                                    ; $3585: $12
    ld de, $c5ce                                  ; $3586: $11 $ce $c5
    ld a, $01                                     ; $3589: $3e $01
    ld [de], a                                    ; $358b: $12
    ld de, $c5cf                                  ; $358c: $11 $cf $c5
    ld a, $1f                                     ; $358f: $3e $1f
    ld [de], a                                    ; $3591: $12
    ld de, $c5d0                                  ; $3592: $11 $d0 $c5
    ld a, $01                                     ; $3595: $3e $01
    ld [de], a                                    ; $3597: $12
    ld de, $c5d1                                  ; $3598: $11 $d1 $c5
    ld a, $01                                     ; $359b: $3e $01
    ld [de], a                                    ; $359d: $12
    ld de, $c5d2                                  ; $359e: $11 $d2 $c5
    ld a, $01                                     ; $35a1: $3e $01
    ld [de], a                                    ; $35a3: $12
    ld de, $c5d3                                  ; $35a4: $11 $d3 $c5
    ld a, $01                                     ; $35a7: $3e $01
    ld [de], a                                    ; $35a9: $12
    ld de, $c5d4                                  ; $35aa: $11 $d4 $c5
    ld a, $01                                     ; $35ad: $3e $01
    ld [de], a                                    ; $35af: $12
    ld de, $c5d5                                  ; $35b0: $11 $d5 $c5
    ld a, $01                                     ; $35b3: $3e $01
    ld [de], a                                    ; $35b5: $12
    ld de, $c5d6                                  ; $35b6: $11 $d6 $c5
    ld a, $01                                     ; $35b9: $3e $01
    ld [de], a                                    ; $35bb: $12
    ld de, $c5d7                                  ; $35bc: $11 $d7 $c5
    ld a, $01                                     ; $35bf: $3e $01
    ld [de], a                                    ; $35c1: $12
    ld de, $c5d8                                  ; $35c2: $11 $d8 $c5
    ld a, $01                                     ; $35c5: $3e $01
    ld [de], a                                    ; $35c7: $12
    ld de, $c5d9                                  ; $35c8: $11 $d9 $c5
    ld a, $01                                     ; $35cb: $3e $01
    ld [de], a                                    ; $35cd: $12
    ld de, $c5da                                  ; $35ce: $11 $da $c5
    ld a, $01                                     ; $35d1: $3e $01
    ld [de], a                                    ; $35d3: $12
    ld de, $c5db                                  ; $35d4: $11 $db $c5
    ld a, $01                                     ; $35d7: $3e $01
    ld [de], a                                    ; $35d9: $12
    ld de, $c5dc                                  ; $35da: $11 $dc $c5
    ld a, $01                                     ; $35dd: $3e $01
    ld [de], a                                    ; $35df: $12
    ld de, $c5dd                                  ; $35e0: $11 $dd $c5
    ld a, $01                                     ; $35e3: $3e $01
    ld [de], a                                    ; $35e5: $12
    ld de, $c5de                                  ; $35e6: $11 $de $c5
    ld a, $01                                     ; $35e9: $3e $01
    ld [de], a                                    ; $35eb: $12
    ld de, $c5df                                  ; $35ec: $11 $df $c5
    ld a, $01                                     ; $35ef: $3e $01
    ld [de], a                                    ; $35f1: $12
    ld de, $c5e0                                  ; $35f2: $11 $e0 $c5
    ld a, $01                                     ; $35f5: $3e $01
    ld [de], a                                    ; $35f7: $12
    ld de, $c5e1                                  ; $35f8: $11 $e1 $c5
    ld a, $01                                     ; $35fb: $3e $01
    ld [de], a                                    ; $35fd: $12
    ld de, $c5e2                                  ; $35fe: $11 $e2 $c5
    ld a, $01                                     ; $3601: $3e $01
    ld [de], a                                    ; $3603: $12
    ld de, $c5e3                                  ; $3604: $11 $e3 $c5
    ld a, $01                                     ; $3607: $3e $01
    ld [de], a                                    ; $3609: $12
    ld de, $c5e4                                  ; $360a: $11 $e4 $c5
    ld a, $01                                     ; $360d: $3e $01
    ld [de], a                                    ; $360f: $12
    ld de, $c5e5                                  ; $3610: $11 $e5 $c5
    ld a, $01                                     ; $3613: $3e $01
    ld [de], a                                    ; $3615: $12
    ld de, $c5e6                                  ; $3616: $11 $e6 $c5
    ld a, $01                                     ; $3619: $3e $01
    ld [de], a                                    ; $361b: $12
    ld de, $c5e7                                  ; $361c: $11 $e7 $c5
    ld a, $01                                     ; $361f: $3e $01
    ld [de], a                                    ; $3621: $12
    ld de, $c5e8                                  ; $3622: $11 $e8 $c5
    ld a, $01                                     ; $3625: $3e $01
    ld [de], a                                    ; $3627: $12
    ld de, $c5e9                                  ; $3628: $11 $e9 $c5
    ld a, $01                                     ; $362b: $3e $01
    ld [de], a                                    ; $362d: $12
    ld de, $c5ea                                  ; $362e: $11 $ea $c5
    ld a, $1f                                     ; $3631: $3e $1f
    ld [de], a                                    ; $3633: $12
    ld de, $c5eb                                  ; $3634: $11 $eb $c5
    ld a, $01                                     ; $3637: $3e $01
    ld [de], a                                    ; $3639: $12
    ld de, $c5ec                                  ; $363a: $11 $ec $c5
    ld a, $01                                     ; $363d: $3e $01
    ld [de], a                                    ; $363f: $12
    ld de, $c5ed                                  ; $3640: $11 $ed $c5
    ld a, $01                                     ; $3643: $3e $01
    ld [de], a                                    ; $3645: $12
    ld de, $c5ee                                  ; $3646: $11 $ee $c5
    ld a, $01                                     ; $3649: $3e $01
    ld [de], a                                    ; $364b: $12
    ld de, $c5ef                                  ; $364c: $11 $ef $c5
    ld a, $01                                     ; $364f: $3e $01
    ld [de], a                                    ; $3651: $12
    ld de, $c5f0                                  ; $3652: $11 $f0 $c5
    ld a, $01                                     ; $3655: $3e $01
    ld [de], a                                    ; $3657: $12
    ld de, $c5f1                                  ; $3658: $11 $f1 $c5
    ld a, $01                                     ; $365b: $3e $01
    ld [de], a                                    ; $365d: $12
    ld de, $c5f2                                  ; $365e: $11 $f2 $c5
    ld a, $01                                     ; $3661: $3e $01
    ld [de], a                                    ; $3663: $12
    ld de, $c5f3                                  ; $3664: $11 $f3 $c5
    ld a, $01                                     ; $3667: $3e $01
    ld [de], a                                    ; $3669: $12
    ld de, $c5f4                                  ; $366a: $11 $f4 $c5
    ld a, $01                                     ; $366d: $3e $01
    ld [de], a                                    ; $366f: $12
    ld de, $c5f5                                  ; $3670: $11 $f5 $c5
    ld a, $1f                                     ; $3673: $3e $1f
    ld [de], a                                    ; $3675: $12
    ld de, $c5f6                                  ; $3676: $11 $f6 $c5
    ld a, $01                                     ; $3679: $3e $01
    ld [de], a                                    ; $367b: $12
    ld de, $c5f7                                  ; $367c: $11 $f7 $c5
    ld a, $01                                     ; $367f: $3e $01
    ld [de], a                                    ; $3681: $12
    ld de, $c5f8                                  ; $3682: $11 $f8 $c5
    ld a, $01                                     ; $3685: $3e $01
    ld [de], a                                    ; $3687: $12
    ld de, $c5f9                                  ; $3688: $11 $f9 $c5
    ld a, $01                                     ; $368b: $3e $01
    ld [de], a                                    ; $368d: $12
    ld de, $c5fa                                  ; $368e: $11 $fa $c5
    ld a, $01                                     ; $3691: $3e $01
    ld [de], a                                    ; $3693: $12
    ld de, $c5fb                                  ; $3694: $11 $fb $c5
    ld a, $01                                     ; $3697: $3e $01
    ld [de], a                                    ; $3699: $12
    ld de, $c5fc                                  ; $369a: $11 $fc $c5
    ld a, $01                                     ; $369d: $3e $01
    ld [de], a                                    ; $369f: $12
    ld de, $c5fd                                  ; $36a0: $11 $fd $c5
    ld a, $01                                     ; $36a3: $3e $01
    ld [de], a                                    ; $36a5: $12
    ld de, $c5fe                                  ; $36a6: $11 $fe $c5
    ld a, $01                                     ; $36a9: $3e $01
    ld [de], a                                    ; $36ab: $12
    ld de, $c5ff                                  ; $36ac: $11 $ff $c5
    ld a, $01                                     ; $36af: $3e $01
    ld [de], a                                    ; $36b1: $12
    ld de, $c600                                  ; $36b2: $11 $00 $c6
    ld a, $01                                     ; $36b5: $3e $01
    ld [de], a                                    ; $36b7: $12
    ld de, $c601                                  ; $36b8: $11 $01 $c6
    ld a, $01                                     ; $36bb: $3e $01
    ld [de], a                                    ; $36bd: $12
    ld de, $c602                                  ; $36be: $11 $02 $c6
    ld a, $01                                     ; $36c1: $3e $01
    ld [de], a                                    ; $36c3: $12
    ld de, $c603                                  ; $36c4: $11 $03 $c6
    ld a, $01                                     ; $36c7: $3e $01
    ld [de], a                                    ; $36c9: $12
    ld de, $c604                                  ; $36ca: $11 $04 $c6
    ld a, $01                                     ; $36cd: $3e $01
    ld [de], a                                    ; $36cf: $12
    ld de, $c605                                  ; $36d0: $11 $05 $c6
    ld a, $01                                     ; $36d3: $3e $01
    ld [de], a                                    ; $36d5: $12
    ld de, $c606                                  ; $36d6: $11 $06 $c6
    ld a, $01                                     ; $36d9: $3e $01
    ld [de], a                                    ; $36db: $12
    ld de, $c607                                  ; $36dc: $11 $07 $c6
    ld a, $01                                     ; $36df: $3e $01
    ld [de], a                                    ; $36e1: $12
    ld de, $c608                                  ; $36e2: $11 $08 $c6
    ld a, $01                                     ; $36e5: $3e $01
    ld [de], a                                    ; $36e7: $12
    ld de, $c609                                  ; $36e8: $11 $09 $c6
    ld a, $01                                     ; $36eb: $3e $01
    ld [de], a                                    ; $36ed: $12
    ld de, $c60a                                  ; $36ee: $11 $0a $c6
    ld a, $01                                     ; $36f1: $3e $01
    ld [de], a                                    ; $36f3: $12
    ld de, $c60b                                  ; $36f4: $11 $0b $c6
    ld a, $01                                     ; $36f7: $3e $01
    ld [de], a                                    ; $36f9: $12
    ld de, $c60c                                  ; $36fa: $11 $0c $c6
    ld a, $01                                     ; $36fd: $3e $01
    ld [de], a                                    ; $36ff: $12
    ld de, $c60d                                  ; $3700: $11 $0d $c6
    ld a, $01                                     ; $3703: $3e $01
    ld [de], a                                    ; $3705: $12
    ld de, $c60e                                  ; $3706: $11 $0e $c6
    ld a, $01                                     ; $3709: $3e $01
    ld [de], a                                    ; $370b: $12
    ld de, $c60f                                  ; $370c: $11 $0f $c6
    ld a, $01                                     ; $370f: $3e $01
    ld [de], a                                    ; $3711: $12
    ld de, $c610                                  ; $3712: $11 $10 $c6
    ld a, $01                                     ; $3715: $3e $01
    ld [de], a                                    ; $3717: $12
    ld de, $c611                                  ; $3718: $11 $11 $c6
    ld a, $01                                     ; $371b: $3e $01
    ld [de], a                                    ; $371d: $12
    ld de, $c612                                  ; $371e: $11 $12 $c6
    ld a, $01                                     ; $3721: $3e $01
    ld [de], a                                    ; $3723: $12
    ld de, $c613                                  ; $3724: $11 $13 $c6
    ld a, $01                                     ; $3727: $3e $01
    ld [de], a                                    ; $3729: $12
    ld de, $c614                                  ; $372a: $11 $14 $c6
    ld a, $01                                     ; $372d: $3e $01
    ld [de], a                                    ; $372f: $12
    ld de, $c615                                  ; $3730: $11 $15 $c6
    ld a, $01                                     ; $3733: $3e $01
    ld [de], a                                    ; $3735: $12
    ld de, $c616                                  ; $3736: $11 $16 $c6
    ld a, $01                                     ; $3739: $3e $01
    ld [de], a                                    ; $373b: $12
    ld de, $c617                                  ; $373c: $11 $17 $c6
    ld a, $01                                     ; $373f: $3e $01
    ld [de], a                                    ; $3741: $12
    ld de, $c618                                  ; $3742: $11 $18 $c6
    ld a, $01                                     ; $3745: $3e $01
    ld [de], a                                    ; $3747: $12
    ld de, $c619                                  ; $3748: $11 $19 $c6
    ld a, $01                                     ; $374b: $3e $01
    ld [de], a                                    ; $374d: $12
    ld de, $c61a                                  ; $374e: $11 $1a $c6
    ld a, $01                                     ; $3751: $3e $01
    ld [de], a                                    ; $3753: $12
    ld de, $c61b                                  ; $3754: $11 $1b $c6
    ld a, $1f                                     ; $3757: $3e $1f
    ld [de], a                                    ; $3759: $12
    ld de, $c61c                                  ; $375a: $11 $1c $c6
    ld a, $01                                     ; $375d: $3e $01
    ld [de], a                                    ; $375f: $12
    ld de, $c61d                                  ; $3760: $11 $1d $c6
    ld a, $01                                     ; $3763: $3e $01
    ld [de], a                                    ; $3765: $12
    ld de, $c61e                                  ; $3766: $11 $1e $c6
    ld a, $01                                     ; $3769: $3e $01
    ld [de], a                                    ; $376b: $12
    ld de, $c61f                                  ; $376c: $11 $1f $c6
    ld a, $01                                     ; $376f: $3e $01
    ld [de], a                                    ; $3771: $12
    ld de, $c620                                  ; $3772: $11 $20 $c6
    ld a, $01                                     ; $3775: $3e $01
    ld [de], a                                    ; $3777: $12
    ld de, $c621                                  ; $3778: $11 $21 $c6
    ld a, $01                                     ; $377b: $3e $01
    ld [de], a                                    ; $377d: $12
    ld de, $c622                                  ; $377e: $11 $22 $c6
    ld a, $01                                     ; $3781: $3e $01
    ld [de], a                                    ; $3783: $12
    ld de, $c623                                  ; $3784: $11 $23 $c6
    ld a, $01                                     ; $3787: $3e $01
    ld [de], a                                    ; $3789: $12
    ld de, $c624                                  ; $378a: $11 $24 $c6
    ld a, $01                                     ; $378d: $3e $01
    ld [de], a                                    ; $378f: $12
    ld de, $c625                                  ; $3790: $11 $25 $c6
    ld a, $01                                     ; $3793: $3e $01
    ld [de], a                                    ; $3795: $12
    ld de, $c626                                  ; $3796: $11 $26 $c6
    ld a, $01                                     ; $3799: $3e $01
    ld [de], a                                    ; $379b: $12
    ld de, $c627                                  ; $379c: $11 $27 $c6
    ld a, $01                                     ; $379f: $3e $01
    ld [de], a                                    ; $37a1: $12
    ld de, $c628                                  ; $37a2: $11 $28 $c6
    ld a, $01                                     ; $37a5: $3e $01
    ld [de], a                                    ; $37a7: $12
    ld de, $c629                                  ; $37a8: $11 $29 $c6
    ld a, $01                                     ; $37ab: $3e $01
    ld [de], a                                    ; $37ad: $12
    ld de, $c62a                                  ; $37ae: $11 $2a $c6
    ld a, $01                                     ; $37b1: $3e $01
    ld [de], a                                    ; $37b3: $12
    ld de, $c62b                                  ; $37b4: $11 $2b $c6
    ld a, $01                                     ; $37b7: $3e $01
    ld [de], a                                    ; $37b9: $12
    ld de, $c62c                                  ; $37ba: $11 $2c $c6
    ld a, $01                                     ; $37bd: $3e $01
    ld [de], a                                    ; $37bf: $12
    ld de, $c62d                                  ; $37c0: $11 $2d $c6
    ld a, $01                                     ; $37c3: $3e $01
    ld [de], a                                    ; $37c5: $12
    ld de, $c62e                                  ; $37c6: $11 $2e $c6
    ld a, $01                                     ; $37c9: $3e $01
    ld [de], a                                    ; $37cb: $12
    ld de, $c62f                                  ; $37cc: $11 $2f $c6
    ld a, $01                                     ; $37cf: $3e $01
    ld [de], a                                    ; $37d1: $12
    ld de, $c630                                  ; $37d2: $11 $30 $c6
    ld a, $01                                     ; $37d5: $3e $01
    ld [de], a                                    ; $37d7: $12
    ld de, $c631                                  ; $37d8: $11 $31 $c6
    ld a, $01                                     ; $37db: $3e $01
    ld [de], a                                    ; $37dd: $12
    ld de, $c632                                  ; $37de: $11 $32 $c6
    ld a, $2a                                     ; $37e1: $3e $2a
    ld [de], a                                    ; $37e3: $12
    ld de, $c633                                  ; $37e4: $11 $33 $c6
    ld a, $01                                     ; $37e7: $3e $01
    ld [de], a                                    ; $37e9: $12
    ld de, $c634                                  ; $37ea: $11 $34 $c6
    ld a, $01                                     ; $37ed: $3e $01
    ld [de], a                                    ; $37ef: $12
    ld de, $c635                                  ; $37f0: $11 $35 $c6
    ld a, $01                                     ; $37f3: $3e $01
    ld [de], a                                    ; $37f5: $12
    ld de, $c636                                  ; $37f6: $11 $36 $c6
    ld a, $01                                     ; $37f9: $3e $01
    ld [de], a                                    ; $37fb: $12
    ld de, $c637                                  ; $37fc: $11 $37 $c6
    ld a, $01                                     ; $37ff: $3e $01
    ld [de], a                                    ; $3801: $12
    ld de, $c638                                  ; $3802: $11 $38 $c6
    ld a, $01                                     ; $3805: $3e $01
    ld [de], a                                    ; $3807: $12
    ld de, $c639                                  ; $3808: $11 $39 $c6
    ld a, $01                                     ; $380b: $3e $01
    ld [de], a                                    ; $380d: $12
    ld de, $c63a                                  ; $380e: $11 $3a $c6
    ld a, $01                                     ; $3811: $3e $01
    ld [de], a                                    ; $3813: $12
    ld de, $c63b                                  ; $3814: $11 $3b $c6
    ld a, $01                                     ; $3817: $3e $01
    ld [de], a                                    ; $3819: $12
    ld de, $c63c                                  ; $381a: $11 $3c $c6
    ld a, $01                                     ; $381d: $3e $01
    ld [de], a                                    ; $381f: $12
    ld de, $c63d                                  ; $3820: $11 $3d $c6
    ld a, $01                                     ; $3823: $3e $01
    ld [de], a                                    ; $3825: $12
    ld de, $c63e                                  ; $3826: $11 $3e $c6
    ld a, $01                                     ; $3829: $3e $01
    ld [de], a                                    ; $382b: $12
    ld de, $c63f                                  ; $382c: $11 $3f $c6
    ld a, $01                                     ; $382f: $3e $01
    ld [de], a                                    ; $3831: $12
    ld de, $c640                                  ; $3832: $11 $40 $c6
    ld a, $01                                     ; $3835: $3e $01
    ld [de], a                                    ; $3837: $12
    ld de, $c641                                  ; $3838: $11 $41 $c6
    ld a, $01                                     ; $383b: $3e $01
    ld [de], a                                    ; $383d: $12
    ld de, $c642                                  ; $383e: $11 $42 $c6
    ld a, $01                                     ; $3841: $3e $01
    ld [de], a                                    ; $3843: $12
    ld de, $c643                                  ; $3844: $11 $43 $c6
    ld a, $01                                     ; $3847: $3e $01
    ld [de], a                                    ; $3849: $12
    ld de, $c644                                  ; $384a: $11 $44 $c6
    ld a, $01                                     ; $384d: $3e $01
    ld [de], a                                    ; $384f: $12
    ld de, $c645                                  ; $3850: $11 $45 $c6
    ld a, $01                                     ; $3853: $3e $01
    ld [de], a                                    ; $3855: $12
    ld de, $c646                                  ; $3856: $11 $46 $c6
    ld a, $01                                     ; $3859: $3e $01
    ld [de], a                                    ; $385b: $12
    ld de, $c647                                  ; $385c: $11 $47 $c6
    ld a, $01                                     ; $385f: $3e $01
    ld [de], a                                    ; $3861: $12
    ld de, $c648                                  ; $3862: $11 $48 $c6
    ld a, $01                                     ; $3865: $3e $01
    ld [de], a                                    ; $3867: $12
    ld de, $c649                                  ; $3868: $11 $49 $c6
    ld a, $01                                     ; $386b: $3e $01
    ld [de], a                                    ; $386d: $12
    ld de, $c64a                                  ; $386e: $11 $4a $c6
    ld a, $01                                     ; $3871: $3e $01
    ld [de], a                                    ; $3873: $12
    ld de, $c64b                                  ; $3874: $11 $4b $c6
    ld a, $01                                     ; $3877: $3e $01
    ld [de], a                                    ; $3879: $12
    ld de, $c64c                                  ; $387a: $11 $4c $c6
    ld a, $01                                     ; $387d: $3e $01
    ld [de], a                                    ; $387f: $12
    ld de, $c64d                                  ; $3880: $11 $4d $c6
    ld a, $01                                     ; $3883: $3e $01
    ld [de], a                                    ; $3885: $12
    ld de, $c64e                                  ; $3886: $11 $4e $c6
    ld a, $01                                     ; $3889: $3e $01
    ld [de], a                                    ; $388b: $12
    ld de, $c64f                                  ; $388c: $11 $4f $c6
    ld a, $2a                                     ; $388f: $3e $2a
    ld [de], a                                    ; $3891: $12
    ld de, $c650                                  ; $3892: $11 $50 $c6
    ld a, $01                                     ; $3895: $3e $01
    ld [de], a                                    ; $3897: $12
    ld de, $c651                                  ; $3898: $11 $51 $c6
    ld a, $01                                     ; $389b: $3e $01
    ld [de], a                                    ; $389d: $12
    ld de, $c652                                  ; $389e: $11 $52 $c6
    ld a, $01                                     ; $38a1: $3e $01
    ld [de], a                                    ; $38a3: $12
    ld de, $c653                                  ; $38a4: $11 $53 $c6
    ld a, $01                                     ; $38a7: $3e $01
    ld [de], a                                    ; $38a9: $12
    ld de, $c654                                  ; $38aa: $11 $54 $c6
    ld a, $01                                     ; $38ad: $3e $01
    ld [de], a                                    ; $38af: $12
    ld de, $c655                                  ; $38b0: $11 $55 $c6
    ld a, $01                                     ; $38b3: $3e $01
    ld [de], a                                    ; $38b5: $12
    ld de, $c656                                  ; $38b6: $11 $56 $c6
    ld a, $2a                                     ; $38b9: $3e $2a
    ld [de], a                                    ; $38bb: $12
    ld de, $c657                                  ; $38bc: $11 $57 $c6
    ld a, $01                                     ; $38bf: $3e $01
    ld [de], a                                    ; $38c1: $12
    ld de, $c658                                  ; $38c2: $11 $58 $c6
    ld a, $01                                     ; $38c5: $3e $01
    ld [de], a                                    ; $38c7: $12
    ld de, $c659                                  ; $38c8: $11 $59 $c6
    ld a, $01                                     ; $38cb: $3e $01
    ld [de], a                                    ; $38cd: $12
    ld de, $c65a                                  ; $38ce: $11 $5a $c6
    ld a, $01                                     ; $38d1: $3e $01
    ld [de], a                                    ; $38d3: $12
    ld de, $c65b                                  ; $38d4: $11 $5b $c6
    ld a, $01                                     ; $38d7: $3e $01
    ld [de], a                                    ; $38d9: $12
    ld de, $c65c                                  ; $38da: $11 $5c $c6
    ld a, $01                                     ; $38dd: $3e $01
    ld [de], a                                    ; $38df: $12
    ld de, $c65d                                  ; $38e0: $11 $5d $c6
    ld a, $01                                     ; $38e3: $3e $01
    ld [de], a                                    ; $38e5: $12
    ld de, $c65e                                  ; $38e6: $11 $5e $c6
    ld a, $01                                     ; $38e9: $3e $01
    ld [de], a                                    ; $38eb: $12
    ld de, $c65f                                  ; $38ec: $11 $5f $c6
    ld a, $01                                     ; $38ef: $3e $01
    ld [de], a                                    ; $38f1: $12
    ld de, $c660                                  ; $38f2: $11 $60 $c6
    ld a, $01                                     ; $38f5: $3e $01
    ld [de], a                                    ; $38f7: $12
    ld de, $c661                                  ; $38f8: $11 $61 $c6
    ld a, $01                                     ; $38fb: $3e $01
    ld [de], a                                    ; $38fd: $12
    ld de, $c662                                  ; $38fe: $11 $62 $c6
    ld a, $01                                     ; $3901: $3e $01
    ld [de], a                                    ; $3903: $12
    ld de, $c663                                  ; $3904: $11 $63 $c6
    ld a, $01                                     ; $3907: $3e $01
    ld [de], a                                    ; $3909: $12
    ld de, $c664                                  ; $390a: $11 $64 $c6
    ld a, $01                                     ; $390d: $3e $01
    ld [de], a                                    ; $390f: $12
    ld de, $c665                                  ; $3910: $11 $65 $c6
    ld a, $01                                     ; $3913: $3e $01
    ld [de], a                                    ; $3915: $12
    ld de, $c666                                  ; $3916: $11 $66 $c6
    ld a, $01                                     ; $3919: $3e $01
    ld [de], a                                    ; $391b: $12
    ld de, $c667                                  ; $391c: $11 $67 $c6
    ld a, $01                                     ; $391f: $3e $01
    ld [de], a                                    ; $3921: $12
    ld de, $c668                                  ; $3922: $11 $68 $c6
    ld a, $01                                     ; $3925: $3e $01
    ld [de], a                                    ; $3927: $12
    ld de, $c669                                  ; $3928: $11 $69 $c6
    ld a, $01                                     ; $392b: $3e $01
    ld [de], a                                    ; $392d: $12
    ld de, $c66a                                  ; $392e: $11 $6a $c6
    ld a, $01                                     ; $3931: $3e $01
    ld [de], a                                    ; $3933: $12
    ld de, $c66b                                  ; $3934: $11 $6b $c6
    ld a, $01                                     ; $3937: $3e $01
    ld [de], a                                    ; $3939: $12
    ld de, $c66c                                  ; $393a: $11 $6c $c6
    ld a, $01                                     ; $393d: $3e $01
    ld [de], a                                    ; $393f: $12
    ld de, $c66d                                  ; $3940: $11 $6d $c6
    ld a, $01                                     ; $3943: $3e $01
    ld [de], a                                    ; $3945: $12
    ld de, $c66e                                  ; $3946: $11 $6e $c6
    ld a, $01                                     ; $3949: $3e $01
    ld [de], a                                    ; $394b: $12
    ld de, $c66f                                  ; $394c: $11 $6f $c6
    ld a, $01                                     ; $394f: $3e $01
    ld [de], a                                    ; $3951: $12
    ld de, $c670                                  ; $3952: $11 $70 $c6
    ld a, $01                                     ; $3955: $3e $01
    ld [de], a                                    ; $3957: $12
    ld de, $c671                                  ; $3958: $11 $71 $c6
    ld a, $01                                     ; $395b: $3e $01
    ld [de], a                                    ; $395d: $12
    ld de, $c672                                  ; $395e: $11 $72 $c6
    ld a, $01                                     ; $3961: $3e $01
    ld [de], a                                    ; $3963: $12
    ld de, $c673                                  ; $3964: $11 $73 $c6
    ld a, $01                                     ; $3967: $3e $01
    ld [de], a                                    ; $3969: $12
    ld de, $c674                                  ; $396a: $11 $74 $c6
    ld a, $01                                     ; $396d: $3e $01
    ld [de], a                                    ; $396f: $12
    ld de, $c675                                  ; $3970: $11 $75 $c6
    ld a, $01                                     ; $3973: $3e $01
    ld [de], a                                    ; $3975: $12
    ld de, $c676                                  ; $3976: $11 $76 $c6
    ld a, $01                                     ; $3979: $3e $01
    ld [de], a                                    ; $397b: $12
    ld de, $c677                                  ; $397c: $11 $77 $c6
    ld a, $01                                     ; $397f: $3e $01
    ld [de], a                                    ; $3981: $12
    ld de, $c678                                  ; $3982: $11 $78 $c6
    ld a, $01                                     ; $3985: $3e $01
    ld [de], a                                    ; $3987: $12
    ld de, $c679                                  ; $3988: $11 $79 $c6
    ld a, $01                                     ; $398b: $3e $01
    ld [de], a                                    ; $398d: $12
    ld de, $c67a                                  ; $398e: $11 $7a $c6
    ld a, $2a                                     ; $3991: $3e $2a
    ld [de], a                                    ; $3993: $12
    ld de, $c67b                                  ; $3994: $11 $7b $c6
    ld a, $01                                     ; $3997: $3e $01
    ld [de], a                                    ; $3999: $12
    ld de, $c67c                                  ; $399a: $11 $7c $c6
    ld a, $01                                     ; $399d: $3e $01
    ld [de], a                                    ; $399f: $12
    ld de, $c67d                                  ; $39a0: $11 $7d $c6
    ld a, $01                                     ; $39a3: $3e $01
    ld [de], a                                    ; $39a5: $12
    ld de, $c67e                                  ; $39a6: $11 $7e $c6
    ld a, $01                                     ; $39a9: $3e $01
    ld [de], a                                    ; $39ab: $12
    ld de, $c67f                                  ; $39ac: $11 $7f $c6
    ld a, $01                                     ; $39af: $3e $01
    ld [de], a                                    ; $39b1: $12
    ld de, $c680                                  ; $39b2: $11 $80 $c6
    ld a, $2a                                     ; $39b5: $3e $2a
    ld [de], a                                    ; $39b7: $12
    ld de, $c681                                  ; $39b8: $11 $81 $c6
    ld a, $01                                     ; $39bb: $3e $01
    ld [de], a                                    ; $39bd: $12
    ld de, $c682                                  ; $39be: $11 $82 $c6
    ld a, $01                                     ; $39c1: $3e $01
    ld [de], a                                    ; $39c3: $12
    ld de, $c683                                  ; $39c4: $11 $83 $c6
    ld a, $01                                     ; $39c7: $3e $01
    ld [de], a                                    ; $39c9: $12
    ld de, $c684                                  ; $39ca: $11 $84 $c6
    ld a, $01                                     ; $39cd: $3e $01
    ld [de], a                                    ; $39cf: $12
    ld de, $c685                                  ; $39d0: $11 $85 $c6
    ld a, $01                                     ; $39d3: $3e $01
    ld [de], a                                    ; $39d5: $12
    ld de, $c686                                  ; $39d6: $11 $86 $c6
    ld a, $01                                     ; $39d9: $3e $01
    ld [de], a                                    ; $39db: $12
    ld de, $c687                                  ; $39dc: $11 $87 $c6
    ld a, $01                                     ; $39df: $3e $01
    ld [de], a                                    ; $39e1: $12
    ld de, $c688                                  ; $39e2: $11 $88 $c6
    ld a, $2a                                     ; $39e5: $3e $2a
    ld [de], a                                    ; $39e7: $12
    ld de, $c689                                  ; $39e8: $11 $89 $c6
    ld a, $01                                     ; $39eb: $3e $01
    ld [de], a                                    ; $39ed: $12
    ld de, $c68a                                  ; $39ee: $11 $8a $c6
    ld a, $01                                     ; $39f1: $3e $01
    ld [de], a                                    ; $39f3: $12
    ld de, $c68b                                  ; $39f4: $11 $8b $c6
    ld a, $01                                     ; $39f7: $3e $01
    ld [de], a                                    ; $39f9: $12
    ld de, $c68c                                  ; $39fa: $11 $8c $c6
    ld a, $01                                     ; $39fd: $3e $01
    ld [de], a                                    ; $39ff: $12
    ld de, $c68d                                  ; $3a00: $11 $8d $c6
    ld a, $01                                     ; $3a03: $3e $01
    ld [de], a                                    ; $3a05: $12
    ld de, $c68e                                  ; $3a06: $11 $8e $c6
    ld a, $01                                     ; $3a09: $3e $01
    ld [de], a                                    ; $3a0b: $12
    ld de, $c68f                                  ; $3a0c: $11 $8f $c6
    ld a, $01                                     ; $3a0f: $3e $01
    ld [de], a                                    ; $3a11: $12
    ld de, $c690                                  ; $3a12: $11 $90 $c6
    ld a, $01                                     ; $3a15: $3e $01
    ld [de], a                                    ; $3a17: $12
    ld de, $c691                                  ; $3a18: $11 $91 $c6
    ld a, $01                                     ; $3a1b: $3e $01
    ld [de], a                                    ; $3a1d: $12
    ld de, $c692                                  ; $3a1e: $11 $92 $c6
    ld a, $01                                     ; $3a21: $3e $01
    ld [de], a                                    ; $3a23: $12
    ld de, $c693                                  ; $3a24: $11 $93 $c6
    ld a, $01                                     ; $3a27: $3e $01
    ld [de], a                                    ; $3a29: $12
    ld de, $c694                                  ; $3a2a: $11 $94 $c6
    ld a, $01                                     ; $3a2d: $3e $01
    ld [de], a                                    ; $3a2f: $12
    ld de, $c695                                  ; $3a30: $11 $95 $c6
    ld a, $01                                     ; $3a33: $3e $01
    ld [de], a                                    ; $3a35: $12
    ld de, $c696                                  ; $3a36: $11 $96 $c6
    ld a, $01                                     ; $3a39: $3e $01
    ld [de], a                                    ; $3a3b: $12
    ld de, $c697                                  ; $3a3c: $11 $97 $c6
    ld a, $01                                     ; $3a3f: $3e $01
    ld [de], a                                    ; $3a41: $12
    ld de, $c698                                  ; $3a42: $11 $98 $c6
    ld a, $01                                     ; $3a45: $3e $01
    ld [de], a                                    ; $3a47: $12
    ld de, $c699                                  ; $3a48: $11 $99 $c6
    ld a, $01                                     ; $3a4b: $3e $01
    ld [de], a                                    ; $3a4d: $12
    ld de, $c69a                                  ; $3a4e: $11 $9a $c6
    ld a, $01                                     ; $3a51: $3e $01
    ld [de], a                                    ; $3a53: $12
    ld de, $c69b                                  ; $3a54: $11 $9b $c6
    ld a, $01                                     ; $3a57: $3e $01
    ld [de], a                                    ; $3a59: $12
    ld de, $c69c                                  ; $3a5a: $11 $9c $c6
    ld a, $01                                     ; $3a5d: $3e $01
    ld [de], a                                    ; $3a5f: $12
    ld de, $c69d                                  ; $3a60: $11 $9d $c6
    ld a, $01                                     ; $3a63: $3e $01
    ld [de], a                                    ; $3a65: $12
    ld de, $c69e                                  ; $3a66: $11 $9e $c6
    ld a, $01                                     ; $3a69: $3e $01
    ld [de], a                                    ; $3a6b: $12
    ld de, $c69f                                  ; $3a6c: $11 $9f $c6
    ld a, $01                                     ; $3a6f: $3e $01
    ld [de], a                                    ; $3a71: $12
    ld de, $c6a0                                  ; $3a72: $11 $a0 $c6
    ld a, $01                                     ; $3a75: $3e $01
    ld [de], a                                    ; $3a77: $12
    ld de, $c6a1                                  ; $3a78: $11 $a1 $c6
    ld a, $01                                     ; $3a7b: $3e $01
    ld [de], a                                    ; $3a7d: $12
    ld de, $c6a2                                  ; $3a7e: $11 $a2 $c6
    ld a, $01                                     ; $3a81: $3e $01
    ld [de], a                                    ; $3a83: $12
    ld de, $c6a3                                  ; $3a84: $11 $a3 $c6
    ld a, $01                                     ; $3a87: $3e $01
    ld [de], a                                    ; $3a89: $12
    ld de, $c6a4                                  ; $3a8a: $11 $a4 $c6
    ld a, $01                                     ; $3a8d: $3e $01
    ld [de], a                                    ; $3a8f: $12
    ld de, $c6a5                                  ; $3a90: $11 $a5 $c6
    ld a, $01                                     ; $3a93: $3e $01
    ld [de], a                                    ; $3a95: $12
    ld de, $c6a6                                  ; $3a96: $11 $a6 $c6
    ld a, $01                                     ; $3a99: $3e $01
    ld [de], a                                    ; $3a9b: $12
    ld de, $c6a7                                  ; $3a9c: $11 $a7 $c6
    ld a, $01                                     ; $3a9f: $3e $01
    ld [de], a                                    ; $3aa1: $12
    ld de, $c6a8                                  ; $3aa2: $11 $a8 $c6
    ld a, $01                                     ; $3aa5: $3e $01
    ld [de], a                                    ; $3aa7: $12
    ld de, $c6a9                                  ; $3aa8: $11 $a9 $c6
    ld a, $01                                     ; $3aab: $3e $01
    ld [de], a                                    ; $3aad: $12
    ld de, $c6aa                                  ; $3aae: $11 $aa $c6
    ld a, $01                                     ; $3ab1: $3e $01
    ld [de], a                                    ; $3ab3: $12
    ld de, $c6ab                                  ; $3ab4: $11 $ab $c6
    ld a, $01                                     ; $3ab7: $3e $01
    ld [de], a                                    ; $3ab9: $12
    ld de, $c6ac                                  ; $3aba: $11 $ac $c6
    ld a, $01                                     ; $3abd: $3e $01
    ld [de], a                                    ; $3abf: $12
    ld de, $c6ad                                  ; $3ac0: $11 $ad $c6
    ld a, $01                                     ; $3ac3: $3e $01
    ld [de], a                                    ; $3ac5: $12
    ld de, $c6ae                                  ; $3ac6: $11 $ae $c6
    ld a, $01                                     ; $3ac9: $3e $01
    ld [de], a                                    ; $3acb: $12
    ld de, $c6af                                  ; $3acc: $11 $af $c6
    ld a, $01                                     ; $3acf: $3e $01
    ld [de], a                                    ; $3ad1: $12
    ld de, $c6b0                                  ; $3ad2: $11 $b0 $c6
    ld a, $01                                     ; $3ad5: $3e $01
    ld [de], a                                    ; $3ad7: $12
    ld de, $c6b1                                  ; $3ad8: $11 $b1 $c6
    ld a, $01                                     ; $3adb: $3e $01
    ld [de], a                                    ; $3add: $12
    ld de, $c6b2                                  ; $3ade: $11 $b2 $c6
    ld a, $01                                     ; $3ae1: $3e $01
    ld [de], a                                    ; $3ae3: $12
    ld de, $c6b3                                  ; $3ae4: $11 $b3 $c6
    ld a, $01                                     ; $3ae7: $3e $01
    ld [de], a                                    ; $3ae9: $12
    ld de, $c6b4                                  ; $3aea: $11 $b4 $c6
    ld a, $01                                     ; $3aed: $3e $01
    ld [de], a                                    ; $3aef: $12
    ld de, $c6b5                                  ; $3af0: $11 $b5 $c6
    ld a, $01                                     ; $3af3: $3e $01
    ld [de], a                                    ; $3af5: $12
    ld de, $c6b6                                  ; $3af6: $11 $b6 $c6
    ld a, $01                                     ; $3af9: $3e $01
    ld [de], a                                    ; $3afb: $12
    ld de, $c6b7                                  ; $3afc: $11 $b7 $c6
    ld a, $01                                     ; $3aff: $3e $01
    ld [de], a                                    ; $3b01: $12
    ld de, $c6b8                                  ; $3b02: $11 $b8 $c6
    ld a, $01                                     ; $3b05: $3e $01
    ld [de], a                                    ; $3b07: $12
    ld de, $c6b9                                  ; $3b08: $11 $b9 $c6
    ld a, $01                                     ; $3b0b: $3e $01
    ld [de], a                                    ; $3b0d: $12
    ld de, $c6ba                                  ; $3b0e: $11 $ba $c6
    ld a, $01                                     ; $3b11: $3e $01
    ld [de], a                                    ; $3b13: $12
    ld de, $c6bb                                  ; $3b14: $11 $bb $c6
    ld a, $01                                     ; $3b17: $3e $01
    ld [de], a                                    ; $3b19: $12
    ld de, $c6bc                                  ; $3b1a: $11 $bc $c6
    ld a, $01                                     ; $3b1d: $3e $01
    ld [de], a                                    ; $3b1f: $12
    ld de, $c6bd                                  ; $3b20: $11 $bd $c6
    ld a, $01                                     ; $3b23: $3e $01
    ld [de], a                                    ; $3b25: $12
    ld de, $c6be                                  ; $3b26: $11 $be $c6
    ld a, $01                                     ; $3b29: $3e $01
    ld [de], a                                    ; $3b2b: $12
    ld de, $c6bf                                  ; $3b2c: $11 $bf $c6
    ld a, $01                                     ; $3b2f: $3e $01
    ld [de], a                                    ; $3b31: $12
    ld de, $c6c0                                  ; $3b32: $11 $c0 $c6
    ld a, $01                                     ; $3b35: $3e $01
    ld [de], a                                    ; $3b37: $12
    ld de, $c6c1                                  ; $3b38: $11 $c1 $c6
    ld a, $01                                     ; $3b3b: $3e $01
    ld [de], a                                    ; $3b3d: $12
    ld de, $c6c2                                  ; $3b3e: $11 $c2 $c6
    ld a, $01                                     ; $3b41: $3e $01
    ld [de], a                                    ; $3b43: $12
    ld de, $c6c3                                  ; $3b44: $11 $c3 $c6
    ld a, $01                                     ; $3b47: $3e $01
    ld [de], a                                    ; $3b49: $12
    ld de, $c6c4                                  ; $3b4a: $11 $c4 $c6
    ld a, $01                                     ; $3b4d: $3e $01
    ld [de], a                                    ; $3b4f: $12
    ld de, $c6c5                                  ; $3b50: $11 $c5 $c6
    ld a, $01                                     ; $3b53: $3e $01
    ld [de], a                                    ; $3b55: $12
    ld de, $c6c6                                  ; $3b56: $11 $c6 $c6
    ld a, $01                                     ; $3b59: $3e $01
    ld [de], a                                    ; $3b5b: $12
    ld de, $c6c7                                  ; $3b5c: $11 $c7 $c6
    ld a, $01                                     ; $3b5f: $3e $01
    ld [de], a                                    ; $3b61: $12
    ld de, $c6c8                                  ; $3b62: $11 $c8 $c6
    ld a, $01                                     ; $3b65: $3e $01
    ld [de], a                                    ; $3b67: $12
    ld de, $c6c9                                  ; $3b68: $11 $c9 $c6
    ld a, $01                                     ; $3b6b: $3e $01
    ld [de], a                                    ; $3b6d: $12
    ld de, $c6ca                                  ; $3b6e: $11 $ca $c6
    ld a, $01                                     ; $3b71: $3e $01
    ld [de], a                                    ; $3b73: $12
    ld de, $c6cb                                  ; $3b74: $11 $cb $c6
    ld a, $01                                     ; $3b77: $3e $01
    ld [de], a                                    ; $3b79: $12
    ld de, $c6cc                                  ; $3b7a: $11 $cc $c6
    ld a, $01                                     ; $3b7d: $3e $01
    ld [de], a                                    ; $3b7f: $12
    ld de, $c6cd                                  ; $3b80: $11 $cd $c6
    ld a, $01                                     ; $3b83: $3e $01
    ld [de], a                                    ; $3b85: $12
    ld de, $c6ce                                  ; $3b86: $11 $ce $c6
    ld a, $01                                     ; $3b89: $3e $01
    ld [de], a                                    ; $3b8b: $12
    ld de, $c6cf                                  ; $3b8c: $11 $cf $c6
    ld a, $01                                     ; $3b8f: $3e $01
    ld [de], a                                    ; $3b91: $12
    ld de, $c6d0                                  ; $3b92: $11 $d0 $c6
    ld a, $01                                     ; $3b95: $3e $01
    ld [de], a                                    ; $3b97: $12
    ld de, $c6d1                                  ; $3b98: $11 $d1 $c6
    ld a, $01                                     ; $3b9b: $3e $01
    ld [de], a                                    ; $3b9d: $12
    ld de, $c6d2                                  ; $3b9e: $11 $d2 $c6
    ld a, $2a                                     ; $3ba1: $3e $2a
    ld [de], a                                    ; $3ba3: $12
    ld de, $c6d3                                  ; $3ba4: $11 $d3 $c6
    ld a, $01                                     ; $3ba7: $3e $01
    ld [de], a                                    ; $3ba9: $12
    ld de, $c6d4                                  ; $3baa: $11 $d4 $c6
    ld a, $01                                     ; $3bad: $3e $01
    ld [de], a                                    ; $3baf: $12
    ld de, $c6d5                                  ; $3bb0: $11 $d5 $c6
    ld a, $0f                                     ; $3bb3: $3e $0f
    ld [de], a                                    ; $3bb5: $12
    ld de, $c6d6                                  ; $3bb6: $11 $d6 $c6
    ld a, $01                                     ; $3bb9: $3e $01
    ld [de], a                                    ; $3bbb: $12
    ld de, $c6d7                                  ; $3bbc: $11 $d7 $c6
    ld a, $10                                     ; $3bbf: $3e $10
    ld [de], a                                    ; $3bc1: $12
    ld de, $c6d8                                  ; $3bc2: $11 $d8 $c6
    ld a, $01                                     ; $3bc5: $3e $01
    ld [de], a                                    ; $3bc7: $12
    ld de, $c6d9                                  ; $3bc8: $11 $d9 $c6
    ld a, $01                                     ; $3bcb: $3e $01
    ld [de], a                                    ; $3bcd: $12
    ld de, $c6da                                  ; $3bce: $11 $da $c6
    ld a, $0f                                     ; $3bd1: $3e $0f
    ld [de], a                                    ; $3bd3: $12
    ld de, $c6db                                  ; $3bd4: $11 $db $c6
    ld a, $01                                     ; $3bd7: $3e $01
    ld [de], a                                    ; $3bd9: $12
    ld de, $c6dc                                  ; $3bda: $11 $dc $c6
    ld a, $10                                     ; $3bdd: $3e $10
    ld [de], a                                    ; $3bdf: $12
    ld de, $c6dd                                  ; $3be0: $11 $dd $c6
    ld a, $01                                     ; $3be3: $3e $01
    ld [de], a                                    ; $3be5: $12
    ld de, $c6de                                  ; $3be6: $11 $de $c6
    ld a, $01                                     ; $3be9: $3e $01
    ld [de], a                                    ; $3beb: $12
    ld de, $c6df                                  ; $3bec: $11 $df $c6
    ld a, $0f                                     ; $3bef: $3e $0f
    ld [de], a                                    ; $3bf1: $12
    ld de, $c6e0                                  ; $3bf2: $11 $e0 $c6
    ld a, $01                                     ; $3bf5: $3e $01
    ld [de], a                                    ; $3bf7: $12
    ld de, $c6e1                                  ; $3bf8: $11 $e1 $c6
    ld a, $10                                     ; $3bfb: $3e $10
    ld [de], a                                    ; $3bfd: $12
    ld de, $c6e2                                  ; $3bfe: $11 $e2 $c6
    ld a, $01                                     ; $3c01: $3e $01
    ld [de], a                                    ; $3c03: $12
    ld de, $c6e3                                  ; $3c04: $11 $e3 $c6
    ld a, $01                                     ; $3c07: $3e $01
    ld [de], a                                    ; $3c09: $12
    ld de, $c6e4                                  ; $3c0a: $11 $e4 $c6
    ld a, $01                                     ; $3c0d: $3e $01
    ld [de], a                                    ; $3c0f: $12
    ld de, $c6e5                                  ; $3c10: $11 $e5 $c6
    ld a, $01                                     ; $3c13: $3e $01
    ld [de], a                                    ; $3c15: $12
    ld de, $c6e6                                  ; $3c16: $11 $e6 $c6
    ld a, $01                                     ; $3c19: $3e $01
    ld [de], a                                    ; $3c1b: $12
    ld de, $c6e7                                  ; $3c1c: $11 $e7 $c6
    ld a, $01                                     ; $3c1f: $3e $01
    ld [de], a                                    ; $3c21: $12
    ld de, $c6e8                                  ; $3c22: $11 $e8 $c6
    ld a, $01                                     ; $3c25: $3e $01
    ld [de], a                                    ; $3c27: $12
    ld de, $c6e9                                  ; $3c28: $11 $e9 $c6
    ld a, $01                                     ; $3c2b: $3e $01
    ld [de], a                                    ; $3c2d: $12
    ld de, $c6ea                                  ; $3c2e: $11 $ea $c6
    ld a, $01                                     ; $3c31: $3e $01
    ld [de], a                                    ; $3c33: $12
    ld de, $c6eb                                  ; $3c34: $11 $eb $c6
    ld a, $01                                     ; $3c37: $3e $01
    ld [de], a                                    ; $3c39: $12
    ld de, $c6ec                                  ; $3c3a: $11 $ec $c6
    ld a, $01                                     ; $3c3d: $3e $01
    ld [de], a                                    ; $3c3f: $12
    ld de, $c6ed                                  ; $3c40: $11 $ed $c6
    ld a, $01                                     ; $3c43: $3e $01
    ld [de], a                                    ; $3c45: $12
    ld de, $c6ee                                  ; $3c46: $11 $ee $c6
    ld a, $01                                     ; $3c49: $3e $01
    ld [de], a                                    ; $3c4b: $12
    ld de, $c6ef                                  ; $3c4c: $11 $ef $c6
    ld a, $01                                     ; $3c4f: $3e $01
    ld [de], a                                    ; $3c51: $12
    ld de, $c6f0                                  ; $3c52: $11 $f0 $c6
    ld a, $01                                     ; $3c55: $3e $01
    ld [de], a                                    ; $3c57: $12
    ld de, $c6f1                                  ; $3c58: $11 $f1 $c6
    ld a, $01                                     ; $3c5b: $3e $01
    ld [de], a                                    ; $3c5d: $12
    ld de, $c6f2                                  ; $3c5e: $11 $f2 $c6
    ld a, $01                                     ; $3c61: $3e $01
    ld [de], a                                    ; $3c63: $12
    ld de, $c6f3                                  ; $3c64: $11 $f3 $c6
    ld a, $01                                     ; $3c67: $3e $01
    ld [de], a                                    ; $3c69: $12
    ld de, $c6f4                                  ; $3c6a: $11 $f4 $c6
    ld a, $01                                     ; $3c6d: $3e $01
    ld [de], a                                    ; $3c6f: $12
    ld de, $c6f5                                  ; $3c70: $11 $f5 $c6
    ld a, $01                                     ; $3c73: $3e $01
    ld [de], a                                    ; $3c75: $12
    ld de, $c6f6                                  ; $3c76: $11 $f6 $c6
    ld a, $01                                     ; $3c79: $3e $01
    ld [de], a                                    ; $3c7b: $12
    ld de, $c6f7                                  ; $3c7c: $11 $f7 $c6
    ld a, $2a                                     ; $3c7f: $3e $2a
    ld [de], a                                    ; $3c81: $12
    ld de, $c6f8                                  ; $3c82: $11 $f8 $c6
    ld a, $01                                     ; $3c85: $3e $01
    ld [de], a                                    ; $3c87: $12
    ld de, $c6f9                                  ; $3c88: $11 $f9 $c6
    ld a, $01                                     ; $3c8b: $3e $01
    ld [de], a                                    ; $3c8d: $12
    ld de, $c6fa                                  ; $3c8e: $11 $fa $c6
    ld a, $01                                     ; $3c91: $3e $01
    ld [de], a                                    ; $3c93: $12
    ld de, $c6fb                                  ; $3c94: $11 $fb $c6
    ld a, $01                                     ; $3c97: $3e $01
    ld [de], a                                    ; $3c99: $12
    ld de, $c6fc                                  ; $3c9a: $11 $fc $c6
    ld a, $01                                     ; $3c9d: $3e $01
    ld [de], a                                    ; $3c9f: $12
    ld de, $c6fd                                  ; $3ca0: $11 $fd $c6
    ld a, $01                                     ; $3ca3: $3e $01
    ld [de], a                                    ; $3ca5: $12
    ld de, $c6fe                                  ; $3ca6: $11 $fe $c6
    ld a, $01                                     ; $3ca9: $3e $01
    ld [de], a                                    ; $3cab: $12
    ld de, $c6ff                                  ; $3cac: $11 $ff $c6
    ld a, $01                                     ; $3caf: $3e $01
    ld [de], a                                    ; $3cb1: $12
    ld de, $c700                                  ; $3cb2: $11 $00 $c7
    ld a, $01                                     ; $3cb5: $3e $01
    ld [de], a                                    ; $3cb7: $12
    ld de, $c701                                  ; $3cb8: $11 $01 $c7
    ld a, $01                                     ; $3cbb: $3e $01
    ld [de], a                                    ; $3cbd: $12
    ld de, $c702                                  ; $3cbe: $11 $02 $c7
    ld a, $01                                     ; $3cc1: $3e $01
    ld [de], a                                    ; $3cc3: $12
    ld de, $c703                                  ; $3cc4: $11 $03 $c7
    ld a, $01                                     ; $3cc7: $3e $01
    ld [de], a                                    ; $3cc9: $12
    ld de, $c704                                  ; $3cca: $11 $04 $c7
    ld a, $01                                     ; $3ccd: $3e $01
    ld [de], a                                    ; $3ccf: $12
    ld de, $c705                                  ; $3cd0: $11 $05 $c7
    ld a, $01                                     ; $3cd3: $3e $01
    ld [de], a                                    ; $3cd5: $12
    ld de, $c706                                  ; $3cd6: $11 $06 $c7
    ld a, $01                                     ; $3cd9: $3e $01
    ld [de], a                                    ; $3cdb: $12
    ld de, $c707                                  ; $3cdc: $11 $07 $c7
    ld a, $01                                     ; $3cdf: $3e $01
    ld [de], a                                    ; $3ce1: $12
    ld de, $c708                                  ; $3ce2: $11 $08 $c7
    ld a, $01                                     ; $3ce5: $3e $01
    ld [de], a                                    ; $3ce7: $12
    ld de, $c709                                  ; $3ce8: $11 $09 $c7
    ld a, $01                                     ; $3ceb: $3e $01
    ld [de], a                                    ; $3ced: $12
    ld de, $c70a                                  ; $3cee: $11 $0a $c7
    ld a, $01                                     ; $3cf1: $3e $01
    ld [de], a                                    ; $3cf3: $12
    ld de, $c70b                                  ; $3cf4: $11 $0b $c7
    ld a, $01                                     ; $3cf7: $3e $01
    ld [de], a                                    ; $3cf9: $12
    ld de, $c70c                                  ; $3cfa: $11 $0c $c7
    ld a, $01                                     ; $3cfd: $3e $01
    ld [de], a                                    ; $3cff: $12
    ld de, $c70d                                  ; $3d00: $11 $0d $c7
    ld a, $01                                     ; $3d03: $3e $01
    ld [de], a                                    ; $3d05: $12
    ld de, $c70e                                  ; $3d06: $11 $0e $c7
    ld a, $01                                     ; $3d09: $3e $01
    ld [de], a                                    ; $3d0b: $12
    ld de, $c70f                                  ; $3d0c: $11 $0f $c7
    ld a, $01                                     ; $3d0f: $3e $01
    ld [de], a                                    ; $3d11: $12
    ld de, $c710                                  ; $3d12: $11 $10 $c7
    ld a, $01                                     ; $3d15: $3e $01
    ld [de], a                                    ; $3d17: $12
    ld de, $c711                                  ; $3d18: $11 $11 $c7
    ld a, $01                                     ; $3d1b: $3e $01
    ld [de], a                                    ; $3d1d: $12
    ld de, $c712                                  ; $3d1e: $11 $12 $c7
    ld a, $01                                     ; $3d21: $3e $01
    ld [de], a                                    ; $3d23: $12
    ld de, $c713                                  ; $3d24: $11 $13 $c7
    ld a, $01                                     ; $3d27: $3e $01
    ld [de], a                                    ; $3d29: $12
    ld de, $c714                                  ; $3d2a: $11 $14 $c7
    ld a, $01                                     ; $3d2d: $3e $01
    ld [de], a                                    ; $3d2f: $12
    ld de, $c715                                  ; $3d30: $11 $15 $c7
    ld a, $01                                     ; $3d33: $3e $01
    ld [de], a                                    ; $3d35: $12
    ld de, $c716                                  ; $3d36: $11 $16 $c7
    ld a, $01                                     ; $3d39: $3e $01
    ld [de], a                                    ; $3d3b: $12
    ld de, $c717                                  ; $3d3c: $11 $17 $c7
    ld a, $01                                     ; $3d3f: $3e $01
    ld [de], a                                    ; $3d41: $12
    ld de, $c718                                  ; $3d42: $11 $18 $c7
    ld a, $2a                                     ; $3d45: $3e $2a
    ld [de], a                                    ; $3d47: $12
    ld de, $c719                                  ; $3d48: $11 $19 $c7
    ld a, $01                                     ; $3d4b: $3e $01
    ld [de], a                                    ; $3d4d: $12
    ld de, $c71a                                  ; $3d4e: $11 $1a $c7
    ld a, $01                                     ; $3d51: $3e $01
    ld [de], a                                    ; $3d53: $12
    ld de, $c71b                                  ; $3d54: $11 $1b $c7
    ld a, $01                                     ; $3d57: $3e $01
    ld [de], a                                    ; $3d59: $12
    ld de, $c71c                                  ; $3d5a: $11 $1c $c7
    ld a, $01                                     ; $3d5d: $3e $01
    ld [de], a                                    ; $3d5f: $12
    ld de, $c71d                                  ; $3d60: $11 $1d $c7
    ld a, $01                                     ; $3d63: $3e $01
    ld [de], a                                    ; $3d65: $12
    ld de, $c71e                                  ; $3d66: $11 $1e $c7
    ld a, $01                                     ; $3d69: $3e $01
    ld [de], a                                    ; $3d6b: $12
    ld de, $c71f                                  ; $3d6c: $11 $1f $c7
    ld a, $01                                     ; $3d6f: $3e $01
    ld [de], a                                    ; $3d71: $12
    ld de, $c720                                  ; $3d72: $11 $20 $c7
    ld a, $01                                     ; $3d75: $3e $01
    ld [de], a                                    ; $3d77: $12
    ld de, $c721                                  ; $3d78: $11 $21 $c7
    ld a, $01                                     ; $3d7b: $3e $01
    ld [de], a                                    ; $3d7d: $12
    ld de, $c722                                  ; $3d7e: $11 $22 $c7
    ld a, $01                                     ; $3d81: $3e $01
    ld [de], a                                    ; $3d83: $12
    ld de, $c723                                  ; $3d84: $11 $23 $c7
    ld a, $01                                     ; $3d87: $3e $01
    ld [de], a                                    ; $3d89: $12
    ld de, $c724                                  ; $3d8a: $11 $24 $c7
    ld a, $01                                     ; $3d8d: $3e $01
    ld [de], a                                    ; $3d8f: $12
    ld de, $c725                                  ; $3d90: $11 $25 $c7
    ld a, $01                                     ; $3d93: $3e $01
    ld [de], a                                    ; $3d95: $12
    ld de, $c726                                  ; $3d96: $11 $26 $c7
    ld a, $01                                     ; $3d99: $3e $01
    ld [de], a                                    ; $3d9b: $12
    ld de, $c727                                  ; $3d9c: $11 $27 $c7
    ld a, $01                                     ; $3d9f: $3e $01
    ld [de], a                                    ; $3da1: $12
    ld de, $c728                                  ; $3da2: $11 $28 $c7
    ld a, $01                                     ; $3da5: $3e $01
    ld [de], a                                    ; $3da7: $12
    ld de, $c729                                  ; $3da8: $11 $29 $c7
    ld a, $01                                     ; $3dab: $3e $01
    ld [de], a                                    ; $3dad: $12
    ld de, $c72a                                  ; $3dae: $11 $2a $c7
    ld a, $01                                     ; $3db1: $3e $01
    ld [de], a                                    ; $3db3: $12
    ld de, $c72b                                  ; $3db4: $11 $2b $c7
    ld a, $01                                     ; $3db7: $3e $01
    ld [de], a                                    ; $3db9: $12
    ld de, $c72c                                  ; $3dba: $11 $2c $c7
    ld a, $01                                     ; $3dbd: $3e $01
    ld [de], a                                    ; $3dbf: $12
    ld de, $c72d                                  ; $3dc0: $11 $2d $c7
    ld a, $01                                     ; $3dc3: $3e $01
    ld [de], a                                    ; $3dc5: $12
    ld de, $c72e                                  ; $3dc6: $11 $2e $c7
    ld a, $01                                     ; $3dc9: $3e $01
    ld [de], a                                    ; $3dcb: $12
    ld de, $c72f                                  ; $3dcc: $11 $2f $c7
    ld a, $01                                     ; $3dcf: $3e $01
    ld [de], a                                    ; $3dd1: $12
    ld de, $c730                                  ; $3dd2: $11 $30 $c7
    ld a, $01                                     ; $3dd5: $3e $01
    ld [de], a                                    ; $3dd7: $12
    ld de, $c731                                  ; $3dd8: $11 $31 $c7
    ld a, $01                                     ; $3ddb: $3e $01
    ld [de], a                                    ; $3ddd: $12
    ld de, $c732                                  ; $3dde: $11 $32 $c7
    ld a, $01                                     ; $3de1: $3e $01
    ld [de], a                                    ; $3de3: $12
    ld de, $c733                                  ; $3de4: $11 $33 $c7
    ld a, $01                                     ; $3de7: $3e $01
    ld [de], a                                    ; $3de9: $12
    ld de, $c734                                  ; $3dea: $11 $34 $c7
    ld a, $01                                     ; $3ded: $3e $01
    ld [de], a                                    ; $3def: $12
    ld de, $c735                                  ; $3df0: $11 $35 $c7
    ld a, $01                                     ; $3df3: $3e $01
    ld [de], a                                    ; $3df5: $12
    ld de, $c736                                  ; $3df6: $11 $36 $c7
    ld a, $01                                     ; $3df9: $3e $01
    ld [de], a                                    ; $3dfb: $12
    ld de, $c737                                  ; $3dfc: $11 $37 $c7
    ld a, $01                                     ; $3dff: $3e $01
    ld [de], a                                    ; $3e01: $12
    ld de, $c738                                  ; $3e02: $11 $38 $c7
    ld a, $01                                     ; $3e05: $3e $01
    ld [de], a                                    ; $3e07: $12
    ld de, $c739                                  ; $3e08: $11 $39 $c7
    ld a, $01                                     ; $3e0b: $3e $01
    ld [de], a                                    ; $3e0d: $12
    ld de, $c73a                                  ; $3e0e: $11 $3a $c7
    ld a, $01                                     ; $3e11: $3e $01
    ld [de], a                                    ; $3e13: $12
    ld de, $c73b                                  ; $3e14: $11 $3b $c7
    ld a, $01                                     ; $3e17: $3e $01
    ld [de], a                                    ; $3e19: $12
    ld de, $c73c                                  ; $3e1a: $11 $3c $c7
    ld a, $01                                     ; $3e1d: $3e $01
    ld [de], a                                    ; $3e1f: $12
    ld de, $c73d                                  ; $3e20: $11 $3d $c7
    ld a, $01                                     ; $3e23: $3e $01
    ld [de], a                                    ; $3e25: $12
    ld de, $c73e                                  ; $3e26: $11 $3e $c7
    ld a, $01                                     ; $3e29: $3e $01
    ld [de], a                                    ; $3e2b: $12
    ld de, $c73f                                  ; $3e2c: $11 $3f $c7
    ld a, $01                                     ; $3e2f: $3e $01
    ld [de], a                                    ; $3e31: $12
    ld de, $c740                                  ; $3e32: $11 $40 $c7
    ld a, $01                                     ; $3e35: $3e $01
    ld [de], a                                    ; $3e37: $12
    ld de, $c741                                  ; $3e38: $11 $41 $c7
    ld a, $01                                     ; $3e3b: $3e $01
    ld [de], a                                    ; $3e3d: $12
    ld de, $c742                                  ; $3e3e: $11 $42 $c7
    ld a, $01                                     ; $3e41: $3e $01
    ld [de], a                                    ; $3e43: $12
    ld de, $c743                                  ; $3e44: $11 $43 $c7
    ld a, $01                                     ; $3e47: $3e $01
    ld [de], a                                    ; $3e49: $12
    ld de, $c744                                  ; $3e4a: $11 $44 $c7
    ld a, $01                                     ; $3e4d: $3e $01
    ld [de], a                                    ; $3e4f: $12
    ld de, $c745                                  ; $3e50: $11 $45 $c7
    ld a, $01                                     ; $3e53: $3e $01
    ld [de], a                                    ; $3e55: $12
    ld de, $c746                                  ; $3e56: $11 $46 $c7
    ld a, $01                                     ; $3e59: $3e $01
    ld [de], a                                    ; $3e5b: $12
    ld de, $c747                                  ; $3e5c: $11 $47 $c7
    ld a, $01                                     ; $3e5f: $3e $01
    ld [de], a                                    ; $3e61: $12
    ld de, $c748                                  ; $3e62: $11 $48 $c7
    ld a, $01                                     ; $3e65: $3e $01
    ld [de], a                                    ; $3e67: $12
    ld de, $c749                                  ; $3e68: $11 $49 $c7
    ld a, $01                                     ; $3e6b: $3e $01
    ld [de], a                                    ; $3e6d: $12
    ld de, $c74a                                  ; $3e6e: $11 $4a $c7
    ld a, $01                                     ; $3e71: $3e $01
    ld [de], a                                    ; $3e73: $12
    ld de, $c74b                                  ; $3e74: $11 $4b $c7
    ld a, $01                                     ; $3e77: $3e $01
    ld [de], a                                    ; $3e79: $12
    ld de, $c74c                                  ; $3e7a: $11 $4c $c7
    ld a, $01                                     ; $3e7d: $3e $01
    ld [de], a                                    ; $3e7f: $12
    ld de, $c74d                                  ; $3e80: $11 $4d $c7
    ld a, $01                                     ; $3e83: $3e $01
    ld [de], a                                    ; $3e85: $12
    ld de, $c74e                                  ; $3e86: $11 $4e $c7
    ld a, $2a                                     ; $3e89: $3e $2a
    ld [de], a                                    ; $3e8b: $12
    ld de, $c74f                                  ; $3e8c: $11 $4f $c7
    ld a, $01                                     ; $3e8f: $3e $01
    ld [de], a                                    ; $3e91: $12
    ld de, $c750                                  ; $3e92: $11 $50 $c7
    ld a, $01                                     ; $3e95: $3e $01
    ld [de], a                                    ; $3e97: $12
    ld de, $c751                                  ; $3e98: $11 $51 $c7
    ld a, $01                                     ; $3e9b: $3e $01
    ld [de], a                                    ; $3e9d: $12
    ld de, $c752                                  ; $3e9e: $11 $52 $c7
    ld a, $01                                     ; $3ea1: $3e $01
    ld [de], a                                    ; $3ea3: $12
    ld de, $c753                                  ; $3ea4: $11 $53 $c7
    ld a, $01                                     ; $3ea7: $3e $01
    ld [de], a                                    ; $3ea9: $12
    ld de, $c754                                  ; $3eaa: $11 $54 $c7
    ld a, $01                                     ; $3ead: $3e $01
    ld [de], a                                    ; $3eaf: $12
    ld de, $c755                                  ; $3eb0: $11 $55 $c7
    ld a, $01                                     ; $3eb3: $3e $01
    ld [de], a                                    ; $3eb5: $12
    ld de, $c756                                  ; $3eb6: $11 $56 $c7
    ld a, $01                                     ; $3eb9: $3e $01
    ld [de], a                                    ; $3ebb: $12
    ld de, $c757                                  ; $3ebc: $11 $57 $c7
    ld a, $01                                     ; $3ebf: $3e $01
    ld [de], a                                    ; $3ec1: $12
    ld de, $c758                                  ; $3ec2: $11 $58 $c7
    ld a, $01                                     ; $3ec5: $3e $01
    ld [de], a                                    ; $3ec7: $12
    ld de, $c759                                  ; $3ec8: $11 $59 $c7
    ld a, $01                                     ; $3ecb: $3e $01
    ld [de], a                                    ; $3ecd: $12
    ld de, $c75a                                  ; $3ece: $11 $5a $c7
    ld a, $01                                     ; $3ed1: $3e $01
    ld [de], a                                    ; $3ed3: $12
    ld de, $c75b                                  ; $3ed4: $11 $5b $c7
    ld a, $01                                     ; $3ed7: $3e $01
    ld [de], a                                    ; $3ed9: $12
    ld de, $c75c                                  ; $3eda: $11 $5c $c7
    ld a, $01                                     ; $3edd: $3e $01
    ld [de], a                                    ; $3edf: $12
    ld de, $c75d                                  ; $3ee0: $11 $5d $c7
    ld a, $2a                                     ; $3ee3: $3e $2a
    ld [de], a                                    ; $3ee5: $12
    ld de, $c75e                                  ; $3ee6: $11 $5e $c7
    ld a, $01                                     ; $3ee9: $3e $01
    ld [de], a                                    ; $3eeb: $12
    ld de, $c75f                                  ; $3eec: $11 $5f $c7
    ld a, $01                                     ; $3eef: $3e $01
    ld [de], a                                    ; $3ef1: $12
    ld de, $c760                                  ; $3ef2: $11 $60 $c7
    ld a, $01                                     ; $3ef5: $3e $01
    ld [de], a                                    ; $3ef7: $12
    ld de, $c761                                  ; $3ef8: $11 $61 $c7
    ld a, $01                                     ; $3efb: $3e $01
    ld [de], a                                    ; $3efd: $12
    ld de, $c762                                  ; $3efe: $11 $62 $c7
    ld a, $01                                     ; $3f01: $3e $01
    ld [de], a                                    ; $3f03: $12
    ld de, $c763                                  ; $3f04: $11 $63 $c7
    ld a, $01                                     ; $3f07: $3e $01
    ld [de], a                                    ; $3f09: $12
    ld de, $c764                                  ; $3f0a: $11 $64 $c7
    ld a, $01                                     ; $3f0d: $3e $01
    ld [de], a                                    ; $3f0f: $12
    ld de, $c765                                  ; $3f10: $11 $65 $c7
    ld a, $01                                     ; $3f13: $3e $01
    ld [de], a                                    ; $3f15: $12
    ld de, $c766                                  ; $3f16: $11 $66 $c7
    ld a, $01                                     ; $3f19: $3e $01
    ld [de], a                                    ; $3f1b: $12
    ld de, $c767                                  ; $3f1c: $11 $67 $c7
    ld a, $01                                     ; $3f1f: $3e $01
    ld [de], a                                    ; $3f21: $12
    ld de, $c768                                  ; $3f22: $11 $68 $c7
    ld a, $01                                     ; $3f25: $3e $01
    ld [de], a                                    ; $3f27: $12
    ld de, $c769                                  ; $3f28: $11 $69 $c7
    ld a, $01                                     ; $3f2b: $3e $01
    ld [de], a                                    ; $3f2d: $12
    ld de, $c76a                                  ; $3f2e: $11 $6a $c7
    ld a, $01                                     ; $3f31: $3e $01
    ld [de], a                                    ; $3f33: $12
    ld de, $c76b                                  ; $3f34: $11 $6b $c7
    ld a, $01                                     ; $3f37: $3e $01
    ld [de], a                                    ; $3f39: $12
    ld de, $c76c                                  ; $3f3a: $11 $6c $c7
    ld a, $01                                     ; $3f3d: $3e $01
    ld [de], a                                    ; $3f3f: $12
    ld de, $c76d                                  ; $3f40: $11 $6d $c7
    ld a, $2a                                     ; $3f43: $3e $2a
    ld [de], a                                    ; $3f45: $12
    ld de, $c76e                                  ; $3f46: $11 $6e $c7
    ld a, $01                                     ; $3f49: $3e $01
    ld [de], a                                    ; $3f4b: $12
    ld de, $c76f                                  ; $3f4c: $11 $6f $c7
    ld a, $01                                     ; $3f4f: $3e $01
    ld [de], a                                    ; $3f51: $12
    ld de, $c770                                  ; $3f52: $11 $70 $c7
    ld a, $01                                     ; $3f55: $3e $01
    ld [de], a                                    ; $3f57: $12
    ld de, $c771                                  ; $3f58: $11 $71 $c7
    ld a, $01                                     ; $3f5b: $3e $01
    ld [de], a                                    ; $3f5d: $12
    ld de, $c772                                  ; $3f5e: $11 $72 $c7
    ld a, $01                                     ; $3f61: $3e $01
    ld [de], a                                    ; $3f63: $12
    ld de, $c773                                  ; $3f64: $11 $73 $c7
    ld a, $01                                     ; $3f67: $3e $01
    ld [de], a                                    ; $3f69: $12
    ld de, $c774                                  ; $3f6a: $11 $74 $c7
    ld a, $01                                     ; $3f6d: $3e $01
    ld [de], a                                    ; $3f6f: $12
    ld de, $c775                                  ; $3f70: $11 $75 $c7
    ld a, $01                                     ; $3f73: $3e $01
    ld [de], a                                    ; $3f75: $12
    ld de, $c776                                  ; $3f76: $11 $76 $c7
    ld a, $01                                     ; $3f79: $3e $01
    ld [de], a                                    ; $3f7b: $12
    ld de, $c777                                  ; $3f7c: $11 $77 $c7
    ld a, $01                                     ; $3f7f: $3e $01
    ld [de], a                                    ; $3f81: $12
    ld de, $c778                                  ; $3f82: $11 $78 $c7
    ld a, $01                                     ; $3f85: $3e $01
    ld [de], a                                    ; $3f87: $12
    ld de, $c779                                  ; $3f88: $11 $79 $c7
    ld a, $01                                     ; $3f8b: $3e $01
    ld [de], a                                    ; $3f8d: $12
    ld de, $c77a                                  ; $3f8e: $11 $7a $c7
    ld a, $01                                     ; $3f91: $3e $01
    ld [de], a                                    ; $3f93: $12
    ld de, $c77b                                  ; $3f94: $11 $7b $c7
    ld a, $01                                     ; $3f97: $3e $01
    ld [de], a                                    ; $3f99: $12
    ld de, $c77c                                  ; $3f9a: $11 $7c $c7
    ld a, $01                                     ; $3f9d: $3e $01
    ld [de], a                                    ; $3f9f: $12
    ld de, $c77d                                  ; $3fa0: $11 $7d $c7
    ld a, $01                                     ; $3fa3: $3e $01
    ld [de], a                                    ; $3fa5: $12
    ld de, $c77e                                  ; $3fa6: $11 $7e $c7
    ld a, $01                                     ; $3fa9: $3e $01
    ld [de], a                                    ; $3fab: $12
    ld de, $c77f                                  ; $3fac: $11 $7f $c7
    ld a, $01                                     ; $3faf: $3e $01
    ld [de], a                                    ; $3fb1: $12
    ld de, $c780                                  ; $3fb2: $11 $80 $c7
    ld a, $01                                     ; $3fb5: $3e $01
    ld [de], a                                    ; $3fb7: $12
    ld de, $c781                                  ; $3fb8: $11 $81 $c7
    ld a, $01                                     ; $3fbb: $3e $01
    ld [de], a                                    ; $3fbd: $12
    ld de, $c782                                  ; $3fbe: $11 $82 $c7
    ld a, $01                                     ; $3fc1: $3e $01
    ld [de], a                                    ; $3fc3: $12
    ld de, $c783                                  ; $3fc4: $11 $83 $c7
    ld a, $01                                     ; $3fc7: $3e $01
    ld [de], a                                    ; $3fc9: $12
    ld de, $c784                                  ; $3fca: $11 $84 $c7
    ld a, $01                                     ; $3fcd: $3e $01
    ld [de], a                                    ; $3fcf: $12
    ld de, $c785                                  ; $3fd0: $11 $85 $c7
    ld a, $01                                     ; $3fd3: $3e $01
    ld [de], a                                    ; $3fd5: $12
    ld de, $c786                                  ; $3fd6: $11 $86 $c7
    ld a, $01                                     ; $3fd9: $3e $01
    ld [de], a                                    ; $3fdb: $12
    ld de, $c787                                  ; $3fdc: $11 $87 $c7
    ld a, $01                                     ; $3fdf: $3e $01
    ld [de], a                                    ; $3fe1: $12
    ld de, $c788                                  ; $3fe2: $11 $88 $c7
    ld a, $01                                     ; $3fe5: $3e $01
    ld [de], a                                    ; $3fe7: $12
    ld de, $c789                                  ; $3fe8: $11 $89 $c7
    ld a, $01                                     ; $3feb: $3e $01
    ld [de], a                                    ; $3fed: $12
    ld de, $c78a                                  ; $3fee: $11 $8a $c7
    ld a, $01                                     ; $3ff1: $3e $01
    ld [de], a                                    ; $3ff3: $12
    ld de, $c78b                                  ; $3ff4: $11 $8b $c7
    ld a, $01                                     ; $3ff7: $3e $01
    ld [de], a                                    ; $3ff9: $12
    ld de, $c78c                                  ; $3ffa: $11 $8c $c7
    ld a, $01                                     ; $3ffd: $3e $01
    ld [de], a                                    ; $3fff: $12
