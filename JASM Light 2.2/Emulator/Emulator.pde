// Started 09/15/19

// Last worked on: 03/30/20
// Using JASM Light 2.2.1



// Settings

String  Directory = "C:/ProcessingPrograms/JASM Light 2.2";
boolean AutoRun   = false                                 ;

boolean LoadFromROMDAT = false;

boolean Use2SpaceInstructions = false;
boolean UseHex = false;



String[] InstructionNames = new String[] {
  "NOP",
  "STA",
  "STB",
  "RDA",
  "RDB",
  "WTA",
  "WTB",
  "WTC",
  "MCA",
  "MCB",
  "ADD",
  "SUB",
  "INA",
  "DCA",
  "SLA",
  "SRA",
  "AND",
  "OUT",
  "OTC",
  "INP",
  "JMP",
  "JPE",
  "JPG",
  "JPL",
  "STP"
};



boolean[] InstructionTakesData = new boolean[] {
  false, // NOP
  true,  // STA
  true,  // STB
  true,  // RDA
  true,  // RDB
  true,  // WTA
  true,  // WTB
  true,  // WTC
  false, // MCA
  false, // MCB
  false, // ADD
  false, // SUB
  false, // INA
  false, // DCA
  false, // SLA
  false, // SRA
  false, // AND
  true,  // OUT
  false, // OTC
  true,  // INP
  true,  // JMP
  true,  // JPE
  true,  // JPG
  true,  // JPL
  false  // STP
};





// Vars

int   ProgramCounter;
int[] RAM           ;

int RegisterA ;
int RegisterB ;
int RegisterC ;
int IORegister;
boolean SkipDataFlag;

boolean Running = true ;
boolean Loading = false;



//String[] Settings    ;
int      Scroll   = 0;





// Setup

void setup() {
  
  // Basic setup
  size       (512, 512);
  background (255     );
  frameRate  (30      );
  
  // Loading
  Loading = true;
  thread ("LoadAndRun");
  
}





// Main loop

void draw() {
  
  // Basic setup
  background (255);
  textSize (25);
  
  // Loading
  if (Loading) {
    fill (0);
    text ("Loading...", 5, 25);
    return;
  }
  
  // Program counter
  int CurrentInstruction = RAM [ProgramCounter];
  fill (0);
  if (UseHex) {
    text ("PC: " + hex (ProgramCounter) + ": " + hex (CurrentInstruction), 5, 25);
  } else {
    text ("PC: " + ProgramCounter + ": " + RAM [ProgramCounter], 5, 25);
  }
  if (CurrentInstruction < InstructionNames.length) {
    if (InstructionTakesData [CurrentInstruction]) {
      text ("Instr: " + InstructionNames [CurrentInstruction] + " " + RAM [ProgramCounter + 1], 5, 50);
    } else {
      text ("Instr: " + InstructionNames [CurrentInstruction], 5, 50);
    }
  }
  
  // Stopped?
  int Offset = 3;
  if (!Running) {
    Offset ++;
    text ("CPU stopped", 5, 50);
  }
  
  // RAM
  for (int i = 0; i < RAM.length - Scroll; i ++) {
    if (i + Scroll == ProgramCounter) {
      if (UseHex) {
        text (hex ((i + Scroll)) + ": " + hex (RAM [i + Scroll]) + " <--", 5, (i + Offset) * 25 + 10);
      } else {
        text ((i + Scroll) + ": " + RAM [i + Scroll] + " <--", 5, (i + Offset) * 25 + 10);
      }
    } else {
      if (UseHex) {
        text (hex ((i + Scroll)) + ": " + hex (RAM [i + Scroll]), 5, (i + Offset) * 25 + 10);
      } else {
        text ((i + Scroll) + ": " + RAM [i + Scroll], 5, (i + Offset) * 25 + 10);
      }
    }
  }
  
  // Registers
  if (UseHex) {
    text ("Register A: " + hex (RegisterA), width / 2, 25);
    text ("Register B: " + hex (RegisterB), width / 2, 50);
    text ("Register C: " + hex (RegisterC), width / 2, 75);
  } else {
    text ("Register A: " + RegisterA, width / 2, 25);
    text ("Register B: " + RegisterB, width / 2, 50);
    text ("Register C: " + RegisterC, width / 2, 75);
  }
  
}





// Threads

void Execute() {
  while (Running) {
    ExecuteInstruction();
  }
}



void LoadAndRun() {
  
  // Loading ROM
  if (LoadFromROMDAT) {
    byte[] RAMIn = loadBytes (Directory + "/ROM.dat");
    RAM = new int [RAMIn.length + 1];
    arrayCopy (RAMIn, 0, RAM, 0, RAMIn.length); // src, src position, dst, dst position, length
  } else {
    String[] ROMIn = loadStrings (Directory + "/ROM.txt");
    RAM = new int [ROMIn.length + 1];
    for (int i = 0; i < ROMIn.length; i ++) {
      if (UseHex) {
        RAM [i] = unhex (ROMIn [i]) & 0xFF;
      } else {
        RAM [i] = int (ROMIn [i]) & 0xFF;
      }
    }
  }
  //println ("Length of ROM: " + RAM.length);
  
  // Loading Settings
  //Settings = loadStrings (Directory + "/Settings.txt");
  
  // Starting
  if (AutoRun) {
    thread ("Execute");
  }
  
  // Stop loading
  Loading = false;
  
}










// Insrtuction execution

void ExecuteInstruction() {
  
  int Instruction = RAM [ProgramCounter    ];
  int Data        = RAM [ProgramCounter + 1];
  switch (Instruction) {
    
    
    
    case (1): // STA
      RegisterA = Data;
      break;
    
    case (2): // STB
      RegisterB = Data;
      break;
    
    
    
    case (3): // RDA
      RegisterA = RAM [Data];
      break;
    
    case (4): // RDB
      RegisterB = RAM [Data];
      break;
    
    case (5): // WTA
      RAM [Data] = RegisterA;
      break;
    
    case (6): // WTB
      RAM [Data] = RegisterB;
      break;
    
    case (7): // WTC
      RAM [Data] = RegisterC;
      break;
    
    
    
    case (8): // MCA
      RegisterA = RegisterC;
      break;
    
    case (9): // MCB
      RegisterB = RegisterC;
      break;
    
    
    
    case (10): // ADD
      RegisterC = (RegisterA + RegisterB);
      break;
    
    case (11): // SUB
      RegisterC = (RegisterA - RegisterB);
      break;
    
    case (12): // INA
      RegisterC = (RegisterA + 1);
      break;
    
    case (13): // DCA
      RegisterC = (RegisterA - 1);
      break;
    
    case (14): // SLA
      RegisterC = (RegisterA << 1);
      break;
    
    case (15): // SRA
      RegisterC = (RegisterA >> 1);
      break;
    
    case (16): // AND
      RegisterC = (RegisterA & RegisterB);
      break;
    
    case (17): // OUT
      int OUTData = RAM [Data];
      println (OUTData);
      IORegister = OUTData;
      break;
    
    case (18): // OTC
      int OTCData = RegisterC;
      println (OTCData);
      IORegister = OTCData;
      break;
    
    case (19): // INP
      RAM [Data] = IORegister;
      break;
    
    
    
    case (20): // JMP
      ProgramCounter = (Data - 0x02);
      break;
    
    case (21): // JPE
      if (RegisterA == RegisterB) {
        ProgramCounter = (Data - 0x02);
      }
      break;
    
    case (22): // JPG
      if (RegisterA > RegisterB) {
        ProgramCounter = (Data - 0x02);
      }
      break;
    
    case (23): // JPL
      if (RegisterA < RegisterB) {
        ProgramCounter = (Data - 0x02);
      }
      break;
    
    case (24): // STP
      Running = false;
      break;
    
    
    
  }
  
  if (Instruction < InstructionTakesData.length && InstructionTakesData [Instruction]) {
    ProgramCounter += 0x02;
  } else {
    ProgramCounter += 0x01;
  }
  
}










// Uncallable functions

void keyPressed() {
  if (key == ' ' && Running) {
    ExecuteInstruction();
  }
}



void mouseWheel(MouseEvent Event) {
  float Count = Event.getCount();
  Scroll = max (0, Scroll + (int)Count);
}
