import 'package:creative_writing/all_utils.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final Color color;
  final int? maxLength;
  final int? maxLines;
  final String hintText;
  const MyTextField({
    Key? key,
    required this.controller,
    required this.color,
    this.maxLength,
    this.maxLines,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.newline,
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          fillColor: color,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12)),
          )),
    );
  }
}
