

import 'dart:ffi';

class Botaocontroller{
  String _texto = '0';
  String? _textoResultado = '';
  double? _valor1 = null;
  double? _valorResultado = null;

  Calculadora({double? num1, double? num2}) {
    _valor1 = num1;   
    _valorResultado = num2;   
  }

  String? get textoResultado => _textoResultado;

  set textoResultado(String? textoR){
    _textoResultado = textoR;
  }

  String? get texto => _texto;


  set texto(String? valor) {
    _texto = valor!;
  }


  double? get num1 => _valor1;


  set num1(double? valor) {
    _valor1 = valor;
  }


  double? get num2 => _valorResultado;


  set num2(double? valor) {
    _valorResultado = valor;

  }

  double soma(double valor1, double valor2){
    return valor1+valor2;
  }

  double divisao(double valor1, double valor2){
    return valor1/valor2;
  }

  double subtracao(double valor1, double valor2){
    return valor1-valor2;
  }

  double multiplicacao(double valor1, double valor2){
    return valor1*valor2;
  }

  void cE(){
    _texto = '0';
    _textoResultado = '';
  }


  void pegandoValoresTexto(String texto){

    switch(texto){
      case '+':
        if(verificarSinais(_texto)==false){
          
          _texto = _texto+texto;
        }
        break;
      case '-':
        if(verificarSinais(_texto)==false){
          _texto = _texto+texto;
        }
        break;
      case '/':
        if(verificarSinais(_texto)==false){
          _texto = _texto+texto;
        }
        break;
      case 'x':
        if(verificarSinais(_texto)==false){
          _texto = _texto+texto;
        }
        break;

      case ',':
        if(verificarSinais(_texto)==false){
          _texto = _texto+texto;
        }
        break;

      default:
        if(verificarZero(_texto)){
          _texto = texto;
        }else{
          _texto = _texto+texto;
        }
        break;
    }
  }

  bool verificarSinais(String texto){
    if(texto[(texto.length)-1]=='+' || texto[(texto.length)-1]=='-' || texto[(texto.length)-1]=='x' || texto[(texto.length)-1]=='/' || texto[(texto.length)-1]==','){
      return true;
    }else{
      return false;
    }
  }

  bool verificarSinaisInCase(String texto){
    if(texto[(texto.length)]=='+' || texto[(texto.length)]=='-' || texto[(texto.length)]=='x' || texto[(texto.length)]=='/' || texto[(texto.length)]==','){
      return true;
    }else{
      return false;
    }
  }

  bool verificarZero(String texto){
    if(texto.length==1 && texto[0]=='0'){
      return true;
    }else{
      return false;
    }
  }

//incompleto
  double fazendoConta(){
    Map<int, String> valores = {};
    int index = 0;
    for(var valor in _texto.split('')){
        if(valor == '+' || valor == '-' || valor == 'x' || valor == '/'){
          valores[index] = valor;
        }
        index++;
    }
    
    index = 0;
    String num1Str = '';
    double num1 = 0;
    double num2 = 0;
    String num2Str = '';

    for(var valor in valores.values){
      int index2 = 0;

      if(valor == 'x'){
        //Pegando numero na frente do x
        if (index>0){
          for(var i = valores.keys.elementAt(index-1); verificarSinaisInCase(_texto[i])!=false; i--){
            index2++;
          }
        }
        

        for(int i = index2; i <= index-1; i++){
          num1Str = num1Str+_texto[i];
        }
        print(num1Str);
        num1 = double.parse(num1Str);
        //
        
        //Pegando valor a tras do x
        index2 = 0;
        for(var i = valores.keys.elementAt(index+1); verificarSinaisInCase(_texto[i])!=false; i++){
          index2++;
        }

        for(int i = index+1; i <= index2-1; i++){
          num2Str = num2Str+_texto[i];
        }
        print(num2Str);
        num2 = double.parse(num2Str);

        _textoResultado = (num1*num2).toString();
        
        print(num1*num2);
        return num1*num2;
      }

      index++;
    }

    return num1*num2;
    print(num1*num2);

  }


  double transformandoValorEmDouble(String valorstr){
    int index = 0;
    for(var textos in valorstr.split('')){
      if(textos==','){
        valorstr.replaceRange(index, index, '.');
        return double.parse(valorstr);
      }
      index++;
    }
    return double.parse(valorstr);
  }
}