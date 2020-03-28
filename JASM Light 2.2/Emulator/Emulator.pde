// Started 09/15/19

// Last worked on: 03/27/20
// Using JASM Light 2.2



// Settings

String  Directory = "C:/ProcessingPrograms/JASM Light 2.2";
boolean AutoRun   = false                                 ;

boolean LoadFromROMDAT = false;





// Vars

byte   ProgramCounter;
byte[] RAM           ;

byte RegisterA ;
byte RegisterB ;
byte RegisterC ;
byte IORegister;

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
  fill (0);
  text ("PC: " + hex (ProgramCounter) + ": " + hex (RAM [ProgramCounter]), 5, 25);
  
  // Stopped?
  int Offset = 2;
  if (!Running) {
    Offset ++;
    text ("CPU stopped", 5, 50);
  }
  
  // RAM
  for (byte i = 0; i < RAM.length - Scroll; i ++) {
    if (i + Scroll == ProgramCounter) {
      text (hex ((byte)(i + Scroll)) + ": " + hex (RAM[i + Scroll]) + " <--", 5, (i + Offset) * 25 + 10);
    } else {
      text (hex ((byte)(i + Scroll)) + ": " + hex (RAM[i + Scroll]), 5, (i + Offset) * 25 + 10);
    }
  }
  
  // Registers
  text ("Register A: " + hex (RegisterA), width / 2, 25);
  text ("Register B: " + hex (RegisterB), width / 2, 50);
  text ("Register C: " + hex (RegisterC), width / 2, 75);
  
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
    RAM = loadBytes (Directory + "/ROM.dat");
  } else {
    String[] ROMIn = loadStrings (Directory + "/ROM.txt");
    RAM = new byte [ROMIn.length];
    for (int i = 0; i < RAM.length; i ++) {
      RAM [i] = (byte)(unhex (ROMIn [i]) & 0xFF);
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
  
  byte Instruction = RAM [ProgramCounter    ];
  byte Data        = RAM [ProgramCounter + 1];
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
      RegisterC = (byte)(RegisterA + RegisterB);
      break;
    
    case (11): // SUB
      RegisterC = (byte)(RegisterA - RegisterB);
      break;
    
    case (12): // INA
      RegisterC = (byte)(RegisterA + 1);
      break;
    
    case (13): // DCA
      RegisterC = (byte)(RegisterA - 1);
      break;
    
    case (14): // SLA
      RegisterC = (byte)(RegisterA << 1);
      break;
    
    case (15): // AND
      RegisterC = (byte)(RegisterA & RegisterB);
      break;
    
    case (16): // OUT
      byte OUTData = RAM [Data];
      println (OUTData);
      IORegister = OUTData;
      break;
    
    case (17): // OTC
      byte OTCData = RegisterC;
      println (OTCData);
      IORegister = OTCData;
      break;
    
    
    
    case (16): // JMP
      ProgramCounter = (byte)(Data - 0x02);
      break;
    
    case (17): // JPE
      if (RegisterA == RegisterB) {
        ProgramCounter = (byte)(Data - 0x02);
      }
      break;
    
    case (18): // JPL
      if (RegisterA < RegisterB) {
        ProgramCounter = (byte)(Data - 0x02);
      }
      break;
    
    case (19): // JPG
      if (RegisterA > RegisterB) {
        ProgramCounter = (byte)(Data - 0x02);
      }
      break;
    
    case (23): // STP
      Running = false;
      break;
    
    
    
  }
  
  ProgramCounter += 0x02;
  
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
