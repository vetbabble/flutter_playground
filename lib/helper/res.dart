import 'package:flutter/material.dart';


class ColorRes {
  static Color white                   = const Color(0xFFffffff);
  static Color black                   = const Color(0xFF000000);
  static Color lightBlack              = const Color(0xFF161616);
  static Color lightGrey               = const Color(0xFF707070);
  static Color lightBlueText           = const Color(0xFF4E9BFF);
  static Color lightRedText            = const Color(0xFFFF5A5A);
  static Color otpRedText              = const Color(0xFFFF6767);
  static Color productBgGrey           = const Color(0xFFF3F3F3);
  static Color productBgSubCat         = const Color(0xFFE1E1E1);
  static Color cancelGreyText          = const Color(0xFF707070);
  static Color reviewGreyText          = const Color(0xFF828282);
  static Color rateBoxBorder           = const Color(0xFFD8D8D8);
  static Color rateReplay              = const Color(0xFF297EFF);
  static Color ratingLine              = const Color(0xFFFFC400);
  static Color overallGreyText         = const Color(0xFFB2B2B2);
  static Color businessPageBg          = const Color(0xFFFBFBFB);
  static Color sliderBg                = const Color(0xFF848484);
  static Color validationColorRed      = const Color(0xFFf44336);
  static Color yellow                  = const Color(0xFFfff200);
  static Color greyText                = const Color(0xFFb0afaf);
  static Color red                     = const Color(0xFFff0000);
  static Color fontGrey                = const Color(0xFFA2A2A2);
  static Color blue                    = const Color(0xFF4991e1);
  static Color transparent             = Colors.transparent;

}

class StringRes {
  static var marketPlace            =   "MarketPlace";
  static var townsyTitle            =   "Townsy";
  static var businessTitle          =   "Business";
  static var register               =   "REGISTER";
  static var signIn                 =   "SIGN IN";
  static var continueGoogle         =   "CONTINUE WITH GOOGLE";
  static var continueWithEmail      =   "or continue with email";
  static var registerBtn            =   "REGISTER";
  static var loginBtn               =   "SIGN IN";
  static var openingTimeSelect      =   "*Please Select Time";
  static var selectBusinessType     =   "*Please Select Business Type";
  static var requiredFiled          =   "*Required field";
  static var doNotMatch             =   "*Email and password don't match";
  static var emailFiledVal          =   "Invalid email";
  static var passNotMatch           =   "Passwords don't match";
  static var moreThanChar           =   "Lastname must be more than 2 charater";
  static var emailValString         =   r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static var next                   =   "NEXT";
  static var forgotPassword         =   "Forgot password?";
  static var marketplace            =   "marketplace";
  static var verifyMobile           =   "Verify your mobile number";
  static var enterTenDigit          =   "Enter 10 digit mobile number";
  static var enterEmail             =   "Enter Your Email";
  static var successFullySend       =   "Reset Password Link Sent.";
  static var enterOtp               =   "PLEASE ENTER THE OTP SENT TO YOUR MOBILE";
  static var nineOne                =   "+91";
  static var sendNineOne            =   "91";
  static var verifyMobileS          =   "Verify Mobile";
  static var send                   =   "Send";
  static var yes                    =   "Yes";
  static var no                     =   "No";
  static var privacy                =   "Privacy Policy";
  static var terms                  =   "Terms & Conditions";
  static var guidelines             =   "Guidelines";
  static var and                    =   "and";
  static var registerLine           =   "By clicking \"REGISTER\" you agree to our";
  static var hintOfBusinessCategory =   "Apparels, bike accessories, hardware product, etc.";

  //showtoast message: -
  static var deleteCategoryMsg      =   "Are you sure, you want to delete this Category?";
  static var deleteProductMsg       =   "Are you sure, you want to delete this Product?";
  static var deleteBusinessMsg      =   "Are you sure, you want to delete this business profile account?";
  static var registerSuccess        =   "User register successfullly";
  static var loginSuccess           =   "User login successful";
  static var makePrivate            =   "Make profile to private ";
  static var makePublic             =   "Make profile to public";
  static var deleteSuccessMsg       =   "Sucessfully delete business profile";
  static var productInsertMsg       =   "Product added successfully";
  static var updateBusinessProMsg   =   "Business profile update successfully";
  static var addCategorySuccess     =   "Category add successfullly";
  static var updateCategorySuccess  =   "Category update successfullly";
  static var deleteCategorySuccess  =   "Category delete Successfullly";
  static var updateProductSuccess   =   "Product updated successfully";
  static var pleaseEnterCategory    =   "Please enter the category name";
  static var profileUpdate          =   "Profile update successfully";


  static var invalidOtp             =   "INVALID OTP";
  static var resendOtp              =   "RESEND OTP";
  static var support                =   "Support";
  static var about                  =   "About";
  static var logout                 =   "Log out";
  static var businessInfo           =   "BUSINESS\nINFO";
  static var products               =   "PRODUCTS";
  static var ratingsReviews         =   "RATINGS &\nREVIEWS";
  static var analytics              =   "ANALYTICS";
  static var valRequiredFiled       =   "required field";
  static var email                  =   "Email";
  static var monthSelection         =   "Select Month";

  static var password               =   "Password";

  static var hintFirstName          =   "First Name";
  static var hintLastName           =   "Last Name";
  static var hintEmail              =   "Email";
  static var hintPassword           =   "Password";
  static var hintConPassword        =   "Confim Password";

  static var monday                 =   "MONDAY";
  static var tuesday                =   "TUESDAY";
  static var wednesday              =   "WEDNESDAY";
  static var thursday               =   "THURSDAY";
  static var friday                 =   "FRIDAY";
  static var saturday               =   "SATURDAY";
  static var sunday                 =   "SUNDAY";
  static var closed                 =   "CLOSED";


  static var businessName           =  "BUSINESS NAME";
  static var businessAddress        =  "BUSINESS ADDRESS";
  static var phoneNumber            =  "PHONE NUMBERS";
  static var mobileNumber           =  "MOBILE NUMBER";
  static var telephoneNumber        =  "TELEPHONE NUMBER (Optional)";
  static var otpRequired            =  "(OTP VERIFICATION REQUIRED)";

  static var manufacturer           =  "MANUFACTURER";
  static var wholeSeller            =  "WHOLESALER";
  static var retailer               =  "RETAILER";

  static var openingTime            =  "OPENING TIMES";
  static var businessCategory       =  "BUSINESS CATEGORY";
  static var businessDes            =  "(Be as specific as you can. This will help your customer search you better.)";
  static var businessType           =  "BUSINESS TYPE";
  static var otherInfoCustomer      =  "OTHER INFO FOR CUSTOMERS (Optional)";


  static var createProfile          =  "CREATE PROFILE";
  static var editBusinessInfo       =  "EDIT BUSINESS INFO";
  static var save                   =  "SAVE";
  static var markProfilePrivate     =  "MARK PROFILE PRIVATE";
  static var markProfilePublic      =  "MARK PROFILE PUBLIC";
  static var deleteBusinessProfile  =  "DELETE BUSINESS PROFILE";


  //Product screen
  static var addCategory            =  "ADD CATEGORY";
  static var categoryName           =  "CATEGORY NAME:";
  static var addCategoryName        =  "Add Category Name";
  static var editCategoryName       =  "Edit Category Name";
  static var cancel                 =  "Cancel";
  static var done                   =  "Done";
  static var delete                 =  "Delete";
  static var addProduct             =  "ADD \n PRODUCT";
  static var gm                     =  "gm";
  static var views                  =  "Views";
  static var update                 =  "UPDATE";

// Product Info Screen

  static var productName            =  "PRODUCT NAME";
  static var descriptionProduct     =  "DESCRIPTION";
  static var priceTitle             =  "PRICE";
  static var quantity               =  "QUANTITY";


  //product api data key
  static var price                  =  "price";
  static var perQuantity            =  "per_quantity";



  //rating screen
  static var yourRating             =  "YOUR RATING";
  static var ratingEmpty            =  "You don't have any  ratings or reviews yet!";
  static var reviews                =  "Reviews";
  static var hideReplies            =  "Hide Replies";
  static var viewReplies            =  "View Replies";
  static var reply                  =  "Reply";
  static var writeHint              =  "Write reply here..";

  //analytics
  static var overall                =  "OVERALL";
  static var business               =  "BUSINESS";


  static var peopleViewed           =  "People viewed \nyour business";
  static var peopleCalled           =  "People called \nyour business";
  static var peopleSaw              =  "People saw direction \nto your business";

  static var januaryStr             =  "January";
  static var februaryStr            =  "February";
  static var marchStr               =  "March";
  static var aprilStr               =  "April";
  static var mayStr                 =  "May";
  static var juneStr                =  "June";
  static var julyStr                =  "July";
  static var  augustStr             =  "August";
  static var septemberStr           =  "September";
  static var octoberStr             =  "October";
  static var novemberStr            =  "November";
  static var decemberStr            =  "December";

  //support

  static var weAreHere              =  "WE ARE HERE TO HELP!";
  static var emailAt                =  "EMAIL US AT:";
  static var messageOn              =  "MESSAGE US ON ";
  static var privacyPolicy          =  "Privacy Policy";
  static var termsConditions        =  "Terms & Conditions";



  //broadcast string key.
  static var subProductDataGet      =  "SubProduct Data Get";
  static var moveToLogin            =  "move to login";
  static var businessSliderImage    =  "Business Slider Image";
  static var businessSlider1        =  "1";
  static var sideImage              =  "sideMenuImageShow";
  static var keyBoardShow           =  "keyBoardShow";


  //Edit profile .
  static var editProfile            =  "Edit profile";


  //google ads key:
  //android
  static var adsAppIdAndroid        =  "ca-app-pub-9432738533874044~5852655734";
  static var adsBannerIdAndroid     =  "ca-app-pub-9432738533874044/3669345528";

  //ios
  static var adsAppIdIos            =  "ca-app-pub-9432738533874044~4655764768";
  static var adsBannerIdIos         =  "ca-app-pub-9432738533874044/2184873463";
  static var googleAddress          =  "AIzaSyAKJ66kcLRo74nwjJXbi_iDFfbcDq2fh9k";

}

class FontRes {

  static var nunito                 =  "Nunito";
}