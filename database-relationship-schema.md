Tour (**Code**, Name, DeptTime, Duration, Discount, Domestic Or International, Details, Slots, ContentAuthorID)

TourDay (**ID**, TourCode, Day#, Details, Destination)

Member (**ID**, Email, Name, Gender, DayOfBirth, Address, Phone#)

Like (**MemberID**, **TourCode**)

Comment (**ID**, TourCode, AuthorEmail, AuthorName, CommentContent, CheckByEmployeeID, CheckStatus)

Booking (**Code**, TourCode, CustomerName, CustomerEmail, CustomerPhone#, CustomerAddress, Note, ResponsiveByEmployeeID)

Passenger (**ID**, BookingCode, Name, DayOfBirth, Gender, Type, Passport#, PassportExpireTime)

TypeOfPassenger (**Code**, AgeType, NationType)

Price (**TourCode**, **TypeOfPassengerCode**, PriceName, Amount)

Employee (**ID**, Name, Address, Phone#, DeptID)

Department (**DeptID**, DeptName) 

GuideTour (**EmployeeCode**, **TourCode**)
