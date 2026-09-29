#  Scrivere un programma in Python che calcola il prezzo del biglietto di
#  un cinema in base all'età dell'utente e al giorno della settimana.
#  Il prezzo base del biglietto è di 10 euro, ma ci sono queste regole
#  per gli sconti:
#  1. Se l'utente ha meno di 5 anni, il biglietto è sempre gratis (0 euro).
#  2. Se l'utente ha tra i 5 e i 12 anni (compresi), paga una tariffa ridotta
#     di 6 euro.
#  3. Se l'utente ha più di 65 anni (compresi), paga una tariffa ridotta
#     di 7 euro.
#  4. Per tutti gli altri, il prezzo è quello base (10 euro).
#  5. Regola speciale: Se oggi è mercoledì, si applica uno sconto extra
#     di 2 euro sul prezzo finale calcolato (tranne per chi entra gratis!).

## Cosa deve fare il programma:
#   1. Definire una variabile per l'età (es. eta = 20).
#   2. Definire una variabile booleana o stringa per il giorno (es. e_mercoledi = True oppure giorno = "mercoledì").
#   3. Usare la struttura if-elif-else per determinare il prezzo di partenza.
#   4. Applicare lo sconto del mercoledì se necessario.
#   5. Stampare il prezzo finale.


##########################################################################
#inserimento manuale di età e giorno
eta = 65
giorno='mercoledi'

#Calcolo del prezzo del biglietto in base all'età 
if (eta<5):
    prezzo_biglietto = 0 #gratis eta <5 anni
elif(eta>=5 and eta<=12):
    prezzo_biglietto = 6 #eta tra i 5 e 12 anni il prezzo è di 6 euro
elif(eta>=65):
    prezzo_biglietto = 7 #eta > 65 anni il prezzo è di 7 euro
else:
    prezzo_biglietto = 10 #prezzo intero di 10 euro

#calcolo dello sconto di 2 euro se il giorno è mercoledì
if ((giorno=='mercoledi') and (eta >= 5)):
    prezzo_biglietto -= 2
#else:
#    pass

#Stampa la soluzione a video con il prezzo in base all'età e al giorno
print("Età dell'utente:",eta)
print("Oggi è il giorno:",giorno)
print("Il prezzo del biglietto è di euro:",prezzo_biglietto)
 