import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  String _selectedPaymentMethod = 'Cartão de crédito';

  void _onPaymentMethodChanged(String? newValue) {
    setState(() {
      _selectedPaymentMethod = newValue!;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:
            Text('Método de pagamento selecionado: $_selectedPaymentMethod'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Método:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: _selectedPaymentMethod,
          onChanged: _onPaymentMethodChanged,
          items: <String>['Cartão de crédito', 'Pix', 'Dinheiro']
              .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
