import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final Icon? icon;
  final String? hintText;
  final TextEditingController textEditingController;

  const InputText(
      {super.key,
      this.icon,
      this.hintText,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(4, 8), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(-4, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(50),
          color: Color.fromARGB(255, 245, 245, 245),
        ),
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
              iconColor: Theme.of(context).colorScheme.primary,
              prefixIcon: icon,
              border: InputBorder.none,
              labelText: hintText),
        ),
      ),
    );
  }
}
