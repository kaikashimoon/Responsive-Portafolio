import 'package:flutter/material.dart';
import 'package:portafolio/screens/home/components/project_card.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style:  Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demo_projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:  3,
              childAspectRatio: 1.3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding
          ),
          itemBuilder: (context, index) =>
              ProjectCard(
                project: demo_projects[index],
              ),
        ),
      ],
    );
  }
}