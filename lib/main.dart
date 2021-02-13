import 'package:flutter/material.dart';
import 'package:nubank_clone/card_component.dart';
import 'package:nubank_clone/card_option_component.dart';
import 'package:nubank_clone/header_component.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(156, 68, 220, 1),
        canvasColor: Color.fromRGBO(156, 68, 220, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class CreditCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.credit_card,
              color: Colors.grey[700],
              size: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Cartão de crédito',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Text(
            'Fatura atual',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          'R\$\ 700,50',
          style: TextStyle(
            fontSize: 25,
            color: Colors.lightBlue[700],
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: <Widget>[
              Text(
                'Limite disponivel',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[900],
                ),
              ),
              Text(
                ' R\$\ 723,60',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.monetization_on_outlined,
              color: Colors.grey[700],
              size: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Conta',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Text(
            'Saldo atual',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          'R\$\ 700,50',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class LoanCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.attach_money_rounded,
              color: Colors.grey[700],
              size: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Emprestimo',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Text(
                  'Valod disponivel até',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[900],
                  ),
                ),
              ),
              Text(
                'R\$\ 70.000,00',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RaisedButton(
                onPressed: () {},
                elevation: 0,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                child: Text(
                  'SIMULAR EMPRESTIMO',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget _insertPaddingVertical(Widget widget) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 10), child: widget);
  }

  Widget _insertPaddingHorizontal(Widget widget) {
    return Padding(padding: EdgeInsets.only(right: 10), child: widget);
  }

  List<Widget> _constructListCards() {
    final List<Widget> cards = [
      CardComponent(child: CreditCardComponent()),
      CardComponent(child: AccountCardComponent()),
      CardComponent(child: LoanCardComponent()),
    ];

    return cards.map((card) => this._insertPaddingVertical(card)).toList();
  }

  List<Widget> _contructListOptionsCards() {
    final List<Widget> cards = [
      CardOptionComponent(Icons.people_alt, 'Idenficar amigos'),
      CardOptionComponent(Icons.monetization_on, 'Transferir'),
      CardOptionComponent(Icons.sd_card, 'Recarregar celular'),
      CardOptionComponent(Icons.accessibility_new, 'Não tem os icones certos'),
      CardOptionComponent(Icons.ac_unit, 'Imroviso'),
    ];

    int count = 0;

    return cards.map((card) {
      if (count == cards.length - 1) {
        return card;
      }
      count++;
      return this._insertPaddingHorizontal(card);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Stack(
            children: <Widget>[
              HeaderComponent(),
              Container(
                height: MediaQuery.of(context).size.height * 0.99,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.11,
                  bottom: MediaQuery.of(context).size.height * 0.21,
                ),
                child: ListView(
                  children: this._constructListCards(),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.75,
                  ),
                  height: MediaQuery.of(context).size.height * 0.25,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: this._contructListOptionsCards(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
