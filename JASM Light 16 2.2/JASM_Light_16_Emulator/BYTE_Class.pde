class BYTE {
  
  
  
  short add (short A, short B) {
    return (short)((A + B) % 256);
  }
  
  short sub (short A, short B) {
    return (short)((A - B + 256) % 256);
  }
  
  short inc (short A) {
    return (short)((A + 1) % 256);
  }
  
  short dec (short A) {
    return (short)((A + 255) % 256);
  }
  
  short shl (short A) {
    return (short)((A << 1) % 256);
  }
  
  short shr (short A) {
    return (short)(A >> 1);
  }
  
  short and (short A, short B) {
    return (short)(A & B);
  }
  
  short orr (short A, short B) {
    return (short)(A | B);
  }
  
  short not (short A) {
    return (short)(A ^ 0xFF);
  }
  
  short xor (short A, short B) {
    return (short)(A ^ B);
  }
  
  
  
}
