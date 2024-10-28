import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:score_app/core/helpers/toast.dart';
 
class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
      final ValueChanged<String>? onChanged;



  const CustomTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        onChanged:onChanged ,
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
         TextInputFormatter.withFunction((oldValue, newValue) {
              if (!RegExp(r'^[0-9]*$').hasMatch(newValue.text)) {
                // Show the dialog if the new input contains non-digit characters
                _showNumberOnlyDialog(context);
                return oldValue; // Prevent the non-digit character from appearing
              }
              return newValue;
            }),
        ],
        validator: validator,
        style: const TextStyle(
          fontSize: 39,
          fontFamily: "BalooBhaijaan2",
          color: Colors.green,  
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          isDense: true,
          fillColor: Colors.white, 
          filled: true,
          focusedErrorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  void _showNumberOnlyDialog(BuildContext context) {
   ToastManager.showErrorToast("Error", context, "you can write only digits number");
  }
}
