import 'package:creative_writing/all_screens.dart';
import 'package:creative_writing/all_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Creative Writing',
      theme: AppTheme.buildTheme(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
