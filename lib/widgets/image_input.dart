import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  void _takePicture() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(
              width: 1,
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.primary.withAlpha(40))),
      alignment: Alignment.center,
      height: 240,
      width: double.infinity,
      child: TextButton.icon(
        onPressed: _takePicture,
        label: Text("Add input"),
        icon: Icon(Icons.camera),
      ),
    );
  }
}
