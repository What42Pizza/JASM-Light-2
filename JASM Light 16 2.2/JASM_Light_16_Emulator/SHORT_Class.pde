class SHORT {
  
  
  
  int inc (int A) {
    return (A + 1) % 65536;
  }
  
  int GetShortFromBytes (short A, short B) {
    return A + (B << 8);
  }
  
  
  
}
