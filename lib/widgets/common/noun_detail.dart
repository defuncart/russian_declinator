import 'package:flutter/material.dart';
import 'package:russian_declinator/services/databases/database.dart' show Noun;

class NounDetail extends StatelessWidget {
  const NounDetail({
    required this.noun,
    Key? key,
  }) : super(key: key);

  final Noun noun;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(noun.bare),
    );
  }
}
