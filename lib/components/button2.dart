import 'package:ishci_app/config/imports.dart';

// MediaQuery_screenWidth
// ignore: must_be_immutable
class Button2 extends StatelessWidget {
  Function? onTap;
  String? name;
  String image;
  bool dense;

  Button2({
    super.key,
    this.onTap,
    required this.image,
    this.name,
    this.dense = false,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        //agar onTap nullga teng bo;lmasa
        if (onTap != null) {
          onTap!();
        }
      },
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: dense ? 4 : 20, vertical: dense ? 4 : 18),
              height: 82,
              width: screenWidth * 0.20,
              // width: 83,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.1, color: AppColor.grey2),
                  color: AppColor.oq,
                  borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                image,
              )),
          const SizedBox(height: 8),
          Text(
            name!,
            style: TextStyle(
                fontSize: 12,
                color: AppColor.grey,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
