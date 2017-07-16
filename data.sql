INSERT INTO [travel.com.vn].dbo.Booking (Code, TourCode, CustomerName, CustomerMail, CustomerPhone#, CustomerAddress, Note, CheckerEmployeeID, BookedByMemberID) VALUES (170712249611, 'NDSGN311-163-140717VJ-U       ', 'Mr. Bảo', 'phqb98@gmail.com                                  ', '01273298193    ', 'Hồ Chí Minh', 'Chả có gì', 352442888, 1);

INSERT INTO [travel.com.vn].dbo.Comment (ID, TourCode, AuthourEmail, Content, CheckerEmployeeID, CheckStatus) VALUES (1, 'NDSGN311-163-140717VJ-U       ', 'Chiatran@gmail.com                                ', 'Lên núi bà nà có đi bộ được không', 352442999, 'A');
INSERT INTO [travel.com.vn].dbo.Comment (ID, TourCode, AuthourEmail, Content, CheckerEmployeeID, CheckStatus) VALUES (2, 'NDSGN311-163-140717VJ-U       ', 'cskh@vietravel.com                                ', 'Kính chào Quý khách Chiatran! Rất cảm ơn Quý khách đã quan tâm đến dịch vụ của Vietravel. Hiện tại lên Bà Nà chỉ có phương tiện là bằng cáp treo thôi ạ. Nếu cần thêm thông tin, Quý khách liên hệ lại nhé. Trân trọng!', 352442777, 'A');

INSERT INTO [travel.com.vn].dbo.Department (ID, Name) VALUES (1, 'Bộ phận Quản lý nội dung');
INSERT INTO [travel.com.vn].dbo.Department (ID, Name) VALUES (2, 'Bộ phận Chăm sóc khách hàng');
INSERT INTO [travel.com.vn].dbo.Department (ID, Name) VALUES (3, 'Bộ phận Kiểm duyệt bình luận');
INSERT INTO [travel.com.vn].dbo.Department (ID, Name) VALUES (4, 'Hướng dẫn viên du lịch');
INSERT INTO [travel.com.vn].dbo.Department (ID, Name) VALUES (5, 'Bộ phận xử lý đơn hàng');

INSERT INTO [travel.com.vn].dbo.Employee (ID, Name, Address, Phone#, DepartmentID) VALUES (352442666, 'Trần Hướng Dẫn', 'Việt Nam', '02413414514    ', 4);
INSERT INTO [travel.com.vn].dbo.Employee (ID, Name, Address, Phone#, DepartmentID) VALUES (352442769, 'Nguyễn Văn A', 'Việt Nam', '0123456789     ', 1);
INSERT INTO [travel.com.vn].dbo.Employee (ID, Name, Address, Phone#, DepartmentID) VALUES (352442777, 'Nguyễn Thị Hoa', 'Việt Nam', '0141349105     ', 2);
INSERT INTO [travel.com.vn].dbo.Employee (ID, Name, Address, Phone#, DepartmentID) VALUES (352442888, 'Trần Văn C', 'Việt Nam', '014913898      ', 5);
INSERT INTO [travel.com.vn].dbo.Employee (ID, Name, Address, Phone#, DepartmentID) VALUES (352442999, 'Trần Văn B', 'Việt Nam', '0141349898     ', 3);

INSERT INTO [travel.com.vn].dbo.GuideTour (EmployeeID, TourCode) VALUES (352442666, 'NDSGN311-163-140717VJ-U       ');

INSERT INTO [travel.com.vn].dbo.[Like] (MemberID, TourCode) VALUES (1, 'NDSGN311-163-140717VJ-U       ');

INSERT INTO [travel.com.vn].dbo.Member (ID, Email, Name, Gender, DayOfBirth, Address, Phone#) VALUES (1, 'phqb98@gmail.com                                  ', 'Phan Quốc Bảo', 'M', '1998-09-30', 'Đường Phạm Văn Bạch, Quận Gò Vấp, TP Hồ Chí Minh', '01223770223    ');

INSERT INTO [travel.com.vn].dbo.Passenger (ID, BookingCode, Name, DayOfBirth, Gender, Type, Passport#, PassportExpireTime) VALUES (1, 170712249611, 'Hành Khách Thứ Nhất', '2017-07-13', 'F', 4, 352442678, '2038-07-13 02:38:44.063');
INSERT INTO [travel.com.vn].dbo.Passenger (ID, BookingCode, Name, DayOfBirth, Gender, Type, Passport#, PassportExpireTime) VALUES (2, 170712249611, 'Hành Khách Thứ Hai', '1998-07-23', 'M', 1, 352442987, '2038-07-13 02:38:44.063');

INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 0, 'Phụ thu phòng đơn                                                                                   ', 1000000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 1, 'Giá tour                                                                                            ', 5990000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 2, 'Giá tour                                                                                            ', 4245000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 3, 'Giá tour                                                                                            ', 2500000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 4, 'Giá tour                                                                                            ', 220000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 5, 'Giá tour                                                                                            ', 5990000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 6, 'Giá tour                                                                                            ', 4245000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 7, 'Giá tour                                                                                            ', 2500000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 8, 'Giá tour                                                                                            ', 220000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 9, 'Giá tour                                                                                            ', 5990000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 10, 'Giá tour                                                                                            ', 4245000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 11, 'Giá tour                                                                                            ', 2500000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 12, 'Giá tour                                                                                            ', 220000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 13, 'Giá tour                                                                                            ', 4200000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 14, 'Giá tour                                                                                            ', 4200000);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 15, 'Giá tour                                                                                            ', 0);
INSERT INTO [travel.com.vn].dbo.Price (TourCode, TypeOfPassengerCode, PriceName, Amount) VALUES ('NDSGN311-163-140717VJ-U       ', 16, 'Giá tour                                                                                            ', 0);

INSERT INTO [travel.com.vn].dbo.TourDay (ID, TourCode, Day#, Detail, Destination) VALUES ('1         ', 'NDSGN311-163-140717VJ-U       ', 1, 'Quý khách tập trung tại Sân bay Tân Sơn Nhất, cột số 4,  ga đi Trong Nước. Hướng dẫn viên làm thủ tục cho Quý khách đáp chuyến bay đi Đà Nẵng. Tại sân bay Đà Nẵng, xe và hướng dẫn viên Vietravel đón Quý khách tham quan danh thắng cảnh Ngũ Hành Sơn: Chùa Linh Ứng, Động Tàng Chơn, Động Hoa Nghiêm, Chùa Non Nước,… Sau đó đoàn dạo một vòng bán đảo Sơn Trà, viếng Chùa Linh Ứng - Nơi đây có tượng Phật Quan Thế Âm cao nhất Việt Nam (67m). Đứng nơi đây, Quý khách sẽ được chiêm ngưỡng toàn cảnh thành phố, núi rừng và biển đảo Sơn Trà một cách hoàn hảo nhất. Quý khách ghé Ky niem local specialites and souvernia shop với nhiều mặt hàng đặc sản của Đà Nẵng và các vùng miền khác. Ăn trưa. Nhận phòng khách sạn tự do nghỉ ngơi. Chiều xe đưa Quý khách đi tắm biển Mỹ Khê Đà Nẵng - một trong những bãi biển quyến rũ nhất hành tinh. Sau đó, đoàn đi tham quan Phố Cổ Hội An: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ… tự do dạo phố đèn lồng nhiều màu sắc và mua những món quà lưu niệm của địa phương, thử tài trong các trò chơi dân gian như đập niêu, hát bài chòi,…. Ăn chiều. Đoàn về lại Đà Nẵng. Nghỉ đêm tại Đà Nẵng.', 'TP.HCM - ĐÀ NẴNG - SƠN TRÀ - HỘI AN');
INSERT INTO [travel.com.vn].dbo.TourDay (ID, TourCode, Day#, Detail, Destination) VALUES ('2         ', 'NDSGN311-163-140717VJ-U       ', 2, 'Ăn sáng buffet tại khách sạn. Xe đưa Quý khách tham quan Khu du lịch Bà Nà - Suối Mơ, đến nơi Quý khách đi tuyến cáp treo một dây dài nhất thế giới lên Đỉnh núi Bà Nà (chi phí cáp treo tự túc), tận hưởng không khí se lạnh của “Đà Lạt tại miền Trung”, đoàn tự do tham quan Chùa Linh Ứng, Hầm Rượu Debay, vườn hoa Le Jardin D’Amour… Tiếp đến, Quý khách đến Khu Tâm linh mới của Bà Nà viếng Đền Lĩnh Chúa Linh Từ - Đền nằm trên đĩnh Núi Chúa, nơi thờ Bà Mẫu Thượng Ngàn,… tham quan Lầu chuông, Tháp Linh Phong Tự. Tiếp tục đến khu vui chơi Fantasy Park: với các trò chơi phiêu lưu mới lạ, trải nghiệm cảm giác mạnh như: Vòng Quay Tình Yêu, Phi Công Skiver, Đường Đua Lửa, Ngôi Nhà Ma và Khu trưng bày hơn 40 tượng sáp - Là những nhân vật ca sĩ, diễn viên, nhà khoa học, lãnh tụ nổi tiếng trên thế giới… Ăn trưa. Đoàn tiếp tục đi xuyên Hầm Hải Vân - Hầm đường bộ dài nhất Đông Nam Á khởi hành đi Huế, nhận phòng khách sạn, tự do nghỉ ngơi. Nghỉ đêm tại Huế.', 'ĐÀ NẴNG - BÀ NÀ - HUẾ');
INSERT INTO [travel.com.vn].dbo.TourDay (ID, TourCode, Day#, Detail, Destination) VALUES ('3         ', 'NDSGN311-163-140717VJ-U       ', 3, 'Ăn sáng buffet tại khách sạn, Quý khách khởi hành đi Đồng Hới (Quảng Bình), trên đường đi dừng tham quan Thánh Địa La Vang - Một thánh địa quan trọng của người Công giáo Việt Nam thuộc tỉnh Quảng Trị, dừng viếng Nghĩa Trang Liệt Sĩ Trường Sơn. Đến Quảng Bình, ăn trưa, sau đó đoàn tham quan động mới trong quần thể di sản thiên nhiên thế giới Phong Nha - Kẻ Bàng: Động Thiên Đường - Được xem như là Hoàng cung dưới lòng đất, hang động đá vôi đẹp và kỳ ảo, có độ dài kỷ lục trên 30km. Sau đó đoàn khởi hành về lại Huế (hơi trễ khoảng 20:00). Ăn chiều tại Quảng Trị. Nghỉ đêm tại Huế. 
(Trong trường hợp Quý khách không đi tham quan Động Thiên Đường, ở lại Huế tự do tham quan, vui lòng báo ngay khi đăng ký hoặc thanh toán, Vietravel sẽ hoàn chi phí: ăn trưa, ăn chiều, tham quan 450.000VNĐ/khách. Trong trường hợp báo sau sẽ không hoàn giảm)', 'HUẾ - THÁNH ĐỊA LA VANG - ĐỘNG THIÊN ĐƯỜNG');
INSERT INTO [travel.com.vn].dbo.TourDay (ID, TourCode, Day#, Detail, Destination) VALUES ('4         ', 'NDSGN311-163-140717VJ-U       ', 4, 'Ăn sáng buffet tại khách sạn. Xe đưa Quý khách tham quan Đại Nội - Hoàng cung xưa của 13 vị vua triều Nguyễn, tham quan Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đình,… tiếp tục viếng Chùa Thiên Mụ - Ngôi chùa được xem là biểu tượng xứ  Huế và là nơi lưu giữ nhiều cổ vật quý giá không chỉ về mặt lịch sử mà còn cả về nghệ thuật. Ăn trưa. Xe đưa Qúy khách tham quan Lăng Tự Đức - Nơi có phong cảnh sơn thủy hữu tình và được cho là một trong những lăng tẩm có kiến trúc đẹp nhất của các vua chúa nhà Nguyễn, sau đó xe Vietravel tiễn Quý khách ra sân bay Phú Bài-Huế đón chuyến bay trở về Tp.HCM. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.', 'HUẾ - TPHCM');

INSERT INTO [travel.com.vn].dbo.Tour (Code, Name, Duration, Discount, DomesticOrInternational, Detail, Slot, ContentOfEmployeeID) VALUES ('NDSGN311-163-140717VJ-U       ', 'Đà Nẵng - Bà Nà - Hội An - La Vang - Động Thiên Đường - Huế (Khách sạn 4* 2 đêm)', '10:10:10', 0, 'D', 'Hành trình đưa Quý khách đến với con đường di sản văn hóa miền Trung. Này là Hội An duyên dáng và cổ kính, này là Đà Nẵng trẻ trung với nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà, đèo Hải Vân, sông Hàn thơ mộng và cầu quay Sông Hàn – niềm tự hào của thành phố. Cùng đến với Huế thương sơn thủy hữu tình, Huế thương sơn thủy hữu tình, nơi tọa lạc Đại Nội, Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Lăng Tự Đức, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh xưa của 13 vị vua triều Nguyễn; và Quảng Bình non xanh nước biếc, nơi có hệ thống hang động kỳ thú được UNESCO công nhận là di sản thiên nhiên thế giới.', 1, 352442769);

INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (0, 'Tất cả                                            ', 'Tất cả                                            ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (1, 'Người lớn                                         ', 'Việt Nam                                          ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (2, 'Trẻ em                                            ', 'Việt Nam                                          ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (3, 'Trẻ nhỏ                                           ', 'Việt Nam                                          ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (4, 'Em bé                                             ', 'Việt Nam                                          ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (5, 'Người lớn                                         ', 'Việt kiều                                         ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (6, 'Trẻ em                                            ', 'Việt kiều                                         ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (7, 'Trẻ nhỏ                                           ', 'Việt kiều                                         ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (8, 'Em bé                                             ', 'Việt kiều                                         ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (9, 'Người lớn                                         ', 'Nước ngoài                                        ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (10, 'Trẻ em                                            ', 'Nước ngoài                                        ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (11, 'Trẻ nhỏ                                           ', 'Nước ngoài                                        ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (12, 'Em bé                                             ', 'Nước ngoài                                        ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (13, 'Người lớn                                         ', 'Land tour                                         ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (14, 'Trẻ em                                            ', 'Land tour                                         ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (15, 'Trẻ nhỏ                                           ', 'Land tour                                         ');
INSERT INTO [travel.com.vn].dbo.TypeOfPassenger (Code, AgeType, NationType) VALUES (16, 'Em bé                                             ', 'Land tour                                         ');

