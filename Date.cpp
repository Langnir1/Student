#include <iostream>
#include "Date.h"

Date::Date(){
	dateString = "";
	day =0;
	month = 0;
	year = 0;
}

void Date::init(std::string dateStr){
	dateString = dateStr;
	std::stringstream ss(dateStr);
	
	std::getline(ss, month, "/");
	std::getline(ss, day, "/");
	std::getline(ss, year);

	ss.clear();
	ss.str("");

	ss << day << " " << month << " " << year;
	ss >> day >> month >> year;
} 

void Date::printDate(){
	std::string months [] = {"null", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
	std::cout << months[month] << " ";
	std::cout << ", " << year << std::endl;
}
