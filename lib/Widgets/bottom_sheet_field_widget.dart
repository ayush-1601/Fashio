import 'package:flutter/material.dart';

class BottomSheetFieldWidget extends StatelessWidget {
  final Icon? leadingIcon;
  final Icon? trailingIcon;
  final String? fieldText;

  const BottomSheetFieldWidget(
      {super.key, this.leadingIcon, this.trailingIcon, this.fieldText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      trailing: trailingIcon,
      title: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Text(fieldText.toString()),
      ),
    );
  }
}
