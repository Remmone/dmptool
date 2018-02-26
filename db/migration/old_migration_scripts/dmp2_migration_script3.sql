-- MANUAL CONTENT CURATION

-- Remove any tabs and new line characters from the imported guidance
UPDATE `roadmaptest`.`guidances` SET `text` = REPLACE(REPLACE(REPLACE(`text`, '\n', '<br />'), '\r', ''), '\t', '  ');

-- Enable Back the constraints
SET FOREIGN_KEY_CHECKS = 1;
ALTER TABLE `roadmaptest`.`guidances` ENABLE KEYS;
-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************

-- Set the default template (currently using DCC generic template)
UPDATE `roadmaptest`.`templates` SET is_default = 1 WHERE id = 133;
-- Set empty links in Templates.
UPDATE `roadmaptest`.`templates` SET `links` = '{"funder":[],"sample_plan":[]}';

-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************

-- Make the templates modifiable.
UPDATE `roadmaptest`.`phases` set modifiable = 1;
UPDATE `roadmaptest`.`sections` set modifiable = 1;
UPDATE `roadmaptest`.`questions` set modifiable = 1;

-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************

-- Update the Org records 
UPDATE `roadmaptest`.`orgs` SET `name` = 'Alfred P. Sloan Foundation', `abbreviation` = 'Sloan', `org_type` = 2 WHERE `id` = 141;
UPDATE `roadmaptest`.`orgs` SET `name` = 'American University (AU)', `abbreviation` = 'AU', `org_type` = 1 WHERE `id` = 56;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Appalachian State University', `abbreviation` = 'Appalachian State', `org_type` = 1 WHERE `id` = 169;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Arizona State University (ASU)', `abbreviation` = 'ASU', `org_type` = 1 WHERE `id` = 20;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Augusta University', `abbreviation` = 'Augusta', `org_type` = 1 WHERE `id` = 173;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Auraria Library (UCD, MSU Denver, CCD)', `abbreviation` = 'Auraria', `org_type` = 1 WHERE `id` = 224;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Baylor University', `abbreviation` = 'Baylor', `org_type` = 1 WHERE `id` = 102;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Binghamton University', `abbreviation` = 'Binghamton', `org_type` = 1 WHERE `id` = 209;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Boise State University', `abbreviation` = 'Boise State', `org_type` = 1 WHERE `id` = 89;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Boston College (BC)', `abbreviation` = 'BC', `org_type` = 1 WHERE `id` = 163;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Boston University (BU)', `abbreviation` = 'BU', `org_type` = 1 WHERE `id` = 87;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Brandeis University', `abbreviation` = 'Brandeis', `org_type` = 1 WHERE `id` = 97;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Brown University', `abbreviation` = 'Brown', `org_type` = 1 WHERE `id` = 149;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California Institute of Technology', `abbreviation` = 'Caltech', `org_type` = 1 WHERE `id` = 225;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California Polytechnic State University-San Luis Obispo (CalPolySLO)', `abbreviation` = 'CalPolySLO', `org_type` = 1 WHERE `id` = 45;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California State University, Chico (CSU Chico)', `abbreviation` = 'CSU Chico', `org_type` = 1 WHERE `id` = 41;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California State University, Fresno (CSU Fresno)', `abbreviation` = 'CSU Fresno', `org_type` = 1 WHERE `id` = 30;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California State University, Fullerton (CSU Fullerton)', `abbreviation` = 'CSU Fullerton', `org_type` = 1 WHERE `id` = 219;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California State University, Los Angeles (CSULA)', `abbreviation` = 'CSULA', `org_type` = 1 WHERE `id` = 29;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California State University, Northridge (CSUN)', `abbreviation` = 'CSUN', `org_type` = 1 WHERE `id` = 221;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California State University, Office of the Chancellor (CSU)', `abbreviation` = 'CSU', `org_type` = 1 WHERE `id` = 27;
UPDATE `roadmaptest`.`orgs` SET `name` = 'California State University, San Marcos (CSUSM)', `abbreviation` = 'CSUSM', `org_type` = 1 WHERE `id` = 61;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Carleton College', `abbreviation` = 'Carleton', `org_type` = 1 WHERE `id` = 161;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Carnegie Mellon University (CMU)', `abbreviation` = 'CMU', `org_type` = 1 WHERE `id` = 84;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Case Western Reserve University (CWRU)', `abbreviation` = 'CWRU', `org_type` = 1 WHERE `id` = 144;
UPDATE `roadmaptest`.`orgs` SET `name` = 'City University of New York (CUNY)', `abbreviation` = 'CUNY', `org_type` = 1 WHERE `id` = 204;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Clemson University', `abbreviation` = 'Clemson', `org_type` = 1 WHERE `id` = 54;
UPDATE `roadmaptest`.`orgs` SET `name` = 'College of William and Mary', `abbreviation` = 'William and Mary', `org_type` = 1 WHERE `id` = 165;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Colorado School of Mines (CSM)', `abbreviation` = 'CSM', `org_type` = 1 WHERE `id` = 199;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Columbia University', `abbreviation` = 'Columbia', `org_type` = 1 WHERE `id` = 113;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Cornell University', `abbreviation` = 'Cornell', `org_type` = 1 WHERE `id` = 77;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Dartmouth College', `abbreviation` = 'Dartmouth', `org_type` = 1 WHERE `id` = 107;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Data Observation Network for Earth (DataONE)', `abbreviation` = 'DataONE', `org_type` = 3 WHERE `id` = 186;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Department of Defense (DOD)', `abbreviation` = 'DOD', `org_type` = 2 WHERE `id` = 210;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Department of Energy (DOE)', `abbreviation` = 'DOE', `org_type` = 2 WHERE `id` = 145;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Department of Transportation (DOT)', `abbreviation` = 'DOT', `org_type` = 2 WHERE `id` = 205;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Digital Curation Centre (DCC)', `abbreviation` = 'DCC', `org_type` = 3 WHERE `id` = 207;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Drexel University', `abbreviation` = 'Drexel', `org_type` = 1 WHERE `id` = 69;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Duke University', `abbreviation` = 'Duke', `org_type` = 1 WHERE `id` = 93;
UPDATE `roadmaptest`.`orgs` SET `name` = 'East Carolina University (ECU)', `abbreviation` = 'ECU', `org_type` = 1 WHERE `id` = 104;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Emory University', `abbreviation` = 'Emory', `org_type` = 1 WHERE `id` = 67;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Florida Atlantic University (FAU)', `abbreviation` = 'FAU', `org_type` = 1 WHERE `id` = 214;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Florida State University (FSU)', `abbreviation` = 'FSU', `org_type` = 1 WHERE `id` = 162;
UPDATE `roadmaptest`.`orgs` SET `name` = 'GATACA LLC', `abbreviation` = 'GATACA', `org_type` = 3 WHERE `id` = 174;
UPDATE `roadmaptest`.`orgs` SET `name` = 'George Mason University (GMU)', `abbreviation` = 'GMU', `org_type` = 1 WHERE `id` = 42;
UPDATE `roadmaptest`.`orgs` SET `name` = 'George Washington University (GWU)', `abbreviation` = 'GWU', `org_type` = 1 WHERE `id` = 106;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Georgetown University', `abbreviation` = 'Georgetown', `org_type` = 1 WHERE `id` = 109;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Georgia Southern University', `abbreviation` = 'Georgia Southern University', `org_type` = 1 WHERE `id` = 195;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Georgia State University (GSU)', `abbreviation` = 'GSU', `org_type` = 1 WHERE `id` = 68;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Georgia Tech', `abbreviation` = 'GaTech', `org_type` = 1 WHERE `id` = 49;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Gordon and Betty Moore Foundation (GBMF)', `abbreviation` = 'GBMF', `org_type` = 2 WHERE `id` = 121;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Grand Valley State University (GVSU)', `abbreviation` = 'GVSU', `org_type` = 1 WHERE `id` = 111;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Griffith University', `abbreviation` = 'Griffith', `org_type` = 1 WHERE `id` = 194;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Gulf of Mexico Research Initiative (GoMRI)', `abbreviation` = 'GoMRI', `org_type` = 2 WHERE `id` = 125;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Harvard University', `abbreviation` = 'Harvard', `org_type` = 1 WHERE `id` = 108;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Harvey Mudd College (HMC)', `abbreviation` = 'HMC', `org_type` = 1 WHERE `id` = 187;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Humboldt State University (HSU)', `abbreviation` = 'HSU', `org_type` = 1 WHERE `id` = 37;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Indiana University (IU)', `abbreviation` = 'IU', `org_type` = 1 WHERE `id` = 52;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Institute of Education Sciences (US Dept of Education IES)', `abbreviation` = 'IES', `org_type` = 2 WHERE `id` = 126;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Institute of Museum and Library Services (IMLS)', `abbreviation` = 'IMLS', `org_type` = 2 WHERE `id` = 122;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Instituto Tecnologico de Costa Rica (TEC)', `abbreviation` = 'TEC', `org_type` = 1 WHERE `id` = 226;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Interdisciplinary Earth Data Alliance (IEDA)', `abbreviation` = 'IEDA', `org_type` = 3 WHERE `id` = 202;
UPDATE `roadmaptest`.`orgs` SET `name` = 'International Center for Agricultural Research in Dry Areas (ICARDA)', `abbreviation` = 'ICARDA', `org_type` = 3 WHERE `id` = 185;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Iowa State University', `abbreviation` = 'IA State', `org_type` = 1 WHERE `id` = 57;
UPDATE `roadmaptest`.`orgs` SET `name` = 'James Madison University (JMU)', `abbreviation` = 'JMU', `org_type` = 1 WHERE `id` = 44;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Johns Hopkins University (JHU)', `abbreviation` = 'JHU', `org_type` = 1 WHERE `id` = 33;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Joint Fire Science Program (JFSP)', `abbreviation` = 'JFSP', `org_type` = 2 WHERE `id` = 127;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Kansas State University (KSU)', `abbreviation` = 'KSU', `org_type` = 1 WHERE `id` = 143;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Kent State University', `abbreviation` = 'Kent State', `org_type` = 1 WHERE `id` = 182;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Lawrence Berkeley National Laboratory (LBL)', `abbreviation` = 'LBL', `org_type` = 1 WHERE `id` = 100;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Lawrence Livermore National Lab (LLNL)', `abbreviation` = 'LLNL', `org_type` = 1 WHERE `id` = 176;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Lehigh University', `abbreviation` = 'Lehigh', `org_type` = 1 WHERE `id` = 105;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Los Alamos National Laboratory (LANL)', `abbreviation` = 'LANL', `org_type` = 1 WHERE `id` = 151;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Louisiana State University (LSU)', `abbreviation` = 'LSU', `org_type` = 1 WHERE `id` = 140;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Marine Biological Laboratory (MBL)', `abbreviation` = 'MBL', `org_type` = 3 WHERE `id` = 154;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Massachusetts Institute of Technology (MIT)', `abbreviation` = 'MIT', `org_type` = 1 WHERE `id` = 190;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Mayo Clinic', `abbreviation` = 'Mayo', `org_type` = 3 WHERE `id` = 189;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Miami University ', `abbreviation` = 'miamioh', `org_type` = 1 WHERE `id` = 115;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Michigan State University (MSU)', `abbreviation` = 'MSU', `org_type` = 1 WHERE `id` = 24;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Mississippi State University', `abbreviation` = 'Mississippi State', `org_type` = 1 WHERE `id` = 158;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Missouri University of Science and Technology (MST)', `abbreviation` = 'MST', `org_type` = 1 WHERE `id` = 181;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Montana State University (MSU)', `abbreviation` = 'MSU', `org_type` = 1 WHERE `id` = 114;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Moss Landing Marine Laboratories (CSU MLML)', `abbreviation` = 'MLML', `org_type` = 3 WHERE `id` = 28;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Nanyang Technological University, Singapore (NTU)', `abbreviation` = 'NTU', `org_type` = 1 WHERE `id` = 155;
UPDATE `roadmaptest`.`orgs` SET `name` = 'National Aeronautics and Space Administration (NASA)', `abbreviation` = 'NASA', `org_type` = 2 WHERE `id` = 206;
UPDATE `roadmaptest`.`orgs` SET `name` = 'National Endowment for the Humanities (NEH)', `abbreviation` = 'NEH', `org_type` = 2 WHERE `id` = 120;
UPDATE `roadmaptest`.`orgs` SET `name` = 'National Institute of Justice (DOJ)', `abbreviation` = 'NIJ-DOJ', `org_type` = 2 WHERE `id` = 146;
UPDATE `roadmaptest`.`orgs` SET `name` = 'National Institutes of Health (NIH)', `abbreviation` = 'NIH', `org_type` = 2 WHERE `id` = 123;
UPDATE `roadmaptest`.`orgs` SET `name` = 'National Oceanic and Atmospheric Administration (NOAA)', `abbreviation` = 'NOAA', `org_type` = 2 WHERE `id` = 124;
UPDATE `roadmaptest`.`orgs` SET `name` = 'National Science Foundation (NSF)', `abbreviation` = 'NSF', `org_type` = 2 WHERE `id` = 119;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Natural Resources Institute Finland (LUKE)', `abbreviation` = 'LUKE', `org_type` = 3 WHERE `id` = 183;
UPDATE `roadmaptest`.`orgs` SET `name` = 'New York University (NYU)', `abbreviation` = 'NYU', `org_type` = 1 WHERE `id` = 78;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Non Partner Institution', `abbreviation` = 'Non-Partner', `org_type` = 1 WHERE `id` = 0;
UPDATE `roadmaptest`.`orgs` SET `name` = 'North Carolina State University (NCSU)', `abbreviation` = 'NCSU', `org_type` = 1 WHERE `id` = 32;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Northeast Ohio Medical University (NEOMED)', `abbreviation` = 'NEOMED', `org_type` = 1 WHERE `id` = 216;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Northeastern University (NEU)', `abbreviation` = 'NEU', `org_type` = 1 WHERE `id` = 38;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Northern Arizona University (NAU)', `abbreviation` = 'NAU', `org_type` = 1 WHERE `id` = 138;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Northwestern University (NU)', `abbreviation` = 'NU', `org_type` = 1 WHERE `id` = 22;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Oak Ridge National Laboratory (ORNL)', `abbreviation` = 'ORNL', `org_type` = 1 WHERE `id` = 148;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Oakland University', `abbreviation` = 'Oakland', `org_type` = 1 WHERE `id` = 212;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Ohio State University (OSU)', `abbreviation` = 'OSU', `org_type` = 1 WHERE `id` = 17;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Oklahoma State University', `abbreviation` = 'Okstate', `org_type` = 1 WHERE `id` = 92;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Old Dominion University (ODU)', `abbreviation` = 'ODU', `org_type` = 1 WHERE `id` = 36;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Oregon State University', `abbreviation` = 'Oregon State', `org_type` = 1 WHERE `id` = 55;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Partnerships for Enhanced Engagement in Research (PEER)', `abbreviation` = 'PEER', `org_type` = 3 WHERE `id` = 223;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Pennsylvania State University (PSU)', `abbreviation` = 'PSU', `org_type` = 1 WHERE `id` = 25;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Portland State University (PDX)', `abbreviation` = 'PDX', `org_type` = 1 WHERE `id` = 62;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Princeton University', `abbreviation` = 'Princeton', `org_type` = 1 WHERE `id` = 83;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Purdue University', `abbreviation` = 'Purdue', `org_type` = 1 WHERE `id` = 47;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Rice University', `abbreviation` = 'Rice', `org_type` = 1 WHERE `id` = 34;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Sam Houston State University (SHSU)', `abbreviation` = 'SHSU', `org_type` = 1 WHERE `id` = 215;
UPDATE `roadmaptest`.`orgs` SET `name` = 'San Diego State University (SDSU)', `abbreviation` = 'SDSU', `org_type` = 1 WHERE `id` = 168;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Smithsonian Institution (SI)', `abbreviation` = 'SI', `org_type` = 1 WHERE `id` = 4;
UPDATE `roadmaptest`.`orgs` SET `name` = 'South Dakota State University', `abbreviation` = 'SD State', `org_type` = 1 WHERE `id` = 211;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Stanford University', `abbreviation` = 'Stanford', `org_type` = 1 WHERE `id` = 71;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Stony Brook University', `abbreviation` = 'Stony Brook', `org_type` = 1 WHERE `id` = 90;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Swarthmore College', `abbreviation` = 'Swarthmore', `org_type` = 1 WHERE `id` = 217;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Syracuse University', `abbreviation` = 'Syracuse', `org_type` = 1 WHERE `id` = 75;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Temple University', `abbreviation` = 'Temple', `org_type` = 1 WHERE `id` = 88;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Texas A&M University (TAMU)', `abbreviation` = 'TAMU', `org_type` = 1 WHERE `id` = 50;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Texas A&M University, Corpus Christi (TAMUCC)', `abbreviation` = 'TAMUCC', `org_type` = 1 WHERE `id` = 171;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Texas State University-San Marcos (TSU-SM)', `abbreviation` = 'TSU-SM', `org_type` = 1 WHERE `id` = 53;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Texas Tech University (TTU)', `abbreviation` = 'TTU', `org_type` = 1 WHERE `id` = 117;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Tufts University', `abbreviation` = 'Tufts', `org_type` = 1 WHERE `id` = 192;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Tulane University', `abbreviation` = 'Tulane', `org_type` = 1 WHERE `id` = 58;
UPDATE `roadmaptest`.`orgs` SET `name` = 'U.S. Department of Agriculture (USDA)', `abbreviation` = 'USDA', `org_type` = 2 WHERE `id` = 170;
UPDATE `roadmaptest`.`orgs` SET `name` = 'U.S. Geological Survey (USGS)', `abbreviation` = 'USGS', `org_type` = 2 WHERE `id` = 139;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Los Angeles (UCLA)', `abbreviation` = 'UCLA', `org_type` = 1 WHERE `id` = 9;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University at Buffalo (UB)', `abbreviation` = 'UB', `org_type` = 1 WHERE `id` = 201;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University Corporation for Atmospheric Research (UCAR)', `abbreviation` = 'UCAR', `org_type` = 3 WHERE `id` = 191;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Alabama', `abbreviation` = 'Bama', `org_type` = 1 WHERE `id` = 72;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Alabama at Birmingham (UAB)', `abbreviation` = 'UAB', `org_type` = 1 WHERE `id` = 177;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Arizona', `abbreviation` = 'UAriz', `org_type` = 1 WHERE `id` = 35;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Berkeley (UCB)', `abbreviation` = 'UCB', `org_type` = 1 WHERE `id` = 6;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Davis (UCD)', `abbreviation` = 'UCD', `org_type` = 1 WHERE `id` = 7;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Irvine (UCI)', `abbreviation` = 'UCI', `org_type` = 1 WHERE `id` = 8;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Merced (UCM)', `abbreviation` = 'UCM', `org_type` = 1 WHERE `id` = 10;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Office of the President (UCOP)', `abbreviation` = 'UCOP', `org_type` = 1 WHERE `id` = 15;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Riverside (UCR)', `abbreviation` = 'UCR', `org_type` = 1 WHERE `id` = 11;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, San Diego (UCSD)', `abbreviation` = 'UCSD', `org_type` = 1 WHERE `id` = 3;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, San Francisco (UCSF)', `abbreviation` = 'UCSF', `org_type` = 1 WHERE `id` = 12;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Santa Barbara (UCSB)', `abbreviation` = 'UCSB', `org_type` = 1 WHERE `id` = 13;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of California, Santa Cruz (UCSC)', `abbreviation` = 'UCSC', `org_type` = 1 WHERE `id` = 14;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Central Florida (UCF)', `abbreviation` = 'UCF', `org_type` = 1 WHERE `id` = 112;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Chicago', `abbreviation` = 'UChicago', `org_type` = 1 WHERE `id` = 16;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Cincinnati Main Campus (UC)', `abbreviation` = 'UC', `org_type` = 1 WHERE `id` = 98;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Colorado Anschutz Medical Campus (CU Anschutz)', `abbreviation` = 'CU Anschutz', `org_type` = 1 WHERE `id` = 157;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Colorado Boulder (CU Boulder)', `abbreviation` = 'CU Boulder', `org_type` = 1 WHERE `id` = 85;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Colorado Denver (UC Denver)', `abbreviation` = 'UC Denver', `org_type` = 1 WHERE `id` = 229;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Connecticut (UConn)', `abbreviation` = 'UConn', `org_type` = 1 WHERE `id` = 94;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Dayton', `abbreviation` = 'UDayton', `org_type` = 1 WHERE `id` = 197;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Delaware (UDel)', `abbreviation` = 'UDel', `org_type` = 1 WHERE `id` = 116;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Denver (DU)', `abbreviation` = 'DU', `org_type` = 1 WHERE `id` = 213;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Florida', `abbreviation` = 'UFlorida', `org_type` = 1 WHERE `id` = 74;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Georgia (UGA)', `abbreviation` = 'UGA', `org_type` = 1 WHERE `id` = 152;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Hawaii', `abbreviation` = 'UHawaii', `org_type` = 1 WHERE `id` = 59;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Helsinki, Finland', `abbreviation` = 'Helsinki', `org_type` = 1 WHERE `id` = 175;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Houston (UHL)', `abbreviation` = 'UHL', `org_type` = 1 WHERE `id` = 103;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Idaho', `abbreviation` = 'UIdaho', `org_type` = 1 WHERE `id` = 43;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Illinois at Chicago (UIC)', `abbreviation` = 'UIC', `org_type` = 1 WHERE `id` = 26;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Illinois at Urbana-Champaign (UIUC)', `abbreviation` = 'UIUC', `org_type` = 1 WHERE `id` = 5;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Iowa', `abbreviation` = 'Iowa', `org_type` = 1 WHERE `id` = 21;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Kansas (KU)', `abbreviation` = 'KU', `org_type` = 1 WHERE `id` = 95;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Kentucky (UK)', `abbreviation` = 'UK', `org_type` = 1 WHERE `id` = 60;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Maine System (UMS)', `abbreviation` = 'UMS', `org_type` = 1 WHERE `id` = 99;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Mary Washington (UMW)', `abbreviation` = 'UMW', `org_type` = 1 WHERE `id` = 188;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Maryland, College Park (UMD)', `abbreviation` = 'UMD', `org_type` = 1 WHERE `id` = 184;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Massachusetts Amherst (UMass Amherst)', `abbreviation` = 'UMass Amherst', `org_type` = 1 WHERE `id` = 166;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Massachusetts Dartmouth (UMass Dartmouth)', `abbreviation` = 'UMass Dartmouth', `org_type` = 1 WHERE `id` = 159;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Massachusetts Medical School (UMMS)', `abbreviation` = 'UMMS', `org_type` = 1 WHERE `id` = 200;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Miami', `abbreviation` = 'UMiami', `org_type` = 1 WHERE `id` = 40;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Michigan', `abbreviation` = 'UMich', `org_type` = 1 WHERE `id` = 18;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Minnesota (UMN)', `abbreviation` = 'UMN', `org_type` = 1 WHERE `id` = 63;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Mississippi', `abbreviation` = 'Ole Miss', `org_type` = 1 WHERE `id` = 218;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Nebraska-Lincoln (UNL)', `abbreviation` = 'UNL', `org_type` = 1 WHERE `id` = 19;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Nevada, Las Vegas (UNLV)', `abbreviation` = 'UNLV', `org_type` = 1 WHERE `id` = 193;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Nevada, Reno (UNR)', `abbreviation` = 'UNR', `org_type` = 1 WHERE `id` = 222;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of New Mexico (UNM)', `abbreviation` = 'UNM', `org_type` = 1 WHERE `id` = 48;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of New Orleans (UNO)', `abbreviation` = 'UNO', `org_type` = 1 WHERE `id` = 76;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of North Carolina-Chapel Hill (UNC-CH)', `abbreviation` = 'UNC-CH', `org_type` = 1 WHERE `id` = 23;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of North Carolina-Charlotte (UNCC)', `abbreviation` = 'UNCC', `org_type` = 1 WHERE `id` = 196;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of North Texas (UNT)', `abbreviation` = 'UNT', `org_type` = 1 WHERE `id` = 65;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Notre Dame (UND)', `abbreviation` = 'UND', `org_type` = 1 WHERE `id` = 46;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Oklahoma (OU)', `abbreviation` = 'OU', `org_type` = 1 WHERE `id` = 153;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Pennsylvania (UPenn)', `abbreviation` = 'UPenn', `org_type` = 1 WHERE `id` = 110;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Pittsburgh (Pitt)', `abbreviation` = 'Pitt', `org_type` = 1 WHERE `id` = 167;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Puerto Rico in Mayaguez (UPRM)', `abbreviation` = 'UPRM', `org_type` = 1 WHERE `id` = 198;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Rhode Island (URI)', `abbreviation` = 'URI', `org_type` = 1 WHERE `id` = 203;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Rochester (UR)', `abbreviation` = 'UR', `org_type` = 1 WHERE `id` = 79;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of South Carolina (USC)', `abbreviation` = 'USC', `org_type` = 1 WHERE `id` = 208;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Tennessee', `abbreviation` = 'UT Libraries', `org_type` = 1 WHERE `id` = 91;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Texas at Arlington (UTA)', `abbreviation` = 'UTA', `org_type` = 1 WHERE `id` = 101;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Texas at Austin (UTA)', `abbreviation` = 'UTA', `org_type` = 1 WHERE `id` = 31;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Texas at Dallas (UT Dallas)', `abbreviation` = 'UT Dallas', `org_type` = 1 WHERE `id` = 228;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Texas at San Antonio (UTSA)', `abbreviation` = 'UTSA', `org_type` = 1 WHERE `id` = 160;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Utah', `abbreviation` = 'U Utah', `org_type` = 1 WHERE `id` = 66;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Virginia (UVa)', `abbreviation` = 'UVa', `org_type` = 1 WHERE `id` = 2;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Washington (UW)', `abbreviation` = 'UW', `org_type` = 1 WHERE `id` = 73;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Wisconsin-Madison', `abbreviation` = 'Wisc', `org_type` = 1 WHERE `id` = 51;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Wisconsin-Milwaukee (UWM)', `abbreviation` = 'UWM', `org_type` = 1 WHERE `id` = 64;
UPDATE `roadmaptest`.`orgs` SET `name` = 'University of Wyoming (UWYO)', `abbreviation` = 'UWYO', `org_type` = 1 WHERE `id` = 179;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Upstate Medical University', `abbreviation` = 'Upstate', `org_type` = 1 WHERE `id` = 220;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Utah State University (USU)', `abbreviation` = 'USU', `org_type` = 1 WHERE `id` = 96;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Vanderbilt University', `abbreviation` = 'Vanderbilt', `org_type` = 1 WHERE `id` = 164;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Virginia Commonwealth University (VCU)', `abbreviation` = 'VCU', `org_type` = 1 WHERE `id` = 81;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Virginia Tech (VT)', `abbreviation` = 'VT', `org_type` = 1 WHERE `id` = 70;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Washington State University (WSU)', `abbreviation` = 'WSU', `org_type` = 1 WHERE `id` = 80;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Washington University in St. Louis (WUSTL)', `abbreviation` = 'WUSTL', `org_type` = 1 WHERE `id` = 82;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Wayne State University', `abbreviation` = 'Wayne State', `org_type` = 1 WHERE `id` = 150;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Weill Cornell Medical College', `abbreviation` = 'Weill Cornell', `org_type` = 1 WHERE `id` = 86;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Western Carolina University (WCU)', `abbreviation` = 'WCU', `org_type` = 1 WHERE `id` = 178;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Western Michigan University', `abbreviation` = 'WMich', `org_type` = 1 WHERE `id` = 227;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Woods Hole Oceanographic Institution (WHOI)', `abbreviation` = 'WHOI', `org_type` = 1 WHERE `id` = 142;
UPDATE `roadmaptest`.`orgs` SET `name` = 'Yale University', `abbreviation` = 'Yale', `org_type` = 1 WHERE `id` = 39;

-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************
TRUNCATE TABLE `roadmaptest`.`themes_in_guidance`;

-- Seed the default DCC/UC3 themed guidance
SET @group = (SELECT `id` FROM `roadmaptest`.`guidance_groups` where `org_id` = 207);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data description');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Give a summary of the data you will collect or create, noting the content, coverage and data type, e.g., tabular data, survey data, experimental measurements, models, software, audiovisual data, physical samples, etc.</li><li>Consider how your data could complement and integrate with existing data, or whether there are any existing data or methods that you could reuse.</li><li>Indicate which data are of long-term value and should be shared and/or preserved.</li><li>If purchasing or reusing existing data, explain how issues such as copyright and IPR have been addressed. You should aim to minimise any restrictions on the reuse (and subsequent sharing) of third-party data.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data format');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Clearly note what format(s) your data will be in, e.g., plain text (.txt), comma-separated values (.csv), geo-referenced TIFF (.tif, .tfw).</li><li>Explain why you have chosen certain formats. Decisions may be based on staff expertise, a preference for open formats, the standards accepted by data centres or widespread usage within a given community.</li><li>Using standardised, interchangeable or open formats ensures the long-term usability of data; these are recommended for sharing and archiving.</li><li>See UK Data Service guidance on <a href="https://www.ukdataservice.ac.uk/manage-data/format/recommended-formats">recommended formats</a> or DataONE Best Practices for <a href="https://www.dataone.org/best-practices/document-and-store-data-using-stable-file-formats">file formats</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data volume');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Note what volume of data you will create in MB/GB/TB. Indicate the proportions of raw data, processed data, and other secondary outputs (e.g., reports).</li><li>Consider the implications of data volumes in terms of storage, access and preservation. Do you need to include additional costs?</li><li>Consider whether the scale of the data will pose challenges when sharing or transferring data between sites; if so, how will you address these challenges?</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data collection');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Outline how the data will be collected and processed. This should cover relevant standards or methods, quality assurance and data organisation.</li><li>Indicate how the data will be organised during the project, mentioning, e.g., naming conventions, version control and folder structures. Consistent, well-ordered research data will be easier to find, understand and reuse.</li><li>Explain how the consistency and quality of data collection will be controlled and documented. This may include processes such as calibration, repeat samples or measurements, standardised data capture, data entry validation, peer review of data or representation with controlled vocabularies.</li><li>See the DataOne Best Practices for <a href="https://www.dataone.org/best-practices/quality">data quality</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Metadata & documentation');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>What metadata will be provided to help others identify and discover the data?</li><li>Researchers are strongly encouraged to use community metadata standards where these are in place. The Research Data Alliance offers a <a href="http://rd-alliance.github.io/metadata-directory/">Directory of Metadata Standards</a>. Data repositories may also provide guidance about appropriate metadata standards.</li><li>Consider what other documentation is needed to enable reuse. This may include information on the methodology used to collect the data, analytical and procedural information, definitions of variables, units of measurement, any assumptions made, the format and file type of the data and software used to collect and/or process the data.</li><li>Consider how you will capture this information and where it will be recorded, e.g., in a database with links to each item, in a ‘readme’ text file, in file headers, etc.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Ethics & privacy');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Investigators carrying out research involving human participants should request consent to preserve and share the data. Do not just ask for permission to use the data in your study or make unnecessary promises to delete it at the end.</li><li>Consider how you will protect the identity of participants, e.g., via anonymisation or using managed access procedures.</li><li>Ethical issues may affect how you store and transfer data, who can see/use it and how long it is kept. You should demonstrate that you are aware of this and have planned accordingly.</li><li>See UK Data Service guidance on <a href="https://www.ukdataservice.ac.uk/manage-data/legal-ethical/consent-data-sharing">consent for data sharing</a>.</li><li>See <a href="http://www.icpsr.umich.edu/icpsrweb/content/datamanagement/confidentiality/index.html">ICPSR approach to confidentiality</a> and Health Insurance Portability and Accountability Act <a href="https://privacyruleandresearch.nih.gov/">(HIPAA) regulations for health research</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Intellectual property rights');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>State who will own the copyright and IPR of any existing data as well as new data that you will generate. For multi-partner projects, IPR ownership should be covered in the consortium agreement.</li><li>Outline any restrictions needed on data sharing, e.g., to protect proprietary or patentable data.</li><li>Explain how the data will be licensed for reuse. See the DCC guide on <a href="http://www.dcc.ac.uk/resources/how-guides/license-research-data">How to license research data</a> and EUDAT’s <a href="https://ufal.github.io/public-license-selector/">data and software licensing wizard</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Storage & security');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Describe where the data will be stored and backed up during the course of research activities. This may vary if you are doing fieldwork or working across multiple sites so explain each procedure.</li><li>Identify who will be responsible for backup and how often this will be performed. The use of robust, managed storage with automatic backup, for example, that provided by university IT teams, is preferable. Storing data on laptops, computer hard drives or external storage devices alone is very risky.</li><li>See UK Data Service Guidance on <a href="https://www.ukdataservice.ac.uk/manage-data/store">data storage</a> or DataONE Best Practices for <a href="https://www.dataone.org/best-practices/storage">storage</a>.</li><li>Also consider data security, particularly if your data is sensitive e.g., detailed personal data, politically sensitive information or trade secrets. Note the main risks and how these will be managed. Also note whether any institutional data security policies are in place.</li><li>Identify any formal standards that you will comply with, e.g., <a href="http://www.dcc.ac.uk/resources/briefing-papers/standards-watch-papers/information-security-management-iso-27000-iso-27k-s">ISO 27001</a>. See the DCC Briefing Paper on Information Security Management - ISO 27000 and UK Data Service guidance on <a href="https://www.ukdataservice.ac.uk/manage-data/store/security">data security</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data sharing');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>How will you share the data e.g. deposit in a data repository, use a secure data service, handle data requests directly or use another mechanism? The methods used will depend on a number of factors such as the type, size, complexity and sensitivity of the data.</li><li>When will you make the data available? Research funders expect timely release. They typically allow embargoes but not prolonged exclusive use.</li><li>Who will be able to use your data? If you need to restrict access to certain communities or apply data sharing agreements, explain why.</li><li>Consider strategies to minimise restrictions on sharing. These may include anonymising or aggregating data, gaining participant consent for data sharing, gaining copyright permissions, and agreeing a limited embargo period.</li><li>How might your data be reused in other contexts? Where there is potential for reuse, you should use standards and formats that facilitate this, and ensure that appropriate metadata is available online so your data can be discovered. Persistent identifiers should be applied so people can reliably and efficiently find your data. They also help you to track citations and reuse.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data repository');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Where will the data be deposited? If you do not propose to use an established repository, the data management plan should demonstrate that the data can be curated effectively beyond the lifetime of the grant.</li><li>It helps to show that you have consulted with the repository to understand their policies and procedures, including any metadata standards, and costs involved.</li><li>An international list of data repositories is available via <a href="http://www.re3data.org/">re3data</a> and some universities or publishers provide lists of recommendations e.g., <a href="http://journals.plos.org/plosone/s/data-availability#loc-recommended-repositories">PLOS ONE recommended repositories</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Preservation');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Outline the plans for data sharing and preservation - how long will the data be retained and where will it be archived? Will additional resources be needed to prepare data for deposit or meet any charges from data repositories?</li><li>See the DCC guide: <a href="http://www.dcc.ac.uk/resources/how-guides/appraise-select-data">How to appraise and select research data for curation</a> or DataONE Best Practices: <a href="https://www.dataone.org/best-practices/identify-data-long-term-value">Identifying data with long-term value</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Roles & responsibilities');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Outline the roles and responsibilities for all activities, e.g., data capture, metadata production, data quality, storage and backup, data archiving & data sharing. Individuals should be named where possible.</li><li>For collaborative projects you should explain the coordination of data management responsibilities across partners.</li><li>See UK Data Service guidance on <a href="https://www.ukdataservice.ac.uk/manage-data/plan/roles-and-responsibilities">data management roles and responsibilities</a> or DataONE Best Practices: <a href="https://www.dataone.org/best-practices/define-roles-and-assign-responsibilities-data-management">Define roles and assign responsibilities for data management</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Budget');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Carefully consider and justify any resources needed to deliver the plan. These may include storage costs, hardware, staff time, costs of preparing data for deposit and repository charges.</li><li>Outline any relevant technical expertise, support and training that is likely to be required and how it will be acquired.</li><li>If you are not depositing in a data repository, ensure you have appropriate resources and systems in place to share and preserve the data. See UK Data Service guidance on <a href="https://www.ukdataservice.ac.uk/manage-data/plan/costing">costing data management</a>.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

SET @theme = (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Related policies');
INSERT INTO `roadmaptest`.`guidances` (`guidance_group_id`, `text`, `published`, `created_at`, `updated_at`) 
VALUES (@group, 
'<p><ul><li>Consider whether there are any existing procedures that you can base your approach on. If your group/department has local guidelines that you work to, point to them here.</li><li>List any other relevant funder, institutional, departmental or group policies on data management, data sharing and data security.</li></ul></p>'
, 1, CURDATE(), CURDATE());
SET @found = (SELECT COUNT(`theme_id`) FROM `roadmaptest`.`themes_in_guidance` WHERE `theme_id` = @theme AND `guidance_id` = LAST_INSERT_ID());
INSERT INTO `roadmaptest`.`themes_in_guidance` (`theme_id`, `guidance_id`) (SELECT @theme, LAST_INSERT_ID() FROM DUAL WHERE @found = 0);

-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************

-- Auto-theme guidance based on keywords
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data format')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '%data format%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data volume')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% volume%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data collection')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% collection%'
  OR LCASE(`text`) LIKE '% gather%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Metadata & documentation')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% metadata%'
  OR LCASE(`text`) LIKE '% documentation%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Ethics & privacy')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% ethic%'
  OR LCASE(`text`) LIKE '% privacy%'
  OR LCASE(`text`) LIKE '% hippa%'
  OR LCASE(`text`) LIKE '% sensitiv%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Intellectual property rights')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% rights%'
  OR LCASE(`text`) LIKE '% copyright%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Storage & security')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% storage%'
  OR LCASE(`text`) LIKE '% security%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Data sharing')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% sharing%'
  OR LCASE(`text`) LIKE '%public access%'
  OR LCASE(`text`) LIKE '% publish%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Data repository')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% repositor%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Preservation')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% preserv%'
  OR LCASE(`text`) LIKE '% archiv%'
  OR LCASE(`text`) LIKE '% long-term%'
  OR LCASE(`text`) LIKE '% long term%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Roles & responsibilities')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% role%'
  OR LCASE(`text`) LIKE '% responsibilit%'
);
INSERT INTO `roadmaptest`.`themes_in_guidance` (`guidance_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Budget')
  FROM `roadmaptest`.`guidances` 
  WHERE LCASE(`text`) LIKE '% buget%'
);


-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************

-- Auto-theme questions based on keywords
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data format')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '%data format%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data volume')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% volume%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE `title` = 'Data collection')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% collection%'
  OR LCASE(`text`) LIKE '% gather%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Metadata & documentation')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% metadata%'
  OR LCASE(`text`) LIKE '% documentation%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Ethics & privacy')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% ethic%'
  OR LCASE(`text`) LIKE '% privacy%'
  OR LCASE(`text`) LIKE '% hippa%'
  OR LCASE(`text`) LIKE '% sensitiv%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Intellectual property rights')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% rights%'
  OR LCASE(`text`) LIKE '% copyright%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Storage & security')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% storage%'
  OR LCASE(`text`) LIKE '% security%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Data sharing')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% sharing%'
  OR LCASE(`text`) LIKE '%public access%'
  OR LCASE(`text`) LIKE '% publish%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Data repository')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% repositor%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Preservation')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% preserv%'
  OR LCASE(`text`) LIKE '% archiv%'
  OR LCASE(`text`) LIKE '% long-term%'
  OR LCASE(`text`) LIKE '% long term%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Roles & responsibilities')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% role%'
  OR LCASE(`text`) LIKE '% responsibilit%'
);
INSERT INTO `roadmaptest`.`questions_themes` (`question_id`, `theme_id`) (
  SELECT `id`, 
    (SELECT `id` FROM `roadmaptest`.`themes` WHERE title = 'Budget')
  FROM `roadmaptest`.`questions` 
  WHERE LCASE(`text`) LIKE '% buget%'
);

-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************

-- Attach Each plan to the DCC/UC3 default guidance group and the insitution's guidance group (Exclude 'Non-Partner Institution')
INSERT INTO `roadmaptest`.`plans_guidance_groups` (`plan_id`, `guidance_group_id`) 
(SELECT DISTINCT `plans`.`id`, `guidance_groups`.`id`
 FROM `roadmaptest`.`plans`
 INNER JOIN `roadmaptest`.`roles` ON `plans`.`id` = `roles`.`plan_id`
 INNER JOIN `roadmaptest`.`users` ON `roles`.`user_id` = `users`.`id`
 INNER JOIN `roadmaptest`.`guidance_groups` ON `users`.`org_id` = `guidance_groups`.`org_id`
 WHERE `users`.`org_id` > 0
);

-- Attach the default DCC/UC3 guidance to each plan by default
SET @dcc_gg = (SELECT `guidance_groups`.`id` FROM `roadmaptest`.`guidance_groups` INNER JOIN `roadmaptest`.`orgs` ON `guidance_groups`.`org_id` = `orgs`.`id` WHERE `abbreviation` = 'DCC');
INSERT INTO `roadmaptest`.`plans_guidance_groups` (`plan_id`, `guidance_group_id`) 
(SELECT DISTINCT `plans`.`id`, @dcc_gg
 FROM `roadmaptest`.`plans`);

-- ******************************************************************************
-- ******************************************************************************
-- ******************************************************************************

-- Insert all of the schema migrations so that they do not try to run during the next deploy!
TRUNCATE TABLE `roadmaptest`.`schema_migrations`;

## SCHEMA MIGRATIONS AS OF DMP2-STAGE DB
INSERT INTO `schema_migrations` (`version`)
VALUES
	(''),
	('20130603140800'),
	('20130603143109'),
	('20130611111340'),
	('20130611111359'),
	('20130611113325'),
	('20130611132258'),
	('20130611133033'),
	('20130611135155'),
	('20130611135806'),
	('20130611140229'),
	('20130611141026'),
	('20130611151644'),
	('20130611151704'),
	('20130611151729'),
	('20130611151750'),
	('20130611152208'),
	('20130611153828'),
	('20130611153921'),
	('20130611154055'),
	('20130611154109'),
	('20130612113321'),
	('20130612133806'),
	('20130612133938'),
	('20130621101824'),
	('20130625125419'),
	('20130705113828'),
	('20130705145146'),
	('20130705151214'),
	('20130708092900'),
	('20130717093801'),
	('20130717093814'),
	('20130717115239'),
	('20130717125231'),
	('20130717125748'),
	('20130717130107'),
	('20130724112909'),
	('20130724123043'),
	('20130730102219'),
	('20130731124011'),
	('20130731124532'),
	('20130731130811'),
	('20130731131354'),
	('20130731131846'),
	('20130731132153'),
	('20130731133039'),
	('20130812100100'),
	('20130902141025'),
	('20130902141150'),
	('20130902142403'),
	('20130903072531'),
	('20130903084409'),
	('20130903123015'),
	('20130905073232'),
	('20130913134657'),
	('20130913161023'),
	('20130918130838'),
	('20130918154825'),
	('20130926121718'),
	('20130927091932'),
	('20130927092206'),
	('20131108151505'),
	('20131111090129'),
	('20131118094629'),
	('20131126133804'),
	('20131126135301'),
	('20131127100520'),
	('20131128150644'),
	('20131129143550'),
	('20131212111049'),
	('20140210121753'),
	('20140214120652'),
	('20140214155629'),
	('20140218113637'),
	('20140331160554'),
	('20140331162130'),
	('20140407105254'),
	('20140407153318'),
	('20140423200913'),
	('20140429114226'),
	('20140604092907'),
	('20140707143840'),
	('20150415150436'),
	('20150416092404'),
	('20150416101954'),
	('20150416103652'),
	('20150416105712'),
	('20150416112327'),
	('20150416113232'),
	('20150416113625'),
	('20150416114743'),
	('20150416120233'),
	('20150416131657'),
	('20150416133602'),
	('20150427110644'),
	('20150427145433'),
	('20150430135839'),
	('20150501150321'),
	('20150518153927'),
	('20150805105542'),
	('20150809210811'),
	('20151208142029'),
	('20151208142836'),
	('20160105114044'),
	('20160603124621'),
	('20160609081745'),
	('20160615095101'),
	('20160719102542'),
	('20160719140055'),
	('20160729091510'),
	('20160805101216'),
	('20160805103704'),
	('20160805103912'),
	('20160805105928'),
	('20160805105941'),
	('20160810193149'),
	('20160822130601'),
	('20160822130701'),
	('20161021100420'),
	('20161024163546'),
	('20161024163920'),
	('20161102221313'),
	('20161115105808'),
	('20161115114309'),
	('20161115121831'),
	('20161115123658'),
	('20161115124634'),
	('20161115132137'),
	('20161115143222'),
	('20161122152339'),
	('20161205095623'),
	('20161205095624'),
	('20161205095625'),
	('20161206122926'),
	('20161208122123'),
	('20170124235829'),
	('20170130173049'),
	('20170201194502'),
	('20170227122226'),
	('20170302111544'),
	('20170303220255'),
	('20170412143945'),
	('20170421170849'),
	('20170427110141'),
	('20170428083711'),
	('20170516184429'),
	('20170606215136'),
	('20170607154433'),
	('20170619173045'),
	('20170702012742'),
	('20170710182442'),
	('20170712084314'),
	('20170719114516'),
	('20171013152425'),
	('20171024214257'),
	('20171024220146'),
	('20171025200301'),
	('20171102164156'),
	('20171102185518'),
	('20171122195828'),
	('20171124133802'),
	('20171130195230'),
	('20180123161959'),
	('20180126210659'),
	('20180131181949'),
	('20180212124444');


##NEW SCHEMA MIGRATIONS FORM DMPTOOL PRODUCTION
INSERT INTO `schema_migrations` (`version`)
VALUES
	('20130520225000'),
	('20130521210544'),
	('20130521214328'),
	('20130521222723'),
	('20130521230520'),
	('20130522210011'),
	('20130522212903'),
	('20130522214609'),
	('20130522215808'),
	('20130522220525'),
	('20130522222113'),
	('20130522223908'),
	('20130522231822'),
	('20130524172821'),
	('20130524183609'),
	('20130524212856'),
	('20130528174232'),
	('20130528220209'),
	('20130528230037'),
	('20130528232150'),
	('20130606202308'),
	('20130725190003'),
	('20130725190156'),
	('20130725190320'),
	('20130829211817'),
	('20130829212950'),
	('20130904141459'),
	('20130916023157'),
	('20130916030208'),
	('20130916174701'),
	('20130927230618'),
	('20130927230744'),
	('20130927231128'),
	('20131018223029'),
	('20131022190255'),
	('20131023175718'),
	('20131025024323'),
	('20131025100451'),
	('20131025100957'),
	('20131028072115'),
	('20131028075853'),
	('20131031174839'),
	('20131106224027'),
	('20131112185027'),
	('20131114000149'),
	('20140109190401'),
	('20140109195002'),
	('20140109195750'),
	('20140110192327'),
	('20140122192429'),
	('20140122193750'),
	('20140122193925'),
	('20140122210810'),
	('20140123010621'),
	('20140130001956'),
	('20140130003752'),
	('20140130004003'),
	('20140130004124'),
	('20140130010525'),
	('20140130213130'),
	('20140130232451'),
	('20140204195127'),
	('20140206225417'),
	('20140207062910'),
	('20140210194003'),
	('20140221005131'),
	('20140228221118'),
	('20140307104348'),
	('20140311185612'),
	('20140311185831'),
	('20140311185957'),
	('20140311190444'),
	('20140311193553'),
	('20140311193933'),
	('20140311221831'),
	('20140312212258'),
	('20140402224254'),
	('20140403204948'),
	('20140922213555'),
	('20140929210607'),
	('20150204185430'),
	('20151214170435'),
	('20160801082200'),
	('20160913112300'),
	('20161118170249'),
	('20161118170756'),
	('20161118171513');
