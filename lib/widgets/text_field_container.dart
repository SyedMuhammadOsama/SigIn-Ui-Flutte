import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final String label;
  final String hintText;
  TextFieldContainer({required this.label, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextField(
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(25),
              hintText: hintText,
              hintStyle:
                  const TextStyle(color: Color(0xFF9B8F8F), fontSize: 20),
              fillColor: const Color(0xFF131212),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xFF514E4E),
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.pink,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
