import 'package:flutter/material.dart';
import 'package:industry/utils/dimensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App Name'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'LISTE DES\nMACHINES',
                style: TextStyle(
                  fontSize: Dimensions.font26 + 5,
                ),
              ),
              Icon(
                Icons.search_rounded,
                size: Dimensions.iconseSize24 + 20,
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.mail_lock_rounded),
                      title: Text('Hello'),
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
