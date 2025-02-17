import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/view/home_view.dart';

import 'blocs/home_bloc.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: const HomeView(),
      ),
    );
  }
}
