ORG 0000H         

MOV A, #01H        
MOV B, #0AH       
MUL AB            

ADD A, #01H       
MOV B, #0AH        
MUL AB             

ADD A, #04H  
MOV B, #0AH  
MUL AB             
ADD A, #08H       
HERE: SJMP HERE
END
