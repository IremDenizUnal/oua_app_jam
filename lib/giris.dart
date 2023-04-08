import 'package:flutter/material.dart';
import 'package:flutter_application_2/kayitol.dart';
import 'package:flutter_application_2/paylasim.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => notepage()),
    );
  }

  void _onKayitOlPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _onPressed(context),
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
      floatingActionButton: KayitOlButton(
        onPressed: () => _onKayitOlPressed(context),
      ),
    );
  }
}

class KayitOlButton extends StatelessWidget {
  final VoidCallback onPressed;

  const KayitOlButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0,
      right: 16.0,
      child: SizedBox(
        width: 100.0,
        height: 40.0,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text('Kayıt Ol'),
        ),
      ),
    );
  }
}
