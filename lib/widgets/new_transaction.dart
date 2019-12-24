import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Nome da transação'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Valor'),
                controller: amountController,
                keyboardType: TextInputType.number,
              ),
              FlatButton(
                child: Text('Adicionar transação'),
                textColor: Colors.blue,
                onPressed: () {
                  widget.addTx(titleController.text,
                      double.parse(amountController.text));
                },
              )
            ],
          ),
        ));
  }
}
