import 'package:flutter/material.dart';
import 'package:birthday_greet/name_input.dart';

/*class GreetCard extends StatefulWidget {
  const GreetCard(this.name, {super.key});

  final void Function() name;

  @override
  State<GreetCard> createState() {
    return _GreetCardState();
  }
}*/

//class _GreetCardState extends State<GreetCard> {
class GreetCard extends StatelessWidget {
  const GreetCard(this.name, {super.key});
  final void Function() name;

  @override
  Widget build(context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            "assets/cake.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            //width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  'Happy Birthday',
                  style: TextStyle(
                      color: Color.fromARGB(238, 55, 119, 154),
                      fontSize: 32,
                      fontFamily: 'GreatVibes',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Text(
                  myController.text,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 116, 215, 24),
                    fontSize: 28,
                    fontFamily: 'GreatVibes',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 30),
                IconButton.filled(
                  onPressed: name,
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
