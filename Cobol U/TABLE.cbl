      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.                PROGTABL.
      *AUTHOR.                    FERNANDO TOLEDO.
      *INSTALLATION.              CENTRO DE CAPACITACION.
      *DATE-WRITTEN.              17/11/16.
      *DATE-COMPILED.
      *SECURITY.                  NO ES CONFIDENCIAL.
      *> ------------------------------------------------------
      *> PROGRAMA QUE CARGA INFORMACION EN UNA TABLA INTERNA
      *> Y DESPUES LA VACIA (3 ELEMENTOS)
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
      *PARA DEFINIR UNA TABLA ES NECESARIO EL USO DE LA PALABRA RESERVADA
      *OCCURS Y ESTABLECER EL NUMERO DE ESPACIOS QUE TENDRA(TIMES)
       01  WS-TABLAS.
           05 WS-EMPLEADOS OCCURS 5 TIMES.
              10 WS-NUMERO        PIC 9(05).
              10 WS-NOMBRE        PIC X(35).
              10 WS-SALARIO       PIC 9(05)V99.

       01  WS-AREAS.
           05 WS-INDICE           PIC 9(02).

       PROCEDURE DIVISION.
       010-RAIZ.
           PERFORM 020-CARGA-TABLA THRU 020-FIN
                   VARYING WS-INDICE FROM 1 BY 1
                   UNTIL WS-INDICE GREATER 3

           PERFORM 030-VACIA-TABLA THRU 030-FIN
                   VARYING WS-INDICE FROM 1 BY 1
                   UNTIL WS-INDICE GREATER 3
           GOBACK.

       020-CARGA-TABLA.
           DISPLAY "NUMERO: "
           ACCEPT WS-NUMERO (WS-INDICE)
           DISPLAY "NOMBRE: "
           ACCEPT WS-NOMBRE (WS-INDICE)
           DISPLAY "SALARIO: "
           ACCEPT WS-SALARIO (WS-INDICE).
       020-FIN.  EXIT.

       030-VACIA-TABLA.
      *ESTO SOLO VA A MOSTRAR LOS DATOS DE LA TABLA SI ENCUENTRA EL NOMBRE
      *RODO DENTRO DE LA VARIABLE WS-NOMBRE.
           IF WS-NOMBRE (WS-INDICE)= "RODO"
               DISPLAY "NUMERO: "  WS-NUMERO (WS-INDICE)
               DISPLAY "NOMBRE: "  WS-NOMBRE (WS-INDICE)
               DISPLAY "SALARIO: " WS-SALARIO (WS-INDICE)
               DISPLAY " "
           END-IF.
       030-FIN.  EXIT.
