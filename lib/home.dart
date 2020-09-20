import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
import 'main.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Center(
                      child: Text(
                'WhatsApp',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ))),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
                child: IconButton(
              splashRadius: 20,
              splashColor: Colors.white30,
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
                child: Opacity(
                    opacity: 1,
                    child: IconButton(
                      onPressed: () {},
                      splashRadius: 20,
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ))),
          )
        ], //actions
        bottom: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          controller: _tabController,
          tabs: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 25,
                child: Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 20,
                  ),
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Tab(
                    child: Text(
                  'CHATS',
                ))),
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Tab(
                    child: Text(
                  'STATUS',
                ))),
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Tab(
                    child: Text(
                  'CALLS',
                ))),
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
