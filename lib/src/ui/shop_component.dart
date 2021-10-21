import 'package:flutter/material.dart';

class ShopComponent extends StatefulWidget {
  const ShopComponent({Key? key}) : super(key: key);

  @override
  _ShopComponentState createState() => _ShopComponentState();
}

class _ShopComponentState extends State<ShopComponent> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            PhysicalModel(
              color: Colors.black.withOpacity(0.1),
              elevation: 2,
              child: Container(
                color: Colors.white,
                child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green,
                    tabs: [
                      Tab(
                        text: 'Shops',
                      ),
                      Tab(
                        text: 'Lists',
                      )
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Container(
                                height: 48,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                child: TextField(
                                  controller: _textEditingController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search everything',
                                    icon: Icon(Icons.search),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 94,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 32,
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Pharmacy',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Deals',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward_ios),
                                    onPressed: () {},
                                    iconSize: 18,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 160,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                84,
                                        child: Card(elevation: 4),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(itemBuilder: (context, index) {
                  return Container();
                })
              ]),
            )
          ],
        ),
      ),
    );
  }
}