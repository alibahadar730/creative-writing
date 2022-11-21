import 'package:creative_writing/all_screens.dart';
import 'package:creative_writing/all_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creative Writing',
      theme: AppTheme.buildTheme(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
