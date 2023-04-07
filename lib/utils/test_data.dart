import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color orange = const Color.fromRGBO(243, 145, 46, 1);
Color black = const Color.fromRGBO(53, 58, 66, 1.0);
Color grey = const Color.fromRGBO(242, 245, 250, 1.0);
Color whiteBack = const Color.fromRGBO(53, 58, 66, 1.0);
List<Map<String, String>> detailsOfStudents = [
  {'head': '15K+', 'subtitle': 'Students'},
  {'head': '10K+', 'subtitle': 'Certificates delivered'},
  {'head': '450K+', 'subtitle': 'Streamed minutes'},
  {'head': '12TB+', 'subtitle': 'Content streamed last 60 days'},
  {'head': '50K+', 'subtitle': 'Creators'},
  {'head': '110+', 'subtitle': 'Programs available'},
];

List<Map<String, String>> cardWidgetData = [
  {
    'head': 'Unlock your learning potential with CipherSchools',
    'subtitle': 'Best platform for the students',
    'image':
        'https://ik.imagekit.io/cipherschools/CipherSchools/for-student_nm1kTXQDf.jpg',
    'user': 'For Students'
  },
  {
    'head': 'Empowering students to open their minds to utmost knwoledge',
    'subtitle': 'Be the mentor you never had',
    'image':
        'https://ik.imagekit.io/cipherschools/CipherSchools/for-creator_sNs5MAVE7.jpg',
    'user': 'For Creators'
  },
];

List<String> feedbackHead = [
  'Students LIV Feedback',
  'We love to ream them',
  'feedback is a significant component of our success beacuse it inspires us to get better and meet the expectations of our students.'
];

List<Map<String, String>> studentFeedback = [
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
  {
    'name': 'Awanit Singh',
    'head': 'Hyper Text Markup Language(HTML)',
    'imageUrl':
        'https://d3gmywgj71m21w.cloudfront.net/ba3c4cce2b30e5a5f068f9345ba2a251',
    'feedback':
        'Thanks you for giving me these types of videos. That help me to understand HTML and CSS',
    'Content': '5',
    'Mentor': '4',
    'Platform': '4.5',
    'Community': '3.7',
  },
];

List<String> sections = [
  'Trendings',
  'App Development',
  'Web Development',
  'Game Development',
  'Data Structures',
  'Programming',
  'Machine Learning',
  'Data Science',
  'Others'
];

List<Map<String, String>> courses = [
  {
    'name': 'JavaScript (JS)',
    'tag': 'Web Development',
    'videos': '36',
    'time': '5.1',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/498f10428c3b24c94e57a4bff1176c93',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
  {
    'name': 'Cascading Styles Sheets CSS',
    'tag': 'Web Development',
    'videos': '24',
    'time': '3.0',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/bdc64b30d8b2992575b5aa5a3bc06c42',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
  {
    'name': 'Hyper Text Markup Language',
    'tag': 'Web Development',
    'videos': '21',
    'time': '2.0',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/728a2d3aab11afa24520305befc0f119',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
  {
    'name': 'Web Development',
    'tag': 'Web Development',
    'videos': '138',
    'time': '21.8',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/d503ce11da6c4e393e78e2a48f52172d',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
  {
    'name': 'JavaScript (JS)',
    'tag': 'Web Development',
    'videos': '36',
    'time': '5.1',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/498f10428c3b24c94e57a4bff1176c93',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
  {
    'name': 'Cascading Styles Sheets CSS',
    'tag': 'Web Development',
    'videos': '24',
    'time': '3.0',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/bdc64b30d8b2992575b5aa5a3bc06c42',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
  {
    'name': 'Hyper Text Markup Language',
    'tag': 'Web Development',
    'videos': '21',
    'time': '2.0',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/728a2d3aab11afa24520305befc0f119',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
  {
    'name': 'Web Development',
    'tag': 'Web Development',
    'videos': '138',
    'time': '21.8',
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/d503ce11da6c4e393e78e2a48f52172d',
    'instName': 'ShrutiCodes',
    'instUrl':
        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70'
  },
];

List<String> popularCourses = [
  '→ Data Science',
  '→ Programming',
  '→ Data Structures',
  '→ Machine Learning',
  '→ Web Development',
  '→ Game Development'
];

List<String> companyInfo = [
  '→ Home',
  '→ Blog',
  '→ Why we?',
  '→ Sitemap',
  '→ Privacy Policy',
  '→ Terms &b Conditions'
];

List<IconData> icon = [
  Icons.discord,
  FontAwesomeIcons.instagram,
  FontAwesomeIcons.linkedin,
  FontAwesomeIcons.github,
  FontAwesomeIcons.facebook,
  FontAwesomeIcons.twitter,
];

// Carousel list-----------------------
List<Map<String, String>> mentors = [
  {
    'name': 'Sagar',
    'image':
        'https://ik.imagekit.io/cipherschools/CipherMentors/Sagar-Adobe.png',
    'role': 'Adobe'
  },
  {
    'name': 'Ayushi',
    'image':
        'https://ik.imagekit.io/cipherschools/CipherMentors/Ayushi-Walmart.png',
    'role': 'Walmart'
  },
  {
    'name': 'Anurag',
    'image':
        'https://ik.imagekit.io/cipherschools/CipherMentors/Anurag-Coding_Mentor.png',
    'role': 'Coding Mentor'
  },
  {
    'name': 'Satyam',
    'image':
        'https://ik.imagekit.io/cipherschools/CipherMentors/Satyam-Microsoft.png',
    'role': 'Microsoft'
  },
  {
    'name': 'Shreyas',
    'image':
        'https://ik.imagekit.io/cipherschools/CipherMentors/Shreyas-PayPal.png',
    'role': 'PayPal'
  },
];

List<String> creatorsFrom = [
  'Walmart',
  'Google',
  'Paypal',
  'Swiggy',
  'Amazon',
  'Oyo',
  'Dream11',
  'Intuit',
  'Microsoft',
];

List<Map<String, String>> titles = [
  {
    'head': 'Q-rated Content',
    'subtitle': 'Unlock quality content with our Q-rated content',
    'tagUrl': '',
    'freeUrl':
        'https://www.cipherschools.com/static/media/free-svg.e7986dfdff58e1459312868d65c77d53.svg'
  },
  {
    'head': 'Q-rated Content',
    'subtitle': 'Unlock quality content with our Q-rated content',
    'tagUrl': '',
    'freeUrl':
        'https://www.cipherschools.com/static/media/free-svg.e7986dfdff58e1459312868d65c77d53.svg'
  },
  {
    'head': 'Q-rated Content',
    'subtitle': 'Unlock quality content with our Q-rated content',
    'tagUrl': '',
    'freeUrl':
        'https://www.cipherschools.com/static/media/free-svg.e7986dfdff58e1459312868d65c77d53.svg'
  },
  {
    'head': 'Q-rated Content',
    'subtitle': 'Unlock quality content with our Q-rated content',
    'tagUrl': '',
    'freeUrl':
        'https://www.cipherschools.com/static/media/free-svg.e7986dfdff58e1459312868d65c77d53.svg'
  },
];

List<Map<String, String>> courseCarousel = [
  {
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/013fb2eeedfc57ddbc2675e2e07e7bca',
    'head': 'FREE Mock IELTS/TOEFL',
    'tag': 'Assessment test',
    'mentor': 'Languify',
    'mentorUrl':
        'https://d3gmywgj71m21w.cloudfront.net/7173bc99e2e091c0f413a6d661699d41',
    'buttonText': 'Try Now',
  },
  {
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/7a96565b354080d95160ca4eded9db61',
    'head': 'App Development With Flutter',
    'tag': 'App Development',
    'mentor': 'Aditya Thakur ',
    'mentorUrl':
        'https://d3gmywgj71m21w.cloudfront.net/7173bc99e2e091c0f413a6d661699d41',
    'buttonText': 'Watch',
  },
   {
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/7a96565b354080d95160ca4eded9db61',
    'head': 'App Development With Flutter',
    'tag': 'App Development',
    'mentor': 'Aditya Thakur ',
    'mentorUrl':
        'https://d3gmywgj71m21w.cloudfront.net/7173bc99e2e091c0f413a6d661699d41',
    'buttonText': 'Watch',
  },
   {
    'image':
        'https://d3gmywgj71m21w.cloudfront.net/7a96565b354080d95160ca4eded9db61',
    'head': 'App Development With Flutter',
    'tag': 'App Development',
    'mentor': 'Aditya Thakur ',
    'mentorUrl':
        'https://d3gmywgj71m21w.cloudfront.net/7173bc99e2e091c0f413a6d661699d41',
    'buttonText': 'Watch',
  },
];
//---------------------------------------
List<String> drawerList = [
  'Home',
  'Creator Access',
  'Live Reviews',
  'Community',
  'Explore Courses',
  'SignIn',
];

List<String> browseList = [
  'App Development',
  'Web Development',
  'Game Development',
  'Data Structures',
  'Programming',
  'Machine Learning',
  'Data Science',
  'Others'
];
