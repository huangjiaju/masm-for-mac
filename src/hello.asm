DATAS SEGMENT;

  STRING DB 'hello  world!', '$';

DATAS ENDS;

STACKS SEGMENT;

  DW 20h DUP(0);

STACKS ENDS;

CODES SEGMENT;

ASSUME CS:CODES,DS:DATAS,SS:STACKS;

START:

MOV AX, DATAS;
MOV DS, AX;
LEA DX, STRING;
MOV AH, 09H;
INT 21H;
MOV AH, 4CH;
INT 21H;

CODES ENDS;
END START;
