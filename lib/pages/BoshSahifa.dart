import 'package:ishci_app/config/imports.dart';

class BoshSahifa extends StatefulWidget {
  const BoshSahifa({super.key});

  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  HomeController homeController = Get.put(HomeController());
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
                      const OmmabobCategory(),
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
                      const MashhurCategory(),
                      const SizedBox(height: 24),
                      ExpansionTile(
                        title: Text("Yaqinda ko'rilganlar",
                            style: TextStyle(
                                color: AppColor.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        trailing: const Icon(Icons.arrow_drop_down),
                        children: [
                          Column(
                              children: List.generate(
                                  homeController.carti.length, (index) {
                            return Kart(carti: homeController.carti[index]);
                          })),
                        ],
                      )
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
