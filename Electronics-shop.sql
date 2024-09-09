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
(N'Apple AirPods Pro 2', N'Tai nghe không dây với công nghệ chống ồn chủ động và âm thanh không gian.', 6990000, 6590000, 70, 4, 2, 100, 1, 36, 0, 0, 0),
(N'Dell Alienware M15 R7', N'Laptop gaming với chip Intel Core i9, RTX 3080 và màn hình 15.6 inch 240Hz.', 59990000, 57990000, 12, 3, 2, 100, 1, 37, 0, 0, 0),
(N'Google Pixel 7 Pro', N'Smartphone với camera 50MP, màn hình OLED 6.7 inch và chip Tensor G2.', 23990000, 22990000, 45, 2, 2, 100, 1, 38, 0, 0, 0),
(N'Asus ROG Strix G15', N'Laptop gaming với chip AMD Ryzen 9, RTX 3070 và màn hình 15.6 inch 300Hz.', 43990000, 42990000, 20, 3, 2, 100, 1, 39, 0, 0, 0),
(N'Samsung Galaxy Watch 5 Pro', N'Đồng hồ thông minh với tính năng theo dõi sức khỏe, GPS và thời lượng pin dài.', 10990000, 9990000, 50, 1, 2, 100, 1, 40, 0, 0, 0),
(N'GoPro Hero 11 Black', N'Camera hành trình với khả năng quay video 5.3K, chống nước và tính năng ổn định hình ảnh.', 11990000, 11490000, 30, 5, 2, 100, 1, 41, 0, 0, 0),
(N'LG UltraFine 32UN880', N'Màn hình 32 inch 4K UHD với hỗ trợ HDR và cổng USB-C.', 17990000, 16990000, 25, 6, 2, 100, 1, 42, 0, 0, 0),
(N'Bose QuietComfort 45', N'Tai nghe chống ồn không dây với âm thanh cao cấp và thời lượng pin lên đến 24 giờ.', 8990000, 8490000, 65, 4, 2, 100, 1, 43, 0, 0, 0),
(N'Microsoft Xbox Series X', N'Máy chơi game với ổ SSD 1TB, hỗ trợ 4K và công nghệ Ray Tracing.', 15990000, 15490000, 35, 5, 2, 100, 1, 44, 0, 0, 0);


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
INSERT INTO dbo.ProductImg VALUES (21,'_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_r_u_250000.jpg.jpg');
INSERT INTO dbo.ProductImg VALUES (22,'_o_t-shirt_nam_c_tr_n_i7tsh535i_xanh_c_v_t_250000.jpg');
INSERT INTO dbo.ProductImg VALUES (23,'_o_t_shirt_n_c_tr_n_i9tsh553i_en_b_c_250k.jpg');
INSERT INTO dbo.ProductImg VALUES (24,'_o_t_shirt_n_c_tr_n_i9tsh569i_en_190k.jpg');
INSERT INTO dbo.ProductImg VALUES (25,'_o_t-shirt_n_c_tr_n_tay_xo_n_i9tsh545i_k_cam_190000.jpg');
INSERT INTO dbo.ProductImg VALUES (26,'dosiin-zombie-blue-stripes-sweater-white-109071109071.jpg');
INSERT INTO dbo.ProductImg VALUES (27,'dosiin-zombie-yellow-stripes-sweater-black-109091109091.jpg');
INSERT INTO dbo.ProductImg VALUES (28,'dosiin-freakers-classic-logo-sweatersnavy-223758223758.jpg');
INSERT INTO dbo.ProductImg VALUES (29,'dosiin-freakers-classic-logo-sweaterssport-grey-223763223763.jpg');
INSERT INTO dbo.ProductImg VALUES (30,'dosiin-karihada-oops-i-did-it-again-115992115992.jpg');
INSERT INTO dbo.ProductImg VALUES (31,'dosiin-karihada-oops-i-did-it-again-115995115995.jpg');
INSERT INTO dbo.ProductImg VALUES (32,'dosiin-icon-denim-quan-jean-slim-fit-dark-blue-wbutterfly-charms-143605143605.jpg');
INSERT INTO dbo.ProductImg VALUES (33,'dosiin-icon-denim-quan-jean-slim-fit-dark-blue-wbutterfly-charms-143607143607.jpg');
INSERT INTO dbo.ProductImg VALUES (34,'dosiin-icon-denim-quan-jean-skinny-wash-tron-143621143621.jpg');
INSERT INTO dbo.ProductImg VALUES (35,'dosiin-icon-denim-quan-jean-skinny-wash-tron-143622143622.jpg');
INSERT INTO dbo.ProductImg VALUES (36,'dosiin-icon-denim-quan-jean-slim-dark-blue-wash-w-icon-denim-pocket-143645143645.jpg');
INSERT INTO dbo.ProductImg VALUES (37,'dosiin-icon-denim-quan-jean-slim-dark-blue-wash-w-icon-denim-pocket-143646143646.jpg');
INSERT INTO dbo.ProductImg VALUES (38,'dosiin-hyperdenim-vn-black-gnu-zipper-jean-202558202558.jpg');
INSERT INTO dbo.ProductImg VALUES (39,'dosiin-hyperdenim-vn-black-gnu-zipper-jean-202559202559.jpg');
INSERT INTO dbo.ProductImg VALUES (40,'dosiin-hyperdenim-vn-black-gao-zipper-jean-202799202799.jpg');

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
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 1, 1, N'Borsalino Bogart Fur Felt Fedora', 15, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 1, 2, N'Borsalino Seta Bicolore Fedora', 2, 3)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 2, 3, N'Bailey Tate Braided Fedora', 5, 2)
GO
INSERT [dbo].[Order_Detail] ([Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 3, 4, N'Bailey Archer Braid Fedora', 6, 3)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 4, 5, N'Bailey Craig Braided Fedora', 150, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 5, 6, N'Mayser Calas Panama Straw Hat', 270000, 1)
GO
INSERT [dbo].[Order_Detail] ([Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 6, 7, N'Mayser Piero Panama Straw Hat', 90000, 2)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (7, 8, N'Mayser Nizza Panama Straw Hat', 1270000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 8, 9, N'Bailey Rockett Endura Telescope Crown Hat', 163000, 2)
GO
INSERT [dbo].[Order_Detail] ([Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 9, 10, N'Bailey Hanson Shantung Hat', 163000, 1)
GO

-- This month
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 11, N'Male T-Shirt I7TSH545I', 15, 5)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 50, N'FLAANS 925 NewMoon N', 2, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 49, N'FLAANS ChainBZ_N', 5, 1)
GO
INSERT [dbo].[Order_Detail] ([Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 25, N'Black Gao Zipper Jean', 6, 3)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 35, N'Vans Sk8-Hi', 150, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 15, N'Female T-Shirt I9TSH545I', 270000, 4)
GO
INSERT [dbo].[Order_Detail] ([Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 40, N'Female Sock I9SOK222E', 90000, 3)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (12, 8, N'Mayser Nizza Panama Straw Hat', 1270000, 1)
GO
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 16, N'BLUE STRIPES SWEATER - WHITE', 163000, 2)
GO
INSERT [dbo].[Order_Detail] ([Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 12, 10, N'Bailey Hanson Shantung Hat', 163000, 1)
GO
-- Last month
INSERT [dbo].[Order_Detail] ( [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 13, 1, N'Borsalino Bogart Fur Felt Fedora', 15, 1)
GO
INSERT [dbo].[Order_Detail] ([Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES ( 13, 10, N'Bailey Hanson Shantung Hat', 163000, 1)
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
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'maintn',   N'Áo phông xám nữ, item mix đồ thời thượng',N'Áo phông xám là một item được nhiều bạn trẻ yêu thích. Khi xu hướng thời trang thế giới đang hướng đến những thứ đơn giản, tinh tế thì gam màu xám được đánh giá rất hiện đại, trẻ trung và là một trong những gam màu hot trend thời gian gần đây. 

Với áo phông xám, chị em có thể biến tấu linh hoạt trong cách phối đồ, lên đồ ấn tượng mà không lo nhạt nhòa, kém nổi bật. ',N'1.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'ngoc12',   N'Áo thun oversize chuẩn phong cách, ấn tượng',N'Áo phông oversize đang là một hot item dẫn đầu xu hướng thời trang giới trẻ hiện nay. Ngày càng nhiều các bạn trẻ yêu thích, ưa chuộng và đánh giá cao kiểu áo này. 

Một item đầy mới mẻ, phá cách và tính ứng dụng thực tiễn cao như áo phông oversize quả thực sẽ thu hút sự quan tâm của rất nhiều bạn trẻ. ',N'2.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'minh123',  N'Blazzer, xu thế thời trang 2021',N'Với sự thay đổi liên tục, xu hướng thời trang luôn được cập nhật mới mẻ hơn, độc đáo, hiện đại và thu hút hơn. Những phong cách mới, xu thế thời trang hot luôn được mọi người quan tâm, đặc biệt là giới trẻ. Không thể phủ nhận ngành công nghiệp thời trang đang phát triển rất mạnh mẽ. Không chỉ đơn giản là cách ăn mặc, cách mix&match đồ hay diện đồ theo phong cách yêu thích, thời trang còn là sự đổi mới, phá cách và tràn đầy sức sáng tạo ấn tượng. Vậy bạn đã có ý tưởng gì cho mình chưa? Cùng Shope khám phá ngay nhé.',N'3.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'author_1',   N'Mix đồ cho nàng ngày hè',N'Bạn có thể chọn những gam màu sáng như trắng, cam, be,.. để tạo sự trẻ trung, tươi mới hoặc những gam màu trầm tối như đen, nâu, xanh rêu,... vừa đem đến sự tinh tế vừa phong cách, thời trang.',N'4.jpg')
INSERT INTO dbo.Blog(Author,Title,Content,imageLink)VALUES(N'author_2',  N'Áo sơ mi cho nàng cực trẻ trung và cá tính',N'Áo sơ mi vốn là một item must-have trong tủ đồ của phái nữ bởi sự đơn giản, tinh tế; dễ phối đồ và có thể mặc trong hầu hết mọi tình huống như đi học, đi làm,đi chơi, đi phỏng vấn,...Thông dụng - dễ phối - chưa bao giờ lỗi mốt là những từ có thể dùng để miêu tả về áo sơ mi trắng. Là một item quốc dân luôn có sẵn trong tủ đồ của tất cả mọi người, những chiếc áo sơ mi trắng luôn khiến người mặc ngây ngất bởi hiệu quả thời trang mà nó mang lại: sự trẻ trung, lịch thiệp và phong cách. ',N'5.jpg')
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
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (1, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 1, N'poster1.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (2, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 1, N'poster2.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (3, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 2, N'Poster3.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (4, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 2, N'poster4.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (5, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 1, N'poster5.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (6, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 1, N'poster6.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (7, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 1, N'poster7.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (8, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 1, N'poster8.jpg')
INSERT [dbo].[Post] ([ID], [Description], [UserID], [date], [CategoryID], [PostImgURL]) VALUES (9, N' QUẦN JEAN MỚI VỀ ĐẸP KHÔNG THỂ CƯỠNG LẠI ĐƯỢC!” Bạn sẽ có khả năng sở hữu mẫu quần jean siêu đẹp này chỉ với giá 1xxk/ hàng hóa. Chất liệu co dãn, thấm hút mồ hôi, tôn dáng, giúp người mặc trông thon gọn hơn.Đặc biệt khuyến mãi ưu đãi vào những dịp lễ lớn', 1, N'11/03/2021', 1, N'poster9.jpg')
SET IDENTITY_INSERT Post OFF

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CBanner
(
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Img VARCHAR(2500),
	Title NVARCHAR(2500),
	[desc] NVARCHAR(2500)
)
INSERT INTO dbo.CBanner(Img,Title,[desc])VALUES('nike.png',  N'NIKE',  N'Just Do It !'  )
INSERT INTO dbo.CBanner(Img,Title,[desc])VALUES('gucci.png',  N'GUCCI',  N'We go beyond just great !'  )
INSERT INTO dbo.CBanner(Img,Title,[desc])VALUES('chanel.jpg',  N'CHANEL',  N'I don’t do fashion. I am fashion'  )
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Banner
(
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Img VARCHAR(2500),
)
INSERT INTO dbo.Banner VALUES('banner10.png')
INSERT INTO dbo.Banner VALUES('banner35.png')
INSERT INTO dbo.Banner VALUES('banner40.png')
INSERT INTO dbo.Banner VALUES('banner60.png')
INSERT INTO dbo.Banner VALUES('banner80.png')
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE dbo.[ChatFriend](
	[uId] [int] NOT NULL,
	[friendId] [int] NOT NULL,
	FOREIGN KEY ([uId]) REFERENCES dbo.[Users](UserID),
	FOREIGN KEY (friendId) REFERENCES dbo.[Users](UserID),
)
go
INSERT [dbo].[ChatFriend] ([uId], [friendId]) VALUES (6, 1);
INSERT [dbo].[ChatFriend] ([uId], [friendId]) VALUES (6, 2);
INSERT [dbo].[ChatFriend] ([uId], [friendId]) VALUES (6, 3);
INSERT [dbo].[ChatFriend] ([uId], [friendId]) VALUES (1, 6);
INSERT [dbo].[ChatFriend] ([uId], [friendId]) VALUES (2, 6);
INSERT [dbo].[ChatFriend] ([uId], [friendId]) VALUES (3, 6);
---------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.[ChatMessage](
	[mId] [int] IDENTITY(1,1) NOT NULL,
	[fromId] [int] NOT NULL,
	[toId] [int] NOT NULL,
	[content] [nvarchar](200) NOT NULL,
	[dateCreated] [datetime] DEFAULT GETDATE() NOT NULL,
	[status] [int] DEFAULT 1 NULL,
	FOREIGN KEY ([fromId]) REFERENCES dbo.[Users](UserID),
	FOREIGN KEY ([toId]) REFERENCES dbo.[Users](UserID),
)
go
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 1, N'Hi', CAST(N'2021-10-26 22:38:21.373' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 1, N'Nice to meet you', CAST(N'2021-10-26 22:38:30.103' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (1, 6, N'Thanks', CAST(N'2021-10-26 22:38:36.727' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (1, 6, N'Thanks', CAST(N'2021-10-26 22:38:43.073' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 2, N'Hello', CAST(N'2021-10-27 10:39:30.800' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 2, N'How do you do', CAST(N'2021-10-27 10:39:42.200' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (2, 6, N'How do you do', CAST(N'2021-10-27 10:39:47.860' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (2, 6, N'See you later', CAST(N'2021-10-27 10:39:56.893' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 1, N'how are you', CAST(N'2021-10-28 08:51:27.353' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 1, N'good, thanks', CAST(N'2021-10-29 13:48:07.780' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 1, N'great', CAST(N'2021-10-29 13:53:25.967' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 3, N'how are you', CAST(N'2021-10-29 14:00:21.740' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 3, N'fine, thanks', CAST(N'2021-10-29 14:00:36.213' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (3, 6, N'Hello', CAST(N'2021-10-29 14:00:56.170' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (3, 6, N'hi', CAST(N'2021-10-29 14:01:33.273' AS DateTime), 1);
INSERT [dbo].[ChatMessage] ([fromId], [toId], [content], [dateCreated], [status]) VALUES (6, 1, N'Hey', CAST(N'2021-10-29 14:15:11.593' AS DateTime), 1);
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
