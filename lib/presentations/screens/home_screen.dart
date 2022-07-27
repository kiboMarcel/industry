import 'package:flutter/material.dart';
import 'package:industry/utils/dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: InkWell(
          onTap: () => _scrollController.jumpTo(0),
          child: Text(
            'App Name',
            style: TextStyle(color: Colors.black45),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            icon: Icon(
              Icons.search_rounded,
              size: Dimensions.iconseSize24,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.height10 - 5,
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Expanded(
            child: ListView.builder(
                controller: _scrollController,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.build),
                      title: Text('Machine ${index + 1} '),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

/* Container _buildGradient(Animation<double> animation, context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.transparent,
          ColorTween(
                  begin: Theme.of(context).colorScheme.onBackground,
                  end: Theme.of(context).primaryColor)
              .evaluate(animation)!
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
  );
} */

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null), icon: Icon(Icons.arrow_back));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
