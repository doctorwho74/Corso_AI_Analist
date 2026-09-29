# Esercizio: Il controllo del PIN (Sicurezza)
# 
# Consegna:
# Crea un programma che simuli lo sblocco di un telefono.
# Imposta un PIN corretto all'interno di una variabile (es. 12345).
# Chiedi all'utente di inserire il PIN usando input().
# 
# Nello svolgimento della traccia, verificare la lunghezza del PIN.
# Generare un codice di errore e chiedere di nuovo il PIN per un massimo di 3 volte.
# Il controllo del PIN deve essere fatto cifra per cifra.
# Utilizzare gli operatori booleani per effettuare il controllo.
# 
# Se il PIN è corretto, stampa "Telefono sbloccato!" e interrompi il programma.
# Se è sbagliato, stampa "PIN errato. Riprova." e chiedilo di nuovo.
# """


PIN = '12345'
tentativi = 0
max_tentativi = 3
sblocca_telefono = False

while tentativi < max_tentativi:
      tentativi = tentativi + 1
    
      PIN_utente = input("Inserisci il PIN per poter sbloccare il telefonino!")
           
      if len(PIN_utente) != len(PIN):
          print ("Errore! Lunghezza PIN non valida.")
          print ("PIN Errato! RIPROVA")
          continue
      cifre_corrette = True
      i=0
      while i < len(PIN):
          if PIN_utente[i] != PIN[i]:
            cifre_corrette = False
            break
          i=i+1
          
      if cifre_corrette:
          print ("Tel SBLOCCATO!")
          break
      else:
          print ("PIN Errato. RIPROVA!")
else: 
    print ("Il telefono è BLOCCATO!")    
       