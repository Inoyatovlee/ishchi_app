import 'package:ishci_app/config/imports.dart';

class MashhurCategory extends StatelessWidget {
  const MashhurCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button1(name: "Evos", image: NetworkImages.evos, dense: true),
            Button1(name: "Cola", image: NetworkImages.cola, dense: true),
            Button1(name: "Akfa", image: NetworkImages.akfa, dense: true),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button1(name: "Imzo", image: NetworkImages.imzo, dense: true),
            Button1(name: "Crafers", image: NetworkImages.crafers, dense: true),
            Button1(name: "Artel", image: NetworkImages.artel, dense: true),
          ],
        ),
      ],
    );
  }
}
