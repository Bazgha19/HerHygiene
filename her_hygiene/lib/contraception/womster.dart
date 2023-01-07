import 'package:flutter/material.dart';

class SterilizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sterilization for Women'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image
            Image.asset('assets/images/womster.jpg'),
            // Introduction
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Sterilization is a permanent form of birth control for women. It involves a surgical procedure to block or remove the fallopian tubes, which prevents eggs from reaching the uterus and being fertilized by sperm. Sterilization is typically performed by a gynecologist or obstetrician.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            // Procedure
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'There are two main types of sterilization procedures for women: laparoscopic sterilization and mini-laparotomy sterilization. Laparoscopic sterilization is performed through small incisions in the abdomen and is usually done under general anesthesia. Mini-laparotomy sterilization is a slightly more invasive procedure that involves a slightly larger incision in the abdomen and is typically performed under local anesthesia.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            // Pros and cons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Pros: Sterilization is a highly effective form of birth control, with a failure rate of less than 1%. It is also a permanent form of birth control, so once it is done, you do not have to worry about using any other form of contraception. Cons: Sterilization is a surgical procedure and carries with it the risks associated with any surgery, such as infection and bleeding. It is also a permanent form of birth control, so it is not reversible. If you are not sure if you want children in the future, sterilization may not be the right choice for you.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            // Conclusion
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Sterilization is a safe and effective form of birth control for women who are certain that they do not want to have any more children. If you are considering sterilization, it is important to discuss the procedure and the potential risks with a healthcare provider.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
