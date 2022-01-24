void main() async{
  print('hola como andan');  
  int resultado1 = await sumaAsincrona(2, 4);
  int resultado2 = await sumaAsincrona(resultado1, 4);
  int resultado3 = await sumaAsincrona(resultado2, 4);
  print(resultado3);
  print('espero que esten bien');  
  print('espero que esten bien');  
  print('espero que esten bien');  
  print('espero que esten bien');  
  print('espero que esten bien');  
  print('espero que esten bien');  
  print('espero que esten bien');  
}

int sumaSincrona(int a, int b){
  return a+b;
}

Future<int> sumaAsincrona(int a, int b)async{
  return a+ b;
}

