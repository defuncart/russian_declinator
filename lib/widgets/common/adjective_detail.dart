import 'package:flutter/material.dart';
import 'package:russian_declinator/services/databases/database.dart' show Adjective;

class AdjectiveDetail extends StatelessWidget {
  const AdjectiveDetail({
    required this.adjective,
    Key? key,
  }) : super(key: key);

  final Adjective adjective;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(adjective.bare),
    );
  }
}
