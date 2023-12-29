import 'package:flutter/material.dart';

final myController = TextEditingController();

class NameInput extends StatelessWidget {
  const NameInput(this.makeCard, {super.key});

  final void Function() makeCard;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Enter the Name:',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 250,
            child: TextFormField(
              controller: myController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: makeCard,
            child: const Text('Create Birthday Card'),
          ),
        ],
      ),
    );
  }
}
