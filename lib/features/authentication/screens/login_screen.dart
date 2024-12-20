import 'package:dart_fast/config/themes.dart';
import 'package:dart_fast/features/authentication/widgets/login_form.dart';
import 'package:dart_fast/shared/repositories/auth_repository.dart';
import 'package:dart_fast/shared/repositories/database_repository.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
    required this.databaseRepository,
    required this.authRepository,
  });

  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: SafeArea(
        child: Scaffold(
          body: Builder(
            builder: (context) {
              return LoginForm(
                databaseRepository: databaseRepository,
                authRepository: authRepository,
              );
            },
          ),
        ),
      ),
    );
  }
}
