import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_texts.dart';

class DropdownWithTextField extends StatefulWidget {
  @override
  _DropdownWithTextFieldState createState() => _DropdownWithTextFieldState();
}

class _DropdownWithTextFieldState extends State<DropdownWithTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appallcolor().appbarbackgroundcolor,
        title: Text('Body maintaince and Repairing'),
      ),
      backgroundColor: Appallcolor().appbackgroundcolor,
      body: Column(
        children: [
          Card(
            color: Color.fromARGB(255, 132, 130, 122),
            child: Row(
              children: [
                const CustomText(
                  fontSize: 30,
                  text: 'Dent repair',
                ),
                Switch(
                  value:
                      true, // Initially true, change it according to your requirement
                  onChanged: (value) {
                    // Implement logic to handle switch state change
                  },
                ),
                SizedBox(width: 10), // Adjust spacing as needed
                Expanded(
                  child: IgnorePointer(
                    ignoring: true, // Initially disable the TextField
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 5, // Limit to 5 numbers
                      decoration: InputDecoration(
                        hintText: 'Enter price',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
