import 'dart:io';

import 'package:favorite_places/providers/user_places.dart';
import 'package:favorite_places/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();
  File? _selectedImage;
  void _savePlace() {
    final enteredTitle = _titleController.text;
    if (enteredTitle.isEmpty || _selectedImage == null) return;
    ref
        .read(userPlacesProvider.notifier)
        .addPlace(enteredTitle, _selectedImage!);
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new place"),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 20,
            children: [
              TextField(
                decoration: const InputDecoration(
                  label: Text("Place title"),
                ),
                controller: _titleController,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
              ImageInput(onPickImage: (image) {
                _selectedImage = image;
              }),
              ElevatedButton.icon(
                  onPressed: _savePlace,
                  icon: Icon(Icons.add),
                  label: Text("Add Place"))
            ],
          )),
    );
  }
}
