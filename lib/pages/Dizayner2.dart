import 'package:flutter/material.dart';
import 'package:ishci_app/config/colors.dart';
import 'package:ishci_app/config/imports.dart';

class Dizayner2 extends StatefulWidget {
  const Dizayner2({super.key});

  @override
  State<Dizayner2> createState() => _Dizayner2State();
}

class _Dizayner2State extends State<Dizayner2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dizayner",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: AppColor.grey),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Card(
              color: AppColor.oq,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
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
                      title: Text("Komilov Komil",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.grey,
                              height: 2.2)),
                      subtitle: Row(children: [
                        SizedBox(
                            height: 22,
                            width: 78,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    side: BorderSide(
                                        width: 0.1, color: AppColor.grey2),
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text("9:00|19:00",
                                    style: TextStyle(
                                        color: AppColor.grey2, fontSize: 12)))),
                        SizedBox(
                            height: 22,
                            width: 78,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: AppColor.oq,
                                    side: BorderSide(
                                        width: 0.1, color: AppColor.grey2),
                                    elevation: 1, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text("Toshkent",
                                    style: TextStyle(
                                        color: AppColor.grey2, fontSize: 12)))),
                      ]),
                      trailing: Icon(Icons.bookmark_border,
                          color: AppColor.olov, size: 22),
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: [
                            Icon(Icons.remove_red_eye,
                                color: AppColor.grey2, size: 18),
                            const SizedBox(width: 4),
                            Text("9:41",
                                style: TextStyle(
                                    color: AppColor.grey2, fontSize: 12)),
                            const SizedBox(width: 22),
                            Icon(Icons.remove_red_eye,
                                color: AppColor.grey2, size: 18),
                            const SizedBox(width: 4),
                            Text('1164',
                                style: TextStyle(
                                    color: AppColor.grey2, fontSize: 12)),
                          ],
                        ),
                        const Spacer(),
                        Text('2 500 000 uzs',
                            style: TextStyle(
                                color: AppColor.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
