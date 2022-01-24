import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_view_app/api_&_utils/Class_userinfo.dart';
import 'package:profile_view_app/constants.dart';
import 'package:profile_view_app/main.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  bool knowMoreVisible = false;
  int followers = userinfo.basic.followings;
  bool isfollowed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          userinfo.basic.username,
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
          size: 30,
        ),
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Column(
              children: [
                Icon(
                  Icons.send_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
                Text(
                  "PINGS",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: DefaultTabController(
        length: 6,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 700.0,
                centerTitle: true,
                toolbarHeight: 700,
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                                image: NetworkImage(userinfo.basic.imageHd),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ),
                      Text(
                        userinfo.basic.name,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "@" + userinfo.basic.username,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black,
                              ),
                              Text(
                                userinfo.locations[0].city,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            followers.toString() + " followers",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            userinfo.basic.quickBookings.toString() +
                                " quickbooks",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.red[700],
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              "See Quickbook",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " #" +
                            userinfo
                                .professions[userinfo.professions.length - 1]
                                .title +
                            " #" +
                            userinfo
                                .professions[userinfo.professions.length - 2]
                                .title +
                            " #" +
                            userinfo
                                .professions[userinfo.professions.length - 3]
                                .title,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 150,
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                    color: Colors.grey, width: 2)),
                            onPressed: () {
                              setState(() {
                                knowMoreVisible = !knowMoreVisible;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "know More",
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            )),
                      ),
                      SizedBox(height: 10,),
                      Visibility(
                        visible: knowMoreVisible,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children:  [
                                 const Icon(Icons.date_range,color: Colors.black,),
                                 const SizedBox(width: 10,),
                                 Text("Joined:   "+userinfo.basic.createdAt.toString().substring(0,16),style: const TextStyle(
                                   color: Colors.black
                                 ),)
                               ],
                             ),
                             SizedBox(height: 10,),

                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children:  [
                                 Icon(Icons.cake,color: Colors.black,),
                                 SizedBox(width: 10,),
                                 Text("Date of Birth:   "+userinfo.basic.dob.toString().substring(0,11),style: TextStyle(
                                   color: Colors.black
                                 ),)
                               ],
                             )
                           ],
                        ),
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            color: isfollowed?Colors.red[700]:Colors.grey[300],
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(side: BorderSide(color: Colors.white70)),
                              onPressed: () {
                                setState(() {
                                  isfollowed=!isfollowed;
                                  if(isfollowed==true)
                                    {
                                      setState(() {
                                        followers=followers+1;
                                      });
                                    }
                                  if(isfollowed==false)
                                  {
                                    setState(() {
                                      followers=followers-1;
                                    });
                                  }
                                });
                              },
                              child: Icon(Icons.person_add,size: 30,color: isfollowed?Colors.white:Colors.black,)),
                          FlatButton(
                              color: Colors.grey[300],
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(side: BorderSide(color: Colors.white70)),
                              onPressed: () {
                                setState(() {});
                              },
                              child: Icon(Icons.send_outlined,size: 30,)),
                        ],
                      )
                    ],
                  ),
                ),
                floating: false,
                pinned: false,
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    onTap: (index) {},
                    padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                    indicator: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    isScrollable: true,
                    tabs: [
                      Tab(child: TabBarContainer("Top", Icon(Icons.star))),
                      Tab(
                          child: TabBarContainer(
                              "Portfolio", Icon(Icons.military_tech))),
                      Tab(
                          child: TabBarContainer(
                              "Client Posting", Icon(Icons.work))),
                      Tab(
                          child: TabBarContainer(
                              "Professions", Icon(Icons.grid_view))),
                      Tab(
                          child: TabBarContainer(
                              "Operating in", Icon(Icons.room))),
                      Tab(
                          child: TabBarContainer(
                              "Interaction", Icon(Icons.contact_support))),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Center(
            child: Text("Sample text"),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
