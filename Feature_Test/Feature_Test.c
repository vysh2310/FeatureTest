int random_int(void);
char random_char(void);
 
static void Med_Recur(int* depth)
 
{
    float advance;
 
    *depth = *depth + 1;
    advance = 1.0f / (float)(*depth); 
 
 
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
        Med_Recur(&x);     }
    break;
 //Feature 2 added
   
    default:
            //do nothing
   }
}

