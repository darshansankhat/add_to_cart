import 'package:add_to_cart/Cart_scrren/Model_class/Fashion_Model.dart';
import 'package:add_to_cart/Cart_scrren/Provider_scrren/Fashin_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {

  Fashion_provider? provif;
  Fashion_provider? provit;

  @override
  Widget build(BuildContext context) {

     provif =Provider.of<Fashion_provider>(context,listen: false);
     provit =Provider.of<Fashion_provider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Fashion",
            style: GoogleFonts.anton(fontSize: 30, color: Colors.blue),
          ),
        ),
        body: SizedBox(
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 225,
              ),
              itemBuilder: (context, index) {
                return item(index);
              },
              itemCount: 10),
        ),
      ),
    );
  }

  Widget item(int index) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("${provif?.Fashionlist[index].img}",fit: BoxFit.fill,
              ),
            ),
          ),
          Text("${provif?.Fashionlist[index].name}"),
          Text("${provif!.Fashionlist[index].price}")
        ],
      )
    );
  }
}
