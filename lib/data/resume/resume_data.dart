import 'package:pahlevikun.github.io/data/resume/model/award.dart';
import 'package:pahlevikun.github.io/data/resume/model/education.dart';
import 'package:pahlevikun.github.io/data/resume/model/experience.dart';
import 'package:pahlevikun.github.io/data/resume/model/expertise.dart';
import 'package:pahlevikun.github.io/data/resume/model/portofolio.dart';
import 'package:pahlevikun.github.io/data/resume/model/resume.dart';
import 'package:pahlevikun.github.io/data/resume/model/skill.dart';
import 'package:pahlevikun.github.io/data/resume/model/volunteer.dart';
import 'package:pahlevikun.github.io/utils/datetime_utils.dart';

class ResumeData {
  static const MESSAGE_API =
      "https://us-central1-workout-e1b53.cloudfunctions.net/api/message";

  static ResumeModel getData() => ResumeModel(
      webTitle: "Farhan Yuda Pahlevi | Personal Site",
      introduce:
          "Experienced Software Engineer with a demonstrated history of working in the technology industry starting 2013 and still continues.",
      name: "Farhan Yuda Pahlevi",
      job: "Software Engineer",
      email: "pahlevi.kun@gmail.com",
      location: "Jakarta, Indonesia",
      birthDate: "1995-08-09",
      avatar: "images/avatar.png",
      facebook: "https://facebook.com/pahlevikun",
      instagram: "https://instagram.com/pahlevikun",
      github: "https://github.com/pahlevikun",
      linkedin: "https://linkedin.com/in/pahlevikun",
      twitter: "https://twitter.com/pahlevikun",
      about:
          "Strong engineering professional with a Bachelor of Engineering (BE) focused on Informatics Engineering from Gunadarma University. "
          "Dedicated to continuously develop, implement, and adopt new technologies to maximize development efficiency and produce an innovative solution. "
          "Got a Udacity Nanodegree scholarship and become Google Certified Associate Android Developer in September 2017. "
          "Currently working as Android Engineer at Gojek but have other experience such as native iOS Development, Flutter Development on frontend side and also PHP Laravel, Go, and Fullstack JavaScript on the backend side.",
      aboutInfo: _buildAboutInfo(),
      expertise: _buildExpertise(),
      technicalSkill: _buildTechnicalSkill(),
      industrySkill: _buildIndustrySkill(),
      introSkill: _skillsIntro,
      experience: _buildExperience(),
      volunteer: _buildVolunteer(),
      education: _buildEducation(),
      portos: _buildPorto(),
      awards: _buildAwards());

  static List<Education> _buildEducation() {
    return [
      Education(
          title: "Nanodegree",
          field: "Field Of Study Associate Android Developer Fast Track",
          year: "2017",
          institution: "Udacity",
          description:
              "Google launched the Associate Android Developer Certification in May 2016. "
              "Associate Android Developer Fast Track by Google is a program that will "
              "ideal for programmers with 1-2 years of Java experience. The program "
              "is designed to teach you exactly what you need to know to successfully "
              "pass the Associate Android Developer Certification Exam from Google, "
              "a key credential in the industry. It's a great way to prove your Android"
              " Development skills and earn a certification directly from Google"
              " affirming those skills—a definitive step on the path to a job "
              "as an Android Developer. To have received one of these scholarships,"
              " you must be a current resident of Indonesia. Farhan was choosen"
              " with other student for this scholarship by Udacity."),
      Education(
          title: "Bachelor Of Engineer",
          field: "Field Of Study Informatics Engineer",
          year: "2013 - 2017",
          institution: "Gunadarma University",
          description:
              "Founded in 1981, Universitas Gunadarma (Gunadarma University) is a "
              "non-profit private higher education institution located in the "
              "suburban setting of the large city of Depok (population range of "
              "1,000,000-5,000,000 inhabitants), West Java. In campus life, Farhan "
              "always exploring about code inside and outside the college. Farhan "
              "study for 4 years in Gunadarma University with Undergraduate Thesis Title "
              "'Rancang Bangun Augmented Reality Hologram Pengenalan Ilmuwan Islam Berbasis Android.'"),
      Education(
          title: "High School",
          field: "Field Of Study Science",
          year: "2010 - 2013",
          institution: "SMAN 6 Bogor",
          description:
              "SMAN 6 Bogor is State High School in Bogor, West Java. Previously "
              "SMAN 6 Bogor is SPG Negeri Bogor but back in 1991 it become State "
              "High School. Farhan study Science Major for 3 years in SMAN 6 Bogor.'")
    ];
  }

  static List<Volunteer> _buildVolunteer() {
    return [
      Volunteer(
        imagePath: "images/volunteer-1.png",
        title: "Facilitator",
        name: "IAK Batch 1-2",
        duration: "Mar 2016 - Dec 2016",
      ),
      Volunteer(
        imagePath: "images/volunteer-2.png",
        title: "Ambassador",
        name: "Gitscrum",
        duration: "Mar 2018 - Aug 2018",
      ),
      Volunteer(
        imagePath: "images/volunteer-3.png",
        title: "Contributor",
        name: "Greenpeace",
        duration: "Jun 2017 - Jan 2018",
      ),
      Volunteer(
        imagePath: "images/no-image.png",
        title: "Team Leader",
        name: "Al-Fatih 3",
        duration: "Jul 2016 - Mar 2018",
      ),
      Volunteer(
        imagePath: "images/no-image.png",
        title: "Startup Contributor",
        name: "Wensoft",
        duration: "Jun 2016 - Mar 2018",
      ),
      Volunteer(
        imagePath: "images/no-image.png",
        title: "Community",
        name: "CT Project",
        duration: "Jan 2014 - Aug 2018",
      ),
    ];
  }

  static List<Award> _buildAwards() {
    return [
      Award(
          title: "1st Place Depok ICT Award 2016",
          year: "Aug 2016",
          institution: "Depok Communication And Informatics Department",
          description:
              "Depok ICT Award Or Known As DEPICTA Is Depok Yearly Event,"
              " in 2016 The Topic Is About Smart City. "
              "Our Team, Al Fatih 3 Was Elected In 1st Place With Our Application 'Parkir Yuk!'.",
          type: "Honor"),
      Award(
          title: "1st Place KURMA 2016",
          year: "Jun 2016",
          institution: "Fajrul Islam Gunadarma",
          description:
              "Karunia Ukhuwah Islamiyah Or Known As KURMA Is UKM Fajrul "
              "Islam Gunadarma Yearly Event At Ramadhan. Out Team, Al Fatih 3 Was "
              "Elected In 1st Place With Our Application 'Tahaqu'.",
          type: "Honor"),
      Award(
          title: "HTML Fundamentals Course",
          year: "Mar 2018 – Present  •  License 1014-70388280",
          institution: "SoloLearn",
          description: "",
          type: "Certificate"),
      Award(
          title: "Java Tutorial Course",
          year: "Mar 2018 – Present  •  License 1068-7038280",
          institution: "SoloLearn",
          description: "",
          type: "Certificate"),
      Award(
          title: "JavaScript Tutorial Course",
          year: "Mar 2018 – Present  •  License 1024-70388280",
          institution: "SoloLearn",
          description: "",
          type: "Certificate"),
      Award(
          title: "Swift Fundamentals Course",
          year: "Mar 2018 – Present  •  License 1075-7038280",
          institution: "SoloLearn",
          description: "",
          type: "Certificate"),
      Award(
          title: "Microsoft MTA 98-361 : Software Development Fundamentals",
          year: "Jan 2018 – Present  •  License G602-0607",
          institution: "Microsoft",
          description: "",
          type: "Certificate"),
      Award(
          title: "The Total Kotlin Course : Learn Kotlin Today",
          year: "Nov 2017 – Present  •  License UC-AFC4ILA4",
          institution: "Udemy",
          description: "",
          type: "Certificate"),
      Award(
          title: "Associate Android Developer",
          year: "Sep 2017 – Present  •  License 10942417",
          institution: "Google Developers",
          description: "",
          type: "Certificate"),
      Award(
          title: "Facilitator Indonesia Android Kejar 2.0",
          year: "Jan 2017 – Present",
          institution: "Google Developers Group",
          description: "",
          type: "Certificate"),
      Award(
          title: "Indonesia Android Academy",
          year: "Jan 2015 – Present",
          institution: "Google Developers Group",
          description: "",
          type: "Certificate"),
    ];
  }

  static String _skillsIntro =
      "Strong ability in Native Android Development for both Java and Kotlin, provided by :"
      "\n- 6 years+ experience in Android development"
      "\n- Strong understanding of Android Apps architecture, pattern, and implementation such as Clean Architecture, MVP, MVI, MVVM"
      "\n- Experienced building Android SDK"
      "\n- Experience with Kotlin, reactive programming(RxJava), and Dependency Injection(Dagger)"
      "\n- Experience shipping apps to Google Play"
      "\n- Experienced with popular libraries for networking, async, image loading, firebase, etc"
      "\n- Experienced with multiple field of works such and many type of application"
      "\n- Understood implementation of programming languages, good OO design concept such as SOLID Principles"
      "\n- Well versed with Agile methodologies, TDD and Test Engineering and Automation"
      "\n- Know some of techniques, standards, and capabilities regarding authentication and authorization, security vulnerabilities, and remediation";

  static List<Experience> _buildExperience() {
    return [
      Experience(
          title: "Android Engineer",
          company: "Gojek (GoMerchants)",
          duration: "Jan 2019 - Present",
          image: "images/job-1.png",
          description:
              "Founded in 2010, GO-JEK is a mobile technology company with a social mission: "
              "to unleash social impact through technology. Since the App Launch in January 2015, "
              "GO-JEK has been a one stop application for daily needs in Indonesia, "
              "revolutionizing solutions from transport, logistics and lifestyle services."
              "\n\nResponsibility :"
              "\n• Design and build highly scalable, reliable, and fault-tolerant systems"
              "\n• Unit-testing code for robustness, usability, and general reliability"
              "\n• Build Android Application from the scratch"
              "\n• Build Best Quality for Mobile Android SDK"
              "\n• Bug fixing and improving application performance"
              "\n• Work with outside data sources, APIs, and integrate outside party"
              "\n• Continuously discover, and implement new technologies to maximize development efficiency"
              "\n• Collaborate with cross-functional teams to define, design, and ship new features"
              "\n\nWork on :"
              "\n• Midtrans Android SDK "
              "\n\t- Supporting merchants integrate with Midtrans Android SDK"
              "\n\t- Maintain Midtrans Android SDK"
              "\n• GoBiz Platform (Previously GO-RESTO) "
              "\n\t- Express onboarding 1.0, enabling self-registration as a merchant"
              "\n\t- Platformisation, enabling multiple team on project with new architecture"
              "\n\t- Rebranding, updating GoBiz theme to the new scheme"
              "\n\t- Payment, enabling capability for receive debit/credit card as payment"
              "\n\t- Internationalisation, enabling GoBiz running in multiple nation"
              "\n\t- Helpcenter, integrating Gojek in-house help SDK"
              "\n• Monetisation & Promo Platform"
              "\n\t- Recommended Campaign, enabling merchant self join promo campaign"
              "\n\t- Social Share, enable merchant share menu on social media"
              "\n\t- Cart & Delivery Discount, enable merchant give a discount on GoFood checkout"
              "\n\t- SKU Recommendation, add recommendation item"
              "\n\t- Chart Analytics Report, show promo reporting"
              "\n• Self-Serve"
              "\n\t- DataScience camera implementation for detecting Face and KTP"
      ),
      Experience(
          title: "Shareholder & Advisor",
          company: "Digiva.id",
          duration: "Jul 2020 - Present",
          image: "images/job-9.png",
          description:
          "Digiva.id is my very own startup, currently I'm not involved directly, I'm only a majority shareholder and giving advice for technical architecture if needed."),
      Experience(
          title: "Jr. Android Developer",
          company: "Midtrans | Gojek Group",
          duration: "Jun 2018 - Dec 2018",
          image: "images/job-2.png",
          description:
              "Midtrans, previously Veritrans, was established in 2012 with a mission "
              "to provide online businesses in Indonesia with a payment infrastructure "
              "that is safe, reliable, and fraud-free. In December 2017 Midtrans join GO-JEK GROUP after being acquired."
              "\n\nResponsibility :"
              "\n• Build Android Application from the scratch"
              "\n• Build Best Quality Mobile Android SDK"
              "\n• Maintain Android Application in playstor"
              "\n• Rewrite and Revamp legacy Midtrans Android SDK"
              "\n• Supporting Merchant who used Midtrans's SDK"
              "\n\nWork on :"
              "\n• Midtrans Android SDK"
              "\n• Midtrans Mobile"
              "\n• GO-Merchant SDK (Continue some feature)"),
      Experience(
          title: "Software Engineer",
          company: "PT. Deggan Technowave",
          duration: "Feb 2017 - May 2018",
          image: "images/job-3.png",
          description:
              "PT. Deggan Technowave is a company that develop and maintain PT. "
              "Telekomunikasi Indonesia application as a vendor with main product "
              "is Wifi.id GO and some utility products. The main role in PT. Deggan "
              "Technowave was working on Mobile Android SDK, develop Android "
              "application and integrating with Machine via API."
              "\n\nResponsibility :"
              "\n• Build Android Project from the scratch"
              "\n• Maintain Android Application in playstore"
              "\n• Make our client's idea dream come true"
              "\n• Continue internal SDK development for Wifi Testing"
              "\n• Manage and mentoring to Junior Android Developer"
              "\n• Deciding architecture and pattern for Android Project"
              "\n• Deciding tech-stack for Android Development"
              "\n• Making automation with CI/CD for removing human bottleneck"
              "\n\nWork on Products :"
              "\n• Wifi Tester and Monitor"
              "\n• Wifi.id GO"
              "\n• New Permata (DIAMOND)"
              "\n• Sekampus"),
      Experience(
          title: "Mobile Engineer Lead",
          company: "Beehapps",
          duration: "Aug 2016 — Dec 2017",
          image: "images/job-4.png",
          description:
              "Beehapps is a small company as startup focused in Software Development. "
              "Beehapps want to become 1st software technology provider and ready "
              "to developing local MSMEs in Indonesia. As a Mobile Engineer Lead, "
              "the main task is for develop Android app, guide other Android Developer, "
              "and decide tech-stack for Mobile development."
              "\n\nResponsibility :"
              "\n• Build Android Project from the scratch"
              "\n• Maintain Android Application in playstore"
              "\n• Make our client idea dream come tru"
              "\n• Manage and mentoring to Junior Android Developer"
              "\n• Deciding architecture and pattern for Android Project"
              "\n• Deciding tech-stack for Android Development"
              "\n• Lead multiple Android teams to perform design, code, and process reviews to improve individual systems as well as engineering-wide"
              "\n• Help make our team better by contributing to direct to the team"
              "\n• Engage with the team on helping to debug and improve code"
              "\n• Making automation with CI/CD for removing human bottleneck"
              "\n\nWork on Products :"
              "\n• AA Londri"
              "\n• Pasar Benih dan Kedelai Kementan"
              "\n• Waroeng Rakjat POS"
              "\n• E-Dokterku Mitra"
              "\n• E-Dokterku Consumer App"
              "\n• E-Dokterku Ambulance App"),
      Experience(
          title: "Lab. Assistant",
          company: "iLab Gunadarma University",
          duration: "Apr 2016 – Sep 2017",
          image: "images/job-5.png",
          description:
              "Integrated Lab or known as iLab is the largest laboratory in Gunadarma University. "
              "Assistant is an job that adapt to the student's schedule in college, "
              "so assistant is concurrent with college. The big task assistant do "
              "is become a part of CAT Committee in 2016 Polda Metro Jaya Computer "
              "Assisted Test in collaboration with Gunadarma University"
              "\n\nResponsibility :"
              "\n• Help, assist, and support student from diverse faculty for theirs practicum"
              "\n• Handling lab's daily acitivty"
              "\n• Maintain computer hardware and software"
              "\n• Maintain lab's tools"
              "\n• Act as an Operator in Gunadarma University Sport Center"),
      Experience(
          title: "Full-Stack Developer",
          company: "Self Employed (Freelance)",
          duration: "Jan 2014 – Aug 2016",
          image: "images/job-6.png",
          description:
              "Back in my first year at college, I was very bad in Java. I got the "
              "lower grade in Java class but my lecturer scorn me in front of my "
              "class, it was very embarrassed. But it give me some power to "
              "survive and revenge the Java lecturer with my highest grade at the "
              "end of Java class. After that, I'm start develop some application "
              "for freelance or for non-profit use. I work on Web Development with "
              "PHP as Back-End and just HTML-CSS for Front-End but I focuse on Android Development."
              "\n\nResponsibility :"
              "\n• Keep learn something new about programming especially Android Development"
              "\n• Make client's idea dream come true in web side or android side"),
      Experience(
          title: "CEO & Founder",
          company: "FYP-Kun Online!",
          duration: "Dec 2010 — Apr 2016",
          image: "images/job-7.png",
          description:
              "FYP-Kun Online! is online media serving japanese news and hobby. "
              "Back in the past, FYP-Kun Online! just share about news and"
              " hobby but it's make community for sharing and now FYP-Kun "
              "Online! transform into small community based on Facebook."
              "\n\nResponsibility :"
              "\n• As a Founder, lead the group activity.Help, assist, and support student from diverse faculty for theirs practicum"
              "\n• Make online strategy for make income"
              "\n• Give permission and approval if any other want to collaborate with us"
              "\n• Take responsibility as Web Developer"),
      Experience(
          title: "Operator",
          company: "TanjungNet - Internet Service & Cafe",
          duration: "Jul 2011 – Aug 2015",
          image: "images/job-8.png",
          description:
              "When I was High School untill second year in my college, I work as "
              "an Operator in TanjungNet (Cilebut, Bogor). Tanjung Net is small internet cafe."
              "\n\nResponsibility :"
              "\n• Help, assist, and support customer"
              "\n• Serving scan and print service to customer"
              "\n• Maintain computer hardware and software"
              "\n• Maintain office's tools"),
    ];
  }

  static List<Skill> _buildIndustrySkill() {
    return [
      Skill(name: "Android Native Development", percent: 90),
      Skill(name: "Project Management", percent: 85),
      Skill(name: "Flutter Development", percent: 75),
      Skill(name: "Web Development", percent: 65),
      Skill(name: "iOS Native Development", percent: 50),
    ];
  }

  static List<Skill> _buildTechnicalSkill() {
    return [
      Skill(name: "Android Design pattern", percent: 90),
      Skill(name: "Android Java & Kotlin", percent: 90),
      Skill(name: "Android Architecture", percent: 90),
      Skill(name: "OO Knowledge & Architecture", percent: 80),
      Skill(name: "Flutter Dart", percent: 75),
      Skill(name: "Firebase", percent: 70),
      Skill(name: "VCS Git", percent: 70),
      Skill(name: "PHP Laravel Stack", percent: 65),
      Skill(name: "iOS Swift", percent: 50),
    ];
  }

  static Map<String, String> _buildAboutInfo() {
    return {
      "Name": "Farhan Yuda Pahlevi",
      "Location": "Jakarta, Indonesia",
      "Age": DateTimeUtils.countAge(1995),
      "Email": "pahlevi.kun@gmail.com",
    };
  }

  static List<Expertise> _buildExpertise() {
    return [
      Expertise(
          title: "Native Android Development",
          body:
              "Designed and Developed core feature for Android Application from scrath, "
              "start from translating Conceptual UI and integrating 3rd Party SDK or "
              "back-end API into Best Quality of Android Code. Deployed application "
              "and identify bugs, user experience issues, and functionality problems "
              "for maintaining the application."),
      Expertise(
          title: "Native iOS Development",
          body:
              "Make a prototype and developed Best Quality of native Swift code "
              "when translating the user interface. Keep and use the Apple's "
              "conventional rule when developing the application with XCode. "
              "Deployed application and identify bugs, user experience issues, "
              "and functionality problems for maintaining the application."),
      Expertise(
          title: "Flutter App Development",
          body:
              "Make a prototype and developed Best Quality of Flutter application "
              "with beautiful, natively compiled applications for mobile, web, "
              "and desktop from a single codebase."),
      Expertise(
          title: "Web App Development",
          body:
              "Build best first impression for user when visiting the site with "
              "quality of front-end development and supported with best back-end development "
              "from powerfull backend framework. Deployed application and identify bugs, "
              "user experience issues, and functionality problems for maintaining the application."),
      Expertise(
          title: "Project Management",
          body:
              "The ability to communicate with people at all levels is almost "
              "always named as the important skill for managing software development "
              "following by strong leadership, good decision maker, also technical expertise.")
    ];
  }

  static List<Porto> _buildPorto() {
    return [
      Porto(
          title: "Berat Idealmu",
          description: "My first app for check Body Mass Index",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Dompetku",
          description: "Money saving app for tracking income and outcome.",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Ilmuwan Islam Hologram",
          description:
              "Ilmuwan Islam Hologram is an Augmented Reality Application with Holo Technology based on Android device",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Baby Healthcare",
          description: "Android application for detect Baby disease",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Pocket Yasiin",
          description: "Pocket Yasiin is simple yasiin apps",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Tahaqu",
          industry: "Social Media",
          description:
              "Tahaqu is an Android based Islamic application to help users who struggle to save for Sacrifice or Hajj or Umrah",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA],
          award: "1st Place Kurma, Gunadarma University"),
      Porto(
          title: "Parkir Yuk!",
          industry: "Social Media",
          description:
              "Parking Yuk! is an Android Based application used to find location of "
              "parking around the station, bus stops and other public places. "
              "Parkir Yuk! is created for encourage Depok's citizen to increase "
              "use of public transport and park their vehicles at the parking "
              "locations. This application can be used to remember the location "
              "of a vehicle parked in a wide parking lot. This application can "
              "also check the motor vehicle tax (PKB) which is connected directly "
              "to the website SAMSAT Polda Metro Jaya",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA],
          award: "1st place Depok ICT Award 2016"),
      Porto(
          title: "Baking App",
          description:
              "Udacity's project for Associate Android Developer Fast Track",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Ojekita",
          industry: "Ride Hailing",
          description:
              "Ojekita is a motorcycle taxi in Cirebon city with 3 main service, "
              "'Kita Jemput' with motorcycle taxi, 'Mobil Kita' with normal car "
              "taxi, and 'Kita Antar' with delivery food service",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "AA Londri",
          industry: "Service",
          description:
              "AA Londri is shuttle laundry service based on Android device",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "KMI Katering RSPP",
          industry: "Service",
          description:
              "KMI Katering is native Android application for ordering food in RSPP (Rumah Sakit Pusat Pertamina)",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Bogor Tourism",
          description:
              "Bogor Tourism is Location Based Service application that use for browse Historical place, Culinary Place, or anything else in Bogor",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "E-Chat App",
          description:
              "E-Chat is Android apps used firebase technology and implementing end-to-end encryption",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "Wifi TeMon (Tester & Monitor)",
          description:
              "Wifi Tester & Monitor (also known as Wifi TeMon) is PT Telekomunikasi "
              "Indonesia's product used for automatic test in 'Flashzone-Seamless' access point",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.JAVA, PortoTech.KOTLIN]),
      Porto(
          title: "Wifi.Id GO",
          industry: "Telecommunication",
          description:
              "Wifi.id GO is PT Telekomunikasi Indonesia's product for use wifi.id hotspot."
              " The development continued by me from previous developer",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.JAVA, PortoTech.KOTLIN]),
      Porto(
          title: "New Permata",
          industry: "Telecommunication",
          description:
              "New Permata is PT Telekomunikasi Indonesia's product used for making conference call with normal phone line",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "SeKampus",
          industry: "Social Media",
          description:
              "Sekampus is mobile application used for find your needs near your campus build for Telkom Digital AMOEBA Startup",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "E-Dokterku",
          industry: "Service",
          description: "On-demand medical app",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "ED-Dokter",
          industry: "Doctor version of E-Dokterku Android Application",
          description: "Doctor version of E-Dokterku",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "ED-Dokter",
          industry: "Doctor version of E-Dokterku Android Application",
          description: "Doctor version of E-Dokterku",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "Pasar Benih 2018",
          industry: "Marketplace",
          description: "Soybean seeds Market place",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "BKids Parent",
          industry: "Banking",
          description:
              "Parent version of BKids BNI46 used for give task to kids",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "BKids",
          industry: "Banking",
          description: "Android App for BNI46 used for give task to kids",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "VOELA",
          industry: "Social Media",
          description: "Food and Culinary encyclopedia in Cirebon City",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN, PortoTech.JAVA]),
      Porto(
          title: "VOELA Merchant",
          industry: "Social Media",
          description: "Merchant app for VOELA in Cirebon City",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "613 Twibbon",
          industry: "Image Manipulation",
          description: "Twibbon app for Highschool reunion",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "IDUang",
          description: "A simple Indonesia currency converter Android libs",
          type: PortoType.ANDROID,
          work: PortoWorks.OPEN_SOURCE,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Wifiku",
          description: "A simple Android network-info libs",
          type: PortoType.ANDROID,
          work: PortoWorks.OPEN_SOURCE,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "Droidcrypt",
          description:
              "A simple Android Library. Very easy for use this Android "
              "library for performing encryption to String with AES encryption, "
              "it can used for save to SharedPreferences too",
          type: PortoType.ANDROID,
          work: PortoWorks.OPEN_SOURCE,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "Jotter",
          description:
              "Jotter, a simple library for log all of your Activity and Fragment event",
          type: PortoType.ANDROID,
          work: PortoWorks.OPEN_SOURCE,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "Expose Concrete",
          description:
              "Expose Concrete is bussines website developed with CodeIgniter and Bootstrap framework",
          type: PortoType.WEB_FRONT_END,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [
            PortoTech.BOOTSTRAP,
            PortoTech.CSS,
            PortoTech.JAVASCRIPT,
            PortoTech.HTML
          ],
          link: "https://www.exposeconcrete.com/"),
      Porto(
          title: "Picman Dashboard",
          description: "Dashboard web app for Picman app",
          type: PortoType.WEB_BACK_END,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [
            PortoTech.BOOTSTRAP,
            PortoTech.CSS,
            PortoTech.JAVASCRIPT,
            PortoTech.LARAVEL,
            PortoTech.HTML
          ]),
      Porto(
          title: "Picman",
          description: "Touring app for Car Club",
          type: PortoType.FLUTTER,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.DART, PortoTech.KOTLIN, PortoTech.SWIFT]),
      Porto(
          title: "Watong Dashboard",
          description: "Dashboard web app for Watong app",
          type: PortoType.WEB_BACK_END,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [
            PortoTech.BOOTSTRAP,
            PortoTech.CSS,
            PortoTech.JAVASCRIPT,
            PortoTech.LARAVEL,
            PortoTech.HTML
          ]),
      Porto(
          title: "Watong",
          description: "On-demand coffee shop app",
          type: PortoType.FLUTTER,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.DART, PortoTech.KOTLIN, PortoTech.SWIFT]),
      Porto(
          title: "PND MyFun",
          description: "News reader app",
          type: PortoType.FLUTTER,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.DART, PortoTech.KOTLIN, PortoTech.SWIFT]),
      Porto(
          title: "PND MyFun Dashboard",
          description: "Dashboard web app for PND MyFun app",
          type: PortoType.WEB_BACK_END,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [
            PortoTech.BOOTSTRAP,
            PortoTech.CSS,
            PortoTech.JAVASCRIPT,
            PortoTech.LARAVEL,
            PortoTech.HTML
          ]),
      Porto(
          title: "Brizy",
          description: "Simple quiz app",
          type: PortoType.ANDROID,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "Prayer Times",
          description:
              "Ramadhan 1439H Side-Project, build in native iOS with Swift",
          type: PortoType.IOS,
          work: PortoWorks.PERSONAL_PROJECT,
          tech: [PortoTech.SWIFT]),
      Porto(
          title: "Infinite Tab Button",
          description:
              "Flutter package containing widget for making MaterialTab look alike infinite button",
          type: PortoType.FLUTTER,
          work: PortoWorks.OPEN_SOURCE,
          tech: [PortoTech.DART]),
      Porto(
          title: "Midtrans Android SDK",
          description:
              "The easiest way to integrate with Midtrans payment API on android",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.JAVA]),
      Porto(
          title: "GoMerchants SDK",
          description: "GoMerchants Android SDK",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "Midtrans Mobile",
          description: "Midtrans Dashboard mobile app",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN]),
      Porto(
          title: "Gobiz",
          description:
              "Gojek's Merchants Super App, which can answer all business needs ",
          type: PortoType.ANDROID,
          work: PortoWorks.OFFICE_TASK,
          tech: [PortoTech.KOTLIN])
    ];
  }
}
