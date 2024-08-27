import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hint;
  final bool obscureText;
  final Color? fillColor;
  final IconData? icon;
  final bool isDateField;
  final bool isGenderField;

  const MyTextField({
    super.key,
    required this.hint,
    required this.obscureText,
    required this.fillColor,
    required this.icon,
    this.isDateField = false,
    this.isGenderField = false,
  });

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool _obscureText;
  TextEditingController _controller = TextEditingController();
  String? _selectedGender;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: widget.isGenderField
          ? DropdownButtonFormField<String>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black),
                ),
                fillColor: widget.fillColor,
                filled: true,
                hintText: widget.hint,
                hintStyle: TextStyle(color: Colors.grey),
              ),
              items: ['Male', 'Female', 'Other'].map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _selectedGender = value;
                });
              },
            )
          : TextField(
              controller: _controller,
              obscureText: _obscureText,
              readOnly: widget.isDateField,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black),
                ),
                fillColor: widget.fillColor,
                filled: true,
                hintText: widget.hint,
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: widget.icon != null
                    ? GestureDetector(
                        onTap: () {
                          if (widget.isDateField) {
                            _selectDate(context);
                          } else if (widget.obscureText) {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          }
                        },
                        child: Icon(
                          widget.isDateField
                              ? Icons.calendar_today
                              : widget.obscureText
                                  ? (_obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off)
                                  : widget.icon,
                          color: Colors.grey,
                        ),
                      )
                    : null,
              ),
              style: TextStyle(color: Colors.white),
            ),
    );
  }
}
