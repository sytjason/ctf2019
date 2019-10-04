m4chine.pyc (Python 3.7)
[Code]
    File Name: m4chine.py
    Object Name: <module>
    Arg Count: 0
    KW Only Arg Count: 0
    Locals: 0
    Stack Size: 3
    Flags: 0x00000040 (CO_NOFREE)
    [Names]
        'ctypes'
        'binascii'
        'Machine'
        'print'
        'input'
        's'
        'emu'
        'e_start'
    [Var Names]
    [Free Vars]
    [Cell Vars]
    [Constants]
        0
        (
            '*'
        )
        [Code]
            File Name: m4chine.py
            Object Name: Machine
            Arg Count: 0
            KW Only Arg Count: 0
            Locals: 0
            Stack Size: 2
            Flags: 0x00000040 (CO_NOFREE)
            [Names]
                '__name__'
                '__module__'
                '__qualname__'
                '__init__'
                'empty'
                'e_start'
                'push'
                'pop'
                'terminal'
                'add'
                'sub'
                'cmp'
            [Var Names]
            [Free Vars]
            [Cell Vars]
            [Constants]
                'Machine'
                [Code]
                    File Name: m4chine.py
                    Object Name: __init__
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 2
                    Stack Size: 9
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'list'
                        'map'
                        'ord'
                        'context'
                        'add'
                        'cmp'
                        'empty'
                        'pop'
                        'push'
                        'sub'
                        'terminal'
                        'op'
                    [Var Names]
                        'self'
                        'init'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        (
                            0
                            1
                            2
                            3
                            6
                            7
                            8
                            9
                        )
                    [Disassembly]
                        0       LOAD_GLOBAL             0: list
                        2       LOAD_GLOBAL             1: map
                        4       LOAD_GLOBAL             2: ord
                        6       LOAD_FAST               1: init
                        8       CALL_FUNCTION           2
                        10      CALL_FUNCTION           1
                        12      LOAD_FAST               0: self
                        14      STORE_ATTR              3: context
                        16      LOAD_FAST               0: self
                        18      LOAD_ATTR               4: add
                        20      LOAD_FAST               0: self
                        22      LOAD_ATTR               5: cmp
                        24      LOAD_FAST               0: self
                        26      LOAD_ATTR               3: context
                        28      LOAD_FAST               0: self
                        30      LOAD_ATTR               6: empty
                        32      LOAD_FAST               0: self
                        34      LOAD_ATTR               7: pop
                        36      LOAD_FAST               0: self
                        38      LOAD_ATTR               8: push
                        40      LOAD_FAST               0: self
                        42      LOAD_ATTR               9: sub
                        44      LOAD_FAST               0: self
                        46      LOAD_ATTR               10: terminal
                        48      LOAD_CONST              1: (0, 1, 2, 3, 6, 7, 8, 9)
                        50      BUILD_CONST_KEY_MAP     8
                        52      LOAD_FAST               0: self
                        54      STORE_ATTR              11: op
                        56      LOAD_CONST              0: None
                        58      RETURN_VALUE            
                'Machine.__init__'
                [Code]
                    File Name: m4chine.py
                    Object Name: empty
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 2
                    Stack Size: 2
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'len'
                        'context'
                    [Var Names]
                        'self'
                        '_'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        0
                    [Disassembly]
                        0       LOAD_GLOBAL             0: len
                        2       LOAD_FAST               0: self
                        4       LOAD_ATTR               1: context
                        6       CALL_FUNCTION           1
                        8       LOAD_CONST              1: 0
                        10      COMPARE_OP              2 (==)
                        12      RETURN_VALUE            
                'Machine.empty'
                [Code]
                    File Name: m4chine.py
                    Object Name: e_start
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 3
                    Stack Size: 4
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'zip'
                        'iter'
                        'op'
                    [Var Names]
                        'self'
                        'code'
                        'i'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        2
                        0
                        1
                    [Disassembly]
                        0       SETUP_LOOP              56 (to 58)
                        2       LOAD_GLOBAL             0: zip
                        4       LOAD_GLOBAL             1: iter
                        6       LOAD_FAST               1: code
                        8       CALL_FUNCTION           1
                        10      BUILD_TUPLE             1
                        12      LOAD_CONST              1: 2
                        14      BINARY_MULTIPLY         
                        16      CALL_FUNCTION_EX        0
                        18      GET_ITER                
                        20      FOR_ITER                34 (to 56)
                        22      STORE_FAST              2: i
                        24      LOAD_FAST               2: i
                        26      LOAD_CONST              0: None
                        28      COMPARE_OP              3 (!=)
                        30      POP_JUMP_IF_FALSE       20
                        32      LOAD_FAST               0: self
                        34      LOAD_ATTR               2: op
                        36      LOAD_FAST               2: i
                        38      LOAD_CONST              2: 0
                        40      BINARY_SUBSCR           
                        42      BINARY_SUBSCR           
                        44      LOAD_FAST               2: i
                        46      LOAD_CONST              3: 1
                        48      BINARY_SUBSCR           
                        50      CALL_FUNCTION           1
                        52      POP_TOP                 
                        54      JUMP_ABSOLUTE           20
                        56      POP_BLOCK               
                        58      LOAD_CONST              0: None
                        60      RETURN_VALUE            
                'Machine.e_start'
                [Code]
                    File Name: m4chine.py
                    Object Name: push
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 2
                    Stack Size: 3
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'context'
                        'append'
                    [Var Names]
                        'self'
                        'num'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                    [Disassembly]
                        0       LOAD_FAST               0: self
                        2       LOAD_ATTR               0: context
                        4       LOAD_METHOD             1: append
                        6       LOAD_FAST               1: num
                        8       CALL_METHOD             1
                        10      POP_TOP                 
                        12      LOAD_CONST              0: None
                        14      RETURN_VALUE            
                'Machine.push'
                [Code]
                    File Name: m4chine.py
                    Object Name: pop
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 3
                    Stack Size: 4
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'len'
                        'context'
                        'SyntaxError'
                    [Var Names]
                        'self'
                        '_'
                        'result'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        1
                        'You should sharpen your coding skill'
                        -1
                    [Disassembly]
                        0       LOAD_GLOBAL             0: len
                        2       LOAD_FAST               0: self
                        4       LOAD_ATTR               1: context
                        6       CALL_FUNCTION           1
                        8       LOAD_CONST              1: 1
                        10      COMPARE_OP              0 (<)
                        12      POP_JUMP_IF_FALSE       22
                        14      LOAD_GLOBAL             2: SyntaxError
                        16      LOAD_CONST              2: 'You should sharpen your coding skill'
                        18      CALL_FUNCTION           1
                        20      RAISE_VARARGS           1
                        22      LOAD_FAST               0: self
                        24      LOAD_ATTR               1: context
                        26      LOAD_CONST              3: -1
                        28      BINARY_SUBSCR           
                        30      LOAD_FAST               0: self
                        32      LOAD_ATTR               1: context
                        34      LOAD_CONST              0: None
                        36      LOAD_CONST              3: -1
                        38      BUILD_SLICE             2
                        40      BINARY_SUBSCR           
                        42      ROT_TWO                 
                        44      STORE_FAST              2: result
                        46      LOAD_FAST               0: self
                        48      STORE_ATTR              1: context
                        50      LOAD_FAST               2: result
                        52      RETURN_VALUE            
                'Machine.pop'
                [Code]
                    File Name: m4chine.py
                    Object Name: terminal
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 2
                    Stack Size: 2
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'len'
                        'context'
                        'SyntaxError'
                        'print'
                        'exit'
                    [Var Names]
                        'self'
                        '_'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        1
                        'You should sharpen your coding skill'
                        -1
                        0
                        'You fail, try again'
                    [Disassembly]
                        0       LOAD_GLOBAL             0: len
                        2       LOAD_FAST               0: self
                        4       LOAD_ATTR               1: context
                        6       CALL_FUNCTION           1
                        8       LOAD_CONST              1: 1
                        10      COMPARE_OP              0 (<)
                        12      POP_JUMP_IF_FALSE       22
                        14      LOAD_GLOBAL             2: SyntaxError
                        16      LOAD_CONST              2: 'You should sharpen your coding skill'
                        18      CALL_FUNCTION           1
                        20      RAISE_VARARGS           1
                        22      LOAD_FAST               0: self
                        24      LOAD_ATTR               1: context
                        26      LOAD_CONST              3: -1
                        28      BINARY_SUBSCR           
                        30      LOAD_CONST              4: 0
                        32      COMPARE_OP              2 (==)
                        34      POP_JUMP_IF_FALSE       52
                        36      LOAD_GLOBAL             3: print
                        38      LOAD_CONST              5: 'You fail, try again'
                        40      CALL_FUNCTION           1
                        42      POP_TOP                 
                        44      LOAD_GLOBAL             4: exit
                        46      LOAD_CONST              4: 0
                        48      CALL_FUNCTION           1
                        50      POP_TOP                 
                        52      LOAD_CONST              0: None
                        54      RETURN_VALUE            
                'Machine.terminal'
                [Code]
                    File Name: m4chine.py
                    Object Name: add
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 3
                    Stack Size: 4
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'len'
                        'context'
                        'SyntaxError'
                        'append'
                        'c_int8'
                        'value'
                    [Var Names]
                        'self'
                        '_'
                        'result'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        2
                        'You should sharpen your coding skill'
                        -1
                        -2
                    [Disassembly]
                        0       LOAD_GLOBAL             0: len
                        2       LOAD_FAST               0: self
                        4       LOAD_ATTR               1: context
                        6       CALL_FUNCTION           1
                        8       LOAD_CONST              1: 2
                        10      COMPARE_OP              0 (<)
                        12      POP_JUMP_IF_FALSE       22
                        14      LOAD_GLOBAL             2: SyntaxError
                        16      LOAD_CONST              2: 'You should sharpen your coding skill'
                        18      CALL_FUNCTION           1
                        20      RAISE_VARARGS           1
                        22      LOAD_FAST               0: self
                        24      LOAD_ATTR               1: context
                        26      LOAD_CONST              3: -1
                        28      BINARY_SUBSCR           
                        30      LOAD_FAST               0: self
                        32      LOAD_ATTR               1: context
                        34      LOAD_CONST              4: -2
                        36      BINARY_SUBSCR           
                        38      BINARY_ADD              
                        40      LOAD_FAST               0: self
                        42      LOAD_ATTR               1: context
                        44      LOAD_CONST              0: None
                        46      LOAD_CONST              4: -2
                        48      BUILD_SLICE             2
                        50      BINARY_SUBSCR           
                        52      ROT_TWO                 
                        54      STORE_FAST              2: result
                        56      LOAD_FAST               0: self
                        58      STORE_ATTR              1: context
                        60      LOAD_FAST               0: self
                        62      LOAD_ATTR               1: context
                        64      LOAD_METHOD             3: append
                        66      LOAD_GLOBAL             4: c_int8
                        68      LOAD_FAST               2: result
                        70      CALL_FUNCTION           1
                        72      LOAD_ATTR               5: value
                        74      CALL_METHOD             1
                        76      POP_TOP                 
                        78      LOAD_CONST              0: None
                        80      RETURN_VALUE            
                'Machine.add'
                [Code]
                    File Name: m4chine.py
                    Object Name: sub
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 3
                    Stack Size: 4
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'len'
                        'context'
                        'SyntaxError'
                        'append'
                        'c_int8'
                        'value'
                    [Var Names]
                        'self'
                        '_'
                        'result'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        2
                        'You should sharpen your coding skill'
                        -1
                        -2
                    [Disassembly]
                        0       LOAD_GLOBAL             0: len
                        2       LOAD_FAST               0: self
                        4       LOAD_ATTR               1: context
                        6       CALL_FUNCTION           1
                        8       LOAD_CONST              1: 2
                        10      COMPARE_OP              0 (<)
                        12      POP_JUMP_IF_FALSE       22
                        14      LOAD_GLOBAL             2: SyntaxError
                        16      LOAD_CONST              2: 'You should sharpen your coding skill'
                        18      CALL_FUNCTION           1
                        20      RAISE_VARARGS           1
                        22      LOAD_FAST               0: self
                        24      LOAD_ATTR               1: context
                        26      LOAD_CONST              3: -1
                        28      BINARY_SUBSCR           
                        30      LOAD_FAST               0: self
                        32      LOAD_ATTR               1: context
                        34      LOAD_CONST              4: -2
                        36      BINARY_SUBSCR           
                        38      BINARY_SUBTRACT         
                        40      LOAD_FAST               0: self
                        42      LOAD_ATTR               1: context
                        44      LOAD_CONST              0: None
                        46      LOAD_CONST              4: -2
                        48      BUILD_SLICE             2
                        50      BINARY_SUBSCR           
                        52      ROT_TWO                 
                        54      STORE_FAST              2: result
                        56      LOAD_FAST               0: self
                        58      STORE_ATTR              1: context
                        60      LOAD_FAST               0: self
                        62      LOAD_ATTR               1: context
                        64      LOAD_METHOD             3: append
                        66      LOAD_GLOBAL             4: c_int8
                        68      LOAD_FAST               2: result
                        70      CALL_FUNCTION           1
                        72      LOAD_ATTR               5: value
                        74      CALL_METHOD             1
                        76      POP_TOP                 
                        78      LOAD_CONST              0: None
                        80      RETURN_VALUE            
                'Machine.sub'
                [Code]
                    File Name: m4chine.py
                    Object Name: cmp
                    Arg Count: 2
                    KW Only Arg Count: 0
                    Locals: 2
                    Stack Size: 3
                    Flags: 0x00000043 (CO_OPTIMIZED | CO_NEWLOCALS | CO_NOFREE)
                    [Names]
                        'len'
                        'context'
                        'SyntaxError'
                    [Var Names]
                        'self'
                        'num'
                    [Free Vars]
                    [Cell Vars]
                    [Constants]
                        None
                        1
                        'You should sharpen your coding skill'
                        -1
                        0
                    [Disassembly]
                        0       LOAD_GLOBAL             0: len
                        2       LOAD_FAST               0: self
                        4       LOAD_ATTR               1: context
                        6       CALL_FUNCTION           1
                        8       LOAD_CONST              1: 1
                        10      COMPARE_OP              0 (<)
                        12      POP_JUMP_IF_FALSE       22
                        14      LOAD_GLOBAL             2: SyntaxError
                        16      LOAD_CONST              2: 'You should sharpen your coding skill'
                        18      CALL_FUNCTION           1
                        20      RAISE_VARARGS           1
                        22      LOAD_FAST               0: self
                        24      LOAD_ATTR               1: context
                        26      LOAD_CONST              3: -1
                        28      BINARY_SUBSCR           
                        30      LOAD_FAST               1: num
                        32      COMPARE_OP              2 (==)
                        34      POP_JUMP_IF_FALSE       40
                        36      LOAD_CONST              1: 1
                        38      JUMP_FORWARD            2 (to 42)
                        40      LOAD_CONST              4: 0
                        42      LOAD_FAST               0: self
                        44      LOAD_ATTR               1: context
                        46      LOAD_CONST              3: -1
                        48      STORE_SUBSCR            
                        50      LOAD_CONST              0: None
                        52      RETURN_VALUE            
                'Machine.cmp'
                None
            [Disassembly]
                0       LOAD_NAME               0: __name__
                2       STORE_NAME              1: __module__
                4       LOAD_CONST              0: 'Machine'
                6       STORE_NAME              2: __qualname__
                8       LOAD_CONST              1: <CODE> __init__
                10      LOAD_CONST              2: 'Machine.__init__'
                12      MAKE_FUNCTION           0
                14      STORE_NAME              3: __init__
                16      LOAD_CONST              3: <CODE> empty
                18      LOAD_CONST              4: 'Machine.empty'
                20      MAKE_FUNCTION           0
                22      STORE_NAME              4: empty
                24      LOAD_CONST              5: <CODE> e_start
                26      LOAD_CONST              6: 'Machine.e_start'
                28      MAKE_FUNCTION           0
                30      STORE_NAME              5: e_start
                32      LOAD_CONST              7: <CODE> push
                34      LOAD_CONST              8: 'Machine.push'
                36      MAKE_FUNCTION           0
                38      STORE_NAME              6: push
                40      LOAD_CONST              9: <CODE> pop
                42      LOAD_CONST              10: 'Machine.pop'
                44      MAKE_FUNCTION           0
                46      STORE_NAME              7: pop
                48      LOAD_CONST              11: <CODE> terminal
                50      LOAD_CONST              12: 'Machine.terminal'
                52      MAKE_FUNCTION           0
                54      STORE_NAME              8: terminal
                56      LOAD_CONST              13: <CODE> add
                58      LOAD_CONST              14: 'Machine.add'
                60      MAKE_FUNCTION           0
                62      STORE_NAME              9: add
                64      LOAD_CONST              15: <CODE> sub
                66      LOAD_CONST              16: 'Machine.sub'
                68      MAKE_FUNCTION           0
                70      STORE_NAME              10: sub
                72      LOAD_CONST              17: <CODE> cmp
                74      LOAD_CONST              18: 'Machine.cmp'
                76      MAKE_FUNCTION           0
                78      STORE_NAME              11: cmp
                80      LOAD_CONST              19: None
                82      RETURN_VALUE            
        'Machine'
        '\n                                                                                                                                                         \n888b      88  88  888b      88  88    d8\'  ad88888ba      88b           d88         db         ,ad8888ba,   88        88  88  888b      88  88888888888  \n8888b     88  88  8888b     88  88   d8\'  d8"     "8b     888b         d888        d88b       d8"\'    `"8b  88        88  88  8888b     88  88           \n88 `8b    88  88  88 `8b    88  88  ""    Y8,             88`8b       d8\'88       d8\'`8b     d8\'            88        88  88  88 `8b    88  88           \n88  `8b   88  88  88  `8b   88  88        `Y8aaaaa,       88 `8b     d8\' 88      d8\'  `8b    88             88aaaaaaaa88  88  88  `8b   88  88aaaaa      \n88   `8b  88  88  88   `8b  88  88          `"""""8b,     88  `8b   d8\'  88     d8YaaaaY8b   88             88""""""""88  88  88   `8b  88  88"""""      \n88    `8b 88  88  88    `8b 88  88                `8b     88   `8b d8\'   88    d8""""""""8b  Y8,            88        88  88  88    `8b 88  88           \n88     `8888  88  88     `8888  88        Y8a     a8P     88    `888\'    88   d8\'        `8b  Y8a.    .a8P  88        88  88  88     `8888  88           \n88      `888  88  88      `888  88         "Y88888P"      88     `8\'     88  d8\'          `8b  `"Y8888Y"\'   88        88  88  88      `888  88888888888  \n                                                                                                                                                         \nThis is nini\'s machine to test if you are qualified to join this class\n                                                                                                                                                         \n\n'
        'So, what is the flag ? >> '
        b'\x08\x00\x07\x08\x00\x00\x01d\t\x00\x00\x00\x014\t\x00\x073\x07\x01\x073\x08\x00\x00\x00\x01e\t\x00\x00\x00\x08\x00\x07c\x00\x00\x01\x00\t\x00\x00\x00\x074\x08\x00\x01\x00\t\x00\x06\x00\x01e\t\x00\x06\x00\x07Z\x08\x00\x01\x00\t\x00\x07h\x00\x00\x08\x00\x01\x00\t\x00\x06\x00\x07S\x08\x00\x01\x00\t\x00\x06\x00\x07_\x08\x00\x01\x00\t\x00\x06\x00\x07G\x08\x00\x01\x00\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01C\t\x00\x06\x00\x07\x00\x07\x01\x00\x00\x07\x02\x00\x00\x07\x03\x00\x00\x07\x04\x00\x00\x07\x05\x00\x00\x07\x06\x00\x00\x07\x07\x00\x00\x07\x08\x00\x00\x07\t\x00\x00\x07\n\x00\x00\x07\x0b\x00\x00\x07\x0c\x00\x00\x07\r\x00\x00\x07\x04\x00\x00\x08\x00\x01\x00\t\x00\x06\x00\x01w\t\x00\x06\x00\x010\t\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x13\x00\x00\x01\x00\t\x00'
        'Yeah, you got the flag'
        None
    [Disassembly]
        0       LOAD_CONST              0: 0
        2       LOAD_CONST              1: ('*',)
        4       IMPORT_NAME             0: ctypes
        6       IMPORT_STAR             
        8       LOAD_CONST              0: 0
        10      LOAD_CONST              1: ('*',)
        12      IMPORT_NAME             1: binascii
        14      IMPORT_STAR             
        16      LOAD_BUILD_CLASS        
        18      LOAD_CONST              2: <CODE> Machine
        20      LOAD_CONST              3: 'Machine'
        22      MAKE_FUNCTION           0
        24      LOAD_CONST              3: 'Machine'
        26      CALL_FUNCTION           2
        28      STORE_NAME              2: Machine
        30      LOAD_NAME               3: print
        32      LOAD_CONST              4: '\n                                                                                                                                                         \n888b      88  88  888b      88  88    d8\'  ad88888ba      88b           d88         db         ,ad8888ba,   88        88  88  888b      88  88888888888  \n8888b     88  88  8888b     88  88   d8\'  d8"     "8b     888b         d888        d88b       d8"\'    `"8b  88        88  88  8888b     88  88           \n88 `8b    88  88  88 `8b    88  88  ""    Y8,             88`8b       d8\'88       d8\'`8b     d8\'            88        88  88  88 `8b    88  88           \n88  `8b   88  88  88  `8b   88  88        `Y8aaaaa,       88 `8b     d8\' 88      d8\'  `8b    88             88aaaaaaaa88  88  88  `8b   88  88aaaaa      \n88   `8b  88  88  88   `8b  88  88          `"""""8b,     88  `8b   d8\'  88     d8YaaaaY8b   88             88""""""""88  88  88   `8b  88  88"""""      \n88    `8b 88  88  88    `8b 88  88                `8b     88   `8b d8\'   88    d8""""""""8b  Y8,            88        88  88  88    `8b 88  88           \n88     `8888  88  88     `8888  88        Y8a     a8P     88    `888\'    88   d8\'        `8b  Y8a.    .a8P  88        88  88  88     `8888  88           \n88      `888  88  88      `888  88         "Y88888P"      88     `8\'     88  d8\'          `8b  `"Y8888Y"\'   88        88  88  88      `888  88888888888  \n                                                                                                                                                         \nThis is nini\'s machine to test if you are qualified to join this class\n                                                                                                                                                         \n\n'
        34      CALL_FUNCTION           1
        36      POP_TOP                 
        38      LOAD_NAME               4: input
        40      LOAD_CONST              5: 'So, what is the flag ? >> '
        42      CALL_FUNCTION           1
        44      STORE_NAME              5: s
        46      LOAD_NAME               2: Machine
        48      LOAD_NAME               5: s
        50      CALL_FUNCTION           1
        52      STORE_NAME              6: emu
        54      LOAD_NAME               6: emu
        56      LOAD_METHOD             7: e_start
        58      LOAD_CONST              6: b'\x08\x00\x07\x08\x00\x00\x01d\t\x00\x00\x00\x014\t\x00\x073\x07\x01\x073\x08\x00\x00\x00\x01e\t\x00\x00\x00\x08\x00\x07c\x00\x00\x01\x00\t\x00\x00\x00\x074\x08\x00\x01\x00\t\x00\x06\x00\x01e\t\x00\x06\x00\x07Z\x08\x00\x01\x00\t\x00\x07h\x00\x00\x08\x00\x01\x00\t\x00\x06\x00\x07S\x08\x00\x01\x00\t\x00\x06\x00\x07_\x08\x00\x01\x00\t\x00\x06\x00\x07G\x08\x00\x01\x00\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01j\t\x00\x00\x00\x01C\t\x00\x06\x00\x07\x00\x07\x01\x00\x00\x07\x02\x00\x00\x07\x03\x00\x00\x07\x04\x00\x00\x07\x05\x00\x00\x07\x06\x00\x00\x07\x07\x00\x00\x07\x08\x00\x00\x07\t\x00\x00\x07\n\x00\x00\x07\x0b\x00\x00\x07\x0c\x00\x00\x07\r\x00\x00\x07\x04\x00\x00\x08\x00\x01\x00\t\x00\x06\x00\x01w\t\x00\x06\x00\x010\t\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x13\x00\x00\x01\x00\t\x00'
        60      CALL_METHOD             1
        62      POP_TOP                 
        64      LOAD_NAME               3: print
        66      LOAD_CONST              7: 'Yeah, you got the flag'
        68      CALL_FUNCTION           1
        70      POP_TOP                 
        72      LOAD_CONST              8: None
        74      RETURN_VALUE            
