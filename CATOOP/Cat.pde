class Cat {
  float wt;
  String breed;
  boolean isLongHaired;
  int age;

Cat(){
}
Cat(float wt, String breed){
this.wt =wt;
this.breed = breed;
}
Cat(float wt, String breed, boolean isLongHaired, int age){
this.wt =wt;
this.breed = breed;
this.isLongHaired = isLongHaired;
this.age = age;
println("in cstr");
}

//Methods
void move(){

}

void eat(){
}

void speak(){

}

// setters and getters

void setWt(float wt){
  this.wt =wt;
}
float getWt(){
return wt;
}
  