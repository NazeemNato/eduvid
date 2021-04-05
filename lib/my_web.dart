import 'package:eduvid/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class MyWeb  extends StatelessWidget {
  const MyWeb({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Eduvid',
        onGenerateRoute: FluroRoutes.router.generator,
      )
    );
  }
}