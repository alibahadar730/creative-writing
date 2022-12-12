import '../all_utils.dart';

typedef BuildContextCallback = void Function(BuildContext context);

const kAppBarTextStyle =
    TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black);
BoxDecoration kBoxDecoration = BoxDecoration(
    color: AppTheme.trackColor,
    border: Border.all(color: Colors.brown, width: 2.5),
    borderRadius: const BorderRadius.all(Radius.circular(15)));
