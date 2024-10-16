import 'package:flutter/material.dart';
import 'package:ktti/themes/theme.dart';
import 'package:ktti/widgets/custom_scaffold.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formLoginKey = GlobalKey<FormState>();
    bool rememberPassword = true;
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
              child: SizedBox(
            height: 10,
          )),
          Expanded(
            flex: 7,
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
            ),
                child: Form(
                  key: formLoginKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: lightColorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return 'Please Enter Email Address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text("Email"),
                            hintText: 'Enter Email',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return 'Please Enter Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: const Text("Password"),
                              hintText: 'Enter Password',
                              hintStyle: const TextStyle(
                                color: Colors.black26,
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                            Checkbox(
                                value: rememberPassword, 
                                onChanged: (bool? value){
                                  setState((){
                                    rememberPassword = value!;
                                  });
                                },
                              activeColor: lightColorScheme.primary,
                            ),
                            const Text(
                              'Remember Me',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            )
                    ]
                            ),
                          ],
                        ),

                      ],

                ),
                ),
          ),
          )
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
