import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/Widgets/SidebarMenu/SidebarMenu.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(),
      body: Center(
        child: Stepper(
          steps: [
            Step(
              title: Text("Step 1"),
              content: Text("Information for step 1"),
            ),
            Step(
              title: Text("Step 2"),
              content: Text("Information for step 1"),
            ),
            Step(
              title: Text("Step 3"),
              content: Text("Information for step 1"),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },

          onStepCancel: (){
            if(_currentStep != 0){
              setState(() {
                _currentStep -= 1;
              });
            }
          },

        ),
      ),
    );
  }
}
