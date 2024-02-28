import 'package:ishci_app/components/buttom1.dart';

import 'package:ishci_app/config/imports.dart';

class BoshSahifa extends StatefulWidget {
  const BoshSahifa({super.key});

  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Input(hindText: "Ishingizni kiriting"),
                  SizedBox(height: 40),
                  Container(
                    height: 184,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.green,
                        image: DecorationImage(
                            image:
                                Image.network("assets/images/rasm.png").image,
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text("Ommabop kategoriyalar",
                          style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      Spacer(),
                      Text("Hammasi",
                          style: TextStyle(
                              color: AppColor.grey2,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button1(name: "Dizayner"),
                          Button1(name: "Dasturchi"),
                          Button1(name: "Kopirayter"),
                          Button1(name: "Video Montajyor"),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button1(name: "Telefon Ustasi"),
                          Button1(name: "Kall operator"),
                          Button1(name: "Video operator"),
                          Button1(name: "Musiqachi"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
