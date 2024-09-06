import 'package:chat_app/services/auth/auth_services.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwConroller = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  //register method
  void register(BuildContext context){
    //get auth service
    final _auth = AuthServices();

    //passwords match -> create user
    if(_pwController.text == _confirmPwConroller.text) {
      try{
        _auth.signUpWithEmailPassword(_emailController.text, _pwController.text);
      }catch (e) {
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
    //password dont match ->show error to user

    else{
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
          title: Text(
            "Şifreler uyuşmuyor!"
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
            "Hadi senin için hesap oluşuralım",
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

            const SizedBox(height: 10),

          //confirm pw textfield
          MyTextfield(
            hintText: "Şifre onayı",
            obscureText: true,
            controller: _confirmPwConroller,
            ),

            const SizedBox(height: 25,),

          //login button
          MyButton(
            text: "Üye Ol",
            onTap: () => register(context),
          ),

          const SizedBox(height: 25,),

          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Zaten üye misin?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Hemen giriş yap",
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