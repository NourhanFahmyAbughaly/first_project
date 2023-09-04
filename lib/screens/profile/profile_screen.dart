import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currntIndex = 0;
  final List<Map<String, dynamic>> profileItem = [
    {"Icon": Icon(Icons.person), "title": "MyAccount", "function": () {}},
    {
      "Icon": Icon(Icons.lock_outline_rounded),
      "title": "Security account",
      "function": () {}
    },
    {
      "Icon": Icon(Icons.location_history),
      "title": "Addresses",
      "function": () {}
    },
    {
      "Icon": Icon(Icons.shopping_cart),
      "title": "My Orders",
      "function": () {}
    },
    {
      "Icon": Icon(Icons.medical_information),
      "title": "My Coupon",
      "function": () {}
    },
    {
      "Icon": Icon(Icons.media_bluetooth_off_outlined),
      "title": "My Points",
      "function": () {}
    },
    {"Icon": Icon(Icons.card_travel), "title": "My Cards", "function": () {}},
    {
      "Icon": Icon(Icons.account_balance_wallet_rounded),
      "title": "My Wallet",
      "function": () {}
    },
    {
      "Icon": Icon(Icons.card_giftcard),
      "title": "Gift Card",
      "function": () {}
    },
    {"Icon": Icon(Icons.settings), "title": "settings", "function": () {}},
    {"Icon": Icon(Icons.logout), "title": "Log out", "function": () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currntIndex = index;
          });
        },
        iconSize: 30,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: currntIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Homnotificationse",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset("assets/image 28.png"),
              radius: 40,
            ),
            Text(
              "Nourhan Abu Ghaly",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: MaterialButton(
                textColor: Colors.grey,
                onPressed: () {},
                child: Text("      Edit Profile     "),
              ),
            ),
            Expanded(
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
                            padding: EdgeInsets.all(8.0),
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
            )
          ],
        ),
      ),
    );
  }
}
