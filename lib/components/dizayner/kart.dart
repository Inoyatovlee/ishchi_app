import 'package:ishci_app/config/imports.dart';

// ignore: must_be_immutable
class Kart extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var carti;
  Kart({
    super.key,
    required this.carti,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GestureDetector(
            onTap: () {
              Get.to(const Foydalanuvchi());
            },
            child: Card(
              color: AppColor.oq,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Image border
                        child: SizedBox.fromSize(
                          // Image radius
                          child: Image.network(
                            carti["profile_img"],
                            height: 84,
                            width: 64,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(carti["name"],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.grey,
                              height: 2.2)),
                      subtitle: Row(children: [
                        SizedBox(
                            height: 22,
                            width: 78,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    side: BorderSide(
                                        width: 0.1, color: AppColor.grey2),
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text(carti["time_botton"],
                                    style: TextStyle(
                                        color: AppColor.grey2, fontSize: 12)))),
                        SizedBox(
                            height: 22,
                            width: 78,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: AppColor.oq,
                                    side: BorderSide(
                                        width: 0.1, color: AppColor.grey2),
                                    elevation: 1, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text(carti["region"],
                                    style: TextStyle(
                                        color: AppColor.grey2, fontSize: 12)))),
                      ]),
                      trailing: Icon(Icons.bookmark_border,
                          color: AppColor.olov, size: 22),
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: [
                            Icon(Icons.remove_red_eye,
                                color: AppColor.grey2, size: 18),
                            const SizedBox(width: 4),
                            Text(carti["time"],
                                style: TextStyle(
                                    color: AppColor.grey2, fontSize: 12)),
                            const SizedBox(width: 22),
                            Icon(Icons.remove_red_eye,
                                color: AppColor.grey2, size: 18),
                            const SizedBox(width: 4),
                            Text(carti["eye"],
                                style: TextStyle(
                                    color: AppColor.grey2, fontSize: 12)),
                          ],
                        ),
                        const Spacer(),
                        Text(carti["summa"],
                            style: TextStyle(
                                color: AppColor.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
