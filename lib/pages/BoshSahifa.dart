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
              constraints: const BoxConstraints(maxWidth: 500),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Input(hindText: "Ishingizni kiriting"),
                  const SizedBox(height: 40),
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
                      const Spacer(),
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
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text("Mashxur kompaniyalar",
                          style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      const Spacer(),
                      Text("Hammasi",
                          style: TextStyle(
                              color: AppColor.grey2,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button1(name: "Evos"),
                          Button1(name: "Cola"),
                          Button1(name: "Akfa"),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button1(name: "Imzo"),
                          Button1(name: "Crafers"),
                          Button1(name: "Artel"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Yaqinda ko'rilganlar",
                          style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      const Icon(Icons.arrow_circle_right_outlined),
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
