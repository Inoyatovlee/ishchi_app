import 'package:ishci_app/config/imports.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  String? hindText;
  String? label;

  bool? denger;
  String? demgerText;
  TextEditingController? controller;
  Function? changed;

  Input({
    super.key,
    this.hindText,
    this.controller,
    this.changed,
    this.label,
    this.denger = false,
    this.demgerText = "Error text",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                alignment: Alignment.center,
                child: TextFormField(
                  cursorColor: AppColor.green,
                  controller: controller,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      hintText: hindText,
                      hintStyle: TextStyle(color: AppColor.grey2),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 18),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.grey2.withOpacity(0.6)),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColor.green2, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)))),
                ),
              ),
            ),
            const SizedBox(width: 14),
            const Icon(Icons.search, size: 30)
          ],
        ),
      ],
    );
  }
}
