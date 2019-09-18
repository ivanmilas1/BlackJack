% Pravila za bazu znanja

:- module(racunalo,[racunalo/1]). 

racunalo(veriton) :-

    tip(internet),
    
    tip2(svejedno),
    atom_string(String,'HP 400 PD\n\nProcesor: Intel Pentium G4560 Dual-core 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
  racunalo(multi) :-
  
    tip(multimedija),
    
    tip2(svejedno),
    atom_string(String,'HP Pro Desk\n\nProcesor: Intel i3 7100 Octa-core 3.70Gz\nRAM: 8GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
  racunalo(game) :-
  
    tip(igranje),
    
    tip2(svejedno),
    atom_string(String,'Xtreme Pro Gamer\n\nProcesor: Intel i7 7700HQ Octa-core 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\n256 GB SSD\nGraphics: GTX 1070'),
    interface3(String).
  
  %Intel racunala intrnet
  racunalo(hp_400pd) :-
  
    tip(internet),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(intel_g4560),
    
    graficka_intel(intel_graphic_610),
  
    atom_string(String,'HP 400 PD\n\nProcesor: Intel Pentium G4560 Dual-core 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
    
  
  racunalo(hp_400pd2) :-
  
    tip(internet),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(intel_g4560),
    
    graficka_intel(intel_graphic_630),
    atom_string(String,'HP 400 Pro Desktop \n\nProcesor: Intel i5 8-core 3.70Gz\nRAM: 6GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 630 '),
    interface3(String).
  
  
  racunalo(links_hellium) :-
  
    tip(internet),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(i5_700),
    
    graficka_intel(intel_graphic_610),
  
    atom_string(String,'Links Helium\n\nProcesor: Intel i5 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
  racunalo(links_hellium2) :-
  
    tip(internet),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(i5_700),
    
    graficka_intel(intel_graphic_630),
  
    atom_string(String,'Links Helium V2\n\nProcesor: Intel i5 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 630 '),
    interface3(String).
  %Intel racunala multimedija
  racunalo(hp_5) :-
  
    tip(multimedija),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(intel_g4560),
    
    graficka_intel(intel_graphic_610),
  
    atom_string(String,'HP 5\n\nProcesor: Intel Pentium G4560 Dual-core 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
    
  
  racunalo(hp_6) :-
  
    tip(multimedija),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(intel_g4560),
    
    graficka_intel(intel_graphic_630),
    atom_string(String,'HP 6 \n\nProcesor: Intel i5 8-core 3.70Gz\nRAM: 6GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 630 '),
    interface3(String).
  
  
  racunalo(links_hellium_multimedia) :-
  
    tip(multimedija),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(i5_700),
    
    graficka_intel(intel_graphic_610),
  
    atom_string(String,'Links Helium M\n\nProcesor: Intel i5 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
  racunalo(links_hellium2_multimedia) :-
  
    tip(multimedija),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(i5_700),
    
    graficka_intel(intel_graphic_630),
  
    atom_string(String,'Links Helium 2 \n\nProcesor: Intel i5 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\nGraphics: UHD Graphics 630 '),
    interface3(String).
  
  %Intel racunala gaming
  racunalo(acer_gaming2) :-
  
    tip(igranje),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(intel_g4560),
    
    graficka_intel(intel_graphic_610),
  
    atom_string(String,'Acer Pro gamer\n\nProcesor: Intel Pentium G4560 Dual-core 3.70Gz\nRAM: 16GB up to 32GB\nStorage: 2TB HDD\n1TB SSD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
    
  
  racunalo(lenovo_gx) :-
  
    tip(igranje),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(intel_g4560),
    
    graficka_intel(intel_graphic_630),
    atom_string(String,'Lenovo Game x \n\nProcesor: Intel i5 8-core 3.70Gz\nRAM: 6GB up to 32GB\nStorage: 1TB HDD\n1TB SSD\nGraphics: UHD Graphics 630 '),
    interface3(String).
  
  
  racunalo(links_hell_game) :-
  
    tip(igranje),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(i5_700),
    
    graficka_intel(intel_graphic_610),
  
    atom_string(String,'Links Hell Game\n\nProcesor: Intel i5 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\n1TB SSD\nGraphics: UHD Graphics 610 '),
    interface3(String).
  
  racunalo(links_gamepro) :-
  
    tip(igranje),
  
    tip2(intel),
  
    maticna_intel(intel_h110),
  
    procesor_intel(i5_700),
    
    graficka_intel(intel_graphic_630),
  
    atom_string(String,'Links Game Pro\n\nProcesor: Intel i5 3.70Gz\nRAM: 4GB up to 32GB\nStorage: 1TB HDD\n1TB SSD\nGraphics: UHD Graphics 630 '),
    interface3(String).
  %AMD internet
  racunalo(links_radon) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(amd_1),
    
    graficka_amd(rx_560),
    atom_string(String,'Links Radon V2\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(links_radon2) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(amd_1),
    
    graficka_amd(radeon_r7),
    atom_string(String,'Links Radon V2\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  racunalo(hp_desk) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(rx_560),
    atom_string(String,'HP Desk Pro\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(hp_desk_v2) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(radeon_r7),
    atom_string(String,'HP Desk V2\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  %AMD multimedija
  racunalo(links_radon) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(amd_1),
    
    graficka_amd(rx_560),
    atom_string(String,'Links Novio\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(links_radon2) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(amd_1),
    
    graficka_amd(radeon_r7),
    atom_string(String,'Links Novio V2\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 8GB up to 16GB\nStorage: 1TB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  racunalo(hp_desk) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(rx_560),
    atom_string(String,'HP Multimedia \n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(hp_desk_v2) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(radeon_r7),
    atom_string(String,'HP Media Pro\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 8GB up to 16GB\nStorage: 1TB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  %AMD Gaming
  racunalo(links_pro) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(amd_1),
    
    graficka_amd(rx_560),
    atom_string(String,'Gamin Pro Links\n\nProcesor: AMD Octa-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 1TB HDD\n256BG SSD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(lenovo_pro2) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(amd_1),
    
    graficka_amd(radeon_r7),
    atom_string(String,'Lenovo NX\n\nProcesor: AMD Octa-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\n256BG SSD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  racunalo(acer_gaming) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(rx_560),
    atom_string(String,'Acer Gamer Xtreme\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\n256BG SSD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(hp_gaming2) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(radeon_r7),
    atom_string(String,'HP XTM V2\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 12GB up to 16GB\nStorage: 1TB HDD\n 256BG SSD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  %AMD internet a320
  racunalo(links_radon) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(amd_1),
    
    graficka_amd(rx_560),
    atom_string(String,'Links Radon V2\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(links_radon2) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(amd_1),
    
    graficka_amd(radeon_r7),
    atom_string(String,'Links Radon V2\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  racunalo(hp_desk) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(rx_560),
    atom_string(String,'HP Desk Pro\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(hp_desk_v2) :-
  
    tip(internet),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(radeon_r7),
    atom_string(String,'HP Desk V2\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  %AMD multimedija a320
  racunalo(links_radon) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(amd_1),
    
    graficka_amd(rx_560),
    atom_string(String,'Links Radon V2\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(links_radon2) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(amd_1),
    
    graficka_amd(radeon_r7),
    atom_string(String,'Links Radon V2\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  racunalo(hp_desk) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(rx_560),
    atom_string(String,'HP Desk Pro\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(hp_desk_v2) :-
  
    tip(multimedija),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(radeon_r7),
    atom_string(String,'HP Desk V2\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  %AMD Gaming a320
  racunalo(links_pro) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(amd_1),
    
    graficka_amd(rx_560),
    atom_string(String,'Gamin Pro Links\n\nProcesor: AMD Octa-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 1TB HDD\n256BG SSD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(links_pro2) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(amd_1),
    
    graficka_amd(radeon_r7),
    atom_string(String,'Links Super Gamer\n\nProcesor: AMD Octa-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\n256BG SSD\nAMD Radeon R7 1GB'),
    interface3(String).
  
  racunalo(hp_gaming) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(rx_560),
    atom_string(String,'HP Game XTRM\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\n256BG SSD\nAMD RX 560 2GB '),
    interface3(String).
  
  racunalo(hp_gaming2) :-
  
    tip(igranje),
  
    tip2(amd),
  
    maticna_amd(amd_a320),
  
    procesor_amd(ryzen_3),
    
    graficka_amd(radeon_r7),
    atom_string(String,'HP X N10\n\nProcesor: AMD Ryzen 3.2Gz\nRAM: 12GB up to 16GB\nStorage: 1TB HDD\n 256BG SSD\nAMD Radeon R7 1GB'),
    interface3(String).
  %Staro
  racunalo(veriton) :-
  
    tip(internet),
    
    tip2(amd),
  
    maticna_amd(amd_am4),
  
    procesor_amd(amd_1),
    
    graficka_amd(radeon_r7),
    atom_string(String,'Acer Super Gamer\n\nProcesor: AMD Dual-core 3.70Gz\nRAM: 4GB up to 16GB\nStorage: 500GB HDD\nAMD Radeon R7 '),
    interface3(String).