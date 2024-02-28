import 'package:ishci_app/config/images.dart';
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
      body: Column(
        children: [
          Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Input(hindText: "Ishingizni kiriting"),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
