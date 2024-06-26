BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


INSERT INTO designations (designation_name) VALUES ('Attraction');
INSERT INTO designations (designation_name) VALUES ('Church');
INSERT INTO designations (designation_name) VALUES ('Food');
INSERT INTO designations (designation_name) VALUES ('Historic Site');
INSERT INTO designations (designation_name) VALUES ('Hotel');
INSERT INTO designations (designation_name) VALUES ('Kid-Friendly');
INSERT INTO designations (designation_name) VALUES ('Museum');
INSERT INTO designations (designation_name) VALUES ('Other');
INSERT INTO designations (designation_name) VALUES ('Park');
INSERT INTO designations (designation_name) VALUES ('Scenic Viewpoint');
INSERT INTO designations (designation_name) VALUES ('Sporting Venue');
INSERT INTO designations (designation_name) VALUES ('Starting Point');


INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Randyland', '1501 Arch St, Pittsburgh, PA 15212', 'ChIJAS-KzAn0NIgRPWwtdsC6vBw');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('The Mattress Factory', '509 Jacksonia St, Pittsburgh, PA 15212', 'ChIJTfpr7Qj0NIgRdO4BjOIRB0c');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('The Andy Warhol Museum', '117 Sandusky St, Pittsburgh, PA 15212', 'ChIJq6qqqofxNIgRMCSmPhfoAcs');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Phipps Conservatory and Botanical Gardens', '1 Schenley Drive, Pittsburgh, PA 15213', 'ChIJBZlC-InxNIgRDUaGB-UvoSg');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('The Frick Pittsburgh', '7227 Reynolds St, Pittsburgh, PA 15208', 'ChIJA_tYsujtNIgRsrxn4vaPuvc');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('The Cafe at the Frick', '7227 Reynolds St, Pittsburgh, PA 15208', 'ChIJXRrgsujtNIgRWwtHCcC6TG0');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Point State Park', '601 Commonwealth Pl, Pittsburgh, PA 15222', 'ChIJjbGBQav2NIgRoARMOwbkqD4');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Mellon Park', '1047 Shady Ave, Pittsburgh, PA 15232', 'ChIJG7npSPTtNIgRiSMbNqoVL_k');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Primanti Bros. Restaurant and Bar', '2 Market Square 5th Floor, Pittsburgh, PA 15222', 'ChIJsW0CpVbxNIgRtyWHiG9FaQU');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Rivers of Steel: Carrie Blast Furnaces National Historic Landmark', '801 Carrie Furnace Blvd Pittsburgh, PA 15218', 'ChIJoeKbJELuNIgR6yWjDwhhvig');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Taiwan Bistro Cafe 33', 'Shady Avenue, Pittsburgh, PA', 'ChIJR0IGCADyNIgRvOjy0MNoRTs');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Heinz History Center', '1212 Smallman St, Pittsburgh, PA 15222, USA', 'ChIJr7aBzePzNIgRi2Dp2ZCFmUY');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Strip District', 'Strip District, Pittsburgh, PA, USA', 'ChIJQ2RbcMPzNIgR9OCH7CVz4SU');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Carnegie Science Center', '1 Allegheny Ave, Pittsburgh, PA 15212, USA', 'ChIJq6qqqofxNIgR-D-Y_7LMQ9s');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Apteka', '4606 Penn Ave, Pittsburgh, PA 15224', 'ChIJ9Q1kJUTyNIgRuvW9f60WFmI');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('The Winter Mausoleum', 'F392+CF, Pittsburgh, PA 15224', 'ChIJCVydYCjzNIgRffVi4RuaDw8');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Blue Slide Park', 'Frick Park, Pittsburgh, PA 15217', 'ChIJV6mZjwPuNIgRETBGfJauqbw');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Chantal''s Cheese Shop', '4402 Penn Ave, Pittsburgh, PA 15224', 'ChIJlepuUU_yNIgRZe79mvIk-8E');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Five Points Artisan Bakeshop', '6520 Wilkins Ave, Pittsburgh, PA 15217', 'ChIJn21B-fjtNIgRc2nzp7hkO54');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Georgie''s Corner Cafe', '5743 Walnut St, Pittsburgh, PA 15232', 'ChIJuU5oSfPzNIgR2eIe1Wrfjzw');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Page''s Dairy Mart', '4112 E Carson St, Pittsburgh, PA 15210', 'ChIJhzfBnaXxNIgRst084Ew3i7E');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Novo Asian Food Hall', '1931 Smallman St, Pittsburgh, PA 15222', 'ChIJxTA1HUbzNIgRO8FSP4Q1wAA');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Morcilla', '3519 Butler St, Pittsburgh, PA 15201', 'ChIJ4SrQ-rTzNIgRBCWal8EzERk');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Umami Izakaya', '202 38th St, Pittsburgh, PA 15201', 'ChIJbTN0U7PzNIgRbg-WVM1LlSU');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Sandcastle Water Park', '1000 Sandcastle Dr, West Homestead, PA 15120', 'ChIJvXb7Zy3wNIgRREjDzpVTtPE');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Children''s Museum', '10 Children''s Way, Pittsburgh, PA 15212', 'ChIJKSw4X_jzNIgRdqmTZBPZFso');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Soldiers & Sailors Memorial Hall & Museum', '4141 Fifth Ave 3rd Floor, Pittsburgh, PA 15213', 'ChIJtXxIMCnyNIgRGFR6_AYkEnM');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('West End Overlook Park', 'Marlow St, Pittsburgh, PA 15205', 'ChIJx1nHvyD0NIgRx4hReBjWcoM');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Pittsburgh Glass Center', '5472 Penn Ave, Pittsburgh, PA 15206', 'ChIJleNoe27yNIgRxlN_hp_msbM');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('National Aviary', '700 Arch St, Pittsburgh, PA 15212, USA', 'ChIJW77IvAf0NIgRC6dk0e502kY');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Bicycle Heaven', '1800 Preble Ave, Pittsburgh, PA 15233, USA', 'ChIJeU6jvSL0NIgRmXGevQ1pUjA');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Moonshot Museum', '1016 N Lincoln Ave, Pittsburgh, PA 15233, USA', 'ChIJwQrhvND1NIgRIaX5YUSGR3A');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('PPG Paints Arena', '1001 Fifth Ave, Pittsburgh, PA 15219, USA', 'ChIJq6qqjl7xNIgR_sVp8tsfGxw');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Karpeles Manuscript Library Museum', '3021 Landis St, Pittsburgh, PA 15204, USA', 'ChIJhWY56ib1NIgRGshb9-_oSfI');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Grandview Overlook', '136-160 Grandview Ave, Pittsburgh, PA 15211, USA', 'ChIJZQMgFq72NIgRGOvv7lfJj9c');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Monongahela Incline at Lower Station', 'Pittsburgh, PA 15203, USA', 'ChIJTWXOtk3xNIgR73Xgf27KHbw');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Highmark Stadium', '510 W Station Square Dr, Pittsburgh, PA 15219, USA', 'ChIJxfpVFK32NIgRbDCjtotd7Bg');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Gateway Clipper Fleet', '350 W Station Square Dr, Pittsburgh, PA 15219, USA', 'ChIJK8bAfE3xNIgRsskapCjbvdI');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Fort Duquesne', '3 Rivers Heritage Trail System, Downtown, Pittsburgh, PA 15222, USA', 'ChIJK-5zDav2NIgRIcF8p9lpnIs');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Fort Pitt Museum', 'Point State Park, 601 Commonwealth Pl, Pittsburgh, PA 15222, USA', 'ChIJuwu6IVXxNIgRa1BuX7bHZ1Q');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Grand Concourse', '100 W Station Square Dr, Pittsburgh, PA 15219, USA', 'ChIJK0Gg3U3xNIgR91MmvokkqIE');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Museum of Illusions Pittsburgh', '267 N Shore Dr, Pittsburgh, PA 15212, USA', 'ChIJkUgwC_31NIgRZ1le8bPwAig');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Fred "Mister Rogers" Memorial', 'Three Rivers Heritage Trail, Pittsburgh, PA 15212, USA', 'ChIJz1p1Wbb3NIgRVs_QRjlrCxY');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Water Steps', 'Water Steps, Pittsburgh, PA 15212, USA', 'ChIJb9xq9P_zNIgRHHEO3HwSB3Y');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Carnegie Museum of Natural History', '4400 Forbes Ave, Pittsburgh, PA 15213, USA', 'ChIJwRKe38LzNIgRqMb7UcsjkSI');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Carnegie Museum of Art', '4400 Forbes Ave, Pittsburgh, PA 15213, USA', 'ChIJMfTiXCbyNIgRdvqfBv4hy2M');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Pittsburgh Zoo & Aquarium', '7370 Baker St, Pittsburgh, PA 15206, USA', 'ChIJQWwT8oLyNIgRQJ7eRRxugRs');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Federal Galley', '200 Children''s Way, Pittsburgh, PA 15212, USA', 'ChIJZapX9vjzNIgRSu7rbfVfChA');
INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Allegheny Cemetery', '4734 Butler St., Pittsburgh, PA 15201', 'ChIJ3WER90PyNIgR52OGokXT6ZA');

INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Kimpton Hotel Monaco Pittsburgh', '620 William Penn Pl, Pittsburgh, PA 15219, USA', 'ChIJlbtRylnxNIgRitsCzVjBaAg');



--INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('Monroeville Mall', '200 Mall Cir Dr, Monroeville, PA 15146', 'ChIJQ5dyb9nrNIgRorAIT670k6w', 'Movie scene')
--INSERT INTO landmarks (landmark_name, address, google_place_id) VALUES ('The UPMC Rink at PPG Place', '4 PPG Place, Third Ave Suite 100, Pittsburgh, PA 15222', 'ChIJx3vgAVTxNIgRYlPY4_6Y1fQ');


INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Randyland'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Randyland'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The Mattress Factory'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The Andy Warhol Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Phipps Conservatory and Botanical Gardens'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Phipps Conservatory and Botanical Gardens'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The Frick Pittsburgh'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The Frick Pittsburgh'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The Cafe at the Frick'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Point State Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Park'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Point State Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Point State Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Scenic Viewpoint'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Point State Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Mellon Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Park'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Mellon Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Primanti Bros. Restaurant and Bar'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Rivers of Steel: Carrie Blast Furnaces National Historic Landmark'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Taiwan Bistro Cafe 33'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Heinz History Center'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Heinz History Center'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Strip District'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Carnegie Science Center'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Carnegie Science Center'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Apteka'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The Winter Mausoleum'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Blue Slide Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Park'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Blue Slide Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Chantal''s Cheese Shop'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Five Points Artisan Bakeshop'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Georgie''s Corner Cafe'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Page''s Dairy Mart'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Novo Asian Food Hall'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Morcilla'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Umami Izakaya'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Sandcastle Water Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Park'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Sandcastle Water Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Children''s Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Children''s Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Soldiers & Sailors Memorial Hall & Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Soldiers & Sailors Memorial Hall & Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'West End Overlook Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Park'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'West End Overlook Park'), (SELECT designation_id FROM designations WHERE designation_name = 'Scenic Viewpoint'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Pittsburgh Glass Center'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'National Aviary'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'National Aviary'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Bicycle Heaven'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Moonshot Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'PPG Paints Arena'), (SELECT designation_id FROM designations WHERE designation_name = 'Sporting Venue'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Karpeles Manuscript Library Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Grandview Overlook'), (SELECT designation_id FROM designations WHERE designation_name = 'Scenic Viewpoint'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Monongahela Incline at Lower Station'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Monongahela Incline at Lower Station'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Highmark Stadium'), (SELECT designation_id FROM designations WHERE designation_name = 'Sporting Venue'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Gateway Clipper Fleet'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Gateway Clipper Fleet'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Fort Duquesne'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Fort Pitt Museum'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Grand Concourse'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Museum of Illusions Pittsburgh'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Fred "Mister Rogers" Memorial'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Water Steps'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Water Steps'), (SELECT designation_id FROM designations WHERE designation_name = 'Park'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Carnegie Museum of Natural History'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Carnegie Museum of Natural History'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Carnegie Museum of Art'), (SELECT designation_id FROM designations WHERE designation_name = 'Museum'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Pittsburgh Zoo & Aquarium'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Pittsburgh Zoo & Aquarium'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Federal Galley'), (SELECT designation_id FROM designations WHERE designation_name = 'Food'));
INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Allegheny Cemetery'), (SELECT designation_id FROM designations WHERE designation_name = 'Historic Site'));

INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'Kimpton Hotel Monaco Pittsburgh'), (SELECT designation_id FROM designations WHERE designation_name = 'Hotel'));

--INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The UPMC Rink at PPG Place'), (SELECT designation_id FROM designations WHERE designation_name = 'Attraction'));
--INSERT INTO landmarks_designations (landmark_id, designation_id) VALUES ((SELECT landmark_id FROM landmarks WHERE landmark_name = 'The UPMC Rink at PPG Place'), (SELECT designation_id FROM designations WHERE designation_name = 'Kid-Friendly'));

INSERT INTO ratings (user_id, landmark_id, is_good) VALUES ((SELECT user_id FROM users WHERE username = 'user'),(SELECT landmark_id FROM landmarks WHERE landmark_name = 'Pittsburgh Zoo & Aquarium'), true);
INSERT INTO ratings (user_id, landmark_id, is_good) VALUES ((SELECT user_id FROM users WHERE username = 'user'),(SELECT landmark_id FROM landmarks WHERE landmark_name = 'National Aviary'), true);
INSERT INTO ratings (user_id, landmark_id, is_good) VALUES ((SELECT user_id FROM users WHERE username = 'user'),(SELECT landmark_id FROM landmarks WHERE landmark_name = 'Randyland'), true);
INSERT INTO ratings (user_id, landmark_id, is_good) VALUES ((SELECT user_id FROM users WHERE username = 'user'),(SELECT landmark_id FROM landmarks WHERE landmark_name = 'Kimpton Hotel Monaco Pittsburgh'), false);

COMMIT TRANSACTION;
