import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledges',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        KnowlodgeText(
          text: 'JavaScript, TypeScript, Angular',
        ),
        KnowlodgeText(
          text: 'NodeJs, Express, Fastify',
        ),
        KnowlodgeText(
          text: 'Firebase, MongoDB',
        ),
        KnowlodgeText(
            text: 'Git'
        ),
      ],
    );
  }
}

class KnowlodgeText extends StatelessWidget {
  const KnowlodgeText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(
              width: defaultPadding / 2
          ),
          Text(
              text
          ),
        ],
      ),
    );
  }
}