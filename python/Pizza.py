# Scrivi un programma in Python che calcola il prezzo di una pizza in base
# alla dimensione scelta e al tipo di pagamento.
# Il menu prevede tre dimensioni di pizza:
# 
#  
# * Piccola: 5 euro
# * Media: 8 euro
# * Grande: 12 euro
# Ci sono però queste regole e sconti speciali:
# 
# # Ingrediente Extra: Se l'utente aggiunge la doppia mozzarella, si aggiungono 2 euro
# al prezzo della pizza (valido per qualsiasi dimensione).
# * Sconto Studenti: Se l'utente è uno studente, ha diritto a uno sconto del 10%
#   sul totale della pizza (compreso l'eventuale extra).
# * Supplemento Consegna: Se la pizza viene consegnata a domicilio, si aggiungono
#   3 euro fissi alla fine. Nota bene: lo sconto studenti si applica solo sulla pizza,
#   non sul costo della consegna!
#
## Cosa deve fare il programma:
#    1. Definire le variabili di partenza (es. dimensione = "media", doppia_mozzarella = True, studente = True, domicilio = False).
#    2. Usare if-elif-else per impostare il prezzo di partenza in base alla dimensione.
#    3. Gestire l'aggiunta della doppia mozzarella.
#    4. Applicare lo sconto se l'utente è studente (puoi calcolare lo sconto facendo:
#       prezzo = prezzo * 0.9).
#    5. Aggiungere il costo di consegna se richiesto.
#    6. Stampare il prezzo finale.
#   
  
###################################################################
pizza = "media"
doppia_mozzarella = True
studente = True
domicilio = False 

pizza = input("Quale pizza vuoi prendere piccola, media, grande? ").lower()
aggiunte = input("Vuoi l'aggiunta di doppia mozzarella?(si/no) ").lower()
stud = input("Sei uno studente?(si/no)").lower()
consegna = input("Vuoi la consegna a domicilio? (si/no) ").lower()

#Dimensione pizza
if (pizza =="piccola"):
    prezzo=5
elif (pizza=="media"):
    prezzo=8
elif (pizza=="grande"): 
    prezzo=12
#aggiunta doppia mozzarella
if (aggiunte == "si"):
    prezzo += 2
    
#Se studente
if stud == "si":
    prezzo *= 0.90
    
#Consenga a domicilio
if (consegna == "si"):
    prezzo += 3
    

print ("Il prezzo totale della pizza è di €", prezzo)


   