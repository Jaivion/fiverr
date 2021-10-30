import 'package:fiverr/models/completed_model.dart';
import 'package:fiverr/models/pending_model.dart';
import 'package:fiverr/models/rejected_model.dart';
import 'package:fiverr/providers/completed_provider.dart';
import 'package:fiverr/providers/pending_provider.dart';
import 'package:fiverr/providers/rejected_provider.dart';
import 'package:fiverr/screens/sign_in.dart';
import 'package:fiverr/screens/sign_up.dart';
import 'package:fiverr/widgets/completed_order_card_widget.dart';
import 'package:fiverr/widgets/pending_order_card_widget.dart';
import 'package:fiverr/widgets/rejected_order_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  bool isLoading = false;
  String email = '';
  String? user_id;
  void initState() {
    super.initState();
    _get_session();
  }

  Future<void> _get_session() async {
    setState(() {
      isLoading = true;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_id ??= prefs.getString('id');
    });

    print('my id');
    print(user_id);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return user_id == null
        ? const SignUp()
        : isLoading
            ? const Center(child: CircularProgressIndicator())
            : DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    leading: Container(),
                    title:
                        Text('Appointment ', style: theme.textTheme.headline3),
                    centerTitle: true,
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(50.0),
                      child: Container(
                        height: 45.0,
                        width: size.width,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(
                              color:
                                  const Color(0xff1dbf73)), //theme.primaryColor
                        ),
                        child: TabBar(
                          labelStyle: theme.textTheme.subtitle2!.copyWith(
                              color:
                                  const Color(0xff1dbf73)), //theme.primaryColor
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(
                                color: const Color(
                                    0xff1dbf73)), //theme.primaryColor
                            color:
                                const Color(0xff1dbf73), //theme.primaryColor,
                          ),
                          labelColor: theme.backgroundColor,
                          unselectedLabelColor:  Colors.grey,//theme.primaryColor,
                          
                          tabs: const [
                            Tab(text: 'Next'),
                            Tab(text: 'Completed'),
                            Tab(text: 'Cancelled'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      NextTab(),
                      const CompletedTab(),
                      CancelledTab(),
                    ],
                  ),
                ),
              );
  }
}
// class NextTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print("hello yd");
//     return ListView.builder(
//       itemCount: nextList.length,
//       shrinkWrap: true,
//       physics: ScrollPhysics(),
//       itemBuilder: (context, index) {
//         print(nextList[index]);
//         return OrderCard(appointment: nextList[index]);
//       },
//     );
//   }
// }

class NextTab extends StatefulWidget {
  @override
  State<NextTab> createState() => _NextTabState();
}

class _NextTabState extends State<NextTab> {
  bool isLoading = false;
  String email = '';
  String? user_id;
  void initState() {
    super.initState();
    _get_session();
  }

  Future<void> _get_session() async {
    setState(() {
      isLoading = true;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_id ??= prefs.getString('id');
    });

    print('my id');
    print(user_id);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ChangeNotifierProvider(
            create: (context) => PendingProvider.initial(userid: user_id),

            //create: (context) => PendingProvider.intial(),

            child: Builder(builder: (context) {
              final model = Provider.of<PendingProvider>(context);
              print("heyyyyy ${model.pendingModel}");
              final pendinglist = model.pendingModel;
              print("heyyyyy");
              print(pendinglist.length);
              return ListView.builder(
                itemCount: pendinglist.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  PendingModel pendinglists = pendinglist[index];
                  print(pendinglists);
                  return PendingOrderCard(pendinglists: pendinglists);
                },
              );
            }),
          );
  }
}

class CompletedTab extends StatefulWidget {
  const CompletedTab({
    Key? key,
  }) : super(key: key);

  @override
  State<CompletedTab> createState() => _CompletedTabState();
}

class _CompletedTabState extends State<CompletedTab> {
  bool isLoading = false;
  String email = '';
  String? user_id;
  void initState() {
    super.initState();
    _get_session();
  }

  Future<void> _get_session() async {
    setState(() {
      isLoading = true;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_id ??= prefs.getString('id');
    });

    print('my id');
    print(user_id);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ChangeNotifierProvider(
            //create: (context) => CompletedProvider(),
            create: (context) => CompletedProvider.initial(userid: user_id),

            child: Builder(builder: (context) {
              final model = Provider.of<CompletedProvider>(context);
              print("heyyyyy ${model.completedModel}");
              final completedlist = model.completedModel;
              return ListView.builder(
                itemCount: completedlist.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  CompletedModel completedlists = completedlist[index];
                  return CompletedOrderCard(completedlists: completedlists);
                },
              );
            }),
          );
  }
}

class CancelledTab extends StatefulWidget {
  @override
  State<CancelledTab> createState() => _CancelledTabState();
}

class _CancelledTabState extends State<CancelledTab> {
  bool isLoading = false;
  String email = '';
  String? user_id;
  void initState() {
    super.initState();
    _get_session();
  }

  Future<void> _get_session() async {
    setState(() {
      isLoading = true;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user_id ??= prefs.getString('id');
    });

    print('my id rejected');
    print(user_id);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ChangeNotifierProvider(
            create: (context) => RejectedProvider.initial(userid: user_id),
            // create: (context) => RejectedProvider(),
            child: Builder(builder: (context) {
              final model = Provider.of<RejectedProvider>(context);
              final rejectedlist = model.rejectedModel;
              print(rejectedlist.length);
              return ListView.builder(
                itemCount: rejectedlist.length,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  RejectedModel rejectedlists = rejectedlist[index];
                  return RejectedOrderCard(rejectedlists: rejectedlists);
                },
              );
            }),
          );
  }
}
