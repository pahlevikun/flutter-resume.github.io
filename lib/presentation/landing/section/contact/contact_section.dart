import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pahlevikun.github.io/common/config/app_config.dart';
import 'package:pahlevikun.github.io/common/config/screen_util.dart';
import 'package:pahlevikun.github.io/common/widget/page_title.dart';
import 'package:pahlevikun.github.io/common/widget/responsive_widget.dart';
import 'package:pahlevikun.github.io/data/resume/resume_data.dart';
import 'package:pahlevikun.github.io/presentation/base_page.dart';
import 'package:pahlevikun.github.io/presentation/landing/section/contact/contact_contract.dart';
import 'package:pahlevikun.github.io/presentation/landing/section/contact/contact_presenter.dart';

class ContactSection extends StatefulWidget {
  ContactSection(GlobalKey key) : super(key: key);

  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection>
    implements ContactContract {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  bool isSubmitting = false;
  ContactPresenter _presenter;

  @override
  void initState() {
    super.initState();
    _presenter = ContactPresenter(this);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  void successSentMail() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Success, thanks for your message!"),
        backgroundColor: Colors.green,
      ),
    );
    _nameController.clear();
    _emailController.clear();
    _subjectController.clear();
    _messageController.clear();
    toggleIsSubmitting(false);
  }

  @override
  void failedSentMail() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Sorry, something went wrong, please do manually :)"),
        backgroundColor: Colors.red,
      ),
    );
    toggleIsSubmitting(false);
  }

  @override
  void showLoading() {
    toggleIsSubmitting(true);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BasePage(
        color: Colors.white,
        child: Padding(
          padding: SizeConfig.PAGE_CONTENT_PADDING,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PageTitle("Contact Me"),
              SizedBox(height: SizeConfig.LARGE_SIZE),
              ResponsiveWidget(
                largeScreen: buildTabletLayout(),
                mediumScreen: buildTabletLayout(),
                smallScreen: buildPhoneLayout(),
              )
            ],
          ),
        ),
      ),
    );
  }

  void toggleIsSubmitting(bool value) {
    setState(() {
      this.isSubmitting = value;
    });
  }

  Widget buildTextFormField(
    String hint,
    TextEditingController controller, {
    int maxLines = 1,
    bool isEmail = false,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfig.MEDIUM_SIZE),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppConfig.secondaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(SizeConfig.MEDIUM_SIZE),
        ),
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: maxLines == 1 ? 0 : 12,
        ),
      ),
      style: TextStyle(fontSize: 14),
      cursorColor: AppConfig.secondaryColor,
      validator: (value) {
        if (value.trim().isEmpty) {
          return 'The field is required';
        } else if (isEmail &&
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
          return "Invalid email";
        }
        return null;
      },
    );
  }

  Widget buildContactItem(IconData icon, String title, String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          icon,
          color: AppConfig.secondaryColor,
          size: 28,
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 4),
            Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buildSubmitButton() {
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      onPressed: submit,
      color: isSubmitting ? Colors.grey : AppConfig.secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.LARGE_SIZE),
      ),
      child: Text(
        this.isSubmitting ? "Submitting..." : "Submit Message",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  void submit() async {
    if (_formKey.currentState.validate() && !isSubmitting) {
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final subject = _subjectController.text.trim();
      final message = _messageController.text.trim();

      _presenter.sendMail(email, subject, name, message);
    }
  }

  Widget buildTabletLayout() {
    final lineHeight = 84.0;
    return Column(
      children: <Widget>[
        SizedBox(
          height: lineHeight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 256,
                child: buildContactItem(
                    Icons.email, "Email", ResumeData.getData().email),
              ),
              Expanded(
                child: buildTextFormField("Your name", _nameController),
                flex: 2,
              ),
              SizedBox(width: 12),
              Expanded(
                child: buildTextFormField(
                  "Email address",
                  _emailController,
                  isEmail: true,
                ),
                flex: 2,
              ),
            ],
          ),
        ),
        SizedBox(
          height: lineHeight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 256,
                child: buildContactItem(Icons.my_location, "Location",
                    ResumeData.getData().location),
              ),
              Expanded(
                child: buildTextFormField("Subject", _subjectController),
                flex: 2,
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 256),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 124,
                    child: buildTextFormField(
                      "Message",
                      _messageController,
                      maxLines: 4,
                    ),
                  ),
                  buildSubmitButton(),
                ],
              ),
              flex: 2,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildPhoneLayout() {
    final space = SizedBox(height: SizeConfig.LARGE_SIZE);
    final smallSpace = SizedBox(height: SizeConfig.MEDIUM_SIZE);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildContactItem(Icons.email, "Email", ResumeData.getData().email),
        space,
        buildContactItem(
            Icons.my_location, "Location", ResumeData.getData().location),
        space,
        buildTextFormField("Your name", _nameController),
        smallSpace,
        buildTextFormField("Email address", _emailController, isEmail: true),
        smallSpace,
        buildTextFormField("Subject", _subjectController),
        smallSpace,
        buildTextFormField("Message", _messageController, maxLines: 4),
        space,
        buildSubmitButton(),
      ],
    );
  }
}
