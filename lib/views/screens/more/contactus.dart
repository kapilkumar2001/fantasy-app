import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        backgroundColor: Colors.red,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: deviceHeight*3,),
          Center(child: Text("Feel free to contact us at:"),),
          SizedBox(height: deviceHeight*2,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth*4),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(deviceWidth*4),
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text("Chat with Us:"),
                  subtitle: Text("We are live and ready to help!"),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth*4),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(deviceWidth*4),
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text("Email Us:"),
                  subtitle: Text("contact@create11.in"),
                ),
              ),
            ),
          ),

          SizedBox(height: deviceHeight*3,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth*10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: deviceWidth*6,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-instagram-new-square2-512.png"),
                ),
                CircleAvatar(
                  radius: deviceWidth*6,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png"),
                ),
                CircleAvatar(
                  radius: deviceWidth*6,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage("https://global-uploads.webflow.com/5e157548d6f7910beea4e2d6/6304a2578abd315b18c8f6e9_twitter-logo.png"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}