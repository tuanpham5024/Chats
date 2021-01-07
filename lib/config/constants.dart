import 'package:flutter/material.dart';

// Colors
const kPrimaryColor = Color(0xFF2F80ED);
const kPrimaryColorLight = Color(0xFFF4F4F4);

const kBackgroundUnRead = Color(0xFFE5E5E5);

const kTextPrimary = Color(0xFF1B1A57);
const kTextSecondary = Color(0xFF4F5E7B);


// Form
final RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
