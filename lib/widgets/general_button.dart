import 'package:creative_writing/all_utils.dart';

class GeneralButtons extends StatelessWidget {
  final BuildContextCallback onTap;
  final String text;

  const GeneralButtons({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 240,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.accent)),
        onPressed: () => onTap(context),
        child: Text(text,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }
}
