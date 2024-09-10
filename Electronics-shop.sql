﻿USE master
DROP DATABASE IF EXISTS OnlineShop
CREATE DATABASE OnlineShop;
GO
USE [OnlineShop]
GO



-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE UserStatus (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	StatusName nvarchar(1000)
) ON [PRIMARY]
GO
INSERT INTO UserStatus VALUES (N'Active');
INSERT INTO UserStatus VALUES (N'Locked');
INSERT INTO UserStatus VALUES (N'Gmail Login');
INSERT INTO UserStatus VALUES (N'Unverified');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create table [Role](
	RoleID int IDENTITY(1, 1) primary key,
	RoleName nvarchar (20),
	-- Admin,marketing, seller, customer
);
GO
INSERT INTO [Role] VALUES (N'Admin');
INSERT INTO Role VALUES (N'Seller');
INSERT INTO Role VALUES (N'Customer');
INSERT INTO Role VALUES (N'Marketing');
INSERT INTO Role VALUES (N'Shipper');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [Users] (
	UserID int PRIMARY KEY identity(1,1),
	Username nvarchar(500),
	Password varchar(1000),
	email nvarchar(1000),
	[RoleID] int,
	StatusID int,
	constraint Status_ID_in_Status FOREIGN KEY(StatusID) REFERENCES UserStatus(ID),
	constraint RoleID_in_Role FOREIGN KEY(RoleID) REFERENCES [Role](RoleID)
);
GO
INSERT INTO Users VALUES(N'admin','123456','admin@fpt.edu.vn',1,1);
INSERT INTO Users VALUES(N'bean','bean','DucTVHE141699@fpt.edu.vn',2,1);
INSERT INTO Users VALUES(N'ngp','ngp','PhuNGHE150108@fpt.edu.vn',2,1);
INSERT INTO Users VALUES(N'mai','mai','MaiNTNHE151402@fpt.edu.vn',3,1);
INSERT INTO Users VALUES(N'bnmc','bnmc','ChauBNMHE153019@fpt.edu.vn',3,1);
INSERT INTO Users VALUES(N'dtl','dtl','LamDTHE153097@fpt.edu.vn',3,1);
INSERT INTO Users VALUES(N'mkt','mkt','mkt@fpt.edu.vn',4,1);
INSERT INTO Users VALUES(N'shipper','shipper','shipper@fpt.edu.vn',5,1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jjellico0', 'Jellico', 'wjellico0@npr.org', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dimpson1', 'Impson', 'simpson1@wiley.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cdahlen2', 'Dahlen', 'adahlen2@unblog.fr', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jstote3', 'Stote', 'ostote3@zimbio.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jjanku4', 'Janku', 'jjanku4@yahoo.co.jp', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gseckom5', 'Seckom', 'pseckom5@amazon.co.uk', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('nstainburn6', 'Stainburn', 'astainburn6@edublogs.org', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('snewlands7', 'Newlands', 'dnewlands7@intel.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mrowesby8', 'Rowesby', 'erowesby8@oracle.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('sbridgwood9', 'Bridgwood', 'sbridgwood9@businessweek.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('afranca', 'Franc', 'mfranca@hibu.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('wingyonb', 'Ingyon', 'wingyonb@oakley.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jbenallackc', 'Benallack', 'abenallackc@admin.ch', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ksellickd', 'Sellick', 'lsellickd@unicef.org', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ggurwoode', 'Gurwood', 'ngurwoode@examiner.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mallinghamf', 'Allingham', 'tallinghamf@examiner.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hmedfordg', 'Medford', 'bmedfordg@smh.com.au', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kelstobh', 'Elstob', 'zelstobh@accuweather.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rnouchi', 'Nouch', 'pnouchi@msu.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ecurromj', 'Currom', 'kcurromj@mayoclinic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('nmcturkk', 'McTurk', 'lmcturkk@webeden.co.uk', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('clathwoodl', 'Lathwood', 'nlathwoodl@theatlantic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rsincockm', 'Sincock', 'isincockm@jimdo.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('drobyn', 'Roby', 'mrobyn@toplist.cz', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('awolterso', 'Wolters', 'rwolterso@google.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('criallp', 'Riall', 'kriallp@stanford.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rscurryq', 'Scurry', 'oscurryq@who.int', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gbadwickr', 'Badwick', 'jbadwickr@time.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('zclinkards', 'Clinkard', 'gclinkards@vinaora.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jmaberleyt', 'Maberley', 'rmaberleyt@biblegateway.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lcahanu', 'Cahan', 'dcahanu@kickstarter.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hgowersv', 'Gowers', 'cgowersv@google.com.br', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bdallaw', 'Dalla', 'sdallaw@360.cn', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('caubinx', 'Aubin', 'laubinx@twitter.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('wdesantosy', 'De Santos', 'ldesantosy@cyberchimps.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('abedfordz', 'Bedford', 'ebedfordz@scribd.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bjerromes10', 'Jerromes', 'sjerromes10@cbsnews.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mbakey11', 'Bakey', 'hbakey11@huffingtonpost.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dlocke12', 'Locke', 'elocke12@princeton.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('sgabbitus13', 'Gabbitus', 'mgabbitus13@sfgate.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('tkauffman14', 'Kauffman', 'mkauffman14@thetimes.co.uk', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kgodard15', 'Godard', 'egodard15@walmart.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('rburdess16', 'Burdess', 'eburdess16@uol.com.br', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ralejandri17', 'Alejandri', 'lalejandri17@sakura.ne.jp', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('klutwyche18', 'Lutwyche', 'slutwyche18@vk.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gdelete19', 'Delete', 'ddelete19@businesswire.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cduns1a', 'Duns', 'aduns1a@wsj.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bfallanche1b', 'Fallanche', 'rfallanche1b@last.fm', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mderx1c', 'Derx', 'oderx1c@ning.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lnewsome1d', 'Newsome', 'fnewsome1d@tiny.cc', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hrhubottom1e', 'Rhubottom', 'arhubottom1e@sciencedaily.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dkofax1f', 'Kofax', 'fkofax1f@unc.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('vlandeg1g', 'Landeg', 'nlandeg1g@dailymotion.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('zlammiman1h', 'Lammiman', 'rlammiman1h@xing.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kiverson1i', 'Iverson', 'siverson1i@amazonaws.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cnudde1j', 'Nudde', 'hnudde1j@acquirethisname.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('astempe1k', 'Stempe', 'dstempe1k@dedecms.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('craund1l', 'Raund', 'traund1l@yellowbook.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('abottleson1m', 'Bottleson', 'tbottleson1m@about.me', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('tbart1n', 'Bart', 'sbart1n@miibeian.gov.cn', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dopdenort1o', 'Opdenort', 'lopdenort1o@myspace.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dredolfi1p', 'Redolfi', 'sredolfi1p@umich.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('doldridge1q', 'Oldridge', 'soldridge1q@newsvine.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('kbarrell1r', 'Barrell', 'abarrell1r@twitpic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cscott1s', 'Scott', 'dscott1s@github.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('doman1t', 'Oman', 'moman1t@google.ca', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mdixon1u', 'Dixon', 'tdixon1u@army.mil', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('iyouthead1v', 'Youthead', 'ayouthead1v@sbwire.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('amidlar1w', 'Midlar', 'tmidlar1w@moonfruit.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ggrimmolby1x', 'Grimmolby', 'mgrimmolby1x@cocolog-nifty.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('zphilp1y', 'Philp', 'kphilp1y@google.cn', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('mgiannini1z', 'Giannini', 'rgiannini1z@rambler.ru', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('qmersey20', 'Mersey', 'fmersey20@samsung.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('fellwood21', 'Ellwood', 'eellwood21@loc.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bconstable22', 'Constable', 'fconstable22@studiopress.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('hsaffill23', 'Saffill', 'dsaffill23@huffingtonpost.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('toxbie24', 'Oxbie', 'goxbie24@webmd.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ykoppeck25', 'Koppeck', 'wkoppeck25@spiegel.de', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('raveray26', 'Averay', 'aaveray26@alibaba.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lwhitewood27', 'Whitewood', 'fwhitewood27@tinyurl.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cbilston28', 'Bilston', 'abilston28@webnode.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('ltiner29', 'Tiner', 'ptiner29@studiopress.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lgregine2a', 'Gregine', 'kgregine2a@bloglovin.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('fparsell2b', 'Parsell', 'mparsell2b@si.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('fwolfe2c', 'Wolfe', 'rwolfe2c@intel.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lbellis2d', 'Bellis', 'cbellis2d@icq.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('gwittke2e', 'Wittke', 'mwittke2e@marketwatch.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lisaacson2f', 'Isaacson', 'wisaacson2f@fc2.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('anovotni2g', 'Novotni', 'dnovotni2g@unblog.fr', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('jclough2h', 'Clough', 'cclough2h@bloglines.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bibotson2i', 'Ibotson', 'aibotson2i@usatoday.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('drichardin2j', 'Richardin', 'lrichardin2j@businessinsider.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('lchew2k', 'Chew', 'tchew2k@hhs.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('wmackeeg2l', 'MacKeeg', 'mmackeeg2l@narod.ru', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('cgarz2m', 'Garz', 'ngarz2m@berkeley.edu', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dmanagh2n', 'Managh', 'wmanagh2n@tinypic.com', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('bgiraudoux2o', 'Giraudoux', 'agiraudoux2o@hud.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('astyan2p', 'Styan', 'bstyan2p@va.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('dgillford2q', 'Gillford', 'bgillford2q@noaa.gov', 3, 1);
insert into dbo.[Users] ([Username], [Password], [email], [RoleID], StatusID) values ('nknappen2r', 'Knappen', 'kknappen2r@usa.gov', 3, 1);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Ship (
	id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	CityName nvarchar(1000) ,
	ShipPrice int
) ON [PRIMARY]
GO
INSERT INTO Ship VALUES (N'An Giang', 30000);
INSERT INTO Ship VALUES (N'Bà Rịa-Vũng Tàu', 30000);
INSERT INTO Ship VALUES (N'Bạc Liêu', 30000);
INSERT INTO Ship VALUES (N'Bắc Kạn', 30000);
INSERT INTO Ship VALUES (N'Bắc Giang', 30000);
INSERT INTO Ship VALUES (N'Bắc Ninh', 30000);
INSERT INTO Ship VALUES (N'Bến Tre', 30000);
INSERT INTO Ship VALUES (N'Bình Dương', 30000);
INSERT INTO Ship VALUES (N'Bình Định', 30000);
INSERT INTO Ship VALUES (N'Bình Phước', 30000);
INSERT INTO Ship VALUES (N'Bình Thuận', 30000);
INSERT INTO Ship VALUES (N'Cà Mau', 30000);
INSERT INTO Ship VALUES (N'Cao Bằng', 30000);
INSERT INTO Ship VALUES (N'Cần Thơ', 30000);
INSERT INTO Ship VALUES (N'Đà Nẵng', 30000);
INSERT INTO Ship VALUES (N'Đắk Lắk', 30000);
INSERT INTO Ship VALUES (N'Đắk Nông', 30000);
INSERT INTO Ship VALUES (N'Điện Biên', 30000);
INSERT INTO Ship VALUES (N'Đồng Nai', 30000);
INSERT INTO Ship VALUES (N'Đồng Tháp', 30000);
INSERT INTO Ship VALUES (N'Gia Lai', 30000);
INSERT INTO Ship VALUES (N'Hà Giang', 30000);
INSERT INTO Ship VALUES (N'Hà Nam', 30000);
INSERT INTO Ship VALUES (N'Hà Nội', 20000);
INSERT INTO Ship VALUES (N'Hà Tĩnh', 30000);
INSERT INTO Ship VALUES (N'Hải Dương', 30000);
INSERT INTO Ship VALUES (N'Hải Phòng', 30000);
INSERT INTO Ship VALUES (N'Hòa Bình', 30000);
INSERT INTO Ship VALUES (N'Hồ Chí Minh', 30000);
INSERT INTO Ship VALUES (N'Hậu Giang', 30000);
INSERT INTO Ship VALUES (N'Hưng Yên', 30000);
INSERT INTO Ship VALUES (N'Khánh Hòa', 30000);
INSERT INTO Ship VALUES (N'Kiên Giang', 30000);
INSERT INTO Ship VALUES (N'Kon Tum', 30000);
INSERT INTO Ship VALUES (N'Lai Châu', 30000);
INSERT INTO Ship VALUES (N'Lào Cai', 30000);
INSERT INTO Ship VALUES (N'Lạng Sơn', 30000);
INSERT INTO Ship VALUES (N'Lâm Đồng', 30000);
INSERT INTO Ship VALUES (N'Long An', 30000);
INSERT INTO Ship VALUES (N'Nam Định', 30000);
INSERT INTO Ship VALUES (N'Nghệ An', 30000);
INSERT INTO Ship VALUES (N'Ninh Bình', 30000);
INSERT INTO Ship VALUES (N'Ninh Thuận', 30000);
INSERT INTO Ship VALUES (N'Phú Thọ', 30000);
INSERT INTO Ship VALUES (N'Phú Yên', 30000);
INSERT INTO Ship VALUES (N'Quảng Bình', 30000);
INSERT INTO Ship VALUES (N'Quảng Nam', 30000);
INSERT INTO Ship VALUES (N'Quảng Ngãi', 30000);
INSERT INTO Ship VALUES (N'Quảng Ninh', 30000);
INSERT INTO Ship VALUES (N'Quảng Trị', 30000);
INSERT INTO Ship VALUES (N'Sóc Trăng', 30000);
INSERT INTO Ship VALUES (N'Sơn La', 30000);
INSERT INTO Ship VALUES (N'Tây Ninh', 30000);
INSERT INTO Ship VALUES (N'Thái Bình', 30000);
INSERT INTO Ship VALUES (N'Thái Nguyên', 30000);
INSERT INTO Ship VALUES (N'Thanh Hóa', 30000);
INSERT INTO Ship VALUES (N'Thừa Thiên - Huế', 30000);
INSERT INTO Ship VALUES (N'Tiền Giang', 30000);
INSERT INTO Ship VALUES (N'Trà Vinh', 30000);
INSERT INTO Ship VALUES (N'Tuyên Quang', 30000);
INSERT INTO Ship VALUES (N'Vĩnh Long', 30000);
INSERT INTO Ship VALUES (N'Vĩnh Phúc', 30000);
INSERT INTO Ship VALUES (N'Yên Bái', 30000);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE UserAddress (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserID int,
	ShipName nvarchar(500),
	ShipAddress nvarchar(1000),
	ShipCityID int,
	PhoneNum varchar(20),
	constraint userID_in_user_address FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint ship_city_in_ship_address FOREIGN KEY(ShipCityID) REFERENCES Ship(id)
) ON [PRIMARY]
GO

insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (1, 'Tracie', '1609 Redwing Junction', 21);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (2, 'Shellysheldon', '80 Homewood Pass', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (3, 'Joletta', '180 Evergreen Circle', 61);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (4, 'Tammi', '920 Melby Trail', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID],[PhoneNum]) values (5, N'Bạch Ngọc Minh Châu', N'Đại Học FPT', 24,'0123456789');
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (6, 'Eba', '0 Dovetail Park', 38);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (7, 'Farica', '39269 Calypso Place', 20);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (8, 'Vevay', '730 Walton Crossing', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (9, 'Caitrin', '61811 Oak Trail', 54);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (10, 'Hamlin', '48603 Cordelia Pass', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (11, 'Hortense', '443 Eastwood Drive', 30);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (12, 'Ilario', '87 Luster Drive', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (13, 'Rici', '13953 Gateway Trail', 43);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (14, 'Nola', '79435 Pawling Center', 49);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (15, 'Sax', '7501 Doe Crossing Place', 40);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (16, 'Dulcie', '266 High Crossing Way', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (17, 'Beulah', '723 Summit Way', 18);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (18, 'Lexine', '405 Aberg Pass', 37);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (19, 'Manfred', '19 Village Circle', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (20, 'Calhoun', '310 Talmadge Terrace', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (21, 'Karin', '739 Fallview Crossing', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (22, 'Lisha', '878 Anniversary Alley', 46);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (23, 'Minne', '574 Hayes Road', 40);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (24, 'Loise', '63382 Hagan Terrace', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (25, 'Keane', '07 Village Green Plaza', 58);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (26, 'Elden', '196 4th Road', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (27, 'Lorette', '26 Hoepker Crossing', 5);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (28, 'Marylou', '9768 Monterey Terrace', 52);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (29, 'Kaiser', '48783 Gina Terrace', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (30, 'Hermia', '9 Dorton Point', 57);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (31, 'Eddy', '8060 Debra Circle', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (32, 'Abram', '649 Darwin Road', 34);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (33, 'Val', '418 Park Meadow Pass', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (34, 'Shirlee', '7241 Drewry Way', 31);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (35, 'Cherye', '082 Rutledge Point', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (36, 'Danica', '574 South Parkway', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (37, 'Luca', '14365 Northview Alley', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (38, 'Giselbert', '62 Thackeray Trail', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (39, 'Salomon', '3 Walton Alley', 14);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (40, 'Augustina', '3762 Clarendon Point', 15);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (41, 'Jonell', '443 Anderson Way', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (42, 'Otes', '51123 Sunbrook Point', 28);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (43, 'Kienan', '403 Welch Street', 3);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (44, 'Hubey', '6 Barnett Trail', 49);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (45, 'Joan', '12 Talisman Street', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (46, 'Faydra', '2971 Algoma Court', 47);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (47, 'Joyous', '034 Anderson Terrace', 55);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (48, 'Wang', '70 Little Fleur Center', 26);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (49, 'Toddie', '24706 Artisan Junction', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (50, 'Ernie', '60612 Kings Avenue', 36);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (51, 'Steve', '29440 Elgar Plaza', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (52, 'Derk', '9 Summer Ridge Hill', 40);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (53, 'Marvin', '9828 Monterey Way', 44);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (54, 'Bliss', '5594 Jenifer Circle', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (55, 'Amabel', '4658 Killdeer Alley', 53);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (56, 'Launce', '060 Westridge Junction', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (57, 'Juliette', '9003 Magdeline Circle', 45);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (58, 'Shane', '395 Dryden Trail', 38);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (59, 'Archy', '0 Eagle Crest Circle', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (60, 'Olive', '06 Bashford Crossing', 23);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (61, 'Natal', '66388 Del Mar Circle', 34);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (62, 'Kellie', '92 Dayton Point', 11);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (63, 'Gusella', '1 Glendale Center', 52);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (64, 'Keely', '721 Steensland Street', 59);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (65, 'Ware', '27 Lindbergh Circle', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (66, 'Jsandye', '7143 Anhalt Court', 29);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (67, 'Inez', '91 Calypso Crossing', 63);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (68, 'Bernadina', '84 Reinke Plaza', 57);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (69, 'Cristian', '10 Magdeline Pass', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (70, 'Lanie', '8904 Lillian Point', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (71, 'Lynne', '62546 Meadow Valley Junction', 50);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (72, 'Quentin', '77437 Armistice Plaza', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (73, 'Jeanette', '859 Del Mar Crossing', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (74, 'Anthe', '2878 Hansons Junction', 9);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (75, 'Wolfie', '5 Hintze Circle', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (76, 'Elaine', '3 Comanche Avenue', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (77, 'Alejoa', '08 Toban Crossing', 12);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (78, 'Renate', '6 Farmco Court', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (79, 'Rustin', '96 Lillian Park', 14);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (80, 'Demetris', '8 Rusk Street', 44);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (81, 'Monica', '7206 Corben Pass', 26);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (82, 'Thalia', '45 Park Meadow Plaza', 2);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (83, 'Say', '27075 Brown Crossing', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (84, 'Babette', '686 Oakridge Court', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (85, 'Eleonora', '84 Roth Place', 4);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (86, 'Bailie', '295 Lyons Road', 48);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (87, 'Adi', '2 Gale Alley', 47);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (88, 'Tish', '7922 Eliot Plaza', 7);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (89, 'Lester', '22667 Jenifer Crossing', 37);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (90, 'Arthur', '5382 Lien Trail',5);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (91, 'Vince', '767 Esker Street', 24);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (92, 'Clerkclaude', '58 Rigney Court', 8);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (93, 'Alanah', '0 Mockingbird Place', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (94, 'Cybill', '89 Duke Park', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (95, 'Darbee', '3720 Hollow Ridge Crossing', 33);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (96, 'Hercules', '60 Schmedeman Alley', 6);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (97, 'Deloris', '7901 Randy Alley', 1);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (98, 'Clary', '6 Gateway Point', 21);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (99, 'Patrizia', '3 Melrose Center', 13);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (100, 'Maxie', '92158 Utah Park', 7);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Category (
	CategoryID int PRIMARY KEY identity(1,1),
	CategoryName nvarchar(1000),
) ON [PRIMARY]
GO
INSERT INTO dbo.Category(CategoryName) VALUES (N'Điện thoại di động');
INSERT INTO dbo.Category(CategoryName) VALUES (N'Máy tính & Laptop');
INSERT INTO dbo.Category(CategoryName) VALUES (N'Âm thanh & Hình ảnh');
INSERT INTO dbo.Category(CategoryName) VALUES (N'Thiết bị nhà thông minh');
INSERT INTO dbo.Category(CategoryName) VALUES (N'Thiết bị gia dụng');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] PRIMARY KEY  IDENTITY(1,1) ,
	[SubCategoryName] [nvarchar](255),
	[CategoryID] [int] ,
	constraint CategoryID FOREIGN KEY (CategoryID)  REFERENCES Category(CategoryID)
	)
GO
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Smartphone', 1);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Phụ kiện điện thoại', 1);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Laptop', 2);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'PC', 2);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Loa', 3);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'TV thông minh', 3);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Camera an ninh', 4);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Khóa cửa thông minh', 4);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Máy giặt', 5);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID) VALUES (N'Lò vi sóng', 5);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ProductStatus (
	StatusID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	StatusName nvarchar(1000)
) ON [PRIMARY]
GO

INSERT INTO ProductStatus VALUES ( N'Available');
INSERT INTO ProductStatus VALUES ( N'StopBusiness');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Brand (
	BrandID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	BrandName nvarchar(1000)
) ON [PRIMARY]
GO

INSERT INTO dbo.Brand(BrandName) VALUES (N'Apple');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Samsung');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Sony');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Dell');
INSERT INTO dbo.Brand(BrandName) VALUES (N'HP');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Asus');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Bose');
INSERT INTO dbo.Brand(BrandName) VALUES (N'LG');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Microsoft');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Xiaomi');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Panasonic');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Lenovo');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Huawei');
INSERT INTO dbo.Brand(BrandName) VALUES (N'JBL');
INSERT INTO dbo.Brand(BrandName) VALUES (N'Philips');
--------------------------------------------------------------------------------------------------------------

CREATE TABLE Product (
	ProductID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	ProductName nvarchar(1000),
	Description nvarchar(2000),
	OriginalPrice int, 
	SellPrice int,	
	SalePercent int CHECK (SalePercent>=0 AND SalePercent<=100),
	SubCategoryID int,
	SellerID int,
	Amount int,
	StatusID int,
	BrandID int,
	height float,
	width float,
	weight float,
	constraint product_in_subCategory FOREIGN KEY(SubCategoryID) REFERENCES SubCategory(SubCategoryID),
	constraint SellerID_in_Users FOREIGN KEY(SellerID) REFERENCES Users(UserID),
	constraint StatusID_in_Status FOREIGN KEY(StatusID) REFERENCES ProductStatus(StatusID),
	constraint BrandID_in_Brand FOREIGN KEY(BrandID) REFERENCES Brand(BrandID)
) ON [PRIMARY]
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Product VALUES 
(N'Apple Watch Series 8 GPS 45mm', N'Apple Watch với màn hình Retina Always-On, cảm biến nhiệt độ và theo dõi sức khỏe tối ưu.', 10990000, 9990000, 60, 1, 2, 100, 1, 5, 0, 0, 0),
(N'Samsung Galaxy Watch 5 Pro 45mm', N'Smartwatch cao cấp với tính năng theo dõi sức khỏe, pin lâu và chống nước 5ATM.', 9990000, 8990000, 40, 2, 2, 100, 1, 6, 0, 0, 0),
(N'Dell XPS 13 9310', N'Máy tính xách tay 13 inch với chip Intel Core i7 thế hệ 11 và màn hình 4K UHD cảm ứng.', 45990000, 42990000, 25, 3, 2, 100, 1, 7, 0, 0, 0),
(N'MSI Gaming Laptop GF65 Thin', N'Laptop chơi game với chip Intel Core i7, card đồ họa RTX 3060 và màn hình 144Hz.', 29990000, 27990000, 35, 3, 2, 100, 1, 8, 0, 0, 0),
(N'Bose QuietComfort 45', N'Tai nghe chống ồn tuyệt đối với âm thanh chất lượng cao và thời lượng pin lên đến 24 giờ.', 8990000, 7990000, 50, 4, 2, 100, 1, 9, 0, 0, 0),
(N'JBL Flip 6', N'Loa Bluetooth chống nước IP67 với âm thanh sống động và thời lượng pin 12 giờ.', 2990000, 2490000, 80, 4, 2, 100, 1, 10, 0, 0, 0),
(N'GoPro Hero 11 Black', N'Máy quay hành trình 5K với khả năng chống nước và ổn định hình ảnh tiên tiến.', 11990000, 10990000, 20, 5, 2, 100, 1, 11, 0, 0, 0),
(N'Sony Alpha 7 IV', N'Máy ảnh mirrorless 33MP với khả năng quay video 4K và tính năng lấy nét tự động nhanh.', 55990000, 53990000, 10, 5, 2, 100, 1, 12, 0, 0, 0),
(N'Canon EOS R6', N'Máy ảnh mirrorless với cảm biến full-frame 20MP và hệ thống ổn định hình ảnh 5 trục.', 65990000, 62990000, 8, 5, 2, 100, 1, 13, 0, 0, 0),
(N'AirPods Pro 2', N'Tai nghe không dây với khả năng chống ồn chủ động và âm thanh không gian.', 5990000, 5490000, 120, 6, 2, 100, 1, 14, 0, 0, 0),
(N'Samsung Galaxy Buds2 Pro', N'Tai nghe không dây chống ồn với âm thanh chất lượng cao và thiết kế nhỏ gọn.', 3990000, 3490000, 100, 6, 2, 100, 1, 15, 0, 0, 0),
(N'Asus ROG Strix G15', N'Laptop gaming với chip AMD Ryzen 7, card đồ họa NVIDIA RTX 3050 và màn hình 144Hz.', 24990000, 22990000, 40, 3, 2, 100, 1, 16, 0, 0, 0),
(N'Acer Predator Helios 300', N'Laptop gaming với chip Intel Core i7, RTX 3070 và màn hình 240Hz.', 36990000, 34990000, 15, 3, 2, 100, 1, 17, 0, 0, 0),
(N'Google Pixel 7', N'Smartphone chạy Android với màn hình OLED 6.3 inch và camera AI tiên tiến.', 19990000, 18990000, 25, 1, 2, 100, 1, 18, 0, 0, 0),
(N'Logitech MX Master 3', N'Chuột không dây cao cấp với khả năng điều chỉnh nhiều thiết bị và thời lượng pin lâu.', 2490000, 2190000, 70, 4, 2, 100, 1, 19, 0, 0, 0),
(N'Logitech G Pro X Superlight', N'Chuột gaming không dây nhẹ nhất của Logitech với hiệu suất cao.', 3490000, 3290000, 30, 4, 2, 100, 1, 20, 0, 0, 0),
(N'Anker PowerCore III Elite 25600mAh', N'Pin dự phòng với dung lượng lớn và hỗ trợ sạc nhanh PD 60W.', 1790000, 1590000, 90, 4, 2, 100, 1, 21, 0, 0, 0),
(N'Anker Soundcore Liberty 3 Pro', N'Tai nghe không dây với âm thanh Hi-Res và chống ồn chủ động.', 3990000, 3490000, 60, 4, 2, 100, 1, 22, 0, 0, 0),
(N'Apple Mac Mini M1 256GB', N'Máy tính để bàn nhỏ gọn với chip Apple M1 và khả năng xử lý mạnh mẽ.', 19990000, 17990000, 20, 3, 2, 100, 1, 23, 0, 0, 0),
(N'LG Gram 17 2022', N'Laptop siêu nhẹ với màn hình 17 inch và pin lên đến 19 giờ.', 46990000, 43990000, 12, 3, 2, 100, 1, 24, 0, 0, 0),
(N'Samsung T7 Portable SSD 1TB', N'Ổ cứng SSD di động với tốc độ truyền dữ liệu cực nhanh và khả năng chống va đập.', 2990000, 2790000, 100, 4, 2, 100, 1, 25, 0, 0, 0);
(N'Microsoft Surface Pro 9', N'Máy tính bảng lai laptop với màn hình cảm ứng PixelSense 13 inch và chip Intel Core i7.', 34990000, 32990000, 30, 3, 2, 100, 1, 26, 0, 0, 0),
(N'HP Spectre x360 14', N'Laptop 2 trong 1 với thiết kế mỏng nhẹ, màn hình OLED 13.5 inch và bộ xử lý Intel Core i7.', 42990000, 40990000, 25, 3, 2, 100, 1, 27, 0, 0, 0),
(N'Lenovo Legion 5 Pro', N'Laptop gaming với chip AMD Ryzen 7, RTX 3070 và màn hình 16 inch 165Hz.', 35990000, 33990000, 18, 3, 2, 100, 1, 28, 0, 0, 0),
(N'Sony WH-1000XM5', N'Tai nghe chống ồn hàng đầu với âm thanh chất lượng cao và thời lượng pin 30 giờ.', 8990000, 8490000, 50, 4, 2, 100, 1, 29, 0, 0, 0),
(N'Xiaomi Mi Smart Band 7', N'Vòng tay thông minh với màn hình AMOLED và tính năng theo dõi sức khỏe.', 1290000, 999000, 150, 1, 2, 100, 1, 30, 0, 0, 0),
(N'Razer BlackShark V2', N'Tai nghe gaming với âm thanh THX Spatial Audio và micro chống ồn.', 2990000, 2690000, 80, 4, 2, 100, 1, 31, 0, 0, 0),
(N'Sandisk Extreme Portable SSD 1TB', N'Ổ cứng SSD di động với khả năng chống nước và chống sốc, tốc độ truyền tải lên đến 1050MB/s.', 3990000, 3590000, 100, 4, 2, 100, 1, 32, 0, 0, 0),
(N'Garmin Forerunner 955', N'Đồng hồ thông minh thể thao với GPS tích hợp và các tính năng theo dõi tập luyện chi tiết.', 12990000, 11990000, 40, 1, 2, 100, 1, 33, 0, 0, 0),
(N'DJI Mini 3 Pro', N'Máy bay không người lái với camera 4K, cảm biến chống va chạm và thời gian bay 34 phút.', 21990000, 20990000, 15, 5, 2, 100, 1, 34, 0, 0, 0),
(N'Corsair K95 RGB Platinum', N'Bàn phím cơ cao cấp với đèn RGB và các phím macro tùy chỉnh.', 5490000, 4990000, 60, 4, 2, 100, 1, 35, 0, 0, 0);


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[ProductImg](
	[ProductID] [int]  ,
	[ProductImgURL] [varchar](255) ,
	constraint ProductImg_ID FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
	)
	go

INSERT INTO dbo.ProductImg VALUES (1,'https://microless.com/cdn/products/ab2b19dfcb38ae46a0f708de8469c9c9-hi.jpg');
INSERT INTO dbo.ProductImg VALUES (2,'https://eezepc.com/wp-content/uploads/2022/08/samsung-EEZEPC-3-3.jpg');
INSERT INTO dbo.ProductImg VALUES (3,'https://th.bing.com/th/id/OIP.W7E9_frDRzdZ3xTu1HjuqQHaFC?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (4,'https://th.bing.com/th/id/OIP.a3G1CzQEdd8HHmhPC1rsPgHaGE?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (5,'https://th.bing.com/th/id/OIP.kJGKWiwi0qLdVi8w94-5IQHaFj?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (6,'https://th.bing.com/th/id/OIP.aoTVg4fyqVppniZd7jslmAHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (7,'https://th.bing.com/th/id/OIP.8cmUAXFJkpVlrs_YSju7XQHaD4?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (8,'https://th.bing.com/th/id/R.2cdb4e02cefbb8f70a3370e39ba7c6bb?rik=9Yoht8q3YJnCaw&riu=http%3a%2f%2fwww.avguide.ch%2fassets%2ffotostrecke%2f402850b3445c1bea0144db3ada080027%2fraw%2f7b_Sony_Alpha_7R_55mm_front_1920.jpg&ehk=AByTUs0XBsGjBmH73qaN765B3blPF9JJgdUy8ctxAk8%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO dbo.ProductImg VALUES (9,'https://th.bing.com/th/id/OIP.BN20IshEaKMOrAdr_3NsJgHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (10,'https://th.bing.com/th/id/OIP.134VJ44OStJo8DrF8-JnyAHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (11,'https://th.bing.com/th/id/OIP.7qaRJzDFveF1_pEvCA0-nwHaLF?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (12,'https://th.bing.com/th/id/OIP.dytTVah9MWmjfGDPVb7PjAHaFU?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (13,'https://th.bing.com/th/id/OIP.TH29LfSMeUMLvwgsIorfewHaEp?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (14,'https://th.bing.com/th/id/OIP.3rh1DmhnW3HpP51byI_z-QAAAA?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (15,'https://th.bing.com/th/id/OIP.3JrD3gbjI1jNhC0f7VtoPwHaEK?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (16,'https://th.bing.com/th/id/OIP.86wlQe5sAeDDHggB5Pe1XAHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (17,'https://image.biccamera.com/img/00000008390945_A01.jpg?sr.dw=600&sr.jqh=60&sr.dh=600&sr.mat=1');
INSERT INTO dbo.ProductImg VALUES (18,'https://th.bing.com/th/id/OIP.7XVNKd-8-_OxrL4UF1s-XwHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (19,'https://th.bing.com/th/id/OIP.7U5z9VylJjv7s-3fZ3o2WAHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (20,'https://th.bing.com/th/id/R.d47c79c78d86c340e84d95bedda4629c?rik=pblV8uSOZ7Ui5A&pid=ImgRaw&r=0');
INSERT INTO dbo.ProductImg VALUES (21,'https://th.bing.com/th/id/OIP.Ia3PKpa1yYTp2IlQqWn36wAAAA?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (22,'https://th.bing.com/th/id/OIP.LI8_DPw56VA1lA-5x41fwwHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (23,'https://www.pcworld.com/wp-content/uploads/2021/09/hp-spectre-x360-14-1q881av-main.jpg-100877315-orig.jpeg?quality=50&strip=all');
INSERT INTO dbo.ProductImg VALUES (24,'https://th.bing.com/th/id/OIP.tBNc74Sb0r6w_tauUJRMXAHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (25,'https://th.bing.com/th/id/OIP.hUvS6ZxL-RBFGnXDKdYN_wHaHa?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (26,'https://th.bing.com/th/id/R.4ca9bafa53e064300e77ce04bd6d7fd1?rik=ya%2fU0r%2b62CX5Vw&pid=ImgRaw&r=0');
INSERT INTO dbo.ProductImg VALUES (27,'https://th.bing.com/th/id/OIP.Uod9g69hVzDFtqdlPWlLwgHaI7?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (28,'https://th.bing.com/th/id/OIP.QXnAKaQYgFqgw73OGGHazwAAAA?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (29,'https://th.bing.com/th/id/OIP.lBOIXY_J_O-G7ZOzPnaWJgHaEK?rs=1&pid=ImgDetMain');
INSERT INTO dbo.ProductImg VALUES (30,'https://dji-vietnam.vn/wp-content/uploads/2022/05/danh-gia-dji-mini-3-pro-chi-tiet-6-1381x800.jpeg');
INSERT INTO dbo.ProductImg VALUES (31,'https://th.bing.com/th/id/OIP.q9ab9RkdjQaEZN9F1LQK5QHaEK?rs=1&pid=ImgDetMain');


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Cart (
	UserID int,
	ProductID int,
	Amount int
	constraint userID_in_cart FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint productID_in_cart FOREIGN KEY(ProductID) REFERENCES Product(ProductID),
) ON [PRIMARY]
GO
INSERT INTO Cart VALUES (4, 1, 1);
INSERT INTO Cart VALUES (4, 3, 1);
INSERT INTO Cart VALUES (5, 1, 1);
INSERT INTO Cart VALUES (5, 2, 1);
INSERT INTO Cart VALUES (6, 2, 2);


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[Order_Status](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] [nvarchar](50) NOT NULL,
 ) ON [PRIMARY]
GO
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Waiting for Confirmation')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Packaging')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Delivering')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Canceled')
INSERT [dbo].[Order_Status] ([Name]) VALUES (N'Completed')

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[UserID] [int] NULL,
	[TotalPrice] [int] NULL,
	[Note] [nvarchar](2000) NULL,
	[Status] [int] NULL,
	[Date] [DATETIME] NULL ,
	constraint userID_in_order_status FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint statusID_in_order_status FOREIGN KEY(Status) REFERENCES Order_Status(ID)
) ON [PRIMARY]
GO
INSERT INTO Orders VALUES (4, 270000, null, 3, '2021/06/06 04:17');
INSERT INTO Orders VALUES (5, 90000, null, 3, '2021/06/16 12:36');
INSERT INTO Orders VALUES (5, 1270000, null, 3, '2021/06/12 10:18');
INSERT INTO Orders VALUES (6, 1270000, null, 1, '2021/09/11 01:30');
INSERT INTO Orders VALUES (6, 143000, null, 5, '2021/09/11 01:30');
INSERT INTO Orders VALUES (7, 2580000, null, 1, '2021/05/14 02:30');
INSERT INTO Orders VALUES (8, 4560000, null, 1, '2021/05/18 04:30');
INSERT INTO Orders VALUES (9, 900000, null, 1, '2021/07/23 05:30');
INSERT INTO Orders VALUES (9, 1240000, null, 1, '2021/04/09 09:30');
INSERT INTO Orders VALUES (10, 1230000, null, 1, '2021/10/11 11:30');
INSERT INTO Orders VALUES (11,1470000, null, 1, '2021/09/11 03:30');
INSERT INTO Orders VALUES (12,1470000, null, 1, '2021/11/09 00:00');
INSERT INTO Orders VALUES (15,1470000, null, 1, '2021/10/09 00:00');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[Order_Detail](
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	[Order_ID] [int] NOT NULL ,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](1000) NOT NULL,
	[ProductPrice] [int] NOT NULL,	
	[Quantity] [int] NOT NULL,
	constraint orderID_in_order_detail FOREIGN KEY(Order_ID) REFERENCES Orders(ID),
	constraint productID_in_order_detail FOREIGN KEY(ProductID) REFERENCES Product(ProductID)	
) ON [PRIMARY]


GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 1, 36, N'Apple AirPods Pro 2', 6590000, 2)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 1, 37, N'Dell Alienware M15 R7', 57990000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 2, 38, N'Google Pixel 7 Pro', 22990000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 2, 39, N'Asus ROG Strix G15', 42990000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 3, 40, N'Samsung Galaxy Watch 5 Pro', 9990000, 2)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 3, 41, N'GoPro Hero 11 Black', 11490000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 4, 42, N'LG UltraFine 32UN880', 16990000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 4, 43, N'Bose QuietComfort 45', 8490000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 5, 44, N'Microsoft Xbox Series X', 15490000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 5, 36, N'Apple AirPods Pro 2', 6590000, 3)
GO

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ShipInfo (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Order_ID int,
	CustomerName nvarchar(1000), --Real name of the Customer
	ShippingAddress nvarchar(1000), 
	ShipCityID int,
	PhoneNum varchar(20),
	Note nvarchar(2000),
	constraint order_id_in_ship_info FOREIGN KEY(Order_ID) REFERENCES Orders(ID),
	constraint ship_city_in_ship_info FOREIGN KEY(ShipCityID) REFERENCES Ship(id)
) ON [PRIMARY]
GO


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Notifications(
	
	ID int PRIMARY KEY identity (1,1),
	UserID int,
	OrderID int,
	Content nvarchar(1000),
	status int,
	time datetime,
	constraint UserID_in_Users FOREIGN KEY(UserID) REFERENCES Users(userId),
	constraint OrderID_in_Orders FOREIGN KEY(OrderID) REFERENCES Orders(ID)

);
GO
INSERT INTO Notifications VALUES (5,1,N'Test Checked',1,GETDATE())
INSERT INTO Notifications VALUES (5,1,N'Test Unchecked',0,GETDATE())
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Feedback (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserID int,
	ProductID int,
	OrderID int,
	Star int, --min 1- max 5
	FeedbackDetail nvarchar(2000),
	constraint userID_in_user_3 FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint orderID_in_orders_6 FOREIGN KEY(OrderID) REFERENCES Orders(ID),
	constraint productID_in_feedback FOREIGN KEY(ProductID) REFERENCES Product(ProductID),
	constraint valid_star CHECK (Star < 6 AND Star > 0)
) ON [PRIMARY]
GO
INSERT INTO Feedback VALUES (4, 1, 1, 5, N'Very good');
INSERT INTO Feedback VALUES (5, 2, 2, 4, N'Good');
INSERT INTO Feedback VALUES (5, 1, 3,5, N'Sản phẩm rất tốt');
INSERT INTO Feedback VALUES (6, 1, 4,1, N'Gửi sai sản phẩm');







-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Feedback_Replies (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	FeedbackID int,
	UserID int,
	RepliesText nvarchar(2000),
	constraint userID_in_user_4 FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint feedbackID_in_feedback FOREIGN KEY(FeedbackID) REFERENCES Feedback(ID),
) ON [PRIMARY]
GO
INSERT INTO Feedback_Replies VALUES (1, 5, N'Xin Cám Ơn!');
INSERT INTO Feedback_Replies VALUES (2, 4, N'Xin Cám Ơn!');
INSERT INTO Feedback_Replies VALUES (3, 6, N'Xin Cám Ơn!');


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create TABLE Blog(
ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
Author nvarchar(100),
Title nvarchar(2500),
Content nvarchar(2500),
imageLink nvarchar(1000),
)ON [PRIMARY]
GO
INSERT INTO Blog (Author, Title, Content, imageLink) VALUES 
(N'Nguyễn Minh Khoa', N'Tầm quan trọng của Smartwatch trong cuộc sống hiện đại', 
N'Smartwatch ngày càng trở thành một phần không thể thiếu trong cuộc sống hiện đại. Những mẫu như Apple Watch Series 8 GPS hay Samsung Galaxy Watch 5 Pro không chỉ giúp theo dõi sức khỏe mà còn là trợ lý cá nhân đắc lực. Với tính năng theo dõi nhịp tim, cảnh báo nhiệt độ và thậm chí là tính năng SOS khẩn cấp, chúng đảm bảo sức khỏe và sự an toàn cho người dùng.', 
N'https://th.bing.com/th/id/OIP.oWbHl6QK4k_-P6PEMWj0mQHaHa?rs=1&pid=ImgDetMain'),
GO
INSERT INTO Blog (Author, Title, Content, imageLink) VALUES 
(N'Trần Hoàng Nam', N'Laptop gaming mạnh mẽ cho game thủ', 
N'Với sự phát triển không ngừng của các tựa game đòi hỏi phần cứng mạnh mẽ, các dòng laptop gaming như MSI Gaming Laptop GF65 Thin và Asus ROG Strix G15 đang là lựa chọn hàng đầu cho game thủ. Được trang bị card đồ họa RTX và màn hình tần số quét cao, các dòng máy này mang lại trải nghiệm mượt mà và hình ảnh sống động cho mọi tựa game nặng.', 
N'https://th.bing.com/th/id/R.9b4cb7ed25fcab5f805bf47b0cf246a5?rik=WJCq8%2fewt6yuHg&riu=http%3a%2f%2fi.imgur.com%2ftEZ7D2U.jpg&ehk=FTWDFfTyPI8j%2bQdHcWznKRHn54Z59cB25Lyf0BOivD8%3d&risl=&pid=ImgRaw&r=0'),
GO
INSERT INTO Blog (Author, Title, Content, imageLink) VALUES 
(N'Lê Thanh Huyền', N'Âm thanh vượt trội với tai nghe không dây', 
N'Với sự phát triển của công nghệ âm thanh, tai nghe không dây như Bose QuietComfort 45 và AirPods Pro 2 mang lại chất lượng âm thanh tuyệt vời cùng khả năng chống ồn vượt trội. Những sản phẩm này không chỉ dành cho người yêu âm nhạc mà còn rất tiện dụng cho công việc và giải trí.', 
N'https://th.bing.com/th/id/R.599243afe38cf63c68e3182a837ef5c9?rik=eMcevahsAF7BUQ&riu=http%3a%2f%2fantien.vn%2fuploaded%2ftai+nghe%2fsolo+2+wireless%2ftai-nghe-bluetooth-beats-solo-2-wireless-gia-re-65(1).jpg&ehk=zz8pp6tEuTyCde8SMhNwJJGA9fHfvC0nomuZ6GTdUXQ%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
GO
INSERT INTO Blog (Author, Title, Content, imageLink) VALUES 
(N'Phạm Văn Hải', N'Tai nghe không dây – Sự lựa chọn tối ưu cho người yêu công nghệ', 
N'Tai nghe không dây đã trở thành xu hướng của thời đại, với những tính năng nổi bật như chống ồn, âm thanh vòm và kết nối Bluetooth mượt mà. Các sản phẩm nổi bật như Samsung Galaxy Buds2 Pro và Anker Soundcore Liberty 3 Pro đang thu hút sự quan tâm nhờ thiết kế nhỏ gọn, âm thanh chất lượng cao và thời lượng pin lâu.', 
N'https://th.bing.com/th/id/OIP.2fpqNpOIhChwE2xbY51mXQHaHa?rs=1&pid=ImgDetMain'),
GO
INSERT INTO Blog (Author, Title, Content, imageLink) VALUES 
(N'Nguyễn Thị Mai', N'Giải pháp lưu trữ hiệu quả với ổ cứng di động', 
N'Ổ cứng di động ngày càng trở nên phổ biến với những tính năng như tốc độ truyền dữ liệu nhanh và khả năng chống va đập. Sản phẩm Samsung T7 Portable SSD 1TB là một trong những lựa chọn tốt nhất hiện nay, với thiết kế nhỏ gọn và dung lượng lưu trữ lớn, giúp người dùng dễ dàng mang theo mọi lúc mọi nơi.', 
N'https://th.bing.com/th/id/OIP.uFV8E0L6vhR_DthjdXs-9wHaE8?rs=1&pid=ImgDetMain');
GO



-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create table PostCategory(
ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
CategoryName nvarchar(1000)
)
ON [PRIMARY]
GO
SET IDENTITY_INSERT  PostCategory ON
INSERT [dbo].[PostCategory]([ID], [CategoryName]) VALUES(1,N'public')
INSERT [dbo].[PostCategory]([ID], [CategoryName]) VALUES(2,N'hide')
SET IDENTITY_INSERT PostCategory OFF
go
Create TABLE Post(
ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
Description nvarchar(2500),
UserID int,
date nvarchar(2500),
CategoryID int,
PostImgURL varchar(255),
constraint userID_in_user_5 FOREIGN KEY(UserID) REFERENCES Users(UserID),
constraint CategoryID_in_PostCategory FOREIGN KEY(CategoryID) REFERENCES PostCategory(ID)
)ON [PRIMARY]
go
SET IDENTITY_INSERT Post ON
GO
INSERT INTO Post (Description, UserID, date, CategoryID, PostImgURL) VALUES 
(N'Apple Watch Series 8 GPS 45mm mang đến trải nghiệm tuyệt vời với màn hình Retina Always-On và các tính năng theo dõi sức khỏe tiên tiến. Với thiết kế sang trọng và chức năng ưu việt, đây là lựa chọn hoàn hảo cho những ai yêu thích công nghệ.', 1, '2024-09-01', 1, 'https://th.bing.com/th/id/OIP.liRl2-wFlSTbQj0q3xBEzAHaHa?rs=1&pid=ImgDetMain'),
GO
INSERT INTO Post (Description, UserID, date, CategoryID, PostImgURL) VALUES 
(N'Samsung Galaxy Watch 5 Pro 45mm không chỉ là một smartwatch cao cấp mà còn cung cấp tính năng theo dõi sức khỏe toàn diện và thiết kế chống nước 5ATM, giúp bạn yên tâm trong mọi tình huống.', 2, '2024-09-02', 1, 'https://th.bing.com/th/id/R.3cbc6937fec6d9aa4437d0daab7d9289?rik=QjuLWqe2TVnoDA&pid=ImgRaw&r=0'),
GO
INSERT INTO Post (Description, UserID, date, CategoryID, PostImgURL) VALUES 
(N'Với Dell XPS 13 9310, bạn sẽ trải nghiệm một chiếc máy tính xách tay 13 inch với màn hình 4K UHD cảm ứng và chip Intel Core i7 thế hệ 11, mang đến hiệu suất vượt trội và chất lượng hình ảnh sắc nét.', 3, '2024-09-03', 1, 'https://th.bing.com/th/id/R.b0ebe4ae106599f6ac6140a254f8c5fa?rik=WPHuVTGCQpxt9w&pid=ImgRaw&r=0'),
GO
INSERT INTO Post (Description, UserID, date, CategoryID, PostImgURL) VALUES 
(N'MSI Gaming Laptop GF65 Thin là một lựa chọn tuyệt vời cho game thủ với chip Intel Core i7 và card đồ họa RTX 3060. Màn hình 144Hz cung cấp trải nghiệm chơi game mượt mà và hình ảnh sống động.', 4, '2024-09-04', 1, 'https://paidfreedroid.com/wp-content/uploads/2020/12/Dell-XPS-13-9310-scaled.jpg'),
GO
INSERT INTO Post (Description, UserID, date, CategoryID, PostImgURL) VALUES 
(N'Bose QuietComfort 45 mang đến âm thanh chất lượng cao và khả năng chống ồn tuyệt đối. Với thời lượng pin lên đến 24 giờ, đây là tai nghe lý tưởng cho những ai yêu thích âm nhạc và cần sự tập trung tối đa.', 5, '2024-09-05', 1, 'https://th.bing.com/th/id/OIP.CzWAVo3tIU9KBMW236srwAHaE_?rs=1&pid=ImgDetMain');
GO

SET IDENTITY_INSERT Post OFF

---------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ShipStatus(
ID INT IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(100),
);
go
CREATE TABLE Delivery(
ID INT IDENTITY(1,1) NOT NULL,
ShipInfoID INT,
UserID INT,
[Status] INT,
FOREIGN KEY (ShipInfoID) REFERENCES dbo.ShipInfo(ID),
FOREIGN KEY (UserID) REFERENCES dbo.Users(UserID),
);
go
