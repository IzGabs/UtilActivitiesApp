import 'package:flutter/material.dart';

import '../util/rounded_button_generator.dart';

class ShapeMemorizerHome extends StatelessWidget {
  const ShapeMemorizerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shape-Memorizer')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            RoundedButtonGenerator(
              text: 'Rosto',
              onPressed: () {},
            ),
            RoundedButtonGenerator(
              text: 'Costas',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
