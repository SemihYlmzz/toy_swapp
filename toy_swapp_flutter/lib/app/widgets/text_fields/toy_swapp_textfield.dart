import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';

class ToySwappTextField extends StatefulWidget {
  const ToySwappTextField({
    super.key,
    this.obscureText = false,
    this.errorText,
    this.labelText,
    this.onChanged,
    this.onSubmit,
    this.focusNode,
    this.keyboardType,
    this.maxLines,
    this.maxLength,
    this.minLines,
    this.initialValue,
    this.textCapitalization = TextCapitalization.none,
  });

  final bool obscureText;
  final String? errorText;
  final String? labelText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmit;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final int? maxLength;
  final int? minLines;
  final String? initialValue;

  @override
  State<ToySwappTextField> createState() => _ToySwappTextFieldState();
}

class _ToySwappTextFieldState extends State<ToySwappTextField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          initialValue: widget.initialValue,
          focusNode: widget.focusNode,
          obscureText: widget.obscureText && hidePassword,
          textCapitalization: widget.textCapitalization,
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
            ),
            floatingLabelStyle: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
            ),
            errorText: widget.errorText,
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmit,
          keyboardType: widget.keyboardType,
          maxLines: widget.obscureText ? 1 : widget.maxLines ?? 1,
          maxLength: widget.maxLength,
          minLines: widget.minLines,
        ),
        if (widget.obscureText)
          Positioned(
            right: 0,
            top: 4,
            child: GestureDetector(
              onTap: () {
                hidePassword = !hidePassword;
                setState(() {});
              },
              child: Container(
                color: Colors.transparent,
                padding: SharedPaddings.all16,
                child: Icon(
                  hidePassword ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
