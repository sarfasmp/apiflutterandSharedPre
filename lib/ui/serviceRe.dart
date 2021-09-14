import 'package:api_sharedepfrs/model/apiModel.dart';
import 'package:api_sharedepfrs/provider/serviceProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var servPro=Provider.of<ServiceProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("UI");


          //servPro.serviceRequestFetch();

        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
      appBar: AppBar(
        title: Text("Service"),

      ),
      body: FutureBuilder(
        future: servPro.serviceRequestFetch(),
        builder: (context,snapshot)
        {
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }
          else{

           final dataList= snapshot.data as ServiceRequest;
            return ListView(
              children:dataList.data!.map((e) => Container(
                child: Text(e.title.toString()),
              )).toList()
            );
          }


        },
      )


    );

  }
}


// ListView(
// children:
// servPro.serviceRequest!=null?
// servPro.serviceRequest!.data!.map((e) => Container(
// child: Text(e.title.toString()),
// ),).toList():[
//
// Center(child: CircularProgressIndicator())
//
// ]
// ),