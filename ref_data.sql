CREATE DATABASE ref_data;

USE ref_data;

CREATE TABLE main_panel
(main_panel_id CHAR(1) NOT NULL PRIMARY KEY,
main_panel_name VARCHAR(250) NOT NULL);

SELECT * FROM main_panel;

INSERT INTO 
main_panel
(main_panel_id, main_panel_name)
VALUES
("A", "Main panel A"),
("B", "Main panel B"),
("C", "Main panel C"),
("D", "Main panel D");

SELECT * FROM main_panel;

CREATE TABLE units_of_assessment
(uoa INT NOT NULL,
uoa_name VARCHAR(250) NOT NULL,
main_panel CHAR(1),
PRIMARY KEY (uoa),
FOREIGN KEY (main_panel) REFERENCES main_panel(main_panel_id));

INSERT INTO
units_of_assessment
(uoa, uoa_name, main_panel)
VALUES
(1, "Clinical Medicine", "A"),
(2, "Public Health, Health Services and Primary Care", "A"),
(3, "Allied Health Professions, Dentistry, Nursing and Pharmacy", "A"),
(4, "Psychology, Psychiatry and Neuroscience", "A"),
(5, "Biological Sciences", "A"),
(6, "Agriculture, Food and Veterinary Sciences", "A"),
(7, "Earth Systems and Environmental Sciences", "B"),
(8, "Chemistry", "B"),
(9, "Physics", "B"),
(10, "Mathematical Sciences", "B"),
(11, "Computer Science and Informatics", "B"),
(12, "Engineering", "B"),
(13, "Architecture, Built Environment and Planning", "C"),
(14, "Geography and Environmental Studies", "C"),
(15, "Archaeology", "C"),
(16, "Economics and Econometrics", "C"),
(17, "Business and Management Studies", "C"),
(18, "Law", "C"),
(19, "Politics and International Studies", "C"),
(20, "Social Work and Social Policy", "C"),
(21, "Sociology", "C"),
(22, "Anthropology and Development Studies", "C"),
(23, "Education", "C"),
(24, "Sport and Exercise Sciences, Leisure and Tourism", "C"),
(25, "Area Studies", "D"),
(26, "Modern Languages and Linguistics", "D"),
(27, "English Language and Literature", "D"),
(28, "History", "D"),
(29, "Classics", "D"),
(30, "Philosophy", "D"),
(31, "Theology and Religious Studies", "D"),
(32, "Art and Design: History, Practice and Theory", "D"),
(33, "Music, Drama, Dance, Performing Arts, Film and Screen Studies", "D"),
(34, "Communication, Cultural and Media Studies, Library and Information Management", "D");

CREATE TABLE open_access_status
(oa_id INT NOT NULL PRIMARY KEY,
open_access_status VARCHAR(100));

INSERT INTO open_access_status
(oa_id, open_access_status)
VALUES
(1, "Out of scope for open access requirements"),
(2, "Compliant"),
(3, "Access exception"),
(4, "Deposit exception"),
(5, "Technical exception"),
(6, "Exception within 3 months of publication"),
(7, "Other exception"),
(8, "Not compliant");


CREATE TABLE country
(country_id INT NOT NULL PRIMARY KEY,
country VARCHAR(20));

INSERT INTO country
(country_id, country)
VALUES
(1, "England"),
(2, "Northern Ireland"),
(3, "Scotland"),
(4, "Wales");

CREATE TABLE area
(area_id INT NOT NULL PRIMARY KEY,
area VARCHAR(50));

INSERT INTO area
(area_id, area)
VALUES
(1, "East"),
(2, "East Midlands"),
(3, "London"),
(4, "North East"),
(5, "North West"),
(6, "South East"),
(7, "South West"),
(8, "West Midlands"),
(9, "Yorkshire and Humberside");

CREATE TABLE institutions
(institution_id INT NOT NULL PRIMARY KEY,
institution_name VARCHAR(250),
country INT,
area INT NULL,
FOREIGN KEY (country) REFERENCES country(country_id),
FOREIGN KEY (area) REFERENCES area(area_id));

INSERT INTO institutions
(institution_id, institution_name, country, area)
VALUES
(1, "University of Aberdeen", 3, null),
(10007849, "Abertay University", 3, null),
(10007856, "Aberystwyth University / Prifysgol Aberystwyth", 4, null),
(10000163, "AECC University College", 1, 7),
(10000291, "Anglia Ruskin University Higher Education Corporation", 1, 1),
(10000385, "Arts University Bournemouth, the", 1, 7),
(7, "University of the Arts, London", 1, 3),
(10007759, "Aston University", 1, 8),
(10007857, "Bangor University / Prifysgol Bangor", 4, null),
(10, "The University of Bath", 1, 7),
(10000571, "Bath Spa University", 1, 7),
(12, "University of Bedfordshire", 1, 1),
(10007760, "Birkbeck College", 1, 3),
(14, "The University of Birmingham", 1, 8),
(15, "Birmingham City University", 1, 8),
(10007811, "Bishop Grosseteste University", 1, 2),
(17, "The University of Bolton", 1, 5),
(10000824, "Bournemouth University", 1, 7),
(19, "The University of Bradford", 1, 9),
(20, "University of Brighton", 1, 6),
(21, "University of Bristol", 1, 7),
(10000961, "Brunel University London", 1, 3),
(10000975, "Buckinghamshire New University", 1, 6),
(24, "University of Cambridge", 1, 1),
(10001143, "Canterbury Christ Church University", 1, 6),
(10007854, "Cardiff Metropolitan University / Prifysgol Metropolitan Caerdydd", 4, null),
(10007814, "Cardiff University / Prifysgol Caerdydd", 4, null),
(28, "University of Central Lancashire", 1, 5),
(29, "University of Chester", 1, 5),
(30, "The University of Chichester", 1, 6),
(10001478, "City, University of London", 1, 3),
(10007761, "Courtauld Institute of Art", 1, 3),
(10001726, "Coventry University", 1, 8),
(10007822, "Cranfield University", 1, 1),
(35, "The University of Cumbria", 1, 5),
(10001883, "De Montfort University", 1, 2),
(37, "University of Derby", 1, 2),
(38, "University of Dundee", 3, null),
(39, "University of Durham", 1, 4),
(40, "The University of East Anglia", 1, 1),
(41, "University of East London", 1, 3),
(10007823, "Edge Hill University", 1, 5),
(43, "University of Edinburgh", 3, null),
(10007772, "Edinburgh Napier University", 3, null),
(45, "The University of Essex", 1, 1),
(46, "University of Exeter", 1, 7),
(10008640, "Falmouth University", 1, 7),
(48, "University of Glasgow", 3, null),
(10007762, "Glasgow Caledonian University", 3, null),
(10002681, "Glasgow School of Art", 3, null),
(51, "University of Gloucestershire", 1, 7),
(52, "Wrexham Glyndŵr University / Prifysgol Glyndŵr Wrecsam", 4, null),
(10002718, "Goldsmiths' College", 1, 3),
(54, "University of Greenwich", 1, 3),
(10007825, "Guildhall School of Music & Drama", 1, 3),
(10040812, "Harper Adams University", 1, 8),
(10080811, "Hartpury University", 1, 7),
(10007825, "Heriot-Watt University", 3, null),
(59, "University of Hertfordshire", 1, 1),
(60, "University of the Highlands and Islands", 3, null),
(61, "The University of Huddersfield", 1, 9),
(62, "The University of Hull", 1, 9),
(10003270, "Imperial College of Science, Technology and Medicine", 1, 3),
(10003324, "Institute of Cancer Research: Royal Cancer Hospital", 1, 3),
(10009315, "Institute of Zoology", 1, 3),
(66, "University of Keele", 1, 8),
(67, "The University of Kent", 1, 6),
(10003645, "King's College London", 1, 3),
(10003678, "Kingston University", 1, 3),
(70, "The University of Lancaster", 1, 5),
(71, "The University of Leeds", 1, 9),
(10003854, "Leeds Arts University", 1, 9),
(10003861, "Leeds Beckett University", 1, 9),
(10003863, "Leeds Trinity University", 1, 9),
(75, "The University of Leicester", 1, 2),
(76, "University of Lincoln", 1, 2),
(77, "The University of Liverpool", 1, 5),
(10003956, "Liverpool Hope University", 1, 5),
(10003957, "Liverpool John Moores University", 1, 5),
(10003958, "Liverpool School of Tropical Medicine", 1, 5),
(81, "London Business School", 1, 3),
(82, "London Metropolitan University", 1, 3),
(83, "The London School of Economics and Political Science", 1, 3),
(84, "London School of Hygiene and Tropical Medicine", 1, 3),
(85, "London South Bank University", 1, 3),
(86, "Loughborough University", 1, 2),
(87, "The University of Manchester", 1, 5),
(88, "Manchester Metropolitan University", 1, 5),
(89, "The Metanoia Institute", 1, 3),
(90, "Middlesex University", 1, 3),
(91, "University of Newcastle upon Tyne", 1, 4),
(92, "Newman University", 1, 8),
(93, "University of Northampton, The", 1, 2),
(94, "University of Northumbria at Newcastle", 1, 4),
(95, "Norwich University of the Arts", 1, 1),
(96, "Nottingham Trent University", 1, 2),
(97, "University of Nottingham, The", 1, 2),
(98, "The Open University", 1, 6),
(99, "University of Oxford", 1, 6),
(100, "Oxford Brookes University", 1, 6),
(101, "University of Plymouth", 1, 7),
(102, "University of Portsmouth", 1, 6),
(103, "Queen Margaret University, Edinburgh", 3, null),
(104, "Queen Mary University of London", 1, 3),
(105, "Queen's University of Belfast", 2, null),
(106, "Ravensbourne University London", 1, 3),
(107, "The University of Reading", 1, 6),
(108, "Robert Gordon University", 3, null),
(109, "Roehampton University", 1, 3),
(110, "Rose Bruford College of Theatre and Performance", 1, 3),
(111, "The Royal Academy of Music", 1, 3),
(112, "The Royal Agricultural University", 1, 7),
(113, "The Royal Central School of Speech and Drama", 1, 3),
(114, "Royal College of Art", 1, 3),
(115, "Royal College of Music", 1, 3),
(116, "Royal Conservatoire of Scotland", 3, null),
(117, "Royal Holloway and Bedford New College", 1, 6),
(118, "Royal Northern College of Music", 1, 5),
(119, "The Royal Veterinary College", 1, 3),
(120, "University of Salford, The", 1, 5),
(121, "School of Oriental and African Studies", 1, 3),
(122, "The University of Sheffield", 1, 9),
(123, "Sheffield Hallam University", 1, 9),
(124, "Solent University, Southampton", 1, 6),
(125, "University of South Wales / Prifysgol De Cymru", 4, null),
(126, "University of Southampton", 1, 6),
(127, "SRUC", 3, null),
(128, "University of St Andrews", 3, null),
(129, "University of St Mark & St John", 1, 7),
(130, "St Mary's University, Twickenham", 1, 3),
(131, "St. George's Hospital Medical School", 1, 3),
(132, "Staffordshire University", 1, 8),
(133, "University of Stirling", 3, null),
(134, "Stranmillis University College", 2, null),
(135, "University of Strathclyde", 3, null),
(136, "University of Suffolk", 1, 1),
(137, "University of Sunderland", 1, 4),
(138, "The University of Surrey", 1, 6),
(139, "University of Sussex", 1, 6),
(140, "Swansea University / Prifysgol Abertawe", 4, null),
(141, "Teesside University", 1, 4),
(142, "Trinity Laban Conservatoire of Music and Dance", 1, 3),
(143, "University of Wales Trinity Saint David / Prifysgol Cymru Y Drindod Dewi Sant", 4, null),
(144, "University of Ulster", 2, null),
(145, "University College London", 1, 3),
(146, "University College of Osteopathy", 1, 3),
(147, "University for the Creative Arts", 1, 6),
(148, "The University of Warwick", 1, 8),
(149, "The University of West London", 1, 3),
(150, "University of the West of England, Bristol", 1, 7),
(151, "University of the West of Scotland", 3, null),
(152, "The University of Westminster", 1, 3),
(153, "University of Winchester", 1, 6),
(154, "University of Wolverhampton", 1, 8),
(155, "University of Worcester", 1, 8),
(156, "University of York", 1, 9),
(157, "York St John University", 1, 9);

SELECT * FROM institutions WHERE country = 2;

SELECT * FROM institutions WHERE country = 3;

SELECT * FROM institutions WHERE country = 4;

SELECT 
    *
FROM
    institutions
WHERE
    country = 1
ORDER BY area;

CREATE TABLE output_type
(output_type_id CHAR(1) PRIMARY KEY NOT NULL,
output_type VARCHAR(100));

INSERT INTO output_type
(output_type_id, output_type)
VALUES
("A", "Authored book"),
("B", "Edited book"),
("C", "Chapter in book"),
("D", "Journal article"),
("E", "Conference contribution"),
("F", "Patent/ published patent application"),
("G", "Software"),
("H", "Website content"),
("I", "Performance"),
("J", "Composition"),
("K", "Design"),
("L", "Artefact"),
("M", "Exhibition"),
("N", "Research report for external body"),
("P", "Devices and products"),
("Q", "Digital or visual media"),
("R", "Scholarly edition"),
("S", "Research data sets and databases"),
("T", "Other"),
("U", "Working paper"),
("V", "Translation");

CREATE TABLE outputs
(output_id INT NOT NULL PRIMARY KEY,
institution INT NOT NULL,
unit_of_assessment INT NOT NULL,
output_type CHAR(1) NOT NULL,
title VARCHAR(500),
publisher VARCHAR(100),
vol_title VARCHAR(500),
vol VARCHAR(100),
issue VARCHAR(10),
doi VARCHAR(100),
isbn VARCHAR(50),
issn CHAR(9),
month INT,
year INT,
oa_status INT,
propose_dw BOOLEAN,
reserve_output BOOLEAN,
delayed_by_covid19 BOOLEAN,
FOREIGN KEY (institution) REFERENCES institutions(institution_id),
FOREIGN KEY (unit_of_assessment) REFERENCES units_of_assessment(uoa),
FOREIGN KEY (output_type) REFERENCES output_type(output_type_id),
FOREIGN KEY (oa_status) REFERENCES open_access_status(oa_id));

