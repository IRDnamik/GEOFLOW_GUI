import 'package:flutter/material.dart';
import '../color.dart';

class CustomForm extends StatelessWidget {
  const CustomForm(
      {Key? key, required this.preLabel, required this.label, required this.validator, required this.onSaved})
      : super(key: key);

  final String preLabel;
  final String label;
  final FormFieldValidator<String>? validator;
  final Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 110,
            child: Text(
              label,
              style: const TextStyle(
                color: MyThemeColor.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 200.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    border: null,
                    labelText: preLabel,
                  ),
                  validator: validator,
                  onSaved: onSaved),
            ),
          ),
        ],
      ),
    );
  }
}
