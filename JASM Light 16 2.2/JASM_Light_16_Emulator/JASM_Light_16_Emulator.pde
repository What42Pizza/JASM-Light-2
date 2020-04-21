// Started: 04/19/20



// Settings:

String InputFileName = "ROM.txt";
String InputType = "dec";
//Types of input:
//  dec    (writtin in decimal)
//  hex    (writtin in headecimal)
//  byte   (.dat file)
//  binary (writtin in binary)
String Directory = "C:/ProcessingPrograms/JASM Light 16 2.2";
int RAMSize = 65536;

boolean DEBUG_Step = false;





// Classes

BYTE B = new BYTE();
SHORT S = new SHORT();





// Setup

void setup() {
  
  
  
  // Basic setup
  
  size (256, 224);
  frameRate (60);
  background (255);
  
  
  
  Init();
  
  if (!DEBUG_Step) {
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
  if (!Stepping) {
    exit();
  }
}





// Uncallable functions

void keyPressed() {
  if (DEBUG_Step && key == ' ') {
    StepCPU();
    println (ALUA + " " + ALUB + " " + ALUC);
  }
}
