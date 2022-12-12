import 'package:creative_writing/all_utils.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = 'WelcomeScreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController inputTextController = TextEditingController();
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      appBar: const AppBarWidget(text: 'Creative Writes'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: kBoxDecoration,
                child: MyTextField(
                    controller: inputTextController,
                    color: Colors.white,
                    hintText: 'Enter Text...',
                    maxLength: 50,
                    maxLines: 2),
              ),
              const SizedBox(height: 15),
              GeneralButtons(onTap: (context) {}, text: 'Start'),
              const SizedBox(height: 15),
              Expanded(
                child: Container(
                  decoration: kBoxDecoration.copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
