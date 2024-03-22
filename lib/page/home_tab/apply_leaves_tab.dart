import 'package:employee_attendance/page/home_tab/leaves_tab.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class ApplyLeaves extends StatefulWidget {
  const ApplyLeaves({super.key});

  @override
  State<ApplyLeaves> createState() => _ApplyLeavesState();
}

class _ApplyLeavesState extends State<ApplyLeaves> {
  TextEditingController sDate = TextEditingController();
  TextEditingController eDate = TextEditingController();
  TextEditingController formatSDate = TextEditingController();
  TextEditingController formatEDate = TextEditingController();
  String? leaveType;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Apply Leave",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                 TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'filled it';
                    } else{
                      return null;
                    }
                  },
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(color: Color(0xff3085FE),fontSize: 12),
                    contentPadding: EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3085FE))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3085FE))),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                        value: "Medical Leave", child: Text("Medical Leave")),
                    DropdownMenuItem(
                        value: "Family Leave", child: Text("Family Leave")),
                    DropdownMenuItem(
                      value: "Casual Leave",
                      child: Text("Casual Leave"),
                    )
                  ],

                  validator: (value) {
                    if (value == null) {
                      return "Please Enter Data";
                    } else {
                      return null;
                    }
                  },
                  decoration:  const InputDecoration(
                    labelText: 'Leave Type',
                      labelStyle: TextStyle(color: Color(0xff3085FE),fontSize: 12),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3085FE))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3085FE))),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10)),
                  // value:  experience,
                  isExpanded: true,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  value: leaveType,
                  onChanged: (String? value) {
                    leaveType = value!;
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                const SizedBox(
                  height: 25,
                ),
                 TextFormField(
                  style: const TextStyle(
                    color: Colors.black
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'enter number';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3085FE))),
                      labelText: 'Contact Number',
                      labelStyle: TextStyle(color: Color(0xff3085FE),fontSize: 12),
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3085FE))),
                      fillColor: Color(0xff3085FE)),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () async {
                    DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2016),
                        lastDate: DateTime(2030));

                    sDate.text = date.toString();
                    formatSDate.text = DateFormat("dd-MMM-yyyy").format(date!);
                    setState(() {});
                  },
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'select date';
                      } else {
                        return null;
                      }
                    },
                    controller: formatSDate,
                    style: const TextStyle(color: Colors.black),
                    enabled: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff3085FE))),
                        labelText: 'Start Date',
                        labelStyle: TextStyle(color: Color(0xff3085FE),fontSize: 12),
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                        ),
                        hintText: '',
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff3085FE))),
                        fillColor: Color(0xff3085FE)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () async {
                    DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2016),
                        lastDate: DateTime(2030));

                    eDate.text = date.toString();
                    formatEDate.text = DateFormat("dd-MMM-yyyy").format(date!);
                    setState(() {});
                  },
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'select date';
                      } else {
                        return null;
                      }
                    },
                    controller: formatEDate,
                    style: const TextStyle(color: Colors.black),
                    enabled: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff3085FE))),
                        labelText: 'End Date',
                        labelStyle: TextStyle(color: Color(0xff3085FE),fontSize: 12),
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                        ),
                        hintText: '',
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff3085FE))),
                        fillColor: Color(0xff3085FE)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                 const Text("Reason for Leave",
                 style: TextStyle(
                   color: Color(0xff3085FE)
                 ),
                 ),
                  TextFormField(
                   maxLines: null,
                   textInputAction: TextInputAction.done,
                  textAlignVertical: TextAlignVertical.top,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'enter reason';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3085FE)
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3085FE)
                      )
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
          elevation: 0,
          child: CustomButton(buttonText: 'Apply Leave', onTap: (){
            if (_formKey.currentState!.validate()){
              showModalBottomSheet(context: context, builder: (context) {
                return Container(
                  height: 500,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Lottie.asset('assets/json/done.json',height: 250),
                      const Text('Leave Applied',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20
                        ),
                      ),
                      const Text('Successfully',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20
                        ),
                      ),
                      const Text('Your Leave has been',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff67696C)
                        ),
                      ),
                      const Text('applied successfully',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff67696C)
                        ),
                      ),
                      const SizedBox(
                          height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(buttonText: 'Done', onTap: (){
                          Get.back();
                          Get.back();
                        }),
                      )
                    ],
                  ),
                );
              },);
            }

          })
      ),
    );
  }
}
