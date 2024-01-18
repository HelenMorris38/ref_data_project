CREATE DATABASE ref_data;

USE ref_data;

CREATE TABLE main_panel
(main_panel_id CHAR(1) NOT NULL PRIMARY KEY,
main_panel_name VARCHAR(15) NOT NULL);

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
(10007783, "University of Aberdeen", 3, null),
(10007849, "Abertay University", 3, null),
(10007856, "Aberystwyth University / Prifysgol Aberystwyth", 4, null),
(10000163, "AECC University College", 1, 7),
(10000291, "Anglia Ruskin University Higher Education Corporation", 1, 1),
(10000385, "Arts University Bournemouth, the", 1, 7),
(10007162, "University of the Arts, London", 1, 3),
(10007759, "Aston University", 1, 8),
(10007857, "Bangor University / Prifysgol Bangor", 4, null),
(10007850, "The University of Bath", 1, 7),
(10000571, "Bath Spa University", 1, 7),
(10007152, "University of Bedfordshire", 1, 1),
(10007760, "Birkbeck College", 1, 3),
(10006840, "The University of Birmingham", 1, 8),
(10007140, "Birmingham City University", 1, 8),
(10007811, "Bishop Grosseteste University", 1, 2),
(10006841, "The University of Bolton", 1, 5),
(10000824, "Bournemouth University", 1, 7),
(10007785, "The University of Bradford", 1, 9),
(10000886, "University of Brighton", 1, 6),
(10007786, "University of Bristol", 1, 7),
(10000961, "Brunel University London", 1, 3),
(10000975, "Buckinghamshire New University", 1, 6),
(10007788, "University of Cambridge", 1, 1),
(10001143, "Canterbury Christ Church University", 1, 6),
(10007854, "Cardiff Metropolitan University / Prifysgol Metropolitan Caerdydd", 4, null),
(10007814, "Cardiff University / Prifysgol Caerdydd", 4, null),
(10007141, "University of Central Lancashire", 1, 5),
(10007848, "University of Chester", 1, 5),
(10007137, "The University of Chichester", 1, 6),
(10001478, "City, University of London", 1, 3),
(10007761, "Courtauld Institute of Art", 1, 3),
(10001726, "Coventry University", 1, 8),
(10007822, "Cranfield University", 1, 1),
(10007842, "The University of Cumbria", 1, 5),
(10001883, "De Montfort University", 1, 2),
(10007851, "University of Derby", 1, 2),
(10007852, "University of Dundee", 3, null),
(10007143, "University of Durham", 1, 4),
(10007789, "The University of East Anglia", 1, 1),
(10007144, "University of East London", 1, 3),
(10007823, "Edge Hill University", 1, 5),
(10007790, "University of Edinburgh", 3, null),
(10007772, "Edinburgh Napier University", 3, null),
(10007791, "The University of Essex", 1, 1),
(10007792, "University of Exeter", 1, 7),
(10008640, "Falmouth University", 1, 7),
(10007794, "University of Glasgow", 3, null),
(10007762, "Glasgow Caledonian University", 3, null),
(10002681, "Glasgow School of Art", 3, null),
(10007145, "University of Gloucestershire", 1, 7),
(10007833, "Wrexham Glyndŵr University / Prifysgol Glyndŵr Wrecsam", 4, null),
(10002718, "Goldsmiths' College", 1, 3),
(10007146, "University of Greenwich", 1, 3),
(10007825, "Guildhall School of Music & Drama", 1, 3),
(10040812, "Harper Adams University", 1, 8),
(10080811, "Hartpury University", 1, 7),
(10007764, "Heriot-Watt University", 3, null),
(10007147, "University of Hertfordshire", 1, 1),
(10007114, "University of the Highlands and Islands", 3, null),
(10007148, "The University of Huddersfield", 1, 9),
(10007149, "The University of Hull", 1, 9),
(10003270, "Imperial College of Science, Technology and Medicine", 1, 3),
(10003324, "Institute of Cancer Research: Royal Cancer Hospital", 1, 3),
(10009315, "Institute of Zoology", 1, 3),
(10007767, "University of Keele", 1, 8),
(10007150, "The University of Kent", 1, 6),
(10003645, "King's College London", 1, 3),
(10003678, "Kingston University", 1, 3),
(10007768, "The University of Lancaster", 1, 5),
(10007795, "The University of Leeds", 1, 9),
(10003854, "Leeds Arts University", 1, 9),
(10003861, "Leeds Beckett University", 1, 9),
(10003863, "Leeds Trinity University", 1, 9),
(10007796, "The University of Leicester", 1, 2),
(10007151, "University of Lincoln", 1, 2),
(10006842, "The University of Liverpool", 1, 5),
(10003956, "Liverpool Hope University", 1, 5),
(10003957, "Liverpool John Moores University", 1, 5),
(10003958, "Liverpool School of Tropical Medicine", 1, 5),
(10007769, "London Business School", 1, 3),
(10004048, "London Metropolitan University", 1, 3),
(10004063, "The London School of Economics and Political Science", 1, 3),
(10007771, "London School of Hygiene and Tropical Medicine", 1, 3),
(10004078, "London South Bank University", 1, 3),
(10004113, "Loughborough University", 1, 2),
(10007798, "The University of Manchester", 1, 5),
(10004180, "Manchester Metropolitan University", 1, 5),
(10004320, "The Metanoia Institute", 1, 3),
(10004351, "Middlesex University", 1, 3),
(10007799, "University of Newcastle upon Tyne", 1, 4),
(10007832, "Newman University", 1, 8),
(10007138, "University of Northampton, The", 1, 2),
(10001282, "University of Northumbria at Newcastle", 1, 4),
(10004775, "Norwich University of the Arts", 1, 1),
(10004790, "Nottingham Trent University", 1, 2),
(10007154, "University of Nottingham, The", 1, 2),
(10007773, "The Open University", 1, 6),
(10007774, "University of Oxford", 1, 6),
(10004930, "Oxford Brookes University", 1, 6),
(10007801, "University of Plymouth", 1, 7),
(10007155, "University of Portsmouth", 1, 6),
(10005337, "Queen Margaret University, Edinburgh", 3, null),
(10007775, "Queen Mary University of London", 1, 3),
(10005343, "Queen's University of Belfast", 2, null),
(10005389, "Ravensbourne University London", 1, 3),
(10007802, "The University of Reading", 1, 6),
(10005500, "Robert Gordon University", 3, null),
(10007776, "Roehampton University", 1, 3),
(10005523, "Rose Bruford College of Theatre and Performance", 1, 3),
(10007835, "The Royal Academy of Music", 1, 3),
(10005545, "The Royal Agricultural University", 1, 7),
(10007816, "The Royal Central School of Speech and Drama", 1, 3),
(10007777, "Royal College of Art", 1, 3),
(10007778, "Royal College of Music", 1, 3),
(10005561, "Royal Conservatoire of Scotland", 3, null),
(10005553, "Royal Holloway and Bedford New College", 1, 6),
(10007837, "Royal Northern College of Music", 1, 5),
(10007779, "The Royal Veterinary College", 1, 3),
(10007156, "University of Salford, The", 1, 5),
(10007780, "School of Oriental and African Studies", 1, 3),
(10007157, "The University of Sheffield", 1, 9),
(10005790, "Sheffield Hallam University", 1, 9),
(10006022, "Solent University, Southampton", 1, 6),
(10007793, "University of South Wales / Prifysgol De Cymru", 4, null),
(10007158, "University of Southampton", 1, 6),
(10005700, "SRUC", 3, null),
(10007803, "University of St Andrews", 3, null),
(10037449, "University of St Mark & St John", 1, 7),
(10007843, "St Mary's University, Twickenham", 1, 3),
(10007782, "St. George's Hospital Medical School", 1, 3),
(10006299, "Staffordshire University", 1, 8),
(10007804, "University of Stirling", 3, null),
(10008010, "Stranmillis University College", 2, null),
(10007805, "University of Strathclyde", 3, null),
(10014001, "University of Suffolk", 1, 1),
(10007159, "University of Sunderland", 1, 4),
(10007160, "The University of Surrey", 1, 6),
(10007806, "University of Sussex", 1, 6),
(10007855, "Swansea University / Prifysgol Abertawe", 4, null),
(10007161, "Teesside University", 1, 4),
(10008017, "Trinity Laban Conservatoire of Music and Dance", 1, 3),
(10007858, "University of Wales Trinity Saint David / Prifysgol Cymru Y Drindod Dewi Sant", 4, null),
(10007807, "University of Ulster", 2, null),
(10007784, "University College London", 1, 3),
(10000936, "University College of Osteopathy", 1, 3),
(10006427, "University for the Creative Arts", 1, 6),
(10007163, "The University of Warwick", 1, 8),
(10006566, "The University of West London", 1, 3),
(10007164, "University of the West of England, Bristol", 1, 7),
(10007800, "University of the West of Scotland", 3, null),
(10007165, "The University of Westminster", 1, 3),
(10003614, "University of Winchester", 1, 6),
(10007166, "University of Wolverhampton", 1, 8),
(10007139, "University of Worcester", 1, 8),
(10007167, "University of York", 1, 9),
(10007713, "York St John University", 1, 9);


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
institution_id INT NOT NULL,
unit_of_assessment INT NOT NULL,
output_type CHAR(1) NOT NULL,
title VARCHAR(500),
place VARCHAR(100),
publisher VARCHAR(100),
vol_title VARCHAR(500),
vol VARCHAR(100),
issue VARCHAR(10),
doi VARCHAR(100),
isbn VARCHAR(50),
issn CHAR(9),
patent_number VARCHAR(50),
month VARCHAR(25),
year INT,
number_of_additional_authors INT,
oa_status INT,
propose_dw BOOLEAN,
reserve_output BOOLEAN,
delayed_by_covid19 BOOLEAN,
FOREIGN KEY (institution_id) REFERENCES institutions(institution_id),
FOREIGN KEY (unit_of_assessment) REFERENCES units_of_assessment(uoa),
FOREIGN KEY (output_type) REFERENCES output_type(output_type_id),
FOREIGN KEY (oa_status) REFERENCES open_access_status(oa_id));


SET GLOBAL local_infile=1;

LOAD DATA LOCAL INFILE '/Users/helenmorris/ref_data_project.csv'
INTO TABLE outputs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SET sql_safe_updates = 0;
    
UPDATE
    outputs
SET
    place = IF(place = '', NULL, place),
    publisher = IF(publisher = '', NULL, publisher),
    vol_title = IF(vol_title = '', NULL, vol_title),
	vol = IF(vol = '', NULL, vol),
    doi = IF(doi = '', NULL, doi),
    isbn = IF(isbn = '', NULL, isbn),
	issn = IF(issn = '', NULL, issn),
    patent_number = IF(patent_number = '', NULL, patent_number),
    month = IF(month = '', NULL, month);
    
SET sql_safe_updates=1;

-- total of each OA status byt institution
SELECT 
    inst.institution_name,
    oa.open_access_status,
    COUNT(oa.open_access_status)
FROM
    outputs
        INNER JOIN
    institutions AS inst ON outputs.institution_id = inst.institution_id
        INNER JOIN
    open_access_status AS oa ON outputs.oa_status = oa.oa_id
GROUP BY inst.institution_name , oa.open_access_status;



-- total of each type of output
SELECT 
    output_type.output_type, COUNT(outputs.output_type) as total_outputs_submitted
FROM
    output_type
        INNER JOIN
    outputs ON outputs.output_type = output_type.output_type_id
GROUP BY outputs.output_type
ORDER BY total_outputs_submitted DESC;

-- type of outputs submitted by uoa
SELECT 
    uoa.uoa_name,
    output_type.output_type,
    COUNT(outputs.output_type) AS total_outputs_submitted
FROM
    units_of_assessment AS uoa
        LEFT JOIN
    outputs ON uoa.uoa = outputs.unit_of_assessment
        LEFT JOIN
    output_type ON output_type.output_type_id = outputs.output_type
GROUP BY uoa.uoa_name, outputs.output_type;


-- journals by month published
-- total each type of OA status
-- of those in scope, % that were compliant
-- institutions that submitted in all uoas
-- institutions that submitted in only one uoa
-- uoa with the highest number of oa exceptions

-- create a view that combines multiple tables, any type of join
CREATE VIEW in_scope_of_oa AS
    SELECT 
        inst.institution_name, uoa.uoa_name, oa.open_access_status
    FROM
        outputs
            INNER JOIN
        institutions AS inst ON outputs.institution_id = inst.institution_id
            INNER JOIN
        units_of_assessment AS uoa ON outputs.unit_of_assessment = uoa.uoa
            INNER JOIN
        open_access_status AS oa ON outputs.oa_status = oa.oa_id
        WHERE outputs.oa_status != 1;

SELECT 
    *
FROM
    in_scope_of_oa
ORDER BY institution_name , uoa_name;


DELIMITER //

CREATE FUNCTION CalculatePercentageNonCompliantOutputs(institution_id INT, uoa INT)
RETURNS decimal(5, 2)
deterministic
BEGIN 
DECLARE percent_non_compliant decimal(5, 2);
SELECT 
(count(if(outputs.oa_status = 8, 1, null)) / nullif(count(if(outputs.output_type = 'D', 1, null) AND if(outputs.oa_status != 1, 1, null)), 0)) * 100
INTO percent_non_compliant FROM
    outputs
WHERE
        outputs.institution_id = institution_id
        AND outputs.unit_of_assessment = uoa;
return percent_non_compliant;
end//
DELIMITER ;

select CalculatePercentageNonCompliantOutputs(10003956, 20);

select institution_id, unit_of_assessment, oa_status from outputs where oa_status = 8;

-- apply function to a query
-- instituion name, uoa, non-compliant outputs, total in scope, function calculate percentage(inst id, uoa? or just uoa = number)
SELECT 
    inst.institution_name,
    uoa.uoa_name,
    COUNT(IF(outputs.oa_status = 8, 1, 0)) AS total_non_compliant_outputs,
    COUNT(IF(outputs.output_type = 'D', 1, 0)
        AND IF(outputs.oa_status != 1, 1, 0)) AS total_outputs_in_scope,
    CALCULATEPERCENTAGENONCOMPLIANTOUTPUTS(outputs.institution_id,
            outputs.unit_of_assessment) AS percentage_non_compliant
FROM
    outputs
        INNER JOIN
    institutions AS inst ON outputs.institution_id = inst.institution_id
        INNER JOIN
    units_of_assessment AS uoa ON outputs.unit_of_assessment = uoa.uoa
GROUP BY outputs.oa_status , outputs.output_type , outputs.unit_of_assessment , outputs.institution_id
HAVING percentage_non_compliant >= 4.00;


