import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Formulário'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Form(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextField(
                label: 'Nome',
                hint: 'Digite seu nome',
                icon: Icons.person,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: 'Sobrenome',
                hint: 'Digite seu sobrenome',
                icon: Icons.person,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label:'Telefone',
                hint: 'Digite seu telefone',
                icon:  Icons.phone,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: 'E-mail',
                hint: 'Digite seu email',
                icon: Icons.mail
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: 'Senha',
                hint: 'Digite sua senha',
                icon: Icons.lock
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: 'Confirme sua Senha',
                hint: 'Confime sua senha',
                icon: Icons.lock
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 130,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.save),
                  label: Text('Salvar')
                  ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 130,
                height: 50,
                child: ElevatedButton.icon(
                  style:ElevatedButton.styleFrom(
                    primary: Colors.red
                  ),
                  onPressed: (){},
                  icon: Icon(Icons.clear),
                  label: Text('Limpar')
                  ),
              )
            ],
          ),
        ),
      ) 
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData? icon;
  final String? hint;
  const CustomTextField({ Key? key, required this.label, this.icon, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        prefixIcon: icon == null ? null: Icon(icon)
      ),
    );
  } 
}