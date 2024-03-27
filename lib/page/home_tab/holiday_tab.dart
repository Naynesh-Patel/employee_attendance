import 'package:flutter/material.dart';

class HolidayTab extends StatefulWidget {
  const HolidayTab({Key? key}) : super(key: key);

  @override
  State<HolidayTab> createState() => _HolidayTabState();
}

class _HolidayTabState extends State<HolidayTab> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       title: const Text('Holiday List',
       style: TextStyle(
         fontWeight: FontWeight.w900,
         fontSize: 17
       ),
       ),

     ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                return Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(offset: Offset(1, 2),color: Color(0xffF6F6F6))
                      ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),topLeft: Radius.circular(15)),
                          color: Color(0xffE7E7E8),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_month_outlined,size: 23),
                                SizedBox(width: 10),
                                Text('Date and Year',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13
                                  ),
                                ),
                              ],
                            ),
                            Text('Festival',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),
                            )
                          ],
                        ),
                      ),
                      Text('Sunday',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffD0D2D5)
                        ),
                      )

                    ],
                  ),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}
