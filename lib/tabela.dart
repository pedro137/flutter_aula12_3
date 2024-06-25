import 'package:flutter/material.dart';

class Tabela extends StatelessWidget {
  const Tabela({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(100),
          1: FlexColumnWidth(),
          2: FlexColumnWidth(),
        },
        children: const <TableRow>[
          TableRow(
            children: <Widget>[
              Text(
                'Produto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Quantidade'),
              Text('Total'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('Jogo war'),
              Text('1'),
              Text('R\$ 99,99'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('Mouse gamer'),
              Text('2'),
              Text('R\$ 199,98'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('Teclado mecânico'),
              Text('1'),
              Text('R\$ 299,99'),
            ],
          ),
        ],
      ),
    );
  }
}
