import 'package:evet_task/core/resources/color_manager.dart';
import 'package:evet_task/core/resources/components/buttons.dart';
import 'package:evet_task/core/resources/components/text_form.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:evet_task/core/resources/values_manager.dart';
import 'package:evet_task/modules/authentication/widgets/remember_me_and_forget_password.dart';
import 'package:evet_task/utilties/validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPasswordTextForm extends StatefulWidget {
  final bool? signUp;
  const EmailAndPasswordTextForm({
    super.key,
    this.signUp = false,
  });

  @override
  State<EmailAndPasswordTextForm> createState() => _EmailAndPasswordTextFormState();
}

class _EmailAndPasswordTextFormState extends State<EmailAndPasswordTextForm> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void _signIn() {
    if (_signInFormKey.currentState!.validate()) {}
  }

  void _signUp() {
    if (_signUpFormKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.signUp! ? _signUpFormKey : _signInFormKey,
      child: Column(
        children: <Widget>[
          if (widget.signUp!)
            TextFormShared(
              controller: name,
              hintText: AppStrings.fullName,
              textInputAction: TextInputAction.next,
            ),
          if (widget.signUp!)
            SizedBox(
              height: AppPadding.p16.h,
            ),
          TextFormShared(
            controller: email,
            hintText: AppStrings.email,
            validator: validatorEmail,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: AppPadding.p16.h,
          ),
          TextFormShared(
            controller: password,
            hintText: AppStrings.password,
            obscure: true,
            textInputAction: TextInputAction.done,
            onSubmit: widget.signUp! ? (val)=>_signUp : (val)=> _signIn,
          ),
          SizedBox(
            height: AppPadding.p8.h,
          ),
          if (!widget.signUp!) const RememberAndForgetPassowrd(),
          SizedBox(
            height: AppPadding.p16.h,
          ),
          ButtonsShared(
            onPressed: widget.signUp! ? _signUp : _signIn,
            text: widget.signUp! ? AppStrings.signUp : AppStrings.signIn,
            width: 312.w,
            colorButton: ColorManager.primary,
            colorBorder: ColorManager.primary,
            colorText: ColorManager.white,
          ),
        ],
      ),
    );
  }
}
