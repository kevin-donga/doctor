import 'icon_res.dart';

class StringRes {
  //-----------common String------------
  static const josefinSans = 'Josefin Sans';
  static const josefinSansBold = 'Josefin Sans-Bold';

  //---------Splash Screen-2-------------
  static const welcomeSplash = 'Welcome to\n Medica! 👋';
  static const welcomeDescriptionSplash =
      'The best online doctor appointment &\nconsultation app  of the century for your\nhealth and medical needs';

//---------Introduction Screen-------------
  static const skipTextButton = 'Skip';
  static const textPageView1 =
      'Thousands of doctors & experts to help your health';
  static const textPageView2 =
      'Healthy checks & consultations easily anywhere anytime';
  static const textPageView3 =
      'Let\'s start living healthy and well with us right now!';

//---------Login Screen-------------
  static const loginScreenMiddleString = 'Login to Your Account';
  static const emailTextFieldHintText = 'Email';
  static const mobileTextFieldHintText = 'Mobile Number';
  static const nameTextFieldHintText = 'Name';
  static const passTextFieldHintText = 'Password';
  static const loginButtonText = 'Sign In';
  static const forgetPasswordText = 'Forget the password ?';
  static const newUserText = 'Don\'t have an account?';
  static const newUserWithSignUpText = 'Sign Up';

//---------signup Screen-------------
  static const signUpScreenMiddleString = 'Create New Account';
  static const signupScreenMiddleString = 'Create New Account';
  static const signupButtonText = 'Sign Up';
  static const alreadyUserText = 'Already have an account?';
  static const alreadyUserWithSignInText = 'Sign In';

//-----------forgot Screen-------------
  static const forgotText = 'Forgot Password';
  static const forgot = 'Forgot';
  static const mobileText = 'mobile';
  static const forgotText1 =
      'Select which contact details should \n    we use to reset your password';

//-----------verification Screen-------------
  static const verificationText = 'OTP Code Verification';
  static const verifyText = 'Verify';

//------------bookAppointment Screen-------------

  static const selectDateText = 'Select Date';
  static const bookAppointmentText = 'Book Appointment';
  static const selectHourText = 'Select Hour';
  static const nextText = 'Next';

  //---------Home Screen-----------
  static const appbarMorningTitle = 'Good Morning 👋';
  static const appbarEveningTitle = 'Good Evening 👋';
  static const appbarAfternoonTitle = 'Good Afternoon 👋';
  static const appbarUsername = 'Andrew Ainsley';
  static const searchbarHintText = 'Search';
  static const onboardingContainerSubString =
      'Check your health and condition regularly\n10 minutes the incidence of disease in\nthe future';
  static const onboardingContainerString = 'Medical Checks!';
  static const doctorSpecialityRow = 'Doctor Speciality';
  static const seeAllString = 'See All';
  static const topDoctor = 'Top Doctors';

  //---------Notification Screen-----------
  static const notificationAppbarTitle = 'Notification';
  static const noNotification = 'No Notification Yet !!';

  //---------Favorite Doctor Screen-----------
  static const favDoctorAppbarTitle = 'Favorite';
  static const noLiked = 'You Have not Liked Any doctor !!';

  //---------Profile Screen---------
  static const profileText = "Profile";
  static const andrewAinsleyText = "Andrew Ainsley";
  static List<Map> profileList = [
    {'icon': IconRes.person1Icon, 'string': 'Edit Profile'},
    {'icon': IconRes.notificationIcon, 'string': 'Notification'},
    {'icon': IconRes.paymentIcon, 'string': 'Payment'},
    {'icon': IconRes.securityIcon, 'string': 'Security'},
    {'icon': IconRes.helpCenterIcon, 'string': 'Help Center'},
    {'icon': IconRes.inviteFriendIcon, 'string': 'Invite Friends'},
  ];

//---------MyAppointment Screen---------
  static const drText = "Dr.Rahul Zirkind";
  static const voiceText = "Voice Call -";
  static const historyVoiceText = "Voice Call";
  static const historyVideoText = "Video Call";
  static const cancelText = "Cancelled";
  static const dateText = "Dec 12,2022 | 16:00 AM";
  static const doctorDataText = "Immunologists";
  static const locationText = "The Valley Hospital in California,US";
  static const scheduledAppointmentText = "Scheduled Appointment";
  static const monthText = "Today,December 22,2022";
  static const timeText = "16:00-16:30 PM(30 minutes)";
  static const patientText = "Patient Information";
  static const fullNameText = "Full Name";
  static const nameText = "Andrew Ainsley";
  static const genderText = "Gender";
  static const maleText = "Male";
  static const ageText = "Age";
  static const ageDisplayText = "27";
  static const problemText = "Problem";
  static const problemDataText =
      "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed doeiusmod tempor.";
  static const packageText = "Your Package";
  static const myAppointmentText = "My Appointment";
  static const messageText = "Messaging";
  static const upcomingText = "Upcoming";
  static const acceptText = "Accepted";
  static const cancelledText = "Cancelled";
  static const chatText = "Chat Messagees with doctor";
  static const text = "\$20";
  static const paidText = "(Paid)";
  static const upcomingAppointmentText =
      "You don't have an appointment yet ";
  static const upcomingAppText = "you don't have a doctor's appointment scheduled at the moment";

  static List<Map> doctorDataList = [
    {
      'Name': 'Dr.Rahul Zirkind',
      'message': 'Voice Call',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.messageIcon,
    },
    {
      'Name': 'Dr.keegan Dach',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.phoneIcon,
    },
    {
      'Name': 'Dr.Drake Boeson',
      'message': 'Video Call',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.messageIcon,
    },
    {
      'Name': 'Dr.Quinn Slatter',
      'message': 'Voice Call',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.phoneIcon,
    },
  ];

//---------History Screen---------
  static const historyText = 'History';
  static const descriptionText = 'My pleasure,All the best for....';
  static const dayText = 'Today,';
  static const historyOfTimeText = '10:00 AM';

//---------BottomBar Screen---------
  static const page1 = 'Home';
  static const page2 = 'Appoin..';
  static const page3 = 'History';
  static const page4 = 'Articles';
  static const page5 = 'Profile';

  //---------Articles Screen---------
  static const articleAppbarTitle = "Articles";
  static const article = "Articles";
  static const trendingRow = "Trending";

//------------bookAppointment Screen-------------
  static const editProfileAppbarTitle = "Edit Profile";
  static const dateTextFieldHintText = 'Date';
  static const userTextFieldHintText = 'User Name';
  static const countryTextFieldHintText = 'Phone Number';
  static const editGenderText = 'Gender';
  static const femaleGenderText = 'Female';
  static const maleGenderText = 'Male';
  static const otherGenderText = 'Other';
  static const updateText = 'Update';
}
