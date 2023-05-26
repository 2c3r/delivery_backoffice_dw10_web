import 'package:delivery_backoffice_dw10/src/core/ui/helpers/size_extensions.dart';
import 'package:delivery_backoffice_dw10/src/core/ui/styles/colors_app.dart';
import 'package:delivery_backoffice_dw10/src/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenShortesrSide = context.screenShortestSide;
    final screenWidth = context.screenWidth;
    return Scaffold(
      backgroundColor: context.colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenShortesrSide * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/lanche.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: screenShortesrSide * .5,
            padding: EdgeInsets.only(
              top: context.percentHeight(.1),
            ),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: context.percentWidth(screenWidth < 1300 ? .7 : .3),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FractionallySizedBox(
                        widthFactor: .3,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Login',
                          style: context.textStyles.textTitle,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'E-mail'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Senha'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Entrar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
