--insert campus
insert into campus (name) values (N'Hòa Lạc')
insert into campus (name) values (N'FU-Hồ Chí Minh')
insert into campus (name) values (N'FU-Ðà Nẵng')
insert into campus (name) values (N'FU-Cần Thơ')
insert into campus (name) values (N'MSE')
insert into campus (name) values (N'FE-LAO')
select * from campus

--insert academic
insert into Academic (username, password) values ('admin', '123456')
select * from Academic

--insert campus academic
insert into Campus_Academic (campusId, academicId) values (8, 1)
select * from Campus_Academic

--insert student
insert into Student(firstName, lastName, DOB, gender, address, telephone, email)
values (N'Phạm Ngọc', N'Hòa', '1998-03-20', 1, N'Yên Khánh - Ninh Bình', '0968038714', 'thaycacac@gmail.com')
insert into Student(firstName, lastName, DOB, gender, address, telephone, email)
values (N'Trần Quang', N'Nhật', '1998-03-10', 1, N'Vinh', '0123456789', 'nhatquang@gmail.com')
insert into Student(firstName, lastName, DOB, gender, address, telephone, email)
values (N'Nguyễn Xuân', N'Cường', '1998-05-20', 1, N'Bắc Ninh', '0968034874', 'cuongnx98@gmail.com')
insert into Student(firstName, lastName, DOB, gender, address, telephone, email)
values (N'Đỗ Quang', N'Hiệp', '1997-09-30', 1, N'Hưng Yên', '0968481349', 'hongthuy@gmail.com')
select * from Student

--insert student campus
insert into Student_Campus (campusID) values (8)
insert into Student_Campus (campusID) values (8)
insert into Student_Campus (campusID) values (8)
insert into Student_Campus (campusID) values (8)
select * from Student_Campus

--insert specialized
insert into Specialized (nameSpecialized, code) values (N'Kỹ Thuật Phần Mềm', 'SE')
insert into Specialized (nameSpecialized, code) values (N'An Toàn Thông Tin', 'IA')
insert into Specialized (nameSpecialized, code) values (N'Quản Trị Kinh Doanh', 'SB')
select * from Specialized

--insert student specialized
insert into Student_Specialized (specializedId, studentId) values (1, 1)
insert into Student_Specialized (specializedId, studentId) values (2, 2)
insert into Student_Specialized (specializedId, studentId) values (1, 3)
insert into Student_Specialized (specializedId, studentId) values (3, 4)
select * from Student_Specialized

--insert parent
insert into Parent (name, phoneNumber, address, email, job, placeWork) 
values (N'Phạm Văn Quang', '0986246813', N'Ninh Bình', 'quangpd@gmail.com', 'Free', N'Ninh Bình')
insert into Parent (name, phoneNumber, address, email, job, placeWork) 
values (N'Trần Quang Hải', '0684235774', N'Vinh', 'hai7x@gmail.com', 'Bác Sĩ', N'Vinh')
insert into Parent (name, phoneNumber, address, email, job, placeWork) 
values (N'Nguyễn Hải Nam', '0169125486', N'Cà Mau', 'namesimple@gmail.com', 'Công An', N'Cà Mau')
insert into Parent (name, phoneNumber, address, email, job, placeWork) 
values (N'Đỗ Quang Thắng', '0159631547', N'Hưng Yên', 'hongvan@gmail.com', 'Giáo Viên', N'Hưng Yên')
select * from Parent

--insert student parent
insert Student_Parent (studentId, parentId) values (1,1)
insert Student_Parent (studentId, parentId) values (2,2)
insert Student_Parent (studentId, parentId) values (3,3)
insert Student_Parent (studentId, parentId) values (4,4)

--DBCC CHECKIDENT ('dbo.TableName', RESEED, 1)