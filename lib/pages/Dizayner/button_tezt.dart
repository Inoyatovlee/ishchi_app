import 'package:ishci_app/config/imports.dart';

class button_tezt extends StatelessWidget {
  const button_tezt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Hunsg Ru Vang ",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.grey),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            SizedBox(
              height: 22,
              width: 78,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColor.oq,
                    //background color of button
                    side: BorderSide(
                      width: 0.1,
                      color: AppColor.grey2,
                    ), //border width and color
                    elevation: 1, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text("9:00|19:00",
                      style: TextStyle(color: AppColor.grey2, fontSize: 12))),
            ),
            SizedBox(
              height: 22,
              width: 78,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColor.oq,
                    //background color of button
                    side: BorderSide(
                      width: 0.1,
                      color: AppColor.grey2,
                    ), //border width and color
                    elevation: 1, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text("Toshkent",
                      style: TextStyle(color: AppColor.grey2, fontSize: 12))),
            ),
          ],
        ),
      ],
    );
  }
}
