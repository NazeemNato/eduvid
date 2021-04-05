import 'package:flutter/material.dart';

import 'my_web.dart';
import 'routes/routes.dart';

void main(){
  FluroRoutes.setupRouter();
  runApp(MyWeb());
}