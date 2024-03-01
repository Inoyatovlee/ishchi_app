import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import 'package:ishci_app/config/imports.dart';

// ignore: must_be_immutable
class Button1 extends StatelessWidget {
  Function? onTap;
  String? name;
  String image;
  IconData? icon;

  Button1({
    super.key,
    this.onTap,
    required this.image,
    this.name,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //agar onTap nullga teng bo;lmasa
        if (onTap != null) {
          onTap!();
        }
      },
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              height: 83,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.grey2),
                  color: AppColor.oq,
                  borderRadius: BorderRadius.circular(20)),
              child: Image.network(image)),
          const SizedBox(height: 8),
          Text(
            name!,
            style: TextStyle(
                fontSize: 12,
                color: AppColor.grey,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
