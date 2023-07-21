import 'package:flutter/material.dart';

class BlueSearchFormField extends StatefulWidget {
  const BlueSearchFormField({
    super.key,
    this.labelText = 'Search',
    this.hintText,
    this.errorText,
    this.controller,
    this.initialValue,
    this.validator,
    this.textInputAction = TextInputAction.search,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
    this.onSaved,
    this.searchIcon = Icons.search,
    this.clearIcon = Icons.clear,
  });

  final String? labelText;
  final String? hintText;
  final String? errorText;
  final TextEditingController? controller;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final Function(String)? onSubmitted;
  final Function(String?)? onSaved;
  final IconData searchIcon;
  final IconData clearIcon;

  @override
  State<BlueSearchFormField> createState() => _BlueSearchFormFieldState();
}

class _BlueSearchFormFieldState extends State<BlueSearchFormField> {
  TextEditingController? _controller;
  bool _showClear = false;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      initialValue: widget.initialValue,
      validator: widget.validator,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      onFieldSubmitted: widget.onSubmitted,
      onSaved: widget.onSaved,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            _showClear = true;
          });
        } else {
          setState(() {
            _showClear = false;
          });
        }
      },
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        errorText: widget.errorText,
        prefixIcon: Icon(widget.searchIcon),
        suffixIcon: _showClear
            ? IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _controller?.clear();
                  setState(() {
                    _showClear = false;
                  });
                },
                icon: Icon(widget.clearIcon),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
