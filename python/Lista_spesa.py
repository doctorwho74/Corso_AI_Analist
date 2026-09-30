# 
# Esercizio: La spesa del giorno (Liste + Ciclo while)
# 
# Scenario: Devi creare un programma per gestire una lista della spesa.
# 
# • Crea una lista vuota chiamata lista_spesa.
# • Usa un ciclo while per chiedere all'utente cosa vuole comprare (usando .strip()).
# • Se l'utente scrive "fine", il ciclo si interrompe.
# • Altrimenti, aggiungi l'elemento alla lista usando il metodo .append().
# • Alla fine, stampa la lista completa usando una f-string.
# •

lista_spesa=[]
fine=False

while not fine:
    prodotto =(input ("Ciao, cosa vorresti comprare oggi? ")).strip().lower()
    if (prodotto == "fine"):
        fine = True
    elif prodotto:
        lista_spesa.append(prodotto)
print ("\n\n-----Ecco la lista della tua spesa----")
for prodotto in lista_spesa:
    print(f" @ Art - {prodotto}".upper())
