### History of x86 processors
#### Intel 8086 (1978)
- 1 MB addressable RAM (20 bit for addressing)
- 16-bit registers
- 16-bit data bus

#### Intel 8088 (1979)
- 1 MB addressable RAM (20 bit for addressing)
- 16-bit registers
- 8-bit data bus
- ~ 29000 transistors
- ~ 5 MHz - 10 MHz

#### Intel 80286 (1982)
- 16 MB addressable RAM (24 bit for addressing)
- protected memory
- introduced IDE bus architecture
- Up to 20MHz
- ~ 130,000 transistors / 6 MHz to 16 MHz


#### Intel 386 (1985)
- 4 GB addressable RAM (32 bit for addressing)
- 32-bit registers
- paging (virtual memory)
- Up to 33MHz


#### Intel 486 (1989)
- instruction pipelining
- 8KB cache (SRAM)
- more than 1 million transistor


#### Pentium (1992) 66 MHz - 3 M transistor - 32 bit addressable - 32 bit data inside
#### Pentium Pro (1995) - 150 MHz - 36 bit addressable
#### Pentium II (1997)
#### Pentium III (1999)
#### Pentium 4 (2000)
#### Pentium D (2005, Dual Core)


### 8086 and registers
- General register
  - **AX**: Accumulator register - 16 bit | AH (8 bit) + AL (8 bit)
  - **BX**: Base address register - 16 bit
  - **CX**: Count register - used in loops - 16 bit
  - **DX**: Data register - points to data in input/ output operations - 16 bit

- Segment Registers
  - **CS**: Code Segment register
  - **ES**: Extra Segment register
  - **SS**: Stack Segment register
  - **DS**: Data Segment register

**Note**: A segment is a block of main memory (maximum size of a segment 64KB - ranging from 1 byte up to 65,536 bytes).  
- Instruction Register
  - **IP**: Instruction Pointer register (**PC in MIPS**)

- Index Registers
  - **DI**: Destination Index register
  - **SI**: Source Index register
- Pointer Registers
  - **SP**: Stack Pointer register - used while working with stack
  - **BP**: Base Pointer register - used while working with stack
- Flag Register
  - **Flag Register**: indicating the current state of the processor

The following images [1](https://compsecurityconcepts.files.wordpress.com/2014/09/8086_blockdia.jpeg) [2](https://compsecurityconcepts.files.wordpress.com/2014/09/8086_segmem.jpeg) presents these registers and also segmented structure of the main memory in 8086 processor.

![block diagram of 8086](imgs/8086_blockdiagram.jpeg)

![register of a 8086](imgs/8086_segmem.jpeg)

Being able to address a word in a segment, there is a offset value which is stored in a one of the registers of BX, SI, DI, BP. The following image shows this concept clearly.

![offseting](imgs/offset_in_segment_and_values_in_registers.png)

Following example shows how we can get the physical address of a word in a specific segment from segment address and the offset.

![physical address of a word in a segment](imgs/phyiscal_address_in_a_seg.png)

### 32-bit registers
By introduction of i386, 32-bit registers were added to the architecture of the processors which can be viewed in the following image.

![32-bit registers in x86](imgs/32-bit-registers.png)

### Note on pipelining
Using pipeline method for increasing the performance of processors started to adopted from 8086. 8085 processor was a non-pipelined one.

### Basics
You can see the following codes by clicking on them. Use the emu8086 emulator to see the registers and other states of the processor to gain a vision on how x86 processors work

#### 1 - [mov destination, source](01-basic-instructions/01-mov-instruction.asm)

#### 2 - [add destination, source](01-basic-instructions/02-add-instruction.asm)

#### 3 - [working with stack](01-basic-instructions/03-working-with-stack.asm)

#### 4 - Addressing Modes
##### 4 - 1 - register mode

```
mov ax, bx
```

##### 4 - 2 - immediate mode

```
mov ax, 01fa4h
```

##### 4 - 3 - direct mode

```
mov al, [1000]; logical address = DS:1000h | physical address = left shit DS + 1000h
```

##### 4 - 4 - register indirect

```
mov al, [bx]; logical address = DS:BX | physical address = left shift DS + value in BX register
```

##### 4 - 5 - base relative

```
mov ax, [bx] + 7; physical address = shift left DS + value in BX + 7

mov cl, [bp] + 4; physical address = shift left DS + value in BP + 4
```

##### 4 - 6 - indexed relative

```
mov dx, [si] + 8; physical address = shift left DS + value in SI + 8
```

##### 4 - 7 - based indexed relative

```
mov al, [bp][di] + 5; physical address = shift left DS + BP + DI + 5

mov bl, [bx][si] + 8; physical address = shift left DS + value in BX + value in SI + 8
```

#### 5 - Data types (Variables)
For declaring data in assembly code, there are five types as follows:
- DB: 1 Byte
- DW: 2 Byte
- DD: 4 Byte
- DQ: 8 Byte
- DT: 10 Byte

```
a   db  10101010b
b   db  35 ; 35 is decimal = 23h
c   db  42h

d   dw  1010101010101010b
e   dw  345
f   dw  5d12h
```
Note: if variables are defined like what we saw above, they are going to be stored in Code Segment (CS).


Note: constants can be defined with "equ" keyword. Also, they are not stored anywhere.

```
C   equ 3f12h
```

#### 6 - Basic assembly program samples
##### 1- [View here what is traditional in writing an assembly program](01-basic-instructions/04-sample1.asm)

##### 2 - [View here the simplified version of the previous one](01-basic-instructions/05-sample2.asm)

##### 3 - [Example of using loop for adding four numbers](01-basic-instructions/06-loop-for-adding.asm)

##### 4 - [Example of using for adding four numbers using BX:AX for the result](01-basic-instructions/07-adding-more.asm)

##### 5 - [Example of multiplying two bytes](01-basic-instructions/08-multiplying-two-bytes.asm)

##### 6 - [Example of multiplying two words](01-basic-instructions/../01-basic-instructions/09-multiplying-two-words.asm)

##### 7 - [Example of multiplying a byte and a word](01-basic-instructions/10-multiplying-byte-word.asm)

##### 8 - [Example of dividing a byte by another byte](01-basic-instructions/11-divide-byte-to-byte.asm)

##### 9 - [Example of dividing a word by another word](01-basic-instructions/12-divide-word-by-word.asm)

##### 10 - [Example of dividing a word by a byte](01-basic-instructions/13-divide-word-by-byte.asm)

##### 11 - [Example of logic instructions](01-basic-instructions/14-bit-operations.asm)

##### 12 - [Maximum of three number](01-basic-instructions/15-maximum.asm)

##### 13 - [If implementation in Assembly](01-basic-instructions/16-if-in-assembly.asm)

### BCD Numbers
BCD stands for Binary-Coded Decimal. In this coding system, we try to code each decimal digit with 4 bits. The following [figure](https://examradar.com/codes-and-parity/) shows what the BCD system is.

![BCD coding system](imgs/bcd.png)

BCD coding system's most important application is in counters. For example, with the help of a SN74LS47 chip, we can build a counter on a seven segment. For example, in the following figure if we replace the dip switch with a counter, we can build a counter (BCD one) which is shown on a seven segment.

![BCD counter like](imgs/counter-like.jpg)

On the other side, BCD system needs more electronics to do BCD arithmetic in hardware, thus it is much slower than binary arithmetic. Also, It wastes memory storage (every 4 bits for each digit).

Some example assembly programs for dealing with BCD codes.

##### 1 - [String to BCD](02-BCD/01-string-to-BCD.asm)
##### 2 - [ASCII to BCD](02-02-BCD/02-ASCII-to-BCD.asm)

## How to use Visual Studio for running x86 assembly code
First of all, create an empty project with MASM name. Then, remove the header, resource, and source folders. Then, right click on the project and select build dependencies, and then in the opened window check the masm. After that, right click again and go to the properties. In properties window, navigate to Configuration Properties -> Linker -> System, and there select Windows for subsystem. Then, we are going to make it a template to be able make assembly programs. Them, right click again, and add a new file with .asm extension like main.asm. Then, fill you recently made file with the following code:
```assembly
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
      ; define your variables here
.code

main PROC
      ; write your assembly code here

      INVOKE ExitProcess, 0
main ENDP
END main
```
Then, go to the project tap in the navbar of Visual Studio, click Export Template, and save on defaults. After this moment, whenever we make a project, we will see the option of MASM in the project make window. After debugging the written assembly code, if you right click on the source and select run to cursor, the rigisters will shown. Also, Debug -> Windows -> Registers is another alternative to see the registers.

