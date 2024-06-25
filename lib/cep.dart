import 'package:flutter/material.dart';

class CEP extends StatefulWidget {
  const CEP({super.key});

  @override
  State<CEP> createState() => _CEPState();
}

class _CEPState extends State<CEP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Rua:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text('Número:'),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text('Bairro:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text('Cidade:'),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text('Estado:'),
            SizedBox(
              width: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
