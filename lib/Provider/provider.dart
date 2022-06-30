import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'firebaseSignInMethods.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<FirebaseSignInMethods>(
          create: (_) => FirebaseSignInMethods(),
        ),
      ];
}
