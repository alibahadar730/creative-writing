import 'package:creative_writing/all_utils.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Widget? leading;

  @override
  final Size preferredSize;
  const AppBarWidget({Key? key, required this.text, this.leading})
      : preferredSize = const Size.fromHeight(60),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppTheme.wintergreen,
        centerTitle: true,
        title: Text(text, style: kAppBarTextStyle),
        leading: leading);
  }
}
