import 'package:employee_attendance/controller/leaves_controller.dart';
import 'package:employee_attendance/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../widget/flutter_toast.dart';

class ApplyLeaves extends StatefulWidget {
  const ApplyLeaves({super.key});

  @override
  State<ApplyLeaves> createState() => _ApplyLeavesState();
}

class _ApplyLeavesState extends State<ApplyLeaves> {
  LeavesController leavesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.black, size: 20)),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Apply Leave",
          style: TextStyle(
              fontSize: 15,
              letterSpacing: 0.5,
              color: Colors.black,
              fontWeight: FontWeight.w900),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xff3085FE))),
                child: TextFormField(
                  controller: leavesController.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  decoration: const InputDecoration(
                      labelText: 'Title',
                      hintText: '',
                      labelStyle:
                          TextStyle(color: Color(0xff64A3FE), fontSize: 10),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff3085FE)),
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                        value: "Medical Leave",
                        child: Text("Medical Leave",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400))),
                    DropdownMenuItem(
                        value: "Family Leave",
                        child: Text("Family Leave",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400))),
                    DropdownMenuItem(
                      value: "Casual Leave",
                      child: Text("Casual Leave",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                    )
                  ],
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  // validator: (value) {
                  //   if (value == null) {
                  //     return "Please Enter Data";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  decoration: const InputDecoration(
                      labelText: 'Leave Type',
                      labelStyle:
                          TextStyle(color: Color(0xff64A3FE), fontSize: 10),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
                  // value:  experience,
                  isExpanded: true,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  value: leavesController.leaveType,
                  onChanged: (String? value) {
                    leavesController.leaveType = value!;
                    setState(() {});
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xff3085FE))),
                child: TextFormField(
                    controller: leavesController.contactNumber,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                    keyboardType: const TextInputType.numberWithOptions(),
                    maxLength: 10,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                      labelText: 'Contact Number',
                      labelStyle:
                          TextStyle(color: Color(0xff64A3FE), fontSize: 11),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    )),
              ),
              const SizedBox(
                height: 23,
              ),
              InkWell(
                onTap: () async {
                  DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2016),
                      lastDate: DateTime(2030));

                  leavesController.sDate.text = date.toString();

                  leavesController.formatSDate.text =
                      DateFormat("MMM dd, yyyy").format(date!);
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xff3085FE))),
                  child: TextFormField(
                    controller: leavesController.formatSDate,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                    enabled: false,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Start Date',
                      labelStyle:
                          TextStyle(color: Color(0xff64A3FE), fontSize: 11),
                      suffixIcon: Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.black,
                        size: 23,
                      ),
                      hintText: '',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              InkWell(
                onTap: () async {
                  DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2016),
                      lastDate: DateTime(2030));

                  leavesController.eDate.text = date.toString();
                  leavesController.formatEDate.text =
                      DateFormat("MMM dd, yyyy").format(date!);
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xff3085FE))),
                  child: TextFormField(
                    controller: leavesController.formatEDate,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                    enabled: false,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'End Date',
                      labelStyle:
                          TextStyle(color: Color(0xff64A3FE), fontSize: 11),
                      suffixIcon: Icon(
                        Icons.calendar_month_outlined,
                        size: 23,
                        color: Colors.black,
                      ),
                      hintText: '',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Text(
                "Reason for Leave",
                style: TextStyle(color: Color(0xff64A3FE), fontSize: 12),
              ),
              const SizedBox(height: 4),
              Container(
                height: Get.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xff3085FE))),
                child: TextFormField(
                    controller: leavesController.reason,
                    maxLines: null,
                    textInputAction: TextInputAction.done,
                    textAlignVertical: TextAlignVertical.top,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      border: InputBorder.none,
                    )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CustomButton(
                buttonText: 'Apply Leave',
                onTap: () {
                  if (leavesController.title.text.isEmpty) {
                    showToast(msg: "filled it");
                  } else if (leavesController.contactNumber.text.isEmpty) {
                    showToast(msg: 'enter contact number');
                  } else if (leavesController.formatSDate.text.isEmpty) {
                    showToast(msg: 'select date');
                  } else if (leavesController.formatEDate.text.isEmpty) {
                    showToast(msg: 'select date');
                  } else if (leavesController.reason.text.isEmpty) {
                    showToast(msg: 'enter reason');
                  } else {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ListView(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 5,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffE7E7E8),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Lottie.asset('assets/json/done_ani.json',
                                    height: 150),
                                const Text(
                                  'Leave Applied\n Successfully',
                                  style: TextStyle(
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19.8),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Your Leave has been',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5,
                                      fontSize: 13.8,
                                      color: Color(0xff67696C)),
                                ),
                                const Text(
                                  'applied successfully',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5,
                                      fontSize: 13.8,
                                      color: Color(0xff67696C)),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: CustomButton(
                                      buttonText: 'Done',
                                      onTap: () {
                                        Get.back();
                                        Get.back();
                                      }),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  }
                }),
          )),
    );
  }
}
