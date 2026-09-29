# Scrivere un programma che prende in input una sequenza
# di caratteri trasforma i caratteri in numeri interi ed 
# in numeri float, poi applica gli operatori +=, -= e *=
# utilizzando un valore costante.
# Successivamente applicate gli stessi operatori alla
# sequenza di caratteri e verificare a video cosa succede

trasf_int= (int(input ("Scrivi dei caratteri da \"0\" a \"9\": ")))
print ("Ecco qui",trasf_int)
trasf_float = (float(input(" scrivi dei numeri interi ")))
print ("Ecco qua", trasf_float)
###Somma###
trasf_int += 3
print ("Somma il valore intero per 3 volte: ", trasf_int)
trasf_float +=6.3
print ("Somma il valore di Float per 6.3 volte: ", trasf_float)
###Moltiplica###
trasf_int *= 2
print ("Moltiplica il valore intero per 2 volte: ", trasf_int)
trasf_float *=5.6
print ("Moltiplica il valore di Float per 5.6 volte: ", trasf_float)
###Sottrai###
trasf_int -= 2
print ("Sottrai il valore intero per 2 volte: ", trasf_int)
trasf_float -=5.4
print ("Sottrai il valore di Float per 5.4 volte: ", trasf_float)


