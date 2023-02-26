import 'package:flutter/material.dart';

class FormRegisterScreen extends StatelessWidget {
  FormRegisterScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black54,
        ),
        title: Text(
          "Complete your signup",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        ),
                        Text(
                          "122343",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 13,
                      child: Icon(
                        Icons.check,
                        size: 16,
                      ),
                      backgroundColor: Colors.teal,
                    )
                  ],
                ),
                SizedBox(height: 20),
                SPTextFormField(
                  labelText: "Create Password",
                  validator: (value) {
                    print(value);
                    if (value!.isEmpty) {
                      return "Password can't be empty";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                SPTextFormField(
                  labelText: "Full Name (Optional)",
                ),
                SizedBox(height: 15),
                SPTextFormField(
                  labelText: "Email (Optional)",
                ),
                SizedBox(height: 15),
                GenderButton(),
                SizedBox(height: 15),
                SPTextFormField(
                  labelText: "Alternate Phone Number",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      "+91 |",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                  color: Colors.pink.shade500,
                  elevation: 0,
                  child: Text(
                    "CREATE ACCOUNT",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SPTextFormField extends StatelessWidget {
  const SPTextFormField(
      {Key? key, required this.labelText, this.validator, this.prefixIcon})
      : super(key: key);
  final String labelText;
  final String? Function(String? value)? validator;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validator,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.red,
          fontSize: 13,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.black54,
            fontSize: 13,
          ),
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.black54,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.black54,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class GenderButton extends StatelessWidget {
  const GenderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black54),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: (){
                print("Female");
              },
              child: Container(
                child: Center(
                  child: Text("Female"),
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.black54,
          ),

          Flexible(
            flex: 1,
            child: InkWell(
              onTap: (){
                print("Male");
              },
              child: Container(
                child: Center(
                  child: Text("Male"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
