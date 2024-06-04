import 'package:agriplant/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:agriplant/core/utils/assets_data.dart';
import 'package:agriplant/features/presentation/screens/home_screen.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key}); // Named key parameter

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsData.onBoarding,
                    width: 300,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    AppLocalizations.of(context)!.helloWorld,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    AppLocalizations.of(context)!.welcomeMessage,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    MyApp.setLocale(context, const Locale('hi'));
                  },
                  child: const Text('Hindi'),
                ),
                ElevatedButton(
                  onPressed: () {
                    MyApp.setLocale(context, const Locale('te'));
                  },
                  child: const Text('Telugu'),
                ),
                ElevatedButton(
                  onPressed: () {
                    MyApp.setLocale(context, const Locale('en'));
                  },
                  child: const Text('English'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            FilledButton.tonalIcon(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              icon: const Icon(IconlyLight.login),
              label: const Text('Continue With Google'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
