import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

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
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Add Place"))
            ],
          )),
    );
  }
}
