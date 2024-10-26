class FaqModel {
  final String question;
  final String answer;

  FaqModel({
    required this.question,
    required this.answer,
  });
}

List<FaqModel> faqList = [
  FaqModel(
    question: '1. What is MedShare ?',
    answer:
        'MedShare is an application aims to provide a platform for patients to donate excess, unused medicines to government health care centers. These donations will support the healthcare system by redistributing viable medications to those in need, reducing waste, and increasing access to treatments.',
  ),
  FaqModel(
    question: '2. How exactly does it work ?',
    answer:
        'After Register all your medicine in Personal Pharmacy, decide which of the medicine you registered, you want to donate it: you can submit requests to donate excess medicines via the app. After verifying that the medicine is suitable for donation, you must deliver it to the nearest donation center.  The medicines will be collected at government health care centers.The donation process will be overseen by healthcare professionals.',
  ),
  FaqModel(
    question: '3. Who is eligible to donate medicines ?',
    answer:
        'Every individual who has unexpired medicines and he is over 18 years old.',
  ),
  FaqModel(
    question: '4. Who checks the medicines that users donate ?',
    answer:
        'The pharmacists who work in the organizations we donate medicines, are responsible to check the medicines.',
  ),
  FaqModel(
    question: '5. Who takes the medicines that user donated ?',
    answer:
        'Donation centers will redistribute the medicine to those who need it in government centers and hospitals.',
  ),
  FaqModel(
    question: '6. How is the delivery of the conation being held ?',
    answer:
        'The donor must deliver the medication after checking with the nearest government health center through the donation points page.',
  ),
  FaqModel(
    question: '7. What kind of medicines can I donate ?',
    answer:
        'Only Solid oral dosage form. Medicines should have more than 6 months of shelf life if to be reused. Store in suitable conditions.',
  ),
  FaqModel(
    question: '8. What if the medicine is not suitable for donation ?',
    answer:
        'The app will tell you if the medicine is not suitable for donation or if it is unusable and must be destroyed.',
  ),
  FaqModel(
    question:
        '9. What is the impact of the application on the environment and the health sector ?',
    answer:
        'Reducing wastage of viable medicines.  Supporting healthcare centers with a reliable supply of donated medicines.  Promoting a culture of sustainability and charity among patients.',
  ),
];
