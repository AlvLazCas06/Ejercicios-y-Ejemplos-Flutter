import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailValidate = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  Sexo? _sexoSeleccionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario de registro')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 5),
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Introduce tu nombre",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "El campo del nombre no puede estar vacio";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Introduce tus apellidos",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "El campo del apellido no puede estar vacio";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<Sexo>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Selecciona tu sexo",
              ),
              value: _sexoSeleccionado,
              items: Sexo.values.map((Sexo sexo) {
                return DropdownMenuItem<Sexo>(
                  value: sexo,
                  child: Text(sexo.name.substring(0, 1).toUpperCase() + sexo.name.substring(1)),
                );
              }).toList(),
              onChanged: (Sexo? newValue) {
                setState(() {
                  _sexoSeleccionado = newValue;
                });
              },
              validator: (value) {
                if (value == null) {
                  return "Por favor selecciona tu sexo";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Introduce tu email",
              ),
              validator: (value) {
                if (value == null || value.isEmpty || !value.contains('@')) {
                  return "El email no puede estar vacio";
                }
                if (_emailValidate.hasMatch(value)) {

                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Introduce la contraseña",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "La contraseña no puede estar vacio";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Repite la contraseña",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "La contraseña no puede estar vacio";
                } else if (value != _passwordController.text) {
                  return "Las contraseñas no son iguales";
                }
                return null;
              },
            ),
            ElevatedButton(
              child: const Text('showModalBottomSheet'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

enum Sexo { masculino, femenino }

typedef SexoEntry = DropdownMenuEntry<Sexo>;
