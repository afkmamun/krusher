-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- ����: localhost
-- ����� ��������: ��� 27 2006 �., 21:58
-- ������ �������: 5.0.18
-- ������ PHP: 4.3.10
-- 
-- ��: `mkechinov`
-- 

-- --------------------------------------------------------

-- 
-- ��������� ������� `Sample_CountryPhoneCode`
-- 

CREATE TABLE `Sample_CountryPhoneCode` (
  `ID` int(11) NOT NULL auto_increment,
  `TitleRU` varchar(60) default NULL,
  `TitleEN` varchar(60) default NULL,
  `PhoneCode` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=239 ;

-- 
-- ���� ������ ������� `Sample_CountryPhoneCode`
-- 

INSERT INTO `Sample_CountryPhoneCode` VALUES (1, '����������', 'Afghanistan', '93');
INSERT INTO `Sample_CountryPhoneCode` VALUES (2, '�������', 'Albania', '355');
INSERT INTO `Sample_CountryPhoneCode` VALUES (3, '�����', 'Algeria', '21');
INSERT INTO `Sample_CountryPhoneCode` VALUES (4, '������������ �����', 'American Samoa', '684');
INSERT INTO `Sample_CountryPhoneCode` VALUES (5, '�������', 'Andorra', '376');
INSERT INTO `Sample_CountryPhoneCode` VALUES (6, '������', 'Angola', '244');
INSERT INTO `Sample_CountryPhoneCode` VALUES (7, '��������', 'Anguilla', '1-264');
INSERT INTO `Sample_CountryPhoneCode` VALUES (8, '������� � �������', 'Antigua and Barbuda', '1-268');
INSERT INTO `Sample_CountryPhoneCode` VALUES (9, '���������', 'Argentina', '54');
INSERT INTO `Sample_CountryPhoneCode` VALUES (10, '�������', 'Armenia', '374');
INSERT INTO `Sample_CountryPhoneCode` VALUES (11, '�����', 'Aruba', '297');
INSERT INTO `Sample_CountryPhoneCode` VALUES (12, '�������', 'Ascension', '247');
INSERT INTO `Sample_CountryPhoneCode` VALUES (13, '���������', 'Australia', '61');
INSERT INTO `Sample_CountryPhoneCode` VALUES (14, '������������� ������� ����������', 'Australian External Territories', '672');
INSERT INTO `Sample_CountryPhoneCode` VALUES (15, '�������', 'Austria', '43');
INSERT INTO `Sample_CountryPhoneCode` VALUES (16, '�����������', 'Azerbaijan', '994');
INSERT INTO `Sample_CountryPhoneCode` VALUES (17, '�������� �-��', 'Azores', '351');
INSERT INTO `Sample_CountryPhoneCode` VALUES (18, '������', 'Bahamas', '1-242');
INSERT INTO `Sample_CountryPhoneCode` VALUES (19, '�������', 'Bahrain', '973');
INSERT INTO `Sample_CountryPhoneCode` VALUES (20, '���������', 'Bangladesh', '880');
INSERT INTO `Sample_CountryPhoneCode` VALUES (21, '��������', 'Barbados', '1-246');
INSERT INTO `Sample_CountryPhoneCode` VALUES (22, '����������', 'Belarus', '375');
INSERT INTO `Sample_CountryPhoneCode` VALUES (23, '�������', 'Belgium', '32');
INSERT INTO `Sample_CountryPhoneCode` VALUES (24, '�����', 'Belize', '501');
INSERT INTO `Sample_CountryPhoneCode` VALUES (25, '�����', 'Benin', '229');
INSERT INTO `Sample_CountryPhoneCode` VALUES (26, '���������� �-��', 'Bermuda', '1-441');
INSERT INTO `Sample_CountryPhoneCode` VALUES (27, '�����', 'Bhutan', '975');
INSERT INTO `Sample_CountryPhoneCode` VALUES (28, '�������', 'Bolivia', '591');
INSERT INTO `Sample_CountryPhoneCode` VALUES (29, '������ � �����������', 'Bosnia and Herzegovina', '387');
INSERT INTO `Sample_CountryPhoneCode` VALUES (30, '��������', 'Botswana', '267');
INSERT INTO `Sample_CountryPhoneCode` VALUES (31, '��������', 'Brazil', '55');
INSERT INTO `Sample_CountryPhoneCode` VALUES (32, '���������� ����������� �-��', 'British Virgin Islands', '1-284');
INSERT INTO `Sample_CountryPhoneCode` VALUES (33, '������', 'Brunei', '673');
INSERT INTO `Sample_CountryPhoneCode` VALUES (34, '��������', 'Bulgaria', '359');
INSERT INTO `Sample_CountryPhoneCode` VALUES (35, '������� ����', 'Burkina Faso', '226');
INSERT INTO `Sample_CountryPhoneCode` VALUES (36, '�������', 'Burundi', '257');
INSERT INTO `Sample_CountryPhoneCode` VALUES (38, '��������', 'Cambodia', '855');
INSERT INTO `Sample_CountryPhoneCode` VALUES (39, '�������', 'Cameroon', '237');
INSERT INTO `Sample_CountryPhoneCode` VALUES (40, '���� �����', 'Cape Verde', '238');
INSERT INTO `Sample_CountryPhoneCode` VALUES (41, '��������� �-��', 'Cayman Islands', '1-345');
INSERT INTO `Sample_CountryPhoneCode` VALUES (42, '���', 'Central African Republic', '236');
INSERT INTO `Sample_CountryPhoneCode` VALUES (43, '���', 'Chad', '235');
INSERT INTO `Sample_CountryPhoneCode` VALUES (44, '����', 'Chile', '56');
INSERT INTO `Sample_CountryPhoneCode` VALUES (45, '�����', 'China', '86');
INSERT INTO `Sample_CountryPhoneCode` VALUES (46, '��������������� �-��', 'Christmas Island', '672');
INSERT INTO `Sample_CountryPhoneCode` VALUES (47, '��������� �-��', 'Cocos Islands', '672');
INSERT INTO `Sample_CountryPhoneCode` VALUES (48, '��������', 'Colombia', '57');
INSERT INTO `Sample_CountryPhoneCode` VALUES (49, '����������� �������� ���������', 'Commonwealth of the Northern M', '1-670');
INSERT INTO `Sample_CountryPhoneCode` VALUES (50, '��������� �-��', 'Comoros and Mayotte Island', '269');
INSERT INTO `Sample_CountryPhoneCode` VALUES (51, '�����', 'Congo', '242');
INSERT INTO `Sample_CountryPhoneCode` VALUES (52, '���. ����. ����� (����. ����)', 'Democratic Republic (ex. Zaire)', '243');
INSERT INTO `Sample_CountryPhoneCode` VALUES (53, '�-�� ����', 'Cook Islands', '682');
INSERT INTO `Sample_CountryPhoneCode` VALUES (54, '����� ����', 'Costa Rica', '506');
INSERT INTO `Sample_CountryPhoneCode` VALUES (55, '��������', 'Croatia', '385');
INSERT INTO `Sample_CountryPhoneCode` VALUES (56, '����', 'Cuba', '53');
INSERT INTO `Sample_CountryPhoneCode` VALUES (57, '����', 'Cyprus', '357');
INSERT INTO `Sample_CountryPhoneCode` VALUES (58, '�����', 'Czech Republic', '420');
INSERT INTO `Sample_CountryPhoneCode` VALUES (59, '�����', 'Denmark', '45');
INSERT INTO `Sample_CountryPhoneCode` VALUES (60, '����� ������', 'Diego Garcia', '246');
INSERT INTO `Sample_CountryPhoneCode` VALUES (61, '�������', 'Djibouti', '253');
INSERT INTO `Sample_CountryPhoneCode` VALUES (62, '��������', 'Dominica', '1-767');
INSERT INTO `Sample_CountryPhoneCode` VALUES (63, '������������� ����������', 'Dominican Republic', '1-809');
INSERT INTO `Sample_CountryPhoneCode` VALUES (64, '��������� �����', 'East Timor', '62');
INSERT INTO `Sample_CountryPhoneCode` VALUES (65, '�������', 'Ecuador', '593');
INSERT INTO `Sample_CountryPhoneCode` VALUES (66, '������', 'Egypt', '20');
INSERT INTO `Sample_CountryPhoneCode` VALUES (67, '���������', 'El Salvador', '503');
INSERT INTO `Sample_CountryPhoneCode` VALUES (68, '�������������� ������', 'Equatorial Guinea', '240');
INSERT INTO `Sample_CountryPhoneCode` VALUES (69, '�������', 'Eritrea', '291');
INSERT INTO `Sample_CountryPhoneCode` VALUES (70, '�������', 'Estonia', '372');
INSERT INTO `Sample_CountryPhoneCode` VALUES (71, '�������', 'Ethiopia', '251');
INSERT INTO `Sample_CountryPhoneCode` VALUES (72, '��������� �-��', 'Faeroe Islands', '298');
INSERT INTO `Sample_CountryPhoneCode` VALUES (73, '������������ �-��', 'Falkland Islands', '500');
INSERT INTO `Sample_CountryPhoneCode` VALUES (74, '�����', 'Fiji', '679');
INSERT INTO `Sample_CountryPhoneCode` VALUES (75, '���������', 'Finland', '358');
INSERT INTO `Sample_CountryPhoneCode` VALUES (76, '�������', 'France', '33');
INSERT INTO `Sample_CountryPhoneCode` VALUES (77, '����������� �������', 'French Antilles', '590');
INSERT INTO `Sample_CountryPhoneCode` VALUES (78, '����������� ������', 'French Guiana', '594');
INSERT INTO `Sample_CountryPhoneCode` VALUES (79, '����������� ���������', 'French Polynesia', '689');
INSERT INTO `Sample_CountryPhoneCode` VALUES (80, '�����', 'Gabonese Republic', '241');
INSERT INTO `Sample_CountryPhoneCode` VALUES (81, '������', 'Gambia', '220');
INSERT INTO `Sample_CountryPhoneCode` VALUES (82, '������', 'Georgia', '995');
INSERT INTO `Sample_CountryPhoneCode` VALUES (83, '��������', 'Germany', '49');
INSERT INTO `Sample_CountryPhoneCode` VALUES (84, '����', 'Ghana', '233');
INSERT INTO `Sample_CountryPhoneCode` VALUES (85, '���������', 'Gibraltar', '350');
INSERT INTO `Sample_CountryPhoneCode` VALUES (86, '������', 'Greece', '30');
INSERT INTO `Sample_CountryPhoneCode` VALUES (87, '����������', 'Greenland', '299');
INSERT INTO `Sample_CountryPhoneCode` VALUES (88, '�������', 'Grenada', '1-473');
INSERT INTO `Sample_CountryPhoneCode` VALUES (89, '����', 'Guam', '671');
INSERT INTO `Sample_CountryPhoneCode` VALUES (90, '���������', 'Guatemala', '502');
INSERT INTO `Sample_CountryPhoneCode` VALUES (91, '������', 'Guinea', '224');
INSERT INTO `Sample_CountryPhoneCode` VALUES (92, '������ ������', 'Guinea-Bissau', '245');
INSERT INTO `Sample_CountryPhoneCode` VALUES (93, '������', 'Guyana', '592');
INSERT INTO `Sample_CountryPhoneCode` VALUES (94, '�����', 'Haiti', '509');
INSERT INTO `Sample_CountryPhoneCode` VALUES (95, '��������', 'Honduras', '504');
INSERT INTO `Sample_CountryPhoneCode` VALUES (96, '�������', 'Hong Kong', '852');
INSERT INTO `Sample_CountryPhoneCode` VALUES (97, '�������', 'Hungary', '36');
INSERT INTO `Sample_CountryPhoneCode` VALUES (98, '��������', 'Iceland', '354');
INSERT INTO `Sample_CountryPhoneCode` VALUES (99, '�����', 'India', '91');
INSERT INTO `Sample_CountryPhoneCode` VALUES (100, '���������', 'Indonesia', '62');
INSERT INTO `Sample_CountryPhoneCode` VALUES (101, '����', 'Iran', '98');
INSERT INTO `Sample_CountryPhoneCode` VALUES (102, '����', 'Iraq', '964');
INSERT INTO `Sample_CountryPhoneCode` VALUES (103, '��������', 'Irish Republic', '353');
INSERT INTO `Sample_CountryPhoneCode` VALUES (104, '�������', 'Israel', '972');
INSERT INTO `Sample_CountryPhoneCode` VALUES (105, '������', 'Italy', '39');
INSERT INTO `Sample_CountryPhoneCode` VALUES (106, '����� �������� �����', 'Ivory Coast', '225');
INSERT INTO `Sample_CountryPhoneCode` VALUES (107, '������', 'Jamaica', '1-876');
INSERT INTO `Sample_CountryPhoneCode` VALUES (108, '������', 'Japan', '81');
INSERT INTO `Sample_CountryPhoneCode` VALUES (109, '��������', 'Jordan', '962');
INSERT INTO `Sample_CountryPhoneCode` VALUES (110, '���������', 'Kazakhstan', '7');
INSERT INTO `Sample_CountryPhoneCode` VALUES (111, '�����', 'Kenya', '254');
INSERT INTO `Sample_CountryPhoneCode` VALUES (112, '��������', 'Kiribati Republic', '686');
INSERT INTO `Sample_CountryPhoneCode` VALUES (113, '�������� �����', 'Korea, Dem. Peoples Republic', '850');
INSERT INTO `Sample_CountryPhoneCode` VALUES (114, '����� �����', 'Korea Republic', '82');
INSERT INTO `Sample_CountryPhoneCode` VALUES (115, '������', 'Kuwait', '965');
INSERT INTO `Sample_CountryPhoneCode` VALUES (116, '����������', 'Kyrgyzstan', '996');
INSERT INTO `Sample_CountryPhoneCode` VALUES (117, '����', 'Laos', '856');
INSERT INTO `Sample_CountryPhoneCode` VALUES (118, '������', 'Latvia', '371');
INSERT INTO `Sample_CountryPhoneCode` VALUES (119, '�����', 'Lebanon', '961');
INSERT INTO `Sample_CountryPhoneCode` VALUES (120, '�������', 'Lesotho', '266');
INSERT INTO `Sample_CountryPhoneCode` VALUES (121, '�������', 'Liberia', '231');
INSERT INTO `Sample_CountryPhoneCode` VALUES (122, '�����', 'Libya', '21');
INSERT INTO `Sample_CountryPhoneCode` VALUES (123, '�����������', 'Liechtenstein', '41');
INSERT INTO `Sample_CountryPhoneCode` VALUES (124, '�����', 'Lithuania', '370');
INSERT INTO `Sample_CountryPhoneCode` VALUES (125, '����������', 'Luxembourg', '352');
INSERT INTO `Sample_CountryPhoneCode` VALUES (126, '�����', 'Macau', '853');
INSERT INTO `Sample_CountryPhoneCode` VALUES (127, '���������', 'Macedonia', '389');
INSERT INTO `Sample_CountryPhoneCode` VALUES (128, '����������', 'Madagascar', '261');
INSERT INTO `Sample_CountryPhoneCode` VALUES (129, '������', 'Malawi', '265');
INSERT INTO `Sample_CountryPhoneCode` VALUES (130, '��������', 'Malaysia', '60');
INSERT INTO `Sample_CountryPhoneCode` VALUES (131, '����������� �-��', 'Maldives', '960');
INSERT INTO `Sample_CountryPhoneCode` VALUES (132, '����', 'Mali', '223');
INSERT INTO `Sample_CountryPhoneCode` VALUES (133, '������', 'Malta', '356');
INSERT INTO `Sample_CountryPhoneCode` VALUES (134, '���������� �-��', 'Marshall Islands', '692');
INSERT INTO `Sample_CountryPhoneCode` VALUES (135, '���������', 'Martinique', '596');
INSERT INTO `Sample_CountryPhoneCode` VALUES (136, '����������', 'Mauritania', '222');
INSERT INTO `Sample_CountryPhoneCode` VALUES (137, '��������', 'Mauritius', '230');
INSERT INTO `Sample_CountryPhoneCode` VALUES (138, '�������', 'Mexico', '52');
INSERT INTO `Sample_CountryPhoneCode` VALUES (139, '����������', 'Micronesia', '691');
INSERT INTO `Sample_CountryPhoneCode` VALUES (140, '������', 'Monaco', '377');
INSERT INTO `Sample_CountryPhoneCode` VALUES (141, '��������', 'Mongolia', '976');
INSERT INTO `Sample_CountryPhoneCode` VALUES (142, '���������', 'Montserrat', '1-664');
INSERT INTO `Sample_CountryPhoneCode` VALUES (143, '��������', 'Moldova', '373');
INSERT INTO `Sample_CountryPhoneCode` VALUES (144, '�������', 'Morocco', '212');
INSERT INTO `Sample_CountryPhoneCode` VALUES (145, '��������', 'Mozambique', '258');
INSERT INTO `Sample_CountryPhoneCode` VALUES (146, '������', 'Myanmar', '95');
INSERT INTO `Sample_CountryPhoneCode` VALUES (147, '�������', 'Namibia', '264');
INSERT INTO `Sample_CountryPhoneCode` VALUES (148, '�����', 'Nauru', '674');
INSERT INTO `Sample_CountryPhoneCode` VALUES (149, '�����', 'Nepal', '977');
INSERT INTO `Sample_CountryPhoneCode` VALUES (150, '����������', 'Netherlands', '31');
INSERT INTO `Sample_CountryPhoneCode` VALUES (151, '������������� �������', 'Netherlands Antilles', '599');
INSERT INTO `Sample_CountryPhoneCode` VALUES (152, '����� ���������', 'New Caledonia', '687');
INSERT INTO `Sample_CountryPhoneCode` VALUES (153, '����� ��������', 'New Zealand', '64');
INSERT INTO `Sample_CountryPhoneCode` VALUES (154, '���������', 'Nicaragua', '505');
INSERT INTO `Sample_CountryPhoneCode` VALUES (155, '�����', 'Niger', '227');
INSERT INTO `Sample_CountryPhoneCode` VALUES (156, '�������', 'Nigeria', '234');
INSERT INTO `Sample_CountryPhoneCode` VALUES (157, '����', 'Niue Islands', '683');
INSERT INTO `Sample_CountryPhoneCode` VALUES (158, '����������� �-��', 'Norfolk Island', '672');
INSERT INTO `Sample_CountryPhoneCode` VALUES (159, '������-���������� �-��', 'Northern Mariana Islands', '670');
INSERT INTO `Sample_CountryPhoneCode` VALUES (160, '��������', 'Norway', '47');
INSERT INTO `Sample_CountryPhoneCode` VALUES (161, '����', 'Oman', '968');
INSERT INTO `Sample_CountryPhoneCode` VALUES (162, '��������', 'Pakistan', '92');
INSERT INTO `Sample_CountryPhoneCode` VALUES (163, '�����', 'Palau', '680');
INSERT INTO `Sample_CountryPhoneCode` VALUES (164, '������', 'Panama', '507');
INSERT INTO `Sample_CountryPhoneCode` VALUES (165, '����� ����� ������', 'Papua New Guinea', '675');
INSERT INTO `Sample_CountryPhoneCode` VALUES (166, '��������', 'Paraguay', '595');
INSERT INTO `Sample_CountryPhoneCode` VALUES (167, '����', 'Peru', '51');
INSERT INTO `Sample_CountryPhoneCode` VALUES (168, '��������', 'Philippines', '63');
INSERT INTO `Sample_CountryPhoneCode` VALUES (169, '������', 'Poland', '48');
INSERT INTO `Sample_CountryPhoneCode` VALUES (170, '����������', 'Portugal', '351');
INSERT INTO `Sample_CountryPhoneCode` VALUES (171, '������ ����', 'Puerto Rico', '1-787');
INSERT INTO `Sample_CountryPhoneCode` VALUES (172, '�����', 'Qatar', '974');
INSERT INTO `Sample_CountryPhoneCode` VALUES (173, '��� ������', 'Republic of San Marino', '378');
INSERT INTO `Sample_CountryPhoneCode` VALUES (174, '�������', 'Reunion Islands', '262');
INSERT INTO `Sample_CountryPhoneCode` VALUES (175, '�������', 'Romania', '40');
INSERT INTO `Sample_CountryPhoneCode` VALUES (176, '������', 'Russia', '7');
INSERT INTO `Sample_CountryPhoneCode` VALUES (177, '������', 'Rwandese Republic', '250');
INSERT INTO `Sample_CountryPhoneCode` VALUES (178, '�-�� ������ �����', 'Saint Helena and Ascension Isl', '247');
INSERT INTO `Sample_CountryPhoneCode` VALUES (179, '���� ����', 'Saint Pierre et Miquelon', '508');
INSERT INTO `Sample_CountryPhoneCode` VALUES (180, '��� ������', 'San Marino', '39');
INSERT INTO `Sample_CountryPhoneCode` VALUES (181, '���� ��� � �������', 'Sao Tome e Principe', '239');
INSERT INTO `Sample_CountryPhoneCode` VALUES (182, '���������� ������', 'Saudi Arabia', '966');
INSERT INTO `Sample_CountryPhoneCode` VALUES (183, '�������', 'Senegal', '221');
INSERT INTO `Sample_CountryPhoneCode` VALUES (184, '����������� �-��', 'Seychelles', '248');
INSERT INTO `Sample_CountryPhoneCode` VALUES (185, '������ �����', 'Sierra Leone', '232');
INSERT INTO `Sample_CountryPhoneCode` VALUES (186, '��������', 'Singapore', '65');
INSERT INTO `Sample_CountryPhoneCode` VALUES (187, '��������', 'Slovak Republic', '421');
INSERT INTO `Sample_CountryPhoneCode` VALUES (188, '��������', 'Slovenia', '386');
INSERT INTO `Sample_CountryPhoneCode` VALUES (189, '���������� �-��', 'Solomon Islands', '677');
INSERT INTO `Sample_CountryPhoneCode` VALUES (190, '������', 'Somalia', '252');
INSERT INTO `Sample_CountryPhoneCode` VALUES (191, '���', 'South Africa', '27');
INSERT INTO `Sample_CountryPhoneCode` VALUES (192, '�������', 'Spain', '34');
INSERT INTO `Sample_CountryPhoneCode` VALUES (193, '��� �����', 'Sri Lanka', '94');
INSERT INTO `Sample_CountryPhoneCode` VALUES (194, '����-���� � �����', 'St. Kitts and Nevis', '1-869');
INSERT INTO `Sample_CountryPhoneCode` VALUES (195, '����� �����', 'St. Lucia', '1-758');
INSERT INTO `Sample_CountryPhoneCode` VALUES (196, '���� ������� � ���������', 'St. Vincent and the Grenadines', '1-784');
INSERT INTO `Sample_CountryPhoneCode` VALUES (197, '�����', 'Sudan', '249');
INSERT INTO `Sample_CountryPhoneCode` VALUES (198, '�������', 'Suriname', '597');
INSERT INTO `Sample_CountryPhoneCode` VALUES (199, '��������', 'Svalbard and Jan Mayen Islands', '47');
INSERT INTO `Sample_CountryPhoneCode` VALUES (200, '���������', 'Swaziland', '268');
INSERT INTO `Sample_CountryPhoneCode` VALUES (201, '������', 'Sweden', '46');
INSERT INTO `Sample_CountryPhoneCode` VALUES (202, '���������', 'Switzerland', '41');
INSERT INTO `Sample_CountryPhoneCode` VALUES (203, '�����', 'Syria', '963');
INSERT INTO `Sample_CountryPhoneCode` VALUES (204, '�������', 'Taiwan', '886');
INSERT INTO `Sample_CountryPhoneCode` VALUES (205, '�����������', 'Tajikistan', '992');
INSERT INTO `Sample_CountryPhoneCode` VALUES (206, '��������', 'Tanzania', '255');
INSERT INTO `Sample_CountryPhoneCode` VALUES (207, '�������', 'Thailand', '66');
INSERT INTO `Sample_CountryPhoneCode` VALUES (208, '��������', 'Togolese Republic', '228');
INSERT INTO `Sample_CountryPhoneCode` VALUES (209, '�������', 'Tokelau', '690');
INSERT INTO `Sample_CountryPhoneCode` VALUES (210, '�����', 'Tonga', '676');
INSERT INTO `Sample_CountryPhoneCode` VALUES (211, '�������� � ������', 'Trinidad and Tobago', '1-868');
INSERT INTO `Sample_CountryPhoneCode` VALUES (212, '�����', 'Tunisia', '21');
INSERT INTO `Sample_CountryPhoneCode` VALUES (213, '������', 'Turkey', '90');
INSERT INTO `Sample_CountryPhoneCode` VALUES (214, '������������', 'Turkmenistan', '993');
INSERT INTO `Sample_CountryPhoneCode` VALUES (215, '���� � ������ �������', 'Turks & Caicos Islands', '1-649');
INSERT INTO `Sample_CountryPhoneCode` VALUES (216, '������', 'Tuvalu', '688');
INSERT INTO `Sample_CountryPhoneCode` VALUES (217, '������', 'Uganda', '256');
INSERT INTO `Sample_CountryPhoneCode` VALUES (218, '�������', 'Ukraine', '380');
INSERT INTO `Sample_CountryPhoneCode` VALUES (219, '���', 'United Arab Emirates', '971');
INSERT INTO `Sample_CountryPhoneCode` VALUES (220, '��������������', 'United Kingdom', '44');
INSERT INTO `Sample_CountryPhoneCode` VALUES (221, '�������', 'Uruguay', '598');
INSERT INTO `Sample_CountryPhoneCode` VALUES (222, '����������� �-��', 'US Virgin Islands', '1-340');
INSERT INTO `Sample_CountryPhoneCode` VALUES (223, '���', 'US�', '1');
INSERT INTO `Sample_CountryPhoneCode` VALUES (224, '����������', 'Uzbekistan', '998');
INSERT INTO `Sample_CountryPhoneCode` VALUES (225, '�������', 'Vanuatu', '678');
INSERT INTO `Sample_CountryPhoneCode` VALUES (226, '�������', 'Vatican City State', '39');
INSERT INTO `Sample_CountryPhoneCode` VALUES (227, '���������', 'Venezuela', '58');
INSERT INTO `Sample_CountryPhoneCode` VALUES (228, '�������', 'Vietnam', '84');
INSERT INTO `Sample_CountryPhoneCode` VALUES (229, '����� � ������ �������', 'Wallis and Futuna', '681');
INSERT INTO `Sample_CountryPhoneCode` VALUES (230, '�������� ������', 'Western Sahara', '21');
INSERT INTO `Sample_CountryPhoneCode` VALUES (231, '�������� �����', 'Western Samoa', '685');
INSERT INTO `Sample_CountryPhoneCode` VALUES (232, '�������� �����', 'Yemen, North', '967');
INSERT INTO `Sample_CountryPhoneCode` VALUES (233, '����� �����', 'Yemen, South', '969');
INSERT INTO `Sample_CountryPhoneCode` VALUES (234, '���������', 'Yugoslavia', '381');
INSERT INTO `Sample_CountryPhoneCode` VALUES (235, '����', 'Zaire', '243');
INSERT INTO `Sample_CountryPhoneCode` VALUES (236, '������', 'Zambia', '260');
INSERT INTO `Sample_CountryPhoneCode` VALUES (237, '��������', 'Zanzibar', '259');
INSERT INTO `Sample_CountryPhoneCode` VALUES (238, '��������', 'Zimbabwe', '263');
