import 'package:flutter/material.dart';

class BluePasswordFormField extends StatefulWidget {
  const BluePasswordFormField({
    Key? key,
    this.labelText = 'Password',
    this.hintText,
    this.controller,
    this.initialValue,
    this.validator,
    this.textInputAction,
    this.onSubmitted,
    this.onSaved,
    this.isNewPassword = false,
    this.visibleIcon = Icons.visibility_off,
    this.hiddenIcon = Icons.visibility,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final Function(String)? onSubmitted;
  final Function(String?)? onSaved;

  final bool isNewPassword;
  final IconData visibleIcon;
  final IconData hiddenIcon;

  @override
  State<BluePasswordFormField> createState() => _BluePasswordFormFieldState();
}

class _BluePasswordFormFieldState extends State<BluePasswordFormField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      initialValue: widget.initialValue,
      validator: widget.validator,
      textInputAction: widget.textInputAction,
      onFieldSubmitted: widget.onSubmitted,
      onSaved: widget.onSaved,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_showPassword,
      autofillHints: widget.isNewPassword
          ? const [AutofillHints.newPassword]
          : const [AutofillHints.password],
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
          icon: Icon(
            _showPassword ? widget.visibleIcon : widget.hiddenIcon,
          ),
        ),
      ),
    );
  }
}
