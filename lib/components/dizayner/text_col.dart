import 'package:ishci_app/config/imports.dart';

class text_col extends StatelessWidget {
  String text1;
  String text2;
  text_col({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1,
            style: TextStyle(
                fontSize: 14,
                color: AppColor.grey2,
                fontWeight: FontWeight.w500)),
        Spacer(),
        Text(text2,
            style: TextStyle(
                fontSize: 14,
                color: AppColor.grey,
                fontWeight: FontWeight.w600))
      ],
    );
  }
}
