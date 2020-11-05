import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

List _list = ["fazer algo1", "fazer algo 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"), centerTitle: true,
        backgroundColor: Colors.purple[500],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Adicioanr Tarefa"),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: "Digite Sua Tarefa"
                  ),
                  onChanged: (text){
                  },
                ),
                actions: <Widget>[
                  FlatButton(
                    onPressed: ()=> Navigator.of(context).pop(), 
                    child: Text("Cancelar")
                    ),
                    FlatButton(
                    onPressed: (){

                      Navigator.of(context).pop();
                    }, 
                    child: Text("Salvar")
                    )
                ],
              );
            }
          );
        },
        backgroundColor: Colors.purple[500],
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(_list[index]),
                );
              }
              )
          )
        ],
      ),
    );
  }
}