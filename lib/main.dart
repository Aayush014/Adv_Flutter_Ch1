import 'package:adv_flutter_ch1/Counter%20App/counter_screen.dart';
import 'package:adv_flutter_ch1/Counter%20App/provider/counter_provider.dart';
import 'package:adv_flutter_ch1/Stepper%20App/stepper_app.dart';
import 'package:adv_flutter_ch1/Theme%20Change/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Theme Change/Utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      builder:(context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeClass.lightTheme,
        // darkTheme: ThemeClass.darkTheme,
        // themeMode: ThemeMode.light,
        initialRoute: 'counter',
        routes: {
          '/': (context) => const MainScreen(),
          'counter': (context) => const CounterApp(),
          'step': (context) => const SteperApp(),
        },
      ),
    );
  }
}

//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeClass.lightTheme,
//         darkTheme: ThemeClass.darkTheme,
//         themeMode: ThemeMode.system,
//         home: MainScreen());
//   }
// }
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 600,
//           width: 350,
//           decoration: BoxDecoration(
//             color: Theme.of(context).colorScheme.primary,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 100),
//                 child: Text(
//                   "Aayush Patel",
//                   style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 15),
//                 child: Text(
//                   "It's Simple example of \ntheme change",
//                   textAlign: TextAlign.center,
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleSmall!
//                       .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               const Spacer(),
//               Container(
//                 alignment: Alignment.center,
//                 height: 100,
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.secondary,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Text(
//                   "Light Theme",
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleLarge!
//                       .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
//                 ),
//               ),
//               const Text(""),
//               Container(
//                 alignment: Alignment.center,
//                 height: 100,
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.surface,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Text(
//                   "Dark Theme",
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleLarge!
//                       .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
//                 ),
//               ),
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
