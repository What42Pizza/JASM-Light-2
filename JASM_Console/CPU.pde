// Everything regarding the CPU





int     Pointer  = 0;
short   InstrReg = 0;
short   DataReg1 = 0;
short   DataReg2 = 0;
short   ALUA     = 0;
short   ALUB     = 0;
short   ALUC     = 0;
short   IOReg    = 0;

boolean BlockIncFlag     = false;
boolean SteppingFlag     = true ;
boolean LoadingInstrFlag = false;





void RunCPU() {
  while (SteppingFlag) {
    StepCPU();
  }
}



void StepCPU() {
  
  //print (Pointer);
  LoadingInstrFlag = true;
  InstrReg = GetRAM(Pointer);
  LoadingInstrFlag = false;
  if (InstrReg > 127) {
    Pointer = S.inc(Pointer);
    DataReg1 = GetRAM(Pointer);
    //println ("; Executing " + InstrReg + ", " + DataReg1);
  } else {
    //println ("; Executing " + InstrReg);
  }
  ExecuteInstruction();
  if (!BlockIncFlag) {
    Pointer = S.inc(Pointer);
  }
  BlockIncFlag = false;
  
}





void ExecuteInstruction() {
  switch (InstrReg) {
    
    
    
    // ================================================================  Misc
    
    case (0): // NOP
      break;
    
    
    
    // ================================================================  Moving data
    
    case (1): // MCA
      ALUA = ALUC;
      break;
    
    case (2): // MCB
      ALUB = ALUC;
      break;
    
    case (3): // MCD
      DataReg2 = ALUC;
      break;
    
    case (4): // MAD
      DataReg2 = ALUA;
      break;
    
    case (5): // MBD
      DataReg2 = ALUB;
      break;
    
    case (6): // MDA
      ALUA = DataReg2;
      break;
    
    case (7): // MDB
      ALUB = DataReg2;
      break;
    
    
    
    // ================================================================  ALU operators
    
    case (8): // ADD
      ALUC = B.add(ALUA, ALUB);
      break;
    
    case (9): // SUB
      ALUC = B.sub(ALUA, ALUB);
      break;
    
    case (10): // INA
      ALUC = B.inc(ALUA);
      break;
    
    case (11): // DCA
      ALUC = B.dec(ALUA);
      break;
    
    case (12): // SLA
      ALUC = B.shl(ALUA);
      break;
    
    case (13): // SRA
      ALUC = B.shr(ALUA);
      break;
    
    
    
    // ================================================================  ALU bitwise operators
    
    case (14): // AND
      ALUC = B.and(ALUA, ALUB);
      break;
    
    case (15): // ORR
      ALUC = B.orr(ALUA, ALUB);
      break;
    
    case (16): // NOT
      ALUC = B.not(ALUA);
      break;
    
    case (17): // XOR
      ALUC = B.xor(ALUA, ALUB);
      break;
    
    
    
    // ================================================================  IO
    
    case (18): // OTC
      IOReg = ALUC;
      println (IOReg);
      break;
    
    case (19): // NPA
      ALUA = IOReg;
      break;
    
    case (20): // NPB
      ALUB = IOReg;
      break;
    
    case (21): // NPD
      DataReg2 = IOReg;
      break;
    
    
    
    // ================================================================  Execution
    
    case (22): // STP
      SteppingFlag = false;
      break;
    
    
    
    
    
    // ================================================================  Storing data in registers
    
    case (128): // STA
      ALUA = DataReg1;
      break;
    
    case (129): // STB
      ALUB = DataReg1;
      break;
    
    case (130): // STD
      DataReg2 = DataReg1;
      break;
    
    
    
    // ================================================================  Reading from RAM
    
    case (131): // RDA
      ALUA = GetRAM(DataReg1);
      break;
    
    case (132): // RDB
      ALUB = GetRAM(DataReg1);
      break;
    
    case (133): // RDD
      DataReg2 = GetRAM(DataReg1);
      break;
    
    case (134): // RAB
      ALUA = GetRAM(DataReg1, DataReg2);
      break;
    
    case (135): // RBB
      ALUB =GetRAM(DataReg1, DataReg2);
      break;
    
    
    
    // ================================================================ Writing to RAM
    
    case (136): // WTA
      SetRAM(DataReg1, ALUA);
      break;
    
    case (137): // WTB
      SetRAM(DataReg1, ALUB);
      break;
    
    case (138): // WTC
      SetRAM(DataReg1, ALUC);
      break;
    
    case (139): // WTD
      SetRAM(DataReg1, DataReg2);
      break;
    
    case (140): // WAB
      SetRAM(DataReg1, DataReg2, ALUA);
      break;
    
    case (141): // WBB
      SetRAM(DataReg1, DataReg2, ALUB);
      break;
    
    case (142): // WCB
      SetRAM(DataReg1, DataReg2, ALUC);
      break;
    
    
    
    // ================================================================ IO
    
    case (143): // OUT
      IOReg = GetRAM(DataReg1);
      println (IOReg);
      break;
    
    case (144): // OTB
      IOReg = GetRAM(DataReg1, DataReg2);
      println (IOReg);
      break;
    
    case (145): // OTN
      IOReg = DataReg1;
      println (IOReg);
      break;
    
    case (146): // INP
      SetRAM(DataReg1, IOReg);
      break;
    
    case (147): // INB
      SetRAM(DataReg1, DataReg2, IOReg);
      break;
    
    
    
    // ================================================================ Jumps
    
    case (148): // JMP
      Pointer = S.GetShortFromBytes(DataReg1, DataReg2);
      BlockIncFlag = true;
      break;
    
    case (149): // JPE
      if (ALUA == ALUB) {
        Pointer = S.GetShortFromBytes(DataReg1, DataReg2);
        BlockIncFlag = true;
      }
      break;
    
    case (150): // JPG
      if (ALUA > ALUB) {
        Pointer = S.GetShortFromBytes(DataReg1, DataReg2);
        BlockIncFlag = true;
      }
      break;
    
    case (151): // JPL
      if (ALUA < ALUB) {
        Pointer = S.GetShortFromBytes(DataReg1, DataReg2);
        BlockIncFlag = true;
      }
      break;
    
    case (152): // JNE
      if (ALUA != ALUB) {
        Pointer = S.GetShortFromBytes(DataReg1, DataReg2);
        BlockIncFlag = true;
      }
      break;
    
    case (153): // JGE
      if (ALUA >= ALUB) {
        Pointer = S.GetShortFromBytes(DataReg1, DataReg2);
        BlockIncFlag = true;
      }
      break;
    
    case (154): // JLE
      if (ALUA <= ALUB) {
        Pointer = S.GetShortFromBytes(DataReg1, DataReg2);
        BlockIncFlag = true;
      }
      break;
    
    case (155): // JPO
      Pointer = DataReg1;
      BlockIncFlag = true;
      break;
    
    
    
  }
}
