import 'package:chat/widgets/boton_azul.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/logo.dart';
import 'package:chat/widgets/labels.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(
                  titulo: 'Registrar',
                ),
                _Form(),
                Labels(
                  ruta: 'login',
                  haveAccount: '¿Ya tienes cuenta?',
                  actionText: 'Ingresar ahora',
                ),
                Text(
                  'Terminos y condiciones',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.person,
            placeHolder: 'Nombre',
            keyBoardType: TextInputType.text,
            textEditingController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.email_outlined,
            placeHolder: 'Correo',
            keyBoardType: TextInputType.emailAddress,
            textEditingController: emailCtrl,
          ),

          CustomInput(
            icon: Icons.lock_outline,
            placeHolder: 'Password',
            textEditingController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Entrar',
            onPressed: () {
              print(emailCtrl.text);
            },
          ),

          // TextField(),
        ],
      ),
    );
  }
}
