num = input ("Inserire una sequenza di caratteri numerici: ")

num_int = int (num)

num_float = float (num)

# applichiamo gli operatori int

num_int+=2

print ("+=: ", num_int)

num_int-=2

print ("-=: ", num_int)

num_int*=2

print ("*=: ", num_int)

# applichiamo gli operatori float

num_float+=2.0

print ("+=: ", num_float)

num_float-=2.0

print ("-=: ", num_float)

num_float*=2.0

print ("*=: ", num_float)

# applichiamo gli operatori string

num+='2'

print ("+=: ", num)

num*=2

print ("*=: ", num)

num-='2'

print ("-=: ", num)

 

 

 

print (type (num))

print (type (num_int))

print (type (num_float))