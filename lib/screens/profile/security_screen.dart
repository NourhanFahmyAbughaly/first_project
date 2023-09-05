import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  final List<Map<String, dynamic>> profileItem = [
    {"Icon": Icon(Icons.lock), "title": "Change password", "function": () {}},
    {"Icon": Icon(Icons.delete), "title": "Delete account", "function": () {}},
    {
      "Icon": Icon(Icons.call),
      "title": "Mobile phone",
      "function": () {},
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Security Account",
          style: TextStyle(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: profileItem.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.0),
                      child: profileItem[index]["Icon"],
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: profileItem[index]["function"],
                        child: ListTile(
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: Text(profileItem[index]["title"]),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
