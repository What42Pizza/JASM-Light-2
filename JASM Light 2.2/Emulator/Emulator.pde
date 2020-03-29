// Started 09/15/19

// Last worked on: 03/27/20
// Using JASM Light 2.2



// Settings

String  Directory = "C:/ProcessingPrograms/JASM Light 2.2";
boolean AutoRun   = false                                 ;

boolean LoadFromROMDAT = false;

boolean Use2SpaceInstructions = false;





// Vars

byte   ProgramCounter;
byte[] RAM           ;

byte RegisterA ;
byte RegisterB ;
byte RegisterC ;
byte IORegister;
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
    byte[] RAMIn = loadBytes (Directory + "/ROM.dat");
    RAM = new byte [RAMIn.length + 1];
    arrayCopy (RAMIn, 0, RAM, 0, RAMIn.length); // src, src position, dst, dst position, length
  } else {
    String[] ROMIn = loadStrings (Directory + "/ROM.txt");
    RAM = new byte [ROMIn.length + 1];
    for (int i = 0; i < ROMIn.length; i ++) {
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
    
    
    
    default:
      SkipDataFlag = true;
      break;
    
    
    
    case (1): // STA
      SkipDataFlag = false;
      RegisterA = Data;
      break;
    
    case (2): // STB
      SkipDataFlag = false;
      RegisterB = Data;
      break;
    
    
    
    case (3): // RDA
      SkipDataFlag = false;
      RegisterA = RAM [Data];
      break;
    
    case (4): // RDB
      SkipDataFlag = false;
      RegisterB = RAM [Data];
      break;
    
    case (5): // WTA
      SkipDataFlag = false;
      RAM [Data] = RegisterA;
      break;
    
    case (6): // WTB
      SkipDataFlag = false;
      RAM [Data] = RegisterB;
      break;
    
    case (7): // WTC
      SkipDataFlag = false;
      RAM [Data] = RegisterC;
      break;
    
    
    
    case (8): // MCA
      SkipDataFlag = true;
      RegisterA = RegisterC;
      break;
    
    case (9): // MCB
      SkipDataFlag = true;
      RegisterB = RegisterC;
      break;
    
    
    
    case (10): // ADD
      SkipDataFlag = true;
      RegisterC = (byte)(RegisterA + RegisterB);
      break;
    
    case (11): // SUB
      SkipDataFlag = true;
      RegisterC = (byte)(RegisterA - RegisterB);
      break;
    
    case (12): // INA
      SkipDataFlag = true;
      RegisterC = (byte)(RegisterA + 1);
      break;
    
    case (13): // DCA
      SkipDataFlag = true;
      RegisterC = (byte)(RegisterA - 1);
      break;
    
    case (14): // SLA
      SkipDataFlag = true;
      RegisterC = (byte)(RegisterA << 1);
      break;
    
    case (15): // AND
      SkipDataFlag = true;
      RegisterC = (byte)(RegisterA & RegisterB);
      break;
    
    case (16): // OUT
      SkipDataFlag = false;
      byte OUTData = RAM [Data];
      println (OUTData);
      IORegister = OUTData;
      break;
    
    case (17): // OTC
      SkipDataFlag = true;
      byte OTCData = RegisterC;
      println (OTCData);
      IORegister = OTCData;
      break;
    
    case (18): // INP
      SkipDataFlag = false;
      RAM [Data] = IORegister;
      break;
    
    
    
    case (19): // JMP
      SkipDataFlag = false;
      ProgramCounter = (byte)(Data - 0x02);
      break;
    
    case (20): // JPE
      SkipDataFlag = false;
      if (RegisterA == RegisterB) {
        ProgramCounter = (byte)(Data - 0x02);
      }
      break;
    
    case (21): // JPL
      SkipDataFlag = false;
      if (RegisterA < RegisterB) {
        ProgramCounter = (byte)(Data - 0x02);
      }
      break;
    
    case (22): // JPG
      SkipDataFlag = false;
      if (RegisterA > RegisterB) {
        ProgramCounter = (byte)(Data - 0x02);
      }
      break;
    
    case (23): // STP
      SkipDataFlag = true;
      Running = false;
      break;
    
    
    
  }
  
  if (SkipDataFlag & !Use2SpaceInstructions) {
    ProgramCounter += 0x01;
  } else {
    ProgramCounter += 0x02;
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
