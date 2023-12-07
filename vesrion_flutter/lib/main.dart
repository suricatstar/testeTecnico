import 'package:flutter/material.dart';

int somatic = 0;
Null Divisiveis(int numero) {
  int somatorio = 0;
  for (int i = 3; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }

  somatic = somatorio;
}

void main() {
  runApp(MyApp());
}

final TextEditingController valor = TextEditingController();

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Somatório em Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: valor,
                decoration: InputDecoration(
                    hintText: 'Digite um valor:',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8)),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int val = int.tryParse(valor.text)!;
                      Divisiveis(val);
                    });
                  },
                  child: Text('Calcular')),
              Container(
                margin: EdgeInsets.all(8),
                child: Text('O resultado é: $somatic'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
