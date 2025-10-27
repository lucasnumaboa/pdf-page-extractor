DEFINE VARIABLE cPdfInput  AS CHARACTER NO-UNDO.
DEFINE VARIABLE cPdfOutput AS CHARACTER NO-UNDO.
DEFINE VARIABLE cPdftk    AS CHARACTER NO-UNDO.
DEFINE VARIABLE cCommand  AS CHARACTER NO-UNDO.
 
DEFINE VARIABLE iPagina AS INTEGER NO-UNDO.
iPagina = 4. /* página desejada */
 
 
/* Caminhos (usar barras invertidas) */
ASSIGN 
    cPdfInput  = "C:\Users\user-name\Desktop\arquivo_origem.pdf"
    cPdfOutput = "C:\Users\user-name\Desktop\arquivo-destino_4.pdf"
    cPdftk    = "C:\Users\user-name\Desktop\bin\pdftk.exe".
 
/* Monta comando via CMD /C */
ASSIGN /* comando dinâmico */
cCommand = SUBSTITUTE(
    'CMD /C ""&1" "&2" cat &4 output "&3""',
    cPdftk,
    cPdfInput,
    cPdfOutput,
    STRING(iPagina)
).
 
//MESSAGE "Executando comando:" SKIP cCommand VIEW-AS ALERT-BOX.
 
/* Executa comando (sem NO-ERROR) */
OS-COMMAND SILENT VALUE(cCommand).