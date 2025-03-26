notes1 = "E4 G4 D4 B4 C5 D5 E5 A4   B4  G4  R  D4 A3 C4 E4 A3 B3 G3 B3 C4 B3 A3 C4 E4 A3 B3 G3 B3 C4 B3 A3" 
beats1 = "6  2  4  1  1  1  1 7.5  0.5  2   4  1  4  2  2  2  2  2  1  2  1  2  2  2  2  2  2  1  2 1  2" # 0.28

notes2 = " C4 E4 A3 B3 G3 B3 C4 B3 A3 C4 E4 A3 B3 G3 B3 C4 B3 A3 E4 C4 G3 A3 C4 D4 C4 E4 C4 G3 A3 C4" #0.49
beats2 = " 2  2  2   2  2  1  2  1  2 2  2  2  2  2  1  2  1  3  2  1  6  1  1  1   4 2  1  6  1   1"

notes3 = " D4 E4  F4   E4 C4 A4 G4 E4 R A3 D4 C4 E4 C4 G3 A3 C4 D4 E4 A3 E4 D4 C4  D4 E4 D4  E4  D4 E4 D4 C4" #1.03
beats3 = " 1  4.5 0.5  1  1  1  4  1  1 1  1  4  2  1  6  1   1  1 1  1  1  1  0.5 2  1  0.5 0.5 1.5 1 1 0.5"

notes4 = " D4 E4 D4  E4 D4  E4 C4  D4 E4 D4  E4  D4  B4 C5 D5 E5 B4 C5 A4 E4 C4  D4 E4 D4  E4  D4  E4 C4  D4 G4 E4 D4  E4  D4 E4 C4  D4 E4 D4  E4  D4  A4 C5 A3 D4 A3" #1.21
beats4 = " 2  1 0.5 0.5 1.5 1  1.5 2   1 0.5 0.5 0.5 1  1   1  1 1  1   3 1  1.5 2  1  0.5 0.5 1.5 1  1.5  1 1   1 0.5 0.5 1.5 1 1.5 2  1  0.5 0.5 3.5 1  1  1  1  3"

notes = notes1 + notes2 + notes3 + notes4
beats = beats1 + beats2 + beats3 + beats4

conversion = {
    'G3' : 'x"329B7"',
    'A3' : 'x"2CFC7"', 
    'B3' : 'x"28900"', 
    'C4' : 'x"25D00"', 
    'D4' : 'x"22000"', 
    'E4' : 'x"1E000"', 
    'F4' : 'x"1C655"', 
    'G4' : 'x"194FA"', 
    'A4' : 'x"16969"', 
    'B4' : 'x"140B7"', 
    'C5' : 'x"1317A"', 
    'D5' : 'x"10E3D"', 
    'E5' : 'x"0F000"',
    'R'  : 'x"00000"'
}
while "  " in notes:
    notes = notes.replace("  ", " ")

while "  " in beats:
    beats = beats.replace("  ", " ")

notes_list = notes.split(" ")
beats_list = beats.split(" ")
ret = "("
ret2 = 0
for i in range(len(notes_list)):
    note = notes_list[i]
    beat = beats_list[i]
    beat = round(float(beat) * 2)
    ret2 += beat
    for i in range(beat):
        ret = ret + conversion[note] + ', '

ret = ret[:-2]
ret = ret + ');'
print(ret)
print(ret2)
if len(notes_list) != len(beats_list):
    print("Error")