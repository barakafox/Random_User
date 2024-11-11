import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user/Provider/user_provider.dart';
import 'package:random_user/Widget/user_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<UserProvider>(
            builder: (context, objectProvider, child) {
              var objectModel = objectProvider.userModel;
              if(objectModel == null){
                objectProvider.GetData();
                return CircularProgressIndicator();
              }
              return ListView.builder(
                  itemBuilder: (context, index) {
                  var user = objectModel[index];
                    String Image = user.picture['medium'];
                    String first = user.name['first'];
                    String last = user.name['last'];
                    String title = user.name['title'];

                    return CustomWidget(
                        image: Image,
                        title: title,
                        first: first,
                        last: last
                    );
                  },
                itemCount: objectModel.length,
              );
            },
        )
      ),
    );
  }
}
