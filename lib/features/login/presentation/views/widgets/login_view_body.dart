import 'package:flutter/material.dart';
import 'package:gdsc_flutter_task/core/widgets/custom_clip_path.dart';
import 'package:gdsc_flutter_task/features/login/presentation/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CustomClipPath(title: 'Login'),
          LoginForm(),
        ],
      ),
    );
  }
}
