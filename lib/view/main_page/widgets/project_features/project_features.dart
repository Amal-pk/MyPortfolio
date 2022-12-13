import 'package:flutter/material.dart';

class ProjectFeatures extends StatelessWidget {
  const ProjectFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Project Features',
        ),
      ),
    );
  }
}
