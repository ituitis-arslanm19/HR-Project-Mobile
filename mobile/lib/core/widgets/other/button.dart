import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const Button({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
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
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              text,
              style: theme.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: theme.colorScheme.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
