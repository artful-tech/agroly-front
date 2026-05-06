import 'package:agroly/app/modules/features/home/views/widgets/card_resume.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const CardResume(
          title: 'LOTES ATIVOS',
          value: '3',
          subtitle: 'Em ciclo de plantio',
          valueColor: Colors.green,
        ),
        const CardResume(
          title: 'ALERTAS DE ESTOQUE',
          value: '2',
          subtitle: 'Itens abaixo do mínimo',
          valueColor: Colors.orange,
        ),
      ],
    );
  }
}
