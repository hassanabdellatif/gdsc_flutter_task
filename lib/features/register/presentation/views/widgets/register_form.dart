import 'package:flutter/material.dart';
import 'package:gdsc_flutter_task/constants.dart';
import 'package:gdsc_flutter_task/core/widgets/custom_button.dart';
import 'package:gdsc_flutter_task/core/widgets/custom_text_form_field.dart';
import 'package:gdsc_flutter_task/features/home/presentation/views/home_view.dart';
import 'package:gdsc_flutter_task/features/login/presentation/views/login_view.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
              label: Text('Full Name'),
              prefixIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
            ),
            const CustomTextFormField(
              label: Text('Email'),
              prefixIcon: Icon(
                Icons.email,
                color: kPrimaryColor,
              ),
            ),
            const CustomTextFormField(
              label: Text('Phone'),
              prefixIcon: Icon(
                Icons.phone,
                color: kPrimaryColor,
              ),
              keyboardType: TextInputType.number,
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
            CustomTextFormField(
              obscureText: showConfirmPassword,
              label: const Text('Confirm password'),
              prefixIcon: const Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    showConfirmPassword = !showConfirmPassword;
                  });
                },
                icon: showConfirmPassword
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              title: 'Register',
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
              title: 'Login',
              backgroundColor: Colors.white,
              textColor: kPrimaryColor,
              outlined: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
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
