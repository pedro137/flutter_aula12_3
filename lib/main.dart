import 'package:flutter/material.dart';
import 'tabela.dart';
import 'cep.dart';
import 'pagamento.dart';

void main() {
  runApp(const TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Sample'),
      ),
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: <Widget>[
                Tab(text: 'Produtos'),
                Tab(text: 'Endereço'),
                Tab(text: 'Pagamento'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Tabela(),
                  CEP(),
                  Pagamento(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
