void LoadDec (String Dir) {
  String[] ROMIn = loadStrings(Dir);
  for (int i = 0; i < ROMIn.length; i ++) {
    RAM[i] = (short)(int (ROMIn[i]));
  }
}

void LoadHex (String Dir) {
  String[] ROMIn = loadStrings(Dir);
  for (int i = 0; i < ROMIn.length; i ++) {
    RAM[i] = (short)(unhex (ROMIn[i]));
  }
}

void LoadByte (String Dir) {
  byte[] ROMIn = loadBytes(Dir);
  for (int i = 0; i < ROMIn.length; i ++) {
    RAM[i] = (short)(ROMIn[i] + 128);
  }
}

void LoadBinary (String Dir) {
  String[] ROMIn = loadStrings(Dir);
  for (int i = 0; i < ROMIn.length; i ++) {
    RAM[i] = (short)(unbinary (ROMIn[i]));
  }
}
