import 'package:flutter/material.dart';
import 'package:gdsc_flutter_task/constants.dart';
import 'package:gdsc_flutter_task/core/widgets/custom_button.dart';
import 'package:gdsc_flutter_task/core/widgets/custom_text_form_field.dart';
import 'package:gdsc_flutter_task/features/home/presentation/views/home_view.dart';
import 'package:gdsc_flutter_task/features/register/presentation/views/register_view.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool showPassword = true;
  bool showConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CustomTextFormField(
              label: Text('Email'),
              prefixIcon: Icon(
                Icons.email,
                color: kPrimaryColor,
              ),
            ),
            CustomTextFormField(
              obscureText: showPassword,
              label: const Text('Password'),
              prefixIcon: const Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: showPassword
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                color: Colors.grey,
              ),
            ),
            CustomButton(
              title: 'Login',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
            CustomButton(
              title: 'Register',
              backgroundColor: Colors.white,
              textColor: kPrimaryColor,
              outlined: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
