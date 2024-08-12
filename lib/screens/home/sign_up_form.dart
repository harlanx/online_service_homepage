part of '../../screens/home.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 650,
        maxWidth: 300,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SelectableText(
            'Need an account?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Neumorphic(
            style: const NeumorphicStyle(
              color: Colors.white,
              depth: -3.0,
              intensity: 1.3,
            ),
            child: const TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                contentPadding: EdgeInsets.all(5.0),
                suffixIcon: Icon(Icons.email_rounded),
                isCollapsed: true,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Neumorphic(
            style: const NeumorphicStyle(
              color: Colors.white,
              depth: -3.0,
              intensity: 1.3,
            ),
            child: TextField(
              obscureText: _obscurePassword,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                contentPadding: const EdgeInsets.all(5.0),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye_rounded),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                isCollapsed: true,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Neumorphic(
            style: const NeumorphicStyle(
              color: Colors.white,
              depth: -3.0,
              intensity: 1.3,
            ),
            child: const TextField(
              obscureText: true,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Confirm your password',
                contentPadding: EdgeInsets.all(5.0),
                suffixIcon: Icon(Icons.vpn_key_outlined),
                isCollapsed: true,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF7aa9b9),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 20,
                children: [
                  Icon(Icons.history_edu_rounded),
                  Visibility(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text('Sign Up'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.grey.shade400,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: SelectableText(
                    'OR',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4267B2),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final w = constraints.maxWidth;
                  bool showLabel;
                  if (w >= 100) {
                    showLabel = true;
                  } else {
                    showLabel = false;
                  }
                  return Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: 20,
                    children: [
                      Image.asset(
                        'assets/icons/facebook.png',
                        height: 30,
                      ),
                      Visibility(
                        visible: showLabel,
                        child: const FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Sign up using Facebook',
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4285F4),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final w = constraints.maxWidth;
                  bool showLabel;
                  if (w >= 100) {
                    showLabel = true;
                  } else {
                    showLabel = false;
                  }
                  return Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: 20,
                    children: [
                      Image.asset(
                        'assets/icons/google.png',
                        height: 30,
                      ),
                      Visibility(
                        visible: showLabel,
                        child: const FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Sign up using Google',
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF737373),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final w = constraints.maxWidth;
                  bool showLabel;
                  if (w >= 100) {
                    showLabel = true;
                  } else {
                    showLabel = false;
                  }
                  return Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: showLabel ? 20 : 0,
                    children: [
                      Image.asset(
                        'assets/icons/microsoft.png',
                        fit: BoxFit.contain,
                        height: 30,
                      ),
                      Visibility(
                        visible: showLabel,
                        child: const FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Sign up using Microsoft',
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
