-- Orszagok tábla adatok
INSERT INTO orszagok (orszag_nev, gdp, nepesseg, terulet_km2, fejlettségi_szint) VALUES
('Magyarország', 155000.00, 9700000, 93030.00, 'fejlett'),
('Németország', 4000000.00, 83000000, 357022.00, 'nagyon fejlett'),
('India', 3200000.00, 1400000000, 3287263.00, 'fejlődő'),
('Etiópia', 111000.00, 120000000, 1104300.00, 'fejlődő'),
('Ausztrália', 1500000.00, 26000000, 7692024.00, 'nagyon fejlett');

-- Energiafogyasztas tábla adatok
INSERT INTO energiafogyasztas (orszag_id, ev, fogyasztas_mwh) VALUES
(1, 2022, 4500000.00),
(2, 2022, 60000000.00),
(3, 2022, 120000000.00),
(4, 2022, 9000000.00),
(5, 2022, 18000000.00);

-- Energia_hatekonysag tábla adatok
INSERT INTO energia_hatekonysag (orszag_id, ev, hatekonysag_eredmeny, energia_megtakaritas_mwh, emiszios_csokkenes_kgco2, beruhazas_kolteseg) VALUES
(1, 2022, 85.50, 100000.00, 200000.00, 1500000.00),
(2, 2022, 90.00, 500000.00, 1200000.00, 8000000.00),
(3, 2022, 70.00, 200000.00, 500000.00, 3000000.00),
(4, 2022, 65.00, 50000.00, 100000.00, 800000.00),
(5, 2022, 95.00, 300000.00, 700000.00, 10000000.00);

-- Megújuló energia tábla adatok
INSERT INTO megujulo_energia (orszag_id, leiras, fogyasztas_mwh) VALUES
(1, 'Napenergia', 200000.00),
(2, 'Szélenergia', 1000000.00),
(3, 'Vízenergia', 300000.00),
(4, 'Biomassza', 50000.00),
(5, 'Napenergia', 800000.00);

-- Nem megújuló energia tábla adatok
INSERT INTO nem_megujulo_energia (orszag_id, leairas, fogyasztas_mwh) VALUES
(1, 'Szén', 2000000.00),
(2, 'Olaj', 25000000.00),
(3, 'Gáz', 60000000.00),
(4, 'Szén', 8500000.00),
(5, 'Olaj', 9000000.00);
