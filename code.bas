$regfile = "m16def.dat"

Config PortA.0 = Input
Config PortA.1 = Input
Config PortA.2 = Input
Config PortA.3 = Input

Config Portb.7 = Input

Config Portc = Output

pinb.7 = 1


dim Zero as byte
dim SSD as byte

Zero = &B00000000


if pina = &B0000 then
SSD = &B00111111
elseif pina = &B0001 then
SSD = &B00000110
elseif pina = &B0010 then
SSD = &B01011011
elseif pina = &B0011 then
SSD = &B01001111
elseif pina = &B0100 then
SSD = &B01100110
elseif pina = &B0101 then
SSD = &B01101101
elseif pina = &B0110 then
SSD = &B01111101
elseif pina = &B0111 then
SSD = &B00000111
elseif pina = &B1000 then
SSD = &B01111111
elseif pina = &B1001 then
SSD = &B01101111
else
SSD = &B00000000
End if




Do

   Do
      portc = Zero
   Loop Until Pinb.7 = 0


   Do
      portc = SSD
   Loop Until Pinb.7 = 0

Loop

End