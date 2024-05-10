

import 'package:flutter/material.dart';

class SteperApp extends StatefulWidget {
  const SteperApp({super.key});

  @override
  State<SteperApp> createState() => _SteperAppState();
}

class _SteperAppState extends State<SteperApp> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Stepper Demo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
      ),
      body: Stepper(
        elevation: 0,
        controlsBuilder: controlBuilders,
        type: StepperType.horizontal,
        physics: const ScrollPhysics(),
        onStepTapped: onStepTapped,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        currentStep: currentStep,
        steps: [
          Step(
              title: const Text('Account'),
              content: const Column(
                children: [
                  TextField(
                    decoration: InputDecoration(hintText: "Account Number"),
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
              isActive: currentStep >= 0,
              state:
              currentStep >= 0 ? StepState.complete : StepState.disabled),
          Step(
            title: const Text('Address'),
            content: const TextField(
              decoration: InputDecoration(hintText: "Address"),
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Mobile Number'),
            content: const TextField(
              decoration: InputDecoration(hintText: "Mobile Number"),
              keyboardType: TextInputType.number,
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}
