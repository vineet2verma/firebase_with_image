
import 'package:flutter/material.dart';

import '../company/about_us.dart';
import '../company/company_policy.dart';
import '../onworking.dart';

List<Map<String, dynamic>> dashboardlist = [
  {
    "Name": "Company Policy",
    "Status": "Yes",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx8Ho8FWOsjzG-Vt6QyC52ebmCGQJF_CkIEw&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": CompanyPolicy()
  },
  {
    "Name": "About Us",
    "Status": "Yes",
    "Color": "",
    "Image":
        "data:image/jpeg;base64,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",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": AboutUs()
  },
  {
    "Name": "Field Tracker",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXiieecKMVQaPjBModoLqfPL9nQSwRqvev0w&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Help",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv7gJJDePiBr-RtN_a87jOzWJvMmrxL70tcA&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Leave",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfSQpDX9aN6wWaFhDx0hoPmq1opd3l9MeE2g&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Delegation Task",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgWZUrXBWtYrEzltP4coaBjJ4X_lPPNAuWRw&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Checklist Task",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-iGWSivBEvI67SlTKLogR9wQ68P5eew0pBQ&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "Add Task",
    "Working 1": "Filter ",
    "Working 2": "Daily, Weekly , Monthly, Quaterly, Yearly",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Employee Master",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGXp2WqMMHp0AlceZARYnN76EoJkAaEQ9rNw&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "User Access",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCn15hhY4w1hmLzzel6ky5BOIdEqJX4a-75Q&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Leave Master",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQbeTTtZI9YCpWAy3eOz7tVhDivbGm3xN0gQ&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Hr Master",
    "Status": "",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGda3s3s3fCoN8FEK9Sc9xPkugZ3aAdXjC3A&usqp=CAU",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Attandance",
    "Status": "",
    "Color": "",
    "Image":
        "",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Recruitment",
    "Status": "",
    "Color": "",
    "Image":
        "",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Reminter / To Do Task",
    "Status": "",
    "Color": "",
    "Image":
        "",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Training Process",
    "Status": "No",
    "Color": "",
    "Image":
        "",
    "Ui Part Status": "",
    "Logic Part Status": "",
    "Priority": "",
    "Info": "",
    "Working 1": "",
    "Working 2": "",
    "Working 3": "",
    "Page": DefaultPage()
  },
  {
    "Name": "Fms",
    "Status": "No",
    "Color": "",
    "Image":
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.fastweb.com%2Fuploads%2Farticle_photo%2Fphoto%2F2034860%2FTips-to-works-effectively-in-group-projects.jpg&tbnid=cdtfh5hhuKkPlM&vet=12ahUKEwj8lsPa1vSBAxWmSmwGHQMAAxAQMygHegQIARB8..i&imgrefurl=https%3A%2F%2Fwww.fastweb.com%2Fstudent-life%2Farticles%2Ftips-to-work-effectively-in-group-projects&docid=B5jj7YZfXOI_yM&w=800&h=532&q=project%20work&hl=en&ved=2ahUKEwj8lsPa1vSBAxWmSmwGHQMAAxAQMygHegQIARB8",
    "Page": DefaultPage()
  }
];
