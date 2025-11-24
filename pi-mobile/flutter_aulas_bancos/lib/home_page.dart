import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerTarefa = TextEditingController();
  final List<String> _tarefas = [];

  @override
  void initState() {
    super.initState();
    carregarTarefas();
  }

  void carregarTarefas() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? tarefaJson = pref.getString('tarefas');
    if (tarefaJson != null) {
      List<dynamic> tarefaList = json.decode(tarefaJson);
      setState(() {
        _tarefas.clear();
        _tarefas.addAll(tarefaList.map((e) => e.toString()).toList());
      });
    }
  }

  void salvarTarefa() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String tarefaJson = json.encode(_tarefas);
    await pref.setString('tarefas', tarefaJson);
  }

  void removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
    salvarTarefa();
  }

  void addtarefa() {
    setState(() {
      _tarefas.add(_controllerTarefa.text);
    });
    salvarTarefa();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          'https://img.icons8.com/ios-filled/50/000000/task.png',
          color: Colors.white,
          scale: 1.5,
        ),
        title: Column(
          children: [
            Text('Lista de tarefas', style: TextStyle(color: Colors.white)),
            Text(
              'Gerencie suas tarefas diárias',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: _controllerTarefa,
                decoration: InputDecoration(
                  labelText: 'Digite uma tarefa',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira uma tarefa';
                  }
                  return null;
                },
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                addtarefa();
                _controllerTarefa.clear();
              }
            },
            child: Container(
              width: double.infinity,
              height: 40,
              color: Colors.indigo,
              margin: EdgeInsets.only(left: 8, right: 8),
              child: Center(
                child: Text(
                  'Adicionar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tarefas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(
                    'https://img.icons8.com/ios-filled/50/000000/task.png',
                    color: Colors.indigo,
                  ),
                  title: Text(
                    _tarefas[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Clique na lixeira para remover'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.indigo),
                    onPressed: () {
                      removerTarefa(index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
