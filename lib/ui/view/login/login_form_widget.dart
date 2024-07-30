import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ringo_media_flutter/ui/custom_forms/reactive_widgets.dart';

final _form = FormGroup({
  'userName': FormControl<String>(
    validators: [Validators.email, Validators.required],
  ),
  'password': FormControl<String>(
    validators: [Validators.required, Validators.minLength(6)],
  ),
});

class LoginForm extends HookWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final secured = useState(true);

    return ReactiveForm(
      formGroup: _form,
      child: Column(
        children: [
          ReactiveField(
            type: ReactiveFields.TEXT,
            controllerName: "userName",
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            label: "Username / Email",
            hint: 'Enter Username / Email here',
          ),
          ReactiveField(
            autofillHints: const [AutofillHints.password],
            type: ReactiveFields.PASSWORD,
            controllerName: "password",
            onTap: () {
              secured.value = !secured.value;
            },
            secure: secured.value,
            label: "Password",
            hint: 'Enter password here',
          ),
        ],
      ),
    );
  }
}
