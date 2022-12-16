       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGMOVE.
      *AUTHOR.                    FERNANDO TOLEDO.
      *INSTALLATION.              CENTRO DE CAPACITACION.
      *DATE-WRITTEN.              17/11/16.
      *DATE-COMPILED.
      *SECURITY.                  NO ES CONFIDENCIAL.
      *> ------------------------------------------------------
      *> PROGRAMA QUE PRUEBA LA SENTENCIA MOVE
      *> ------------------------------------------------------

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.           IBM-3083.
       OBJECT-COMPUTER.           IBM-3083.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  WS-AREAS-A-USAR1.
           05 WS-CAMPO-01         PIC X(08) VALUE "FERNANDO".
           05 WS-CAMPO-02         PIC X(08) VALUE SPACES	.

       01  WS-AREAS-A-USAR2.
           05 WS-NOMBRE-NPM.
              10 WS-NOMBRE        PIC X(15) VALUE "FERNANDO       ".
              10 WS-PATERNO       PIC X(15) VALUE "TOLEDO         ".
              10 WS-MATERNO       PIC X(15) VALUE "ESPEJEL        ".

           05 WS-NOMBRE-PMN.
              10 WS-PATERNO       PIC X(15).
              10 WS-MATERNO       PIC X(15).
              10 WS-NOMBRE        PIC X(15).

       PROCEDURE DIVISION.
       010-RAIZ.
           MOVE WS-CAMPO-01 TO WS-CAMPO-02
           DISPLAY "CONTENIDO DE CAMPO 02: " WS-CAMPO-02
                   " <---ESTO ES UN MOVE SIMPLE."
           MOVE CORRESPONDING WS-NOMBRE-NPM TO WS-NOMBRE-PMN
           DISPLAY "CONTENIDO DE WS-NOMBRE-PMN: " WS-NOMBRE-PMN
                   " <---ESTO ES UN MOVE CORRESPONDING.".
           GOBACK.
