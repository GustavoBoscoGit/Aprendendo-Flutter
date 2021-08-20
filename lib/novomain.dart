import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferêcia'),
      ),
      body: Column(
        children: <Widget>[
          Editor(controlador: _controladorCampoNumeroConta, dica: '0000', rotulo: 'Numero da conta'),
          Editor(controlador: _controladorCampoValor, dica: '0.00', rotulo: 'Valor', icone: Icons.monetization_on),
          RaisedButton(
            onPressed: () {
              final int numeroConta = int.parse(_controladorCampoNumeroConta.text);
              final double valor = double.parse(_controladorCampoValor.text);
              if (numeroConta != null && valor != null) {
                final transferenciaCriada = Tranferencia(valor, numeroConta);
                debugPrint('$transferenciaCriada');
              }
            },
            child: Text('Confirmar'),
          ),
        ],
      ),
    );
  }
}

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icone;

  Editor({required this.controlador, required this.rotulo, required this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: Icon(icone),
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class ListaTranferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Tranferencias'),
        ),
        body: Column(
          children: [
            ItemTransferencia(Tranferencia(100.0, 1000)),
            ItemTransferencia(Tranferencia(200.0, 1001)),
            ItemTransferencia(Tranferencia(300.0, 1002)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ));
  }
}

class ItemTransferencia extends StatelessWidget {
  final Tranferencia _tranferencia;

  ItemTransferencia(this._tranferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_tranferencia.valor.toString()),
        subtitle: Text(_tranferencia.numeroConta.toString()),
      ),
    );
  }
}

class Tranferencia {
  final double valor;
  final int numeroConta;

  @override
  String toString() {
    return 'Tranferencia{valor: $valor, numeroConta: $numeroConta}';
  }

  Tranferencia(this.valor, this.numeroConta);
}
