// Everything regarding RAM





short[] RAM;



short GetRAM (int Index) {
  return RAM[Index];
}

short GetRAM (short Index1, short Index2) {
  return RAM[S.GetShortFromBytes(Index1, Index2)];
}



void SetRAM (int Index, short Value) {
  RAM[Index] = Value;
}

void SetRAM (short Index1, short Index2, short Value) {
  RAM[S.GetShortFromBytes(Index1, Index2)] = Value;
}
