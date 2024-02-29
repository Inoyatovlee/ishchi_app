import 'package:ishci_app/config/imports.dart';

class Dizayner extends StatefulWidget {
  const Dizayner({super.key});

  @override
  State<Dizayner> createState() => _DizaynerState();
}

class _DizaynerState extends State<Dizayner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dizayner",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: AppColor.grey),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Card(
              color: AppColor.oq,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(NetworkImages.bola),
                          radius: 35,
                        ),
                        const SizedBox(width: 16),
                        const button_tezt(),
                        const Spacer(),
                        Icon(
                          Icons.bookmark_border,
                          color: AppColor.olov,
                          size: 22,
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye,
                              color: AppColor.grey2,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "9:41",
                              style: TextStyle(
                                  color: AppColor.grey2, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(width: 22),
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye,
                              color: AppColor.grey2,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "1164",
                              style: TextStyle(
                                  color: AppColor.grey2, fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "2 500 000 uzs",
                          style: TextStyle(
                              color: AppColor.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
