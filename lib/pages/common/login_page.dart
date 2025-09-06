import 'package:flutter/material.dart';
import 'package:zaika/components/custom_button.dart';
import 'package:zaika/components/custom_loader.dart';
import 'package:zaika/components/custom_padding.dart';
import 'package:zaika/components/custom_text_box.dart';
import 'package:zaika/components/user_chef_toggle.dart';
import 'package:zaika/utils/common_functions.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();

  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: CustomPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: CustomLoader()),
                SizedBox(height: 40),
                Text("Login ", style: Theme.of(context).textTheme.displayLarge),
                SizedBox(height:24),
                UserChefToggle(),
                SizedBox(height: 24),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextBox(
                        controller: phoneController,
                        hintText: "Enter phone number",
                        prefixIcon: Icons.phone,
                        keyboardType: TextInputType.phone,
                        validator: phoneValidator,
                      ),
                      SizedBox(height: 24),
                      CustomButton(onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print(
                              "Phone number is valid: ${phoneController.text}",
                            );
                          }
                        } , text : "Send OTP")    
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
