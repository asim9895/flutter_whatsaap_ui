import "package:flutter/material.dart";

class Whatsaap extends StatefulWidget {
  @override
  _WhatsaapState createState() => _WhatsaapState();
}

class _WhatsaapState extends State<Whatsaap> {
  Color mainColor = Color(0xFF800000);
  var containerRadius = Radius.circular(30.0);

  List<String> imageUrls = [
    "http://www.christopherteh.com/blog/wp-content/uploads/2016/02/Fotolia_84395549_Subscription_Monthly_M.jpg",
    "https://www.buro247.sg/images/beauty/Kaia-Gerber-portrait-deadringer.jpg",
    "https://www.theloop.ca/wp-content/uploads/2015/05/cannes-2015.jpg",
    "https://www.wonderslist.com/wp-content/uploads/2012/10/miley-cyrus.jpg",
    "https://cf.girlsaskguys.com/a34345/a9dff856-9d25-4097-93ae-14611033dc6d.jpg",
    "https://i.pinimg.com/736x/7d/85/0f/7d850f98d7621e07181fbb796365188e.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
        title: Text(
          'Whatsaap',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 27,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.more_horiz_sharp,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    storyButton(imageUrls[0], 'Tessa'),
                    storyButton(imageUrls[1], 'Cryle'),
                    storyButton(imageUrls[2], 'Lissie'),
                    storyButton(imageUrls[3], 'Rebecca'),
                    storyButton(imageUrls[4], 'Nina'),
                    storyButton(imageUrls[5], 'Caroline')
                  ],
                )),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF0B0B13),
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0 , right: 15.0 , top: 15.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  chatTile(imageUrls[0], 'Jessi', 'hello', '12 june', false),
                  chatTile(imageUrls[1], 'Alexa', 'hello', '12 june', true),
                  chatTile(imageUrls[2], 'Siri', 'hello', '12 june', false),
                  chatTile(imageUrls[3], 'Marina', 'hello', '12 june', false),
                  chatTile(imageUrls[4], 'Elena', 'hello', '12 june', true),
                  chatTile(imageUrls[5], 'Rebecca', 'hello', '12 june', false),
                  chatTile(imageUrls[0], 'Caroline', 'hello', '12 june', true),
                  chatTile(imageUrls[0], 'Jessica', 'hello', '12 june', true),
                  chatTile(imageUrls[1], 'Nina', 'hello', '12 june', true),
                  chatTile(imageUrls[2], 'Elizabeth', 'hello', '12 june', false),
                  chatTile(imageUrls[3], 'Ronny', 'hello', '12 june', false),
                  chatTile(imageUrls[4], 'Azra', 'hello', '12 june', true),
                  chatTile(imageUrls[5], 'Zara', 'hello', '12 june', true),
                  chatTile(imageUrls[0], 'Zoya', 'hello', '12 june', false),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

Widget storyButton(String imageUrl, String username) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 30.0,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          username,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        )
      ],
    ),
  );
}

Widget chatTile(String imageUrl, String username, String msg, String date, bool seen) {
  return 
  
     Column(
      children: [
        Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 30.0,
        ),
        SizedBox(width: 10.0,),
        Expanded(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(username,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),)),
                Text(date, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),)
              ],
            ),
            Row(
              children: [
                Expanded(child: Text(username,
                style: TextStyle(
                  color: Colors.white
                ),)),
                if(seen) CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 6,
                  ),
                
                
              ],
            )
          ],
        ))
      ],
    ),
    Divider(color: Colors.blueGrey,)
      ],
    );
  
}
