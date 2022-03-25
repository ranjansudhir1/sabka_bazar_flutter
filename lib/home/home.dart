import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabka_bazar/cart/Cart.dart';
import 'package:sabka_bazar/home/bloc/home_bloc.dart';
import 'package:sabka_bazar/models/UserDetails.dart';
import 'package:sabka_bazar/services/ApiService.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titles = ["List 1", "List 2", "List 3"];
    final subtitles = [
      "Here is list 1 subtitle",
      "Here is list 2 subtitle",
      "Here is list 3 subtitle"
    ];
    return BlocProvider(
        // create: (context) => HomeBloc(RepositoryProvider.of<ApiService>(context)),
        create: (context) => HomeBloc(
              RepositoryProvider.of<ApiService>(context),
            )..add(LoadApiEvent()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Home",
          home: Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset('assets/logo.png'),
              ),
              actions: [
                SizedBox(
                    width: 30,
                    child: GestureDetector(
                      child: Image.asset(
                        'assets/cart.png',
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Cart()));
                      },
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: const Text(
                      "0 items",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
              leadingWidth: 90,
              backgroundColor: Colors.white,
            ),
             body: const HomePage(),
          /*  body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
              if (state is HomeLoadingState) {
                print("Test---");
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is HomeLoadedState) {
                print("Test");
              }
            },),*/
          ),
        ));
    /* return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset('assets/logo.png'),
          ),
          actions: [
            SizedBox(
                width: 30,
                child: GestureDetector(
                  child: Image.asset(
                    'assets/cart.png',
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Cart()));
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Text(
                  "0 items",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
          leadingWidth: 90,
          backgroundColor: Colors.white,
        ),
        body: const HomePage(),
      ),
    );*/
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titles = ["List 1", "List 2", "List 3"];
    final subtitles = [
      "Here is list 1 subtitle",
      "Here is list 2 subtitle",
      "Here is list 3 subtitle"
    ];
    List<UserDetails> listUser = [];

    final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              margin: EdgeInsets.zero,
              elevation: 3,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0.0))),
              child: ListTile(
                  subtitle: Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'inside column',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(
                          "I'm not sure why this was marked as the answer, as this only centers text horizontally, but the question asks for horizontally and vertically.",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          textAlign: TextAlign.center),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 170,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.pink,
                                primary: Colors.white, // foreground
                              ),
                              onPressed: () {},
                              child: const Text("Explore")),
                        ),
                      )
                    ],
                  ),
                  /*leading: const Image(
                  image: AssetImage('assets/vegetables_basket.png'),
                  fit: BoxFit.fill
                ),*/
                  leading: Image.network(
                      "https://www.transparentpng.com/thumb/vegetable/mw4OSK-vegetables-basket-png.png")
                  // leading: Container(child: const FlutterLogo(),padding: const EdgeInsets.fromLTRB(0, 35, 0, 0)),
                  ));
        });
  }
}
