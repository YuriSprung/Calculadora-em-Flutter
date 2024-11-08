import 'package:calculadora/BotaoController.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TelaCalculadora extends StatelessWidget{
  TelaCalculadora({super.key});
  Botaocontroller btC = new Botaocontroller();

  @override
  Widget build(BuildContext context) {
    


    return Scaffold(  
      
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculadora'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(bottom: 20, right: 20),
            child: Text(
              '${btC.textoResultado}',
              style: const TextStyle(fontSize: 20.0,
              color: Color.fromRGBO(128, 128, 128, 90)),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              '${btC.texto}',
              style: const TextStyle(
                fontSize: 48.0
              )), 
              
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.only(bottom: 20.0),
            child:
            Row(
              children: [
                Transform.translate(
                  offset: const Offset(30, 0), // 30 pixels para a direita (x: 30, y: 0)
                  child: ElevatedButton(
                    onPressed: () {
                      // Ação do botão
                    },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)), child: const Text('CE', style: TextStyle(fontSize: 24),),
                  )
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  btC.pegandoValores('7');
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('7', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('8', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('9', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('/', style: TextStyle(fontSize: 24.0)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('4', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('5', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('6', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('+', style: TextStyle(fontSize: 24.0)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('1', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('2', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('3', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('-', style: TextStyle(fontSize: 24.0)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, child: const Text(',', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('0', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('x', style: TextStyle(fontSize: 24.0)),
                ),
                ElevatedButton(onPressed: (){
                  //ação do botao
                }, style: ElevatedButton.styleFrom(padding: const EdgeInsets.only(top: 15, bottom: 15)), child: const Text('=', style: TextStyle(fontSize: 24.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}