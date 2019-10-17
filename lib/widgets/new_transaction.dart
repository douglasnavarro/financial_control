import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController =  TextEditingController();

  NewTransaction(this.addTx);

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
                decoration:
                    InputDecoration(labelText: 'Nome da transação'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Valor'),
                controller: amountController,
              ),
              FlatButton(
                child: Text('Adicionar transação'),
                textColor: Colors.blue,
                onPressed: () {
                  addTx(titleController.text, double.parse(amountController.text));
                },
              )
            ],
          ),
        ));
  }
}
