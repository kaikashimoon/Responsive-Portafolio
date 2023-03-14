import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/IMG_7344.jpeg"),
            ),
            const Spacer(flex: 2),
            Text(
                'Carmen Leon',
                style: Theme.of(context).textTheme.titleMedium
            ),
            const Text(
                'Software Engineer - FullStack Developer - Flutter Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                )
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}