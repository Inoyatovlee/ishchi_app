import 'package:ishci_app/components/button2.dart';
import 'package:ishci_app/config/imports.dart';

class OmmabobCategory extends StatelessWidget {
  const OmmabobCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button2(
              name: "Dizayner",
              image: NetworkImages.qalam,
              onTap: () {
                Get.to(const Dizayner2());
              },
            ),
            Button2(name: "Dasturchi", image: NetworkImages.kompyuter),
            Button2(name: "Kopirayter", image: NetworkImages.kitob),
            Button2(name: "Video Montajyor", image: NetworkImages.video)
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button2(name: "Telefon Ustasi", image: NetworkImages.telefon),
            Button2(name: "Kall operator", image: NetworkImages.homeTel),
            Button2(name: "Video operator", image: NetworkImages.operator),
            Button2(name: "Musiqachi", image: NetworkImages.musiqa)
          ],
        ),
      ],
    );
  }
}
