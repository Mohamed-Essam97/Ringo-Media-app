import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ringo_media_flutter/ui/buttons/custom_normal_button.dart';
import 'package:ringo_media_flutter/ui/themes/text_theme.dart';
import 'package:ringo_media_flutter/ui/view/login/login_form_widget.dart';
import 'package:ringo_media_flutter/ui/view/login/social_login_widget.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(80),
              Text("Login", style: context.h1),
              const Gap(12),
              Text("Sign in to your account", style: context.sub1),
              const Gap(24),
              const LoginForm(),
              const Gap(12),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Password ?',
                  style: context.body1,
                ),
              ),
              const Gap(24),
              NormalButton(
                  onPressed: () {
                    context.pushNamed('mainHome');
                  },
                  text: "Login"),
              const Gap(24),
              Center(child: Text("Or login with account", style: context.sub1)),
              const Gap(24),
              const SocialLoginWidget(),
              const Gap(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont’t have an account?",
                    style: context.sub1,
                  ),
                  const Gap(4),
                  Text(
                    "Register Here",
                    style: context.label,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
