import 'package:ishci_app/config/imports.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String text;
  Function? onTap;
  bool dense;
  Button({
    super.key,
    this.text = "Text",
    this.dense = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //agar onTap nullga teng bo;lmasa
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: dense ? 12 : 20, vertical: dense ? 10 : 18),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: AppColor.green, borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
