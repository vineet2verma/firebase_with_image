
import 'package:flutter/material.dart';

import '../company/about_us.dart';
import '../company/company_policy.dart';
import '../default_page.dart';
import '../help/help_page.dart';

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
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl9bPrdPDvji8SecMtR9T-mf5zqpQARC22JQ&usqp=CAU",
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
    "Page": HelpPage()
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
    "Image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoJEFK_NbGCAJNT4PbjDTIElX-NCy_BWwdpw&usqp=CAU",
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
    "Image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXX3XcXO29nObu1CIIO58BgLx_6BAUzpGbCw&usqp=CAU",
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
    "Image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFFktpqhhxlZeC8_Y3ZPH5SzMa_A23nck_UQ&usqp=CAU",
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
    "Image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2SF6qpe1v4XqBEQ4FLMM-YLDEi8sHtIR6rA&usqp=CAU",
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
    "Name": "Internal Chat",
    "Status": "No",
    "Color": "",
    "Image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnoB4BlgK1uYszButQeNHPn1H1X8sFBsjdvQ&usqp=CAU",
    "Page": DefaultPage()
  },
  {
    "Name": "Fms",
    "Status": "No",
    "Color": "",
    "Image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPPTK9G1sBzkbtNot02q0_feEphSoWXa8UEw&usqp=CAU",
    "Page": DefaultPage()
  }
];
