import 'package:portfolio/core/models/domaine.dart';

import '../models/competence.dart';
import '../models/custom_service.dart';
import '../models/project.dart';
import 'app_assets.dart';
import 'app_strings.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const String cvLink =
      'https://drive.google.com/uc?id=1ITN6reINiIaM-6j3QqxrwtvADZgLNvwB';
  //Domaines
  static const List<Domaine> domaines = [
    Domaine(titre: AppStrings.langages, competences: langages),
    Domaine(titre: AppStrings.frontend, competences: framework),
    Domaine(titre: AppStrings.backend, competences: backend),
    Domaine(titre: AppStrings.methodologies, competences: methodologies),
  ];

  //Competences
  static const List<Competence> langages = [
    Competence(competence: 'Dart', logo: AppAssets.dart),
    Competence(competence: 'JavaScript', logo: AppAssets.javascript),
    Competence(competence: 'TypeScript', logo: AppAssets.typescript),
    Competence(competence: 'Python', logo: AppAssets.python),
    Competence(competence: 'SQL', logo: AppAssets.sql),
    Competence(competence: 'Java', logo: AppAssets.java),
  ];
  static const List<Competence> framework = [
    Competence(competence: 'Flutter', logo: AppAssets.flutter),
    Competence(competence: 'React Js', logo: AppAssets.react),
    Competence(competence: 'Styled Components', logo: AppAssets.styled),
  ];
  static const List<Competence> backend = [
    Competence(competence: 'Firebase', logo: AppAssets.firebase),
    Competence(competence: 'MongoDB', logo: AppAssets.mongodb),
    Competence(competence: 'PostgreSQL', logo: AppAssets.postgresql),
    Competence(competence: 'REST API', logo: AppAssets.rest),
    Competence(competence: 'GraphQL', logo: AppAssets.graphql),
    Competence(competence: 'GCP', logo: AppAssets.google)
  ];
  static const List<Competence> methodologies = [
    Competence(competence: 'Git, GitHub', logo: AppAssets.github),
    Competence(competence: 'Docker', logo: AppAssets.docker),
    Competence(competence: 'Agile', logo: AppAssets.agile)
  ];

  // Services
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description:
          'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
    ),
    CustomService(
      service: 'WEB SCRAPING',
      logo: AppAssets.scrappingLogo,
      description:
          'I can collect content and data from the internet then manipulate and analyze as needed.',
    ),
  ];

  //Projects
  static const List<Project> projects = [
    Project(
      name: 'Mobility',
      imageUrl:
          'https://drive.google.com/uc?id=1ITN6reINiIaM-6j3QqxrwtvADZgLNvwB',
      description:
          'A football application to display all related matches and rankings in all international and local tournaments',
      githubRepoLink: 'https://github.com/sackoba11/mobility',
      // previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    Project(
      name: 'Dashboard Mobility with Flutter',
      imageUrl:
          'https://drive.google.com/uc?id=1qNFCNYdUo7o36ythQtjaSrv7L0NV_Vnv',
      description:
          'Social media application for share posts and stories with people, One-to-one chat, Share reels videos',
      githubRepoLink: 'https://github.com/sackoba11/mobilitydashboard',
      // previewLink: 'https://youtu.be/MuuVjqrR49g',
    ),
    Project(
      name: 'Mobility Admin with React',
      imageUrl:
          'https://drive.google.com/uc?id=1yQtoq-wjVejWPXRI7gzGMXPUZrRob8kY',
      description: 'An application to explore books and view their details.',
      githubRepoLink: 'https://github.com/sackoba11/mobilityAdmin',
      // previewLink: 'https://youtu.be/3nU_dYjsPsg',
    ),
    Project(
      name: 'ChatBox',
      imageUrl:
          'https://drive.google.com/uc?id=1SypuIPVdokg0O4DYoYdswRowlIJAGgIq',
      description:
          'An application for download videos from tiktok and save it to gallery.',
      githubRepoLink: 'hhttps://github.com/sackoba11/chatbox',
      // previewLink: 'https://youtu.be/mWeA625pcrI',
    ),
    Project(
      name: 'Contacts',
      imageUrl:
          'https://drive.google.com/uc?id=1hd7U3HgoDqXEi9eDKYjrY9iqlWa6qt8E',
      description:
          'An Desktop program for process images and apply some filters to them.',
      githubRepoLink: 'https://github.com/sackoba11/contact',
      // previewLink: 'https://youtu.be/s1KFdBKNFig',
    ),
    Project(
      name: 'Site web of fcda',
      imageUrl:
          'https://drive.google.com/uc?id=1hd7U3HgoDqXEi9eDKYjrY9iqlWa6qt8E',
      description:
          'An Desktop program for process images and apply some filters to them.',
      githubRepoLink: 'https://github.com/sackoba11/Site_web_of_fcda',
      // previewLink: 'https://youtu.be/s1KFdBKNFig',
    ),
    // Project(
    //   name: 'Salat al janazah',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1UpCGckOS46GdTuHU4wuj7Abo_97gxe_E',
    //   description:
    //       'An application for add janazah prayer and view the prayers for nearby people',
    //   googlePlay:
    //       'https://play.google.com/store/apps/details?id=com.SJY.salataljanaza',
    //   previewLink: 'https://youtu.be/wK9Y9BhP190',
    // ),
    // Project(
    //   name: 'Ghaslah',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ed4H2-cH6yk_kVkDdxOLcUkgP1xpuo72',
    //   description:
    //       'An application for add wash cars reservation with location in map and the picker will come to wash the cars',
    //   previewLink: 'https://youtu.be/gkeRSAfCZaI',
    // ),
    // Project(
    //   name: 'Zawilan',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ElTwguynMLqhS295-IE7bTTabsZGZp8s',
    //   description:
    //       'Zwailan is an education app based on units and sections system, you start by sign up on app and wait until the teacher accept your join request.',
    //   previewLink: 'https://youtu.be/g92W-SmfkKc',
    //   googlePlay:
    //       'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    // ),
  ];
}
