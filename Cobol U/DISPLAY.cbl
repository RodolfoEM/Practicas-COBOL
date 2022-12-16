       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGDISP.
      *AUTHOR.                    FERNANDO TOLEDO.
      *INSTALLATION.              CENTRO DE CAPACITACION.
      *DATE-WRITTEN.              17/11/16.
      *DATE-COMPILED.
      *SECURITY.                  NO ES CONFIDENCIAL.
      *> ------------------------------------------------------
      *> PROGRAMA QUE PRUEBA LA SENTENCIA DISPLAY
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
       01  WS-AREAS-A-USAR.
           05 WS-CAMPO-01         PIC X(08) VALUE "FERNANDO".
           05 WS-CAMPO-02         PIC 9(05) VALUE 12345.

       PROCEDURE DIVISION.
       010-RAIZ.
           DISPLAY "CIFRAS FINALES"
           DISPLAY WS-CAMPO-01
           DISPLAY "CONTENIDO DE CAMPO 01: " WS-CAMPO-01
           DISPLAY "CONTENIDO DE CAMPO 02: " WS-CAMPO-02.
           GOBACK.
