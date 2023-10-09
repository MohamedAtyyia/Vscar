import 'package:flutter/material.dart';
import 'package:my_app/util/model/doctor.dart';
import 'package:my_app/util/widget/doctor_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.all_doctor});
final   List<Doctors>all_doctor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: all_doctor.length,
        itemBuilder: (context, index) => DoctorItem(
          doctor: all_doctor[index],
        ),
      ),
    );
  }
}