import 'package:flutter/material.dart';
import 'package:gdsc_flutter_task/core/widgets/custom_clip_path.dart';
import 'package:gdsc_flutter_task/features/register/presentation/views/widgets/register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CustomClipPath(title: 'Register'),
          RegisterForm(),
        ],
      ),
    );
  }
}
