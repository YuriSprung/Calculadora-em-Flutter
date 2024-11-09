

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
    this._texto = this._texto+texto;
  }
}