import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jarkop_customer_app/pages/LoginRegister/loginRegister.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final user = FirebaseAuth.instance.currentUser;

  Splitter() {
    List<String> nama = (user!.email.toString().split('@'));
    String username = nama[0];

    return username;
  }

  _signOut() async {
    await FirebaseAuth.instance.signOut().then((value) => Navigator.of(context)
        .pushReplacement(
            MaterialPageRoute(builder: (context) => LoginRegister())));
  }

  merchantDetail(context) {
    Get.offAll(LoginRegister());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 70,
                ),
                title: Text(
                  'John Doe',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '+62 1234567890\n ${Splitter()}@mail.com',
                  style: TextStyle(fontFamily: 'Noto Sans', fontSize: 16),
                ),
                trailing: IconButton(
                    onPressed: () {
                      // merchantDetail(context);
                    },
                    icon: Icon(Icons.edit)),
                isThreeLine: true,
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 18, top: 10),
                child: Text(
                  "Account",
                  style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          ListTile(
            title: Text(
              "Rewards",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            title: Text(
              "Business Profile",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            title: Text(
              "Notification",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 18, top: 20),
                child: Text(
                  "General",
                  style: TextStyle(
                      fontFamily: 'Noto Sans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          ListTile(
            title: Text(
              "Help Center",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            title: Text(
              "Feedback",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            title: Text(
              "Rating",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          ListTile(
            title: Text(
              "Rewards",
              style: TextStyle(fontFamily: 'Noto Sans', fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                _signOut();
              },
              child: const Text(
                "Logout",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto Sans'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
