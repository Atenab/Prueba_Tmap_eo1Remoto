// Se dibujan circulos de 20 de diámetro y separados unos de otros por 25 pixeles. Se dibujará tantos como 
// quepan en la distanca que va hasta "posH". "tam" es la altura del vertical del rectángulo que se traslada.

float posH, tam;

int numCir; // Número de círculos que se van a dibujar, que depende de "posH" (distancia 
// desde la ccordenada horizontal 0 hasta donde comienza el rectángulo vertical)

float gris; // Variable que se utiliza para el color RGB del rectángulo

void setup(){
size(400,400);
smooth();
}

void draw(){
background(255);
fill(255);
stroke(1);
rect(300,320,50,50);


if(mouseX>300 && mouseX<350 && mouseY>320 && mouseY<370){
  
  fill(255);
  posH=map(mouseX,300,350,0,400);
  
  for(numCir=0; numCir<posH/25; numCir++){
  
  gris=map(numCir,0,posH/25,0,255);
  fill(222,13,219,gris);
  ellipse (0+numCir*25,height/2,20,20);
  }
  
  gris=map(mouseY,320,370,50,255);
  fill(0,0,255,gris);
  noStroke();
  tam=map(mouseY,320,370,0,400);
  rect(posH,height/2-tam/2, 20, tam);

}
}