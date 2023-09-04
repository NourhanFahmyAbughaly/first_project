import 'package:flutter/material.dart';
class Dote extends StatelessWidget {
  const Dote({super.key, required this.iniIinilInde, required this.number});
  final int iniIinilInde;
  final int number;
  @override
  Widget build(BuildContext context) {
    return                       Container(
      margin: EdgeInsets.only(top: 20, left: 5, right: 5),
      height: 15,
      width: iniIinilInde == number? 50 : 15,
      decoration: BoxDecoration(
        border: Border.all(
            color:
            iniIinilInde == number ? Colors.green : Colors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: iniIinilInde == number ? Colors.green : Colors.white,
      ),
    );

  }
}
