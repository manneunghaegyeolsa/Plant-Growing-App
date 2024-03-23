import 'package:flutter/material.dart';
import 'package:solvers/screens/bottomNaviBar.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(const Solvers());
}

class Solvers extends StatefulWidget {
  const Solvers({super.key});

  @override
  State<Solvers> createState() => _SolversState();
}

class _SolversState extends State<Solvers> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }
  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured');
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        title: 'Solvers',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 114, 240, 141)),
          useMaterial3: true,
        ),
        home: BottomNaviBar(1),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}