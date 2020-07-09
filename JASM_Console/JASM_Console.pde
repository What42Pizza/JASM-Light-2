// Started: ------ 04/19/20
// Last worked on: 04/22/20



// Settings:

String InputFileName = "ROM.txt";
String InputType = "dec";
//Types of input:
//  dec    (writtin in decimal)
//  hex    (writtin in headecimal)
//  byte   (.dat file)
//  binary (written in binary)
String Directory = "C:/ProcessingPrograms/JASM Console";
int RAMSize = 65536; // 16 KB

boolean DEBUG_WaitForStep = true;



// Vars

BYTE B = new BYTE();
SHORT S = new SHORT();





// Setup

void setup() {
  
  
  
  // Basic setup
  
  size (1024, 896);
  frameRate (60);
  background (255);
  
  
  
  Init();
  
  if (!DEBUG_WaitForStep) {
    thread("RunCPU");
  }
  
}





// Callable functions

void Init() {
  
  RAM = new short [RAMSize];
  
  switch (InputType) {
    
    case ("dec"):
      LoadDec(Directory + '/' + InputFileName);
      break;
    
    case ("hex"):
      LoadHex(Directory + '/' + InputFileName);
      break;
    
    case ("byte"):
      LoadByte(Directory + '/' + InputFileName);
      break;
    
    case ("binary"):
      LoadBinary(Directory + '/' + InputFileName);
      break;
    
    default:
      println ("Error: Input type " + '"' + InputType + '"' + " was not understood.");
      break;
    
  }
  
}





void draw() {
  if (!SteppingFlag) {
    exit();
  }
}





// Uncallable functions

void keyPressed() {
  if (DEBUG_WaitForStep && key == ' ') {
    StepCPU();
    println (ALUA + " " + ALUB + " " + ALUC);
  }
}
