import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    Key? key,
    this.onTap,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final VoidCallback? onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(primary: Colors.black),
      child: Column(
        children: [
          Icon(icon),
          const SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }
}

class EditorButton extends StatelessWidget {
  const EditorButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 60,
              maxWidth: 100,
              minHeight: 60,
              maxHeight: 100,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.black87,
                ),
                const SizedBox(height: 8),
                Text(
                  text,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
