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
    return Container(
      height: 45,
      width: 120,
      decoration: kBoxDecoration.copyWith(color: Colors.green),
      child: GestureDetector(
        onTap: () => onTap(context),
        child: Text(
            textAlign: TextAlign.center,
            text,
            style: const TextStyle(fontSize: 30, color: Colors.black)),
      ),
    );
  }
}
