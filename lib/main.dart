import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF202020),
        appBar: AppBar(
          toolbarHeight: 60,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/circle-face.jpg'),
                  radius: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
          backgroundColor: const Color(0xFF202020),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('EEEE').format(DateTime.now()).toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      DateTime.now().day.toString(),
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      'TODAY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.circle,
                      size: 13,
                      color: Color(0xFFB32680),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 75,
                      width: 222,
                      child: nextDays(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFEF754),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Column(
                              children: [
                                Text(
                                  '11',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '30',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    height: 0.5,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 20,
                                  child: VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  '12',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    height: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Text(
                              'DESIGN\nMEETING',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 50,
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(70, 40, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'ALEX',
                              style: TextStyle(
                                color: Color(0xFFB3AE33),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'HELENA',
                              style: TextStyle(color: Color(0xFFB3AE33)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'HANA',
                              style: TextStyle(color: Color(0xFFB3AE33)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF9C6BCE),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Column(
                              children: [
                                Text(
                                  '12',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '35',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    height: 0.5,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 20,
                                  child: VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  '14',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    height: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Text(
                              'DAILY\nPROJECT',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 50,
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(70, 40, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'ME',
                              style: TextStyle(
                                color: Color(0xFF6C4492),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'RICHARD',
                              style: TextStyle(color: Color(0xFF6C4492)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'CIRY',
                              style: TextStyle(color: Color(0xFF6C4492)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '+4',
                              style: TextStyle(color: Color(0xFF6C4492)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFBCEF4C),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Column(
                              children: [
                                Text(
                                  '15',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    height: 0.5,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 20,
                                  child: VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  '16',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '30',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    height: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Text(
                              'WEEKLY\nPLANNING',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 50,
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(70, 40, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'DEN',
                              style: TextStyle(
                                color: Color(0xFF88B030),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'NANA',
                              style: TextStyle(color: Color(0xFF88B030)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'MARK',
                              style: TextStyle(color: Color(0xFF88B030)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListView nextDays() {
  DateTime now = DateTime.now();
  int currentDay = now.day;
  int lastDayOfMonth = DateTime(now.year, now.month + 1, 0).day;
  List<int> days = [];
  for (int i = currentDay + 1; i <= lastDayOfMonth; i++) {
    days.add(i);
  }
  return ListView.separated(
    scrollDirection: Axis.horizontal,
    itemCount: days.length,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    itemBuilder: (context, index) {
      if (index < days.length) {
        return Text(
          days[index].toString(),
          style: const TextStyle(color: Colors.white70, fontSize: 40),
        );
      } else {
        return const SizedBox.shrink();
      }
    },
    separatorBuilder: (context, index) => const SizedBox(
      width: 20,
    ),
  );
}
