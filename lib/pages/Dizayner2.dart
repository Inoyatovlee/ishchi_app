import 'package:ishci_app/config/imports.dart';

class Dizayner2 extends StatefulWidget {
  const Dizayner2({super.key});

  @override
  State<Dizayner2> createState() => _Dizayner2State();
}

class _Dizayner2State extends State<Dizayner2> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Dizayner",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.grey),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
                children: List.generate(homeController.carti.length, (index) {
              return Kart(carti: homeController.carti[index]);
            })),
          ),
        ),
      );
    });
  }
}
