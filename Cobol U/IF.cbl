      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
              IDENTIFICATION DIVISION.
       PROGRAM-ID.                PBAPERFO.
       AUTHOR.                    FERNANDO TOLEDO.
       INSTALLATION.              CENTRO DE CAPACITACION.
       DATE-WRITTEN.              17/11/16.
       DATE-COMPILED.
       SECURITY.                  NO ES CONFIDENCIAL.
      *> ------------------------------------------------------
      *> PROGRAMA QUE PRUEBA EL USO DEL PERFORM
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
           05 WS-CONTADOR         PIC 9(02) VALUE ZEROS.
           05 WS-TOTAL            PIC 9(02).
           05 WS-SUMA             PIC 9(03) VALUE ZEROS.


       PROCEDURE DIVISION.
       010-ANIDADOS.
           IF CAMPO-A IS GREATER B
              IF CAMPO-E < CAMPO-F
                 PERFORM 020-CALCULO-01 THRU 020-FIN
              ELSE
                 PERFORM 030-CALCULO-02 THRU 030-FIN
              END-IF
           ELSE
              IF CAMPO-C EQUAL CAMPO-D
                 IF CAMPO-G = CAMPO-H
      *             NEXT SENTENCE
                 ELSE
                    PERFORM 040-CALCULO-04 THRU 040-FIN
                 END-IF
              ELSE
                 PERFORM 050-CALCULO-03 THRU 050-FIN
              END-IF
           END-IF
           PERFORM 060-CALCULO-05 THRU 060-FIN.
