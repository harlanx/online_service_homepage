part of '../../screens/home.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  bool _obscurePass = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
            obscureText: _obscurePass,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              contentPadding: const EdgeInsets.all(5.0),
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_rounded),
                onPressed: () {
                  setState(() {
                    _obscurePass = !_obscurePass;
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.history_edu_rounded),
              Text('Sign Up'),
            ],
          ),
          onPressed: () {},
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
                child: Image.asset(
                  'assets/icons/facebook.png',
                  height: 30,
                ),
              ),
              const Text('Sign up using Facebook'),
            ],
          ),
          onPressed: () {},
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4285F4),
            foregroundColor: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: 30,
                margin:
                    const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
                padding: const EdgeInsets.all(2.5),
                child: Image.asset(
                  'assets/icons/google.png',
                ),
              ),
              const Text('Sign up using Google'),
            ],
          ),
          onPressed: () {},
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF737373),
            foregroundColor: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
                child: Image.asset(
                  'assets/icons/microsoft.png',
                  height: 30,
                ),
              ),
              const Text('Sign up using Microsoft'),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
