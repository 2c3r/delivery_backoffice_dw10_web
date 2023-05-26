import 'package:delivery_backoffice_dw10/src/core/ui/helpers/loader.dart';
import 'package:delivery_backoffice_dw10/src/core/ui/helpers/messages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        showLoader();
        await Future.delayed(
          const Duration(seconds: 2),
        );
        hideLoader();

        showError('Erro de alguma coisa');
      }),
      body: Container(
        child: Container(
          //color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        'Login',
                      ),
                    ),
                    validator: (String) => "Erro",
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('BOTÃO'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
