int random_int(void);
char random_char(void);
 
static void Med_Recur(int* depth)
 
{
    float advance;
 
    *depth = *depth + 1;
    advance = 1.0f / (float)(*depth);  /* polyspace Defect:USELESS_WRITE "this is not an issue" */
 
 
    if (*depth < 50) {
        Med_Recur(depth);
    }
} 
 
static void Med_scan_caller(void) {
    int x = random_int();
    char button = random_char();
 
 switch(button){
  //Feature 1 added
   case 1:  
     x = 10;
    if (random_int() > 0) {
        Med_Recur(&x);}
    break;

    case 2: 
 
    //add case2
    break;
    
    default:
            //do nothing here
   }
}

