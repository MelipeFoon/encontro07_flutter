import 'package:flutter/material.dart';

class ImgWidget extends StatelessWidget {
  const ImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(
            image: AssetImage('assets/images/image.png'),
            width: 200,
            height: 200),
        Text(
          'Garanta já sua vaga e comece a estudar.',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          'Trabalhe com o que você ama!',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
