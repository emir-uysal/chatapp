import 'package:chat_app/services/auth/auth_services.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  //login method
  void login(BuildContext context) async {
    //auth service
    final authService = AuthServices();

    //try login
    try{
      await authService.signInWithEmailPassword(_emailController.text, _pwController.text,);
    }

    //cath any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            e.toString()
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
            ),
            
            const SizedBox(height: 50,),

          //welcome back message
          Text(
            "Tekrar Hoşgeldin, Seni özlemiktik!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
            ),

            const SizedBox(height: 50,),

          //email textfield
          MyTextfield(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
          ),

          const SizedBox(height: 10),

          //pw textfield
          MyTextfield(
            hintText: "Şifre",
            obscureText: true,
            controller: _pwController,
            ),

            const SizedBox(height: 25,),

          //login button
          MyButton(
            text: "Giriş Yap",
            onTap: () => login(context),
          ),

          const SizedBox(height: 25,),

          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Üye değil misin?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Hemen üye ol",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}