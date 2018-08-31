# FAP SYSTEM
---

Project Java Web Application Development – PRJ321

## **Requirement**
---
Each year, in August, FPT University opens its Enrollment page for students to register their study campus and their specialization. Student must provide some of information which includes:

Private information
- [x]     **First Name:** First name of the student
- [x]     **Last Name:** Last name of the student
- [x]     **Date of Birth:** Student’s birth date
- [x]     **Gender:**	Male or Female
- [ ]     **ID Card No:** Civil Identified Number
- [ ]     **ID Card’s** **Issuing Date**: The issuing date of the ID Card
- [ ]     **ID Card’s Issuing Place:** The place where issued the ID Card
- [x]     **Address:** Their resident address
- [x]     **Telephone:** Their telephone number or mobile
- [x]     **Email:** Their email address
Parent Information
- [x]     **Name**: Name of the protector/parent
- [x]     **Phone number:** Telephone number of the protector/parent
- [x]     **Address:** Protector/parent’s resident address
- [x]     **Email:** Email address of the protector/parent
- [x]     **Job:** Occupation of the protector/parent
- [x]     **Place of Work:** The place where protector/parent is employee
 Academic Informatio
- [x]     **Campus**	: Place to study
- [x]     **Specialization:** Specialization to study
Academic Information
- [x]     **RollNumber**	(Auto generated follow the format : Campus Short form + student
                            identified number)
- [ ]     **Old Rollnumber:**	RollNumber for students who changed their campus or specialization
- [x]     **Membercode:** The account student could use to login to system of the university
- [ ]     **Enroll date:** The enroll date of student
- [ ]     **Mode:** Mode of the academic

The tasks in this assignment are:
1. You have to design a database to store student information in which there are 3 tables Student, Parent, Academic.
1. You have to create input pages in JSP/Servlet in which student can register their information and send it to Academic Staff.
1. You have to design and create pages in JSP/Servlet to authenticate a staff who is Academic Staff, you must apply filter technique.
1. You have to design and create pages to support Academic staff to edit then approve the registration from student.
1. You have to create a page to show student information at final stage of enrollment process\

## **Database**
---
![Image](https://github.com/thaycacac/fap-registration-study/blob/master/DATABASE/diagram.PNG?raw=true)

*Note: Should add id for table Campus_Academic
## **Demo**
---
> **Student**
1. When student go to page register

![Image](https://github.com/thaycacac/fap-registration-study/blob/master/IMAGE/1.PNG?raw=true)


1. Then student can register study in form. (Must be fill all field)

![Image](https://github.com/thaycacac/fap-registration-study/blob/master/IMAGE/2.PNG?raw=true)


1. If student fill all field then notify register success, if not page send error message


![Image](https://github.com/thaycacac/fap-registration-study/blob/master/IMAGE/3.PNG?raw=true)


Academic Staffs [ inmage ](https://github.com/thaycacac/fap-registration-study/tree/master/IMAGE)

## **Author**
---
Pham Ngoc Hoa - [thaycacac](https://github.com/thaycacac)