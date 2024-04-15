import 'package:flutter/material.dart';

class ToySwappTextField extends StatefulWidget {
  const ToySwappTextField({
    super.key,
    this.obscureText = false,
    this.errorText,
    this.labelText,
    this.onChanged,
    this.onSubmit,
    this.focusNode,
  });

  final bool obscureText;
  final String? errorText;
  final String? labelText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmit;
  final FocusNode? focusNode;
  @override
  State<ToySwappTextField> createState() => _ToySwappTextFieldState();
}

class _ToySwappTextFieldState extends State<ToySwappTextField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      obscureText: widget.obscureText && hidePassword,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        floatingLabelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        suffix: !widget.obscureText
            ? null
            : GestureDetector(
                onTap: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                child: Icon(
                  hidePassword ? Icons.visibility : Icons.visibility_off,
                ),
              ),
        errorText: widget.errorText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmit,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
