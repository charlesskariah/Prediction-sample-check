insert into leagues values ('1','EPL','2014-08-16','2015-05-24','England','Active');
insert into clubs values('1','Arsenal','', current_timestamp, current_timestamp);
insert into clubs values('2','Aston Villa','', current_timestamp, current_timestamp);
insert into clubs values('3','Burnley','', current_timestamp, current_timestamp);
insert into clubs values('4','Chelsea','', current_timestamp, current_timestamp);
insert into clubs values('5','Crystal Palace','', current_timestamp, current_timestamp);
insert into clubs values('6','Everton','', current_timestamp, current_timestamp);
insert into clubs values('7','Hull','', current_timestamp, current_timestamp);
insert into clubs values('8','Leicester','', current_timestamp, current_timestamp);
insert into clubs values('9','Liverpool','', current_timestamp, current_timestamp);
insert into clubs values('10','Man City','', current_timestamp, current_timestamp);
insert into clubs values('11','Man Utd','', current_timestamp, current_timestamp);
insert into clubs values('12','Newcastle','', current_timestamp, current_timestamp);
insert into clubs values('13','QPR','', current_timestamp, current_timestamp);
insert into clubs values('14','Southampton','', current_timestamp, current_timestamp);
insert into clubs values('15','Stoke','', current_timestamp, current_timestamp);
insert into clubs values('16','Sunderland','', current_timestamp, current_timestamp);
insert into clubs values('17','Swansea','', current_timestamp, current_timestamp);
insert into clubs values('18','Spurs','', current_timestamp, current_timestamp);
insert into clubs values('19','West Brom','', current_timestamp, current_timestamp);
insert into clubs values('20','West Ham','', current_timestamp, current_timestamp);
INSERT INTO matches(club_1_id,club_2_id,match_date,match_time) VALUES 
 ('11','17',to_date('16Aug2014', 'DDMonYYYY'),'12:45'),
 ('8','6', to_date('16Aug2014', 'DDMonYYYY'),'15:00'),
 ('13','7' ,to_date('16Aug2014', 'DDMonYYYY'),'15:00'),
 ('15','2' ,to_date('16Aug2014', 'DDMonYYYY'),'15:00'),
 ('19','16 ',to_date('16Aug2014', 'DDMonYYYY'),'15:00'),
 ('20','18 ',to_date('16Aug2014', 'DDMonYYYY'),'15:00'),
 ('1','5', to_date('16Aug2014', 'DDMonYYYY'),'17:30'),
 ('9','14' ,to_date('17Aug2014', 'DDMonYYYY'),'13:30'),
 ('12','10 ',to_date('17Aug2014', 'DDMonYYYY'),'16:00'),
 ('3','4', to_date('18Aug2014', 'DDMonYYYY'),'20:00'),
 ('2','12' ,to_date('23Aug2014', 'DDMonYYYY'),'12:45'),
 ('4','8', to_date('23Aug2014', 'DDMonYYYY'),'15:00'),
 ('5','20' ,to_date('23Aug2014', 'DDMonYYYY'),'15:00'),
 ('14','19 ',to_date('23Aug2014', 'DDMonYYYY'),'15:00'),
 ('17','3' ,to_date('23Aug2014', 'DDMonYYYY'),'15:00'),
 ('6','1', to_date('23Aug2014', 'DDMonYYYY'),'17:30'),
 ('7','15' ,to_date('24Aug2014', 'DDMonYYYY'),'13:30'),
 ('18','13 ',to_date('24Aug2014', 'DDMonYYYY'),'13:30'),
 ('16','11 ',to_date('24Aug2014', 'DDMonYYYY'),'16:00'),
 ('10','9' ,to_date('25Aug2014', 'DDMonYYYY'),'20:00'),
 ('3','11' ,to_date('30Aug2014', 'DDMonYYYY'),'12:45'),
 ('10','15 ',to_date('30Aug2014', 'DDMonYYYY'),'15:00'),
 ('12','5' ,to_date('30Aug2014', 'DDMonYYYY'),'15:00'),
 ('13','16 ',to_date('30Aug2014', 'DDMonYYYY'),'15:00'),
 ('17','19 ',to_date('30Aug2014', 'DDMonYYYY'),'15:00'),
 ('20','14 ',to_date('30Aug2014', 'DDMonYYYY'),'15:00'),
 ('6','4', to_date('30Aug2014', 'DDMonYYYY'),'17:30'),
 ('2','7', to_date('31Aug2014', 'DDMonYYYY'),'13:30'),
 ('18','9' ,to_date('31Aug2014', 'DDMonYYYY'),'13:30'),
 ('8','1', to_date('31Aug2014', 'DDMonYYYY'),'16:00'),
 ('1','10' ,to_date('13sep2014', 'DDMonYYYY'),'12:45'),
 ('4','17' ,to_date('13sep2014', 'DDMonYYYY'),'15:00'),
 ('5','3', to_date('13sep2014', 'DDMonYYYY'),'15:00'),
 ('14','12 ',to_date('13sep2014', 'DDMonYYYY'),'15:00'),
 ('15','8' ,to_date('13sep2014', 'DDMonYYYY'),'15:00'),
 ('16','18 ',to_date('13sep2014', 'DDMonYYYY'),'15:00'),
 ('19','6' ,to_date('13sep2014', 'DDMonYYYY'),'15:00'),
 ('9','2', to_date('13sep2014', 'DDMonYYYY'),'17:30'),
 ('11','13 ',to_date('14sep2014', 'DDMonYYYY'),'16:00'),
 ('7','20' ,to_date('15sep2014', 'DDMonYYYY'),'20:00'),
 ('13','15 ',to_date('20sep2014', 'DDMonYYYY'),'12:45'),
 ('2','1', to_date('20sep2014', 'DDMonYYYY'),'15:00'),
 ('3','16' ,to_date('20sep2014', 'DDMonYYYY'),'15:00'),
 ('12','7' ,to_date('20sep2014', 'DDMonYYYY'),'15:00'),
 ('18','19 ',to_date('20sep2014', 'DDMonYYYY'),'15:00'),
 ('17','14 ',to_date('20sep2014', 'DDMonYYYY'),'15:00'),
 ('20','9' ,to_date('20sep2014', 'DDMonYYYY'),'17:30'),
 ('8','11' ,to_date('21sep2014', 'DDMonYYYY'),'13:30'),
 ('6','5', to_date('21sep2014', 'DDMonYYYY'),'16:00'),
 ('10','4' ,to_date('21sep2014', 'DDMonYYYY'),'16:00'),
 ('9','6', to_date('27sep2014', 'DDMonYYYY'),'12:45'),
 ('4','2', to_date('27sep2014', 'DDMonYYYY'),'15:00'),
 ('5','8', to_date('27sep2014', 'DDMonYYYY'),'15:00'),
 ('7','10' ,to_date('27sep2014', 'DDMonYYYY'),'15:00'),
 ('11','20 ',to_date('27sep2014', 'DDMonYYYY'),'15:00'),
 ('14','13 ',to_date('27sep2014', 'DDMonYYYY'),'15:00'),
 ('16','17 ',to_date('27sep2014', 'DDMonYYYY'),'15:00'),
 ('1','18' ,to_date('27sep2014', 'DDMonYYYY'),'17:30'),
 ('19','3' ,to_date('28sep2014', 'DDMonYYYY'),'16:00'),
 ('15','12 ',to_date('29sep2014', 'DDMonYYYY'),'20:00'),
 ('7','5', to_date('04oct2014', 'DDMonYYYY'),'15:00'),
 ('8','3', to_date('04oct2014', 'DDMonYYYY'),'15:00'),
 ('9','19' ,to_date('04oct2014', 'DDMonYYYY'),'15:00'),
 ('18','14 ',to_date('04oct2014', 'DDMonYYYY'),'15:00'),
 ('16','15 ',to_date('04oct2014', 'DDMonYYYY'),'15:00'),
 ('17','12 ',to_date('04oct2014', 'DDMonYYYY'),'15:00'),
 ('2','10' ,to_date('04oct2014', 'DDMonYYYY'),'17:30'),
 ('11','6' ,to_date('05oct2014', 'DDMonYYYY'),'12:00'),
 ('4','1', to_date('05oct2014', 'DDMonYYYY'),'14:05'),
 ('20','13 ',to_date('05oct2014', 'DDMonYYYY'),'16:15'),
 ('10','18 ',to_date('18Oct2014', 'DDMonYYYY'),'12:45'),
 ('1','7', to_date('18Oct2014', 'DDMonYYYY'),'15:00'),
 ('3','20' ,to_date('18Oct2014', 'DDMonYYYY'),'15:00'),
 ('5','4', to_date('18Oct2014', 'DDMonYYYY'),'15:00'),
 ('6','2', to_date('18Oct2014', 'DDMonYYYY'),'15:00'),
 ('12','8' ,to_date('18Oct2014', 'DDMonYYYY'),'15:00'),
 ('14','16 ',to_date('18Oct2014', 'DDMonYYYY'),'15:00'),
 ('13','9' ,to_date('19Oct2014', 'DDMonYYYY'),'13:30'),
 ('15','17 ',to_date('19Oct2014', 'DDMonYYYY'),'16:00'),
 ('19','11 ',to_date('20Oct2014', 'DDMonYYYY'),'20:00'),
 ('20','10 ',to_date('25Oct2014', 'DDMonYYYY'),'12:45'),
 ('9','7', to_date('25Oct2014', 'DDMonYYYY'),'15:00'),
 ('14','15 ',to_date('25Oct2014', 'DDMonYYYY'),'15:00'),
 ('18','12 ',to_date('25Oct2014', 'DDMonYYYY'),'15:00'),
 ('16','1' ,to_date('25Oct2014', 'DDMonYYYY'),'15:00'),
 ('19','5' ,to_date('25Oct2014', 'DDMonYYYY'),'15:00'),
 ('17','8' ,to_date('25Oct2014', 'DDMonYYYY'),'17:30'),
 ('3','6', to_date('26Oct2014', 'DDMonYYYY'),'13:30'),
 ('11','4' ,to_date('26Oct2014', 'DDMonYYYY'),'16:00'),
 ('13','2' ,to_date('27Oct2014', 'DDMonYYYY'),'20:00'),
 ('12','9' ,to_date('01Nov2014', 'DDMonYYYY'),'12:45'),
 ('1','3', to_date('01Nov2014', 'DDMonYYYY'),'15:00'),
 ('4','13' ,to_date('01Nov2014', 'DDMonYYYY'),'15:00'),
 ('6','17' ,to_date('01Nov2014', 'DDMonYYYY'),'15:00'),
 ('7','14' ,to_date('01Nov2014', 'DDMonYYYY'),'15:00'),
 ('8','19' ,to_date('01Nov2014', 'DDMonYYYY'),'15:00'),
 ('15','20 ',to_date('01Nov2014', 'DDMonYYYY'),'15:00'),
 ('10','11 ',to_date('02Nov2014', 'DDMonYYYY'),'13:30'),
 ('2','18' ,to_date('02Nov2014', 'DDMonYYYY'),'16:00'),
 ('5','16' ,to_date('03Nov2014', 'DDMonYYYY'),'20:00'),
 ('9','4', to_date('08Nov2014', 'DDMonYYYY'),'12:45'),
 ('3','7', to_date('08Nov2014', 'DDMonYYYY'),'15:00'),
 ('11','5' ,to_date('08Nov2014', 'DDMonYYYY'),'15:00'),
 ('14','8' ,to_date('08Nov2014', 'DDMonYYYY'),'15:00'),
 ('18','15 ',to_date('08Nov2014', 'DDMonYYYY'),'15:00'),
 ('20','2' ,to_date('08Nov2014', 'DDMonYYYY'),'15:00'),
 ('13','10 ',to_date('08Nov2014', 'DDMonYYYY'),'17:30'),
 ('16','6' ,to_date('09Nov2014', 'DDMonYYYY'),'13:30'),
 ('19','12 ',to_date('09Nov2014', 'DDMonYYYY'),'13:30'),
 ('17','1' ,to_date('09Nov2014', 'DDMonYYYY'),'16:00'),
 ('4','19' ,to_date('22Nov2014', 'DDMonYYYY'),'15:00'),
 ('6','20' ,to_date('22Nov2014', 'DDMonYYYY'),'15:00'),
 ('8','16' ,to_date('22Nov2014', 'DDMonYYYY'),'15:00'),
 ('10','17 ',to_date('22Nov2014', 'DDMonYYYY'),'15:00'),
 ('12','13 ',to_date('22Nov2014', 'DDMonYYYY'),'15:00'),
 ('15','3' ,to_date('22Nov2014', 'DDMonYYYY'),'15:00'),
 ('1','11' ,to_date('22Nov2014', 'DDMonYYYY'),'17:30'),
 ('5','9', to_date('23Nov2014', 'DDMonYYYY'),'13:30'),
 ('7','18' ,to_date('23Nov2014', 'DDMonYYYY'),'16:00'),
 ('2','14' ,to_date('24Nov2014', 'DDMonYYYY'),'20:00'),
 ('19','1' ,to_date('29Nov2014', 'DDMonYYYY'),'12:45'),
 ('3','2', to_date('29Nov2014', 'DDMonYYYY'),'15:00'),
 ('9','15' ,to_date('29Nov2014', 'DDMonYYYY'),'15:00'),
 ('11','7' ,to_date('29Nov2014', 'DDMonYYYY'),'15:00'),
 ('13','8' ,to_date('29Nov2014', 'DDMonYYYY'),'15:00'),
 ('17','5' ,to_date('29Nov2014', 'DDMonYYYY'),'15:00'),
 ('20','12 ',to_date('29Nov2014', 'DDMonYYYY'),'15:00'),
 ('16','4' ,to_date('29Nov2014', 'DDMonYYYY'),'17:30'),
 ('14','10 ',to_date('30Nov2014', 'DDMonYYYY'),'13:30'),
 ('18','6' ,to_date('30Nov2014', 'DDMonYYYY'),'16:00'),
 ('3','12' ,to_date('02Dec2014', 'DDMonYYYY'),'19:45'),
 ('8','9', to_date('02Dec2014', 'DDMonYYYY'),'19:45'),
 ('11','15 ',to_date('02Dec2014', 'DDMonYYYY'),'19:45'),
 ('17','13 ',to_date('02Dec2014', 'DDMonYYYY'),'19:45'),
 ('5','2', to_date('02Dec2014', 'DDMonYYYY'),'20:00'),
 ('19','20 ',to_date('02Dec2014', 'DDMonYYYY'),'20:00'),
 ('1','14' ,to_date('03Dec2014', 'DDMonYYYY'),'19:45'),
 ('4','18' ,to_date('03Dec2014', 'DDMonYYYY'),'19:45'),
 ('6','7', to_date('03Dec2014', 'DDMonYYYY'),'19:45'),
 ('16','10 ',to_date('03Dec2014', 'DDMonYYYY'),'19:45'),
 ('2','8', to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('7','19' ,to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('9','16' ,to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('10','6' ,to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('12','4' ,to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('13','3' ,to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('14','11 ',to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('18','5' ,to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('15','1' ,to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('20','17 ',to_date('06Dec2014', 'DDMonYYYY'),'15:00'),
 ('1','12' ,to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('3','14' ,to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('4','7', to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('5','15' ,to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('8','10' ,to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('11','9' ,to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('16','20 ',to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('17','18 ',to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('19','2' ,to_date('13Dec2014', 'DDMonYYYY'),'15:00'),
 ('6','13' ,to_date('14Dec2014', 'DDMonYYYY'),'16:00'),
 ('2','11' ,to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('7','17' ,to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('9','1', to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('10','5' ,to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('12','16 ',to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('13','19 ',to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('14','6' ,to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('18','3' ,to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('15','4' ,to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('20','8' ,to_date('20Dec2014', 'DDMonYYYY'),'15:00'),
 ('1','13' ,to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('3','9', to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('4','20' ,to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('5','14' ,to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('6','15' ,to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('8','18' ,to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('11','12 ',to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('16','7' ,to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('17','2' ,to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('19','10 ',to_date('26Dec2014', 'DDMonYYYY'),'15:00'),
 ('2','16' ,to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('7','8', to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('9','17' ,to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('10','3' ,to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('12','6' ,to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('13','5' ,to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('14','4' ,to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('18','11 ',to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('15','19 ',to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('20','1' ,to_date('28Dec2014', 'DDMonYYYY'),'15:00'),
 ('2','5', to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('7','6', to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('9','8', to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('10','16 ',to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('12','3' ,to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('13','17 ',to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('14','1' ,to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('18','4' ,to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('15','11 ',to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('20','19 ',to_date('01Jan2015', 'DDMonYYYY'),'15:00'),
 ('1','15' ,to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('3','13' ,to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('4','12' ,to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('5','18' ,to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('6','10' ,to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('8','2', to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('11','14 ',to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('16','9' ,to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('17','20 ',to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('19','7' ,to_date('10Jan2015', 'DDMonYYYY'),'15:00'),
 ('2','9', to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('3','5', to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('6','19' ,to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('8','15' ,to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('10','1' ,to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('12','14 ',to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('13','11 ',to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('18','16 ',to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('17','4' ,to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('20','7' ,to_date('07Jan2015', 'DDMonYYYY'),'15:00'),
 ('1','2', to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('4','10' ,to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('5','6', to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('7','12' ,to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('9','20' ,to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('11','8' ,to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('14','17 ',to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('15','13 ',to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('16','3' ,to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('19','18 ',to_date('31Jan2015', 'DDMonYYYY'),'15:00'),
 ('2','4', to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('3','19' ,to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('6','9', to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('8','5', to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('10','7' ,to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('12','15 ',to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('13','14 ',to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('18','1' ,to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('17','16 ',to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('20','11 ',to_date('07Feb2015', 'DDMonYYYY'),'15:00'),
 ('1','8', to_date('10Feb2015', 'DDMonYYYY'),'19:45'),
 ('7','2', to_date('10Feb2015', 'DDMonYYYY'),'19:45'),
 ('11','3' ,to_date('10Feb2015', 'DDMonYYYY'),'19:45'),
 ('14','20 ',to_date('10Feb2015', 'DDMonYYYY'),'19:45'),
 ('16','13 ',to_date('10Feb2015', 'DDMonYYYY'),'19:45'),
 ('5','12' ,to_date('10Feb2015', 'DDMonYYYY'),'20:00'),
 ('9','18' ,to_date('10Feb2015', 'DDMonYYYY'),'20:00'),
 ('19','17 ',to_date('10Feb2015', 'DDMonYYYY'),'20:00'),
 ('4','6', to_date('11Feb2015', 'DDMonYYYY'),'19:45'),
 ('15','10 ',to_date('11Feb2015', 'DDMonYYYY'),'19:45'),
 ('2','15' ,to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('4','3', to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('5','1', to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('6','8', to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('7','13' ,to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('10','12 ',to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('14','9' ,to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('18','20 ',to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('16','19 ',to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('17','11 ',to_date('21Feb2015', 'DDMonYYYY'),'15:00'),
 ('1','6', to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('3','17' ,to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('8','4', to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('9','10' ,to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('11','16 ',to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('12','2' ,to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('13','18 ',to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('15','7' ,to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('19','14 ',to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('20','5' ,to_date('28Feb2015', 'DDMonYYYY'),'15:00'),
 ('2','19' ,to_date('03Mar2015', 'DDMonYYYY'),'19:45'),
 ('7','16' ,to_date('03Mar2015', 'DDMonYYYY'),'19:45'),
 ('13','1' ,to_date('03Mar2015', 'DDMonYYYY'),'19:45'),
 ('14','5' ,to_date('03Mar2015', 'DDMonYYYY'),'19:45'),
 ('20','4' ,to_date('03Mar2015', 'DDMonYYYY'),'19:45'),
 ('9','3', to_date('03Mar2015', 'DDMonYYYY'),'20:00'),
 ('10','8' ,to_date('04Mar2015', 'DDMonYYYY'),'19:45'),
 ('12','11',to_date('04Mar2015', 'DDMonYYYY'),'19:45'),
 ('18','17',to_date('04Mar2015', 'DDMonYYYY'),'19:45'),
 ('15','6' ,to_date('04Mar2015', 'DDMonYYYY'),'19:45'),
 ('1','20' ,to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('3','10' ,to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('4','14' ,to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('5','13' ,to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('6','12' ,to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('8','7', to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('11','18',to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('16','2' ,to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('17','9' ,to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('19','15 ',to_date('14Mar2015', 'DDMonYYYY'),'15:00'),
 ('2','17' ,to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('7','4', to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('9','11' ,to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('10','19 ',to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('12','1' ,to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('13','6' ,to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('14','3' ,to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('18','8' ,to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('15','5' ,to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('20','16 ',to_date('21Mar2015', 'DDMonYYYY'),'15:00'),
 ('1','9', to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('3','18' ,to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('4','15' ,to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('5','10' ,to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('6','14' ,to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('8','20' ,to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('11','2' ,to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('16','12 ',to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('17','7' ,to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('19','13 ',to_date('04Apr2015', 'DDMonYYYY'),'15:00'),
 ('3','1', to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('9','12' ,to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('11','10',to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('13','4' ,to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('14','7' ,to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('18','2' ,to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('16','5' ,to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('17','6' ,to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('19','8' ,to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('20','15',to_date('11Apr2015', 'DDMonYYYY'),'15:00'),
 ('1','16' ,to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('2','13' ,to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('4','11' ,to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('5','19' ,to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('6','3', to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('7','9', to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('8','17' ,to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('10','20 ',to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('12','18 ',to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('15','14 ',to_date('18Apr2015', 'DDMonYYYY'),'15:00'),
 ('1','4', to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('3','8', to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('5','7', to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('6','11' ,to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('10','2' ,to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('12','17',to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('13','20',to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('14','18',to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('15','16',to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('19','9' ,to_date('25Apr2015', 'DDMonYYYY'),'15:00'),
 ('2','6', to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('4','5', to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('7','1', to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('8','12' ,to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('9','13' ,to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('11','19',to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('18','10',to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('16','14',to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('17','15',to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('20','3' ,to_date('02May2015', 'DDMonYYYY'),'15:00'),
 ('1','17' ,to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('2','20' ,to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('4','9', to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('5','11' ,to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('6','16' ,to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('7','3', to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('8','14' ,to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('10','13',to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('12','19',to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('15','18',to_date('09May2015', 'DDMonYYYY'),'15:00'),
 ('3','15' ,to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('9','5', to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('11','1' ,to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('13','12',to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('14','2' ,to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('18','7' ,to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('16','8' ,to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('17','10 ',to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('19','4' ,to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('20','6' ,to_date('16May2015', 'DDMonYYYY'),'15:00'),
 ('1','19' ,to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('2','3', to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('4','16' ,to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('5','17' ,to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('6','18' ,to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('7','11' ,to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('8','13' ,to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('10','14',to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('12','20',to_date('24May2015', 'DDMonYYYY'),'15:00'),
 ('15','9' ,to_date('24May2015', 'DDMonYYYY'),'15:00');
