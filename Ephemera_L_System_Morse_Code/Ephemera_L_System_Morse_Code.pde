//L system: text based "Alphabet" or variable(ex "A" and "B", Axiom(beginning ex: "A"),
// recursive way of generating sentenecs over and over again using string placement
// A -> AB, A -> A

//Morse Code Algorythm: “(F” before every {this why you will always start with F} “+” or ”-” ,
//(“.” = “+”), (“-” = “-”), 
//(“ “=open or close brackets”[ or ]”, start with open, then close, and if it doesn’t end with a close and one is open, close it), 
//(“/” or end word is “F” )

float angle;
String axiom = "F";
String sentence = axiom;
int len = 150;
Rule[] rules;

void setup(){
  //fullScreen();
  size(1800,1000);
  
  rules = new Rule[1];
  //rules[0] = new Rule('F', "FF+[+F-F-F]-[-F+F+F]");
  //Below uses the word "Infinity"//
  //rules[0] = new Rule('F', "F+F+[F-F+]F+F+F-F+F+[F+F+]F-F+[F+F+]F-[F-F+F-F-]");
  //below is word "Ephemera"
 // rules[0] = new Rule('F', "F+[F+F-F-F+]F+F+F+F+[F+]F-F-[F+]F+F-F+[F+F-]F+F+[F-F+]F+F+F-F+F+[F+F+]F-F+[F+F+]F-[F-F+F-F-]");
  //rules[0] = new Rule('F', "F+F-F+F[F+F]F+F-F+F+[F+F-F-F+F-F[F+F-F]F+]F+F+F+F+[F+]F-F-[F+]F+F-F+[F+F-]F+F-F+F[F-F-F-F]+[F-F+]F+F+F-F+F+[F+F+F-F-F-F]F-+FFF+[F+F+F-[F-F-F+F-F+]F+]F-[F-F+F-F-]");
  // "meghan sarah mulearn"
   // rules[0] = new Rule('F', "F-F-[F+]F-F-F+[F+F+F+F+]F+F-[F-F+][F+F+F+]F+F-[F+F-F+]F+F-[F+F+F+F+][F-F-]F+F+F-[F+F-F+F+]F+F+F+F+[F+]F+F-[F+F-F+]F-F+");
  //David Lynch
  //rules[0] = new Rule('F', "F-F+F+[F+F-]F+F+F+F-[F+F+]F-F+F+[F]F+F-F+F+[F-F+F-F-]F-F+[F-F+F-F+]F+F+F+F+");
  //Gene Wolfe quote: The would-be sorcerer alone has faith in the efficacy of pure knowledge; rational people know that things act of themselves or not at all.
 // rules[0] = new Rule('F', "F-[F+F+F+F+]F+[F]F+F-F-[F-F-F-]F+F+F-[F+F-F+F+]F-F+F+[F-F+F+F+F+F-]F-F+F+F+[F+]F[F+F+F+]F-F-F-[F+F-F+]F-F+F-F+[F+]F+F-F+[F+]F+F-F+[F]F+F-[F+F-F+F+]F-F-F-[F-F+]F+[F]F+F+F+F+[F+F-]F+F+F+[F]F+F+F-F+[F+F-]F+F+[F-]F+F+F+F+[F]F+F+[F-F+]F[F-]F+F+F+F+[F+]F[F+]F+F+F-F+[F+F+F-F+]F+F+[F-F+F-F+]F+F-[F-F+F-F+]F-F+F-F-[F]F-F-F-[F+F+F-F+]F[F+F-F-F+]F+F+F-[F+F-F+]F+[F]F-F+F-[F-F+]F-F-F-[F+F-F-]F+F-F+F+[F+]F-F+F+[F-F-F+]F+[F-F-F+F+F-F-]F[F+F-F+]F+F-[F-]F+F+[F-F-F-]F-F+[F+F-]F+F-F+F+[F]F+F-F-F+[F+]F-F-F-[F+F-F-F+]F+F-F+F+[F+]F[F-F+F-]F-F+[F-F-F-]F+F-F-[F]F-[F+F+F+F+]F+F-[F-]F[F-]F+F+F+F+[F+F+]F-F+[F-F-F+]F+F+F+[F]F+F-[F-F+F-F+]F-[F]F-F-F-[F+F+F-F+]F[F-]F+F+F+F+[F+]F-F-[F+F+F+]F+[F+F-F+F+]F+F+F+F-[F+]F+F+F+[F]F-F-F-[F+F-F+]F[F-F+]F-F-F-[F-]F[F+F-]F-[F]F+F-[F+F-F+F+]F+F-F+F+[F+F-F+F-F+F-]");
  // lyrics to heart of gold
 //rules[0] = new Rule('F',"F+F+[F]F+F-F-[F+F-]F-F+[F-]F[F-]F-F-F-[F]F+F-F+F+[F+F+]F+F+F+F-[F+]F[F+F+]F[F+F-F-]F+F-[F-F+]F-[F]F-[F-F-F-]F[F-F-F+]F+F+[F+F+F+F-]F+[F]F+F+[F+F-F-F-F-F+]F+F+F+F-[F+]F[F-F+F+F+]F+[F+]F-F+[F]F+F-[F]F-F-[F+F+]F-F+[F+]F+F-F+[F]F+F+F-F+[F-F-F-]F+F-F+[F]F+F-[F]F+F+F+F+[F+]F+F-[F+F-F+]F-[F]F-F-F-[F+F+F-F+]F[F-F-F+]F-F-F-[F+F-F+F+]F-F+F+[F]F+F+[F-]F+F-F-F-F-F+[F+F+F+]F[F-]F+F+F+F+[F+]F+F+F+[F+]F[F+]F-F+F+F-[F+F-F-F+]F+F-F+[F+]F+F+F+[F+F+F+]F+F+[F-F-F-]F-F+[F+F+F+]F[F+F+]F[F-F+]F+[F+F+F+F-]F+[F+F-F+]F[F-F-F+]F+F+[F+F+F+F-]F+[F]F-[F+F+F+F+]F+F-[F-]F[F-F+F-]F+[F+]F+F-F-F+[F]F-F-[F+]F[F+F+F+]F+[F+F-]F+F-F+[F-F+F-F+]F+F+F+F+[F+F+]F-F+[F-F-F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F+F-]F[F+F+F+F+]F+[F+F-]F+F-F+[F-]F[F-F-F-]F+F+F-F+[F]F-F-F+[F-F-F-]F+F-F+F+[F-F+F+]F[F+F-]F-F+[F-F+F+]F[F+F+]F+F-F-F-F-F+[F-F-]F[F-F-F+]F+[F-]F-[F+F+]F-F+[F-F-F+]F[F-F-F-]F+F-F+F+[F-F+F+]F[F-F+F-]F+[F+]F+F-F-F+[F]F-F-[F+]F[F+F+F+]F+[F+F-]F+F-F+[F-F+F-F+]F+F+F+F+[F+F+]F-F+[F-F-F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F+F-]F[F+F+F+F+]F+[F+F-]F+F-F+[F-]F[F-F-F-]F+F+F-F+[F]F-F-F+[F-F-F-]F+F-F+F+[F-F+F+]F[F+F-]F-F+[F-F+F+]F[F+F+]F+F-F-F-F-F+[F-F-]F[F-F-F+]F+[F-]F-[F+F+]F-F+[F-F-F+]F[F-F-F-]F+F-F+F+[F-F+F+]F[F+F+]F+F-F-F-F-F+[F+F+F+F-]F+[F]F-F+F+F+[F+]F+[F-F+]F[F-]F-F-F-[F]F+F+F+F+[F-F-F-]F+F-F+F+[F+F-F+F+]F-F+F-F-[F+F-F-]F-F-F-[F-F-F-]F-F+F+[F]F+F+[F+F-F-F-F-F+]F+F+F+F-[F+]F[F-F+F+F+]F+[F+]F-F+[F]F-[F-F-F-]F[F+F-F+]F+[F-F+F+]F+F-F-[F-F-F-]F-F-F-[F-F+F+]F[F+F+]F[F-F+F-F+]F+F-F+[F-F-F-]F+F+F+[F+F+F+]F+[F-F+F+]F[F-]F+F+F+F+[F+]F[F-F-F-]F-F+F-F+[F+]F+F-[F-F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F+F-]F[F+F+F+F+]F+[F+F-]F+F-F+[F-]F[F-F-F-]F+F+F-F+[F]F-F-F+[F-F-F-]F+F-F+F+[F-F+F+]F[F+F+]F+F-F-F-F-F+[F+F+F+F-]F+[F]F-F+F+F+[F+]F+[F-F+]F[F+F+]F-F+[F]F-F-[F-F+F-F-]F[F-F-]F+F+[F-F+]F-F+F+[F]F+F+[F-]F+F-F-F-F-F+[F+F+F+]F[F+F+F+]F+F+F-[F-F+F-F+]F+F+F+F+[F]F+F-[F]F+F+F-F+[F+F+]F-F+[F+]F[F+F-F+F+]F+F+[F-F+]F+[F]F-[F+F+F+F+]F+F-[F-]F[F-F+F-]F+[F+]F+F-F-F+[F+F+F+]F[F-F-]F+[F]F+F+F+[F+]F+F-[F+F-F+]F-F+F-F+[F+F+F+F+]F+F+[F-F+]F-F-F+[F]F+F+F-F+[F-F-F-]F+F-F+[F]F+F-[F]F+F+F+F+[F+]F+F-[F+F-F+]F-[F]F-F-F-[F+F+F-F+]F[F-F-F+]F-F-F-[F+F-F+F+]F-F+F+[F]F+F-[F-F+]F-F+F+[F]F+F+[F+F-F-F-F-F+]F-F-[F]F-F-F+[F+]F-[F-]F+F+[F-F+]F-F-F+[F]F-F-F-[F+F-F+F+]F-F+F+[F]F-F+F-[F+]F+[F+F-F-F+]F+F+F+[F]F-F-[F+]F[F+F+F+]F+[F+F-]F+F-F+[F-F+F-F+]F+F+F+F+[F+F+]F-F+[F-F-F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F+F-]F[F+F+F+F+]F+[F+F-]F+F-F+[F-]F[F-F-F-]F+F+F-F+[F]F-F-F+[F-F-F-]F+F-F+F+[F-F+F+]F[F+F-]F-F+[F-F+F+]F[F+F+]F+F-F-F-F-F+[F-F-]F[F-F-F+]F+[F-]F-[F+F+]F-F+[F-F-F+]F[F-F-F-]F+F-F+F+[F-F+F+]F[F-F+F-]F+[F+]F+F-F-F+[F]F-F-[F+]F[F+F+F+]F+[F+F-]F+F-F+[F-F+F-F+]F+F+F+F+[F+F+]F-F+[F-F-F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F+F-]F[F+F+F+F+]F+[F+F-]F+F-F+[F-]F[F-F-F-]F+F+F-F+[F]F-F-F+[F-F-F-]F+F-F+F+[F-F+F+]F[F-F+F-F-]F-F-F-[F+F+F-]F[F-F+F-]F+[F+]F+F-F-F+[F]F-F-[F+]F[F+F+F+]F+[F+F-]F+F-F+[F-F+F-F+]F+F+F+F+[F+F+]F-F+[F-F-F+]F[F+F-]F-F+[F-F+F+]F[F+F+]F+F-F-F-F-F+[F-F-]F[F-F-F+]F+F-F+[F-F-F-]F+F-F-[F+F+]F-F+[F-F-F+]F[F-F-F-]F+F-F+F+[F-F+F+]F[F-F+F-]F+[F+]F+F-F-F+[F]F-F-[F+]F[F+F+F+]F+[F+F-]F+F-F+[F-F+F-F+]F+F+F+F+[F+F+]F-F+[F-F-F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F+F-]F[F+F+F+F+]F+[F+F-]F+F-F+[F-]F[F-F-F-]F+F+F-F+[F]F-F-F+[F-F-F-]F+F-F+F+[F-F+F+]F[F+F+]F+F-F-F-F-F+[F+F+F+F-]F+[F]F-F+F+F+[F+]F+[F-F+]F[F+F-]F[F-F-]F+F+[F-F+]F+[F+F-F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F+F-]F[F+F+F+F+]F+[F+F-]F+F-F+[F-]F[F-F-F-]F+F+F-F+[F]F-F-F+[F-F-F-]F+F-F+F+[F-F+F+]");   
   // Charles Brandon Howes
  // rules[0] = new Rule('F', "F-F+F-F+[F+F+F+F+]F+F-[F+F-F+]F+F-F+F+[F+]F+F+F+[F]F-F+F+F+[F+F-F+]F+F-[F-F+]F-F+F+[F-F-F-]F-F+[F]F+F+F+F+[F-F-F-]F+F-F-[F+]F+F+F+");
  //Kathleen Anne Lynch
 //rules[0] = new Rule('F', "F+F+[F]F+F-F-[F+F-]F-F+[F-]F[F-]F-F-F-[F]F+F-F+F+[F+F+]F+F+F+F-[F+]F[F+F+]F[F+F-F-]F+F-[F-F+]F-[F]F-[F-F-F-]F[F-F-F+]F+F+[F+F+F+F-]F+[F]F+F+[F+F-F-F-F-F+]F+F+F+F-");
 //Jennifer Anne Lynch Rodriguez
 //rules[0] = new Rule('F', "F+F-F-F-[F+]F-F+[F-F+]F+F+[F+F+F-F+]F+[F+F-F+]F[F+F-]F-F+[F-F+]F+[F]F+F-F+F+[F-F+F-F-]F-F+[F-F+F-F+]F+F+F+F+[F]F+F-F+[F-F-F-]F-F+F+[F+F-F+]F+F+[F-F-F+]F+F+F-[F+]F-F-F+F+");
 // Julie Mulhearn
  //rules[0] = new Rule('F', "F+F-F-F-[F+F+F-]F+F-F+F+[F+F+]F+[F]F-F-[F+F+F-]F+F-F+F+[F+F+F+F+]F+[F+F-]F+F-F+[F-F+]");
  // Carol Mulhearn
 //rules[0] = new Rule('F', "F-F+F-F+[F+F-]F+F-F+[F-F-F-]F+F-F+F+[F+][F-F-]F+F+F-[F+F-F+F+]F+F+F+F+[F+]F+F-[F+F-F+]F-F+");
 //Kima
   //rules[0] = new Rule('F', "F-F+F-[F+F+]F-F-[F+F-]F-[F+F+F+F+]F+F+[]F-F-[F-F-F-]F-F-F-[F+F-F+]F+");
  //Thomas Edwin Mulhearn
  //rules[0] = new Rule('F', "F-[F+F+F+F+]F-F-F-[F-F-]F+F-[F+F+F+]F[F+]F-F+F+[F+F-F-]F+F+[F-F+]F[F-F-]F+F+F-[F+F-F+F+]F+F+F+F+[F+]F+F-[F+F-F+]F-F+");
  //James Sheehan
 //rules[0] = new Rule('F', "F+F-F-F-[F+F-]F-F-[F+]F+F+F+[F]F+F+F+[F+F+F+F+]F+[F+]F+F+F+F+[F+F-]F-F+");
 //Mary Mclure
 //rules[0] = new Rule('F', "F-F-[F+F-]F+F-F+[F-F+F-F-]F[F-F-]F-F+F-F+[F-F+F-F+]F+F-F+F+[F+F+F-]F+F-F+[F+]");
 //Mary Conforto
  //rules[0] = new Rule('F', "F-F-[F+F-]F+F-F+[F-F+F-F-]F[F-F+F-F+]F-F-F-[F-F+]F+F+F-F+[F-F-F-]F+F-F+[F-]F-F-F-");
  //Terry Latimer-Sheehan
//  rules[0] = new Rule('F', "F-[F+]F+F-F+[F+F-F+]F-F+F-F-[F]F+F-F+F+[F+F-]F-[F+F+]F-F-[F+]F+F-F+[F-F+F+F+F+F-]F+F+F+[F+F+F+F+]F+[F+]F+F+F+F+[F+F-]F-F+");
 // Adrienne Ammerman
  //rules[0] = new Rule('F', "F+F-[F-F+F+]F+F-F+[F+F+]F+[F-F+]F-F+[F+]F[F+F-]F-F-[F-F-]F+[F+F-F+]F-F-[F+F-]F-F+");
  //Liam Sky
  //rules[0] = new Rule('F', "F+F-F+F+[F+F+]F+F-[F-F-]F[F+F+F+]F-F+F-[F-F+F-F-]");
  //Mikey Garcia
  //rules[0] = new Rule('F', "F-F-[F+F+]F-F+F-[F+]F-F+F-F-[F]F-F-F+[F+F-]F+F-F+[F-F+F-F+]F+F+[F+F-]");
  //Becca Lynn Anderson
  //rules[0] = new Rule('F', "F-F+F+F+[F+]F-F+F-F+[F-F+F-F+]F+F-[F]F+F-F+F+[F-F+F-F-]F-F+[F-F+]F[F+F-]F-F+[F-F+F+]F+[F+F-F+]F+F+F+[F-F-F-]F-F+");
  //Elisa Faires
  //rules[0] = new Rule('F', "F+[F+F-F+F+]F+F+[F+F+F+]F+F-[F]F+F+F-F+[F+F-]F+F+[F+F-F+]F+[F+F+F+]");
  //Intro to constitution
 // rules[0] = new Rule('F', "F+F-F-[F+]F[F-]F+F+F+F+[F+]F[F+F-F-F+]F+[F-F-F-]F+F-F-F+[F+F-F+F+]F+[F]F-F-F-[F+F+F-F+]F[F-]F+F+F+F+[F+]F[F+F+F-]F-F+[F+F+]F-[F+]F-F+F+[F]F+F+F+[F-]F+F-[F-]F+[F+F+F+]F-F-F+F+F-F-[F]F+F+[F-F+]F[F-F-F-]F+F-F+[F-F+F+]F+[F+F-F+]F[F-]F-F-F-[F]F+F+F-F+[F-F-F-]F+F-F+[F-F-]F[F+F-]F[F-F-]F-F-F-[F+F-F+]F+[F]F+F-F-F+[F+]F+F-F+[F+F+F-F+]F+[F-F+F-F+]F-[F]F+F+F-[F-F+]F+F+[F-F-F-]F-F+[F-F-F+F+F-F-]F[F+]F+F+F+[F-]F+F-[F-F+F+F+]F+F-F+F+[F+F+]F+F+F+[F+F+F+F+]F[F+F-F-F-]F+F+F-[F+F+F+]F-[F+F+]F-F+F-F+[F+]F-F-F+F+F-F-[F]F+F+[F-F+]F+F+F+[F+F+F-]F+F-F+[F+]F[F-F+F+]F-F-F-[F-F-]F+[F+F+F+]F-[F+F+]F-F+F-F+[F]F-[F+F-F+]F+F-[F-F+]F-F-F+F-[F+F+F-]F+F+[F+F-F+F+]F+F+[F-]F-F+F-F-[F-F-F+F+F-F-]F[F+F-F-F+]F+F-F+[F-F-F-]F+F+F+F-[F+F+]F-F+F+[F+]F[F+F+F-F+]F-F-F-[F+F-F+]F[F-]F+F+F+F+[F+]F[F-F+F-F+]F-F-F-[F-F-]F-F-[F-F-F-]F-F+[F]F-F+F+[F+]F+F+F-F+[F+]F-F+[F-F+F-F+]F+[F-F-F+F+F-F-]F[F+F-F-F+]F+F-F+[F-F-F-]F-F-[F-F-F-]F-[F+]F[F-]F+F+F+F+[F+]F[F-F-F+]F+[F-F+]F+[F+F-F+]F+F-[F+F-F+F+]F[F+F-F-]F+[F+F-F+F+]F+F+F-F+[F+F-]F+F-F+[F+]F-F-F+F+F-F-[F]F+F-[F-F+]F-F+F+[F]F+F+F+[F+]F-F+F-F+[F+F+F-]F+F-F+[F+]F[F-]F+F+F+F+[F+]F[F-F+F+F+]F+F-F+F+[F+]F+F+F+[F+F+F+]F+F+[F-F+]F-F-F+[F+F+F+]F[F-F-F-]F+F+F-F+[F]F+F-F+F+[F+F+]F-F+F+F+[F+]F+F-F+[F-]F-F+F-F-[F]F-[F-F-F-]F[F-F-F-]F+F+F-[F+F-F+]F+F+F+[F+]F+F-F+F+[F+F+F+F-]F+[F+F+F+]F[F+F-]F-F+[F-F+F+]F[F-F-F-]F+F+F-[F+F-F+]F[F+F-F-F+]F-F-F-[F+F+F+]F-[F+]F+F-F+[F+F+]F-[F-F+F-F-]F-F-F+F+F-F-[F]F-F+F+[F-F-F-]F[F-F-F-]F+F-F+[F-F+F+]F+F-[F+F+]F-F+[F]F+F-[F-F+]F-F+F+[F]F+[F+F+F+]F-[F+F-]F-F+F+F+[F+F-F+F+]F+F+[F+F+F+]F+F+F+F+[F]F-[F+F+F+F+]F+F+[F+F+F+]F[F-F+F-F+]F-F-F-[F-F+]F+F+F+[F-]F+F+[F-]F+F+F-[F-]F+F+[F-F-F-]F-F+[F]F+F+F-F+[F-F-F-]F+F-F+[F]F-[F+F+F+F+]F+[F]F+F+F-[F-F+]F+F+[F-]F+[F-F+F+]F[F+F+F+]F-[F+F-]F-[F+]F+F+F+[F]F-F-F-[F+F+F-F+]F[F+F-]F-F-[F+]F+F-F+[F+F+]F-F+F-F+[F+F-]F+F-F+F-F+F-");
  // Tim and Jaclyn
     rules[0] = new Rule('F', "[F-]F+F+[F-F-][F+F-]F-F+[F-F+F+][F+F-F-F-]F+F-[F-F+F-F+]F+F-F+F+[F-F+F-F-]F-F+");
  // Dash and Rae
   // rules[0] = new Rule('F', "F-F+F+[F+F-]F+F+F+[F+F+F+F+][F+F-]F-F+[F-F+F+][F+F-F+]F+F-[F+]");
   //Emily Lynn Tiffany Davis
  // rules[0] = new Rule('F', "F+[F-F-]F+F+[F+F-F+F+]F-F+F-F-[]F+F-F+F+[F-F+F-F-]F-F+[F-F+][F-]F+F+[F+F+F-F+]F+F+F-F+[F+F-]F-F+[F-F+F-F-]F-F+F+F+F+F-[F-F+F+]F+F-[F+F+F+F-]F+F+[F+F+F+]");
  angle = radians(45);
  background(51);
  println(axiom);
  turtle();
  
}

void draw(){
  
}

void mouseClicked(){
  println("click");
  save("TimandJaclyn.png");
  generate();
}


class Rule {
  char a;
  String b;
  Rule(char _a, String _b){
    a = _a;
    b = _b;
  }
}

void generate(){
  len *= 0.5;
  String next_sentence = "";
  for (int i = 0; i < sentence.length(); i++){
    char current = sentence.charAt(i);
    boolean found = false;
    for (int j = 0; j < rules.length; j++){
      if (current == rules[j].a){
        found = true;
        next_sentence += rules[j].b;
        break;
      }
    }
    if (!found){
      next_sentence += current;
    }
  }
  sentence = next_sentence;
  println(sentence);
  turtle();
}

void turtle(){
  background(51);
  resetMatrix(); 
  translate(width/2, height/2);
  stroke(255, 100);
  //stroke(255,0,0);
  //strokeWeight(.0005);
 // scale(.3);
  for (int i = 0; i < sentence.length(); i++) {
    char current = sentence.charAt(i);
    if (current == 'F') {
      line(0, 0, 0, -len);
      translate(0, -len);
    } else if (current == '+') {
      rotate(angle);
      //stroke(255,0,250);
    } else if (current == '-') {
      rotate(-angle);
     // stroke(255,200,0);
    } else if (current == '[') {
      pushMatrix();
    } else if (current == ']') {
      popMatrix();
    }
  }
}
