import '../all_utils.dart';

typedef BuildContextCallback = void Function(BuildContext context);

const kAppBarTextStyle =
    TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black);
BoxDecoration kBoxDecoration = BoxDecoration(
    color: AppTheme.trackColor,
    border: Border.all(color: Colors.brown, width: 2.5),
    borderRadius: const BorderRadius.all(Radius.circular(15)));
const apiSecretKey = "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";
BoxDecoration kMessageBoxDecoration = BoxDecoration(
    border: Border.all(color: Colors.brown, width: 2),
    borderRadius: const BorderRadius.all(Radius.circular(15)));
