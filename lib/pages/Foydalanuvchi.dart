import 'package:flutter/material.dart';

import 'package:ishci_app/config/imports.dart';

class Foydalanuvchi extends StatefulWidget {
  const Foydalanuvchi({super.key});

  @override
  State<Foydalanuvchi> createState() => _FoydalanuvchiState();
}

class _FoydalanuvchiState extends State<Foydalanuvchi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Foydalanuvchi",
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Card(
              color: AppColor.oq,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                    // Image radius
                    child: Image.network(
                      NetworkImages.bola,
                      height: 84,
                      width: 64,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text("Karimov Salim",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColor.grey,
                        height: 1.5)),
                subtitle: Text("UX/UI dizayner",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey2)),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              color: AppColor.oq,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  Text("Ko'nikmalar va tajribalarim",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.grey)),
                  const SizedBox(height: 16),
                  text_col(text1: "Soham:", text2: "UX/UI dizayner"),
                  const SizedBox(height: 16),
                  text_col(text1: "Manzil:", text2: "Toshkent"),
                  const SizedBox(height: 16),
                  text_col(text1: "Ish haqqim:", text2: "4 000 000 sum"),
                  const SizedBox(height: 16),
                  text_col(text1: "Ish vaqti:", text2: "8:00 - 18:00"),
                  const SizedBox(height: 16),
                  text_col(text1: "Tajriba darajasi:", text2: "O'rtacha")
                ]),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Portfolio",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColor.grey)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.network(NetworkImages.bola, height: 125, width: 80),
                Image.network(NetworkImages.bola, height: 125, width: 80),
                Image.network(NetworkImages.bola, height: 125, width: 80),
              ])
            ]),
            Container(
              color: AppColor.oq,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  Text("Asosiy ma’lumotlarim",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.grey)),
                  const SizedBox(height: 16),
                  text_col(text1: "To’liq ismim:", text2: "Karimov Salim"),
                  const SizedBox(height: 16),
                  text_col(text1: "Manzil:", text2: "Toshkent"),
                  const SizedBox(height: 16),
                  text_col(text1: "Tug'ilgan kunim:", text2: "03.23.2023"),
                  const SizedBox(height: 16),
                  text_col(
                      text1: "Elektron pochtam:",
                      text2: "Baxtjonchapaev@gmail.com"),
                  const SizedBox(height: 16),
                  text_col(
                      text1: "Telefon raqamim:", text2: "+998 99 156 23 54")
                ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
