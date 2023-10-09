import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/account/data/model/profile_model.dart';
import 'package:my_app/account/screens/widget/show_all_booking.dart';
class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key, required this.profileModel});
  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .1),
          const Icon(
            Icons.person,
            size: 42,
            color: Colors.black,
          ),
          Text(
            profileModel.name.toString(),
            style: GoogleFonts.roboto().copyWith(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24),
          ),
          SizedBox(height: 12.h),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 12.w),
            child: Text(
              'History',
              style: GoogleFonts.roboto().copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.sp,
                  color: Colors.black),
            ),
          ),
    const     ShowAllBooking(),
          SizedBox(height: 28.h)
        ],
      ),
    );
  }
}
