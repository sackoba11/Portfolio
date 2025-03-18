import 'package:portfolio/core/models/competence.dart';

class Domaine {
  final String titre;
  final List<Competence> competences;

  const Domaine({
    required this.titre,
    required this.competences,
  });
}
