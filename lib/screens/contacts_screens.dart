import 'package:digital_wallet_ui/custom_widget/contacts_page_custom_widget.dart';
import 'package:digital_wallet_ui/utils/app_assets.dart';
import 'package:digital_wallet_ui/utils/app_color.dart';
import 'package:digital_wallet_ui/utils/app_string.dart';
import 'package:digital_wallet_ui/utils/app_text_style.dart';
import 'package:flutter/material.dart';
class ContactsScreens extends StatelessWidget {
  const ContactsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      /// appbar text
      title: Text(AppString.appBarText,
      style: appBarText,
      ),
      centerTitle: true,
      /// arrow icons
      leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image.asset(AppImage.arrowIcon)),
      backgroundColor: AppColor.appBarColor,
    ),
      backgroundColor: AppColor.bodyColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   padding: EdgeInsets.all(12),
              //   width: 315,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: AppColor.bodyColor,
              //     borderRadius: BorderRadius.circular(15),
              //     border: Border(
              //       top: BorderSide(color: Colors.black26),
              //       right: BorderSide(color: Colors.black26),
              //       left: BorderSide(color: Colors.black26),
              //       bottom: BorderSide(color: Colors.black26),
              //     ),
              //     ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       /// search text
              //       Text(AppString.searchText,
              //       style: searchText,
              //       ),
              //       /// search icons
              //       Image.asset(AppImage.searchIcon)
              //     ],
              //   ),
              //   ),
              Padding(
                padding: const EdgeInsets.only(right:20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.appBarColor,
                    hintText: AppString.searchText,
                    hintStyle: searchText,
                    suffixIcon: Image.asset(AppImage.searchIcon),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                    ),
                    focusedBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(width: 1,color: Colors.red),
                        borderRadius: BorderRadius.circular(15)
                      ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(15)
                    )


                  ),
                ),
              ),
               SizedBox(height: 30),
              /// recent text
              Text(AppString.recentText,
              style: recentText,
              ),
              SizedBox(height: 25),
             /// use contacts Page custom widget
             ContactsPageCustomWidget(photo: AppImage.samantha, name: AppString.samantaText, title: AppString.samantaTitle),
              SizedBox(height: 25),
              ContactsPageCustomWidget(photo: AppImage.roseHope, name: AppString.roseHopeName, title: AppString.roseHopeTitle),
              SizedBox(height: 25),
              ContactsPageCustomWidget(photo: AppImage.angela, name: AppString.angelaName, title: AppString.angelaTitle),
              SizedBox(height: 30),
              Image.asset(AppImage.lineIcon),
              SizedBox(height: 20),
              /// use all contacts text
              Text(AppString.allContactText,
              style: recentText,
              ),
              SizedBox(height: 20),
              /// use contacts page custom widget
              ContactsPageCustomWidget(photo: AppImage.andrea, name: AppString.andreaName, title: AppString.andreaTitle),
              SizedBox(height: 25),
              ContactsPageCustomWidget(photo: AppImage.karen, name: AppString.karenName, title: AppString.karenTitle),
              SizedBox(height: 25),
              ContactsPageCustomWidget(photo: AppImage.thomas, name: AppString.thomasName, title: AppString.thomasTitle),

            ],
          ),
        ),
      ),
    );
  }
}
