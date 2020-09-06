import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // Tab Controller
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 94, 84, 1),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 170, 0),
              child: Center(
                  child: Text(
                'WhatsApp',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ))),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
                child: Opacity(
                    opacity: 1,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
                child: Opacity(
                    opacity: 1,
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ))),
          )
        ], //actions
        bottom: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          controller: _tabController,
          tabs: [
            Center(
              child: Container(
                width: 15,
                child: Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 20,
                  ),
                ),
              ),
            ),
            Container(width: 90, child: Tab(text: 'CHATS')),
            Container(width: 90, child: Tab(text: 'STATUS')),
            Container(width: 90, child: Tab(text: 'CALLS')),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
