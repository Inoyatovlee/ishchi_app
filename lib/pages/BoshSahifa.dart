import 'package:ishci_app/config/imports.dart';

class BoshSahifa extends StatefulWidget {
  const BoshSahifa({super.key});

  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 500),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                image: Image.network("assets/images/rasm.png")
                                    .image,
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
                              Button1(
                                name: "Dizayner",
                                image: NetworkImages.qalam,
                                onTap: () {
                                  Get.to(const Dizayner2());
                                },
                              ),
                              Button1(
                                  name: "Dasturchi",
                                  image: NetworkImages.kompyuter),
                              Button1(
                                  name: "Kopirayter",
                                  image: NetworkImages.kitob),
                              Button1(
                                  name: "Video Montajyor",
                                  image: NetworkImages.video)
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button1(
                                  name: "Telefon Ustasi",
                                  image: NetworkImages.telefon),
                              Button1(
                                  name: "Kall operator",
                                  image: NetworkImages.homeTel),
                              Button1(
                                  name: "Video operator",
                                  image: NetworkImages.operator),
                              Button1(
                                  name: "Musiqachi",
                                  image: NetworkImages.musiqa)
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
                              Button1(name: "Evos", image: NetworkImages.evos),
                              Button1(name: "Cola", image: NetworkImages.cola),
                              Button1(name: "Akfa", image: NetworkImages.akfa),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button1(name: "Imzo", image: NetworkImages.imzo),
                              Button1(
                                  name: "Crafers",
                                  image: NetworkImages.crafers),
                              Button1(
                                  name: "Artel", image: NetworkImages.artel),
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
      },
    );
  }
}
