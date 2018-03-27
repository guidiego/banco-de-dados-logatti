DECLARE @C_AFR varchar(110) 'África',
        @C_AMN varchar(110) 'América do Norte',
        @C_AMS varchar(110) 'América do Sul',
        @C_AMC varchar(110) 'América Central',
        @C_AS varchar(110) 'Asia',
        @C_OC varchar(110) 'Oceania',
        @C_EUR varchar(110) 'Europa';


-- (NOME, AREA, POP)
insert into continente values (@C_AFR, 30370000, 1216000000)
insert into continente values (@C_AMN, 24710000, 579000000)
insert into continente values (@C_AMS, 17840000, 422500000)
insert into continente values (@C_AMC, 507966, 46761485)
insert into continente values (@C_AS, 44580000, 4436224000)
insert into continente values (@C_EUR, 10180000, 741400000)
insert into continente values (@C_OC, 8526000, 40117432)

-- POPULATE PAIS

insert into pais values ("Finlândia", 338424, 5482013, "Euro", "Finlandês", , , "Helsínquia", "República parlamentarista", @C_EU)
insert into pais values ("Índia", 3287260, 1311050527, "Rupia Indiana", "Hindi", , , "Nova Déli", "República Federal", @C_AS)
insert into pais values ("Paquistão", 796095, 188924874, "Rupia Paquistanesa", "Inglês", , , "Islamabade", "República parlamentarista", @C_AS)
insert into pais values ("Sri Lanca", 65610, 20966000, "Rupia Cingalesa", "Cingalês", , , "Sri Jaiavardenapura-Cota", "República semipresidencialista", @C_AS)
insert into pais values ("Filipinas", 300000, 100699395, "Peso Filipino", "Filipino", , , "Manila", "República presidencialista", @C_AS)
insert into pais values ("Indonésia", 1910930, 257563815, "Rupia Indonésia", "Indonésio", , , "Jacarta", "República presidencialista", @C_AS)
insert into pais values ("Vietnã", 331212, 91703800, "Dongue Vietnamita", "Vietnamita", , , "Hanói", "Estado Unitário", @C_AS)
insert into pais values ("Coreia do Norte", 120538, 25155317, "Won norte-coreano", "Coreano", , , "Pionguiangue", "República popular socialista", @C_AS)
insert into pais values ("Coreia do Sul", 99828, 50617045, "Won sul-coreano", "Coreano", , , "Seul", "República presidencialista", @C_AS)
insert into pais values ("Líbano", 10452, 5850743, "Libra libanesa", "Árabe", , , "Beirute", "República parlamentarista", @C_AS)
insert into pais values ("Angola", 1246700, 25021974, "Kwanza angolano", "Português", , , "Luanda", "República presidencialista", @C_AFR)
insert into pais values ("Cabo Verde", 4033, 520502, "Escudo cabo-verdiano", "Português", , , "Praia", "República unitária semipresidencialista", @C_AFR)
insert into pais values ("Guiné-Bissau", 36125, 1844325, "Franco", "Português", , , "Bissau", "República semipresidencialista", @C_AFR)
insert into pais values ("Guiné Equatorial", 28051, 845060, "Franco", "Português", , , "Malabo", "República semipresidencialista", @C_AFR)
insert into pais values ("Moçambique", 801590, 27977863, "Metical moçambicano", "Português", , , "Maputo", "República semipresidencialista", @C_AFR)
insert into pais values ("São Tomé e Príncipe", 964, 190344, "Dobra de São Tomé e Príncipe", "Português", , , "São Tomé", "República semipresidencialista", @C_AFR)
insert into pais values ("Camboja", 181035, 15577899, "Riel Cambojano", "Khmer", , , "Pnom Pene", "Monarquia Constitucional", @C_AS)
insert into pais values ("Malásia", 330806, 30331007, "Ringuite Malario", "Malaio", , , "Cuala Lumpur", "Monarquia Eletiva Constitucional", @C_AS)
insert into pais values ("Singapura", 710, 5535002, "Dolar de Singapura", "Inglês", , , "Singapura", "Republica Parlamentarista", @C_AS)
insert into pais values ("Ruanda", 26338, 11609666, "Franco Ruandês", "Francês", , , "Quigali", "Republica Semi Presidencialista", @C_AFR)
insert into pais values ("Suazilândia", 17364, 1286970, "Lilangeni suazilandês", "Inglês", , , "Lobamba", "Monarquia Absoluta", @C_AFR)
-- POPULATE CIDADE

insert into cidade values ("08-22-1817", "Araraquara", 230770, "Brasil")
insert into cidade values ("04-11-1857", "São Carlos", 246088, "Brasil")
insert into cidade values ("19-07-1856", "Ribeirão Preto", 650916, "Brasil")
insert into cidade values ("08-11-1612", "São Luís (Maranhão)", 1091868, "Brasil")
insert into cidade values ("07-01-1982", "São Luís (Roraima)", 7309, "Brasil")
insert into cidade values ("10-12-1953", "Município de São Luís de Montes Belos", 825999, "Brasil")
insert into cidade values ("11-22-1951", "Município de São Luís do Curu", 12519, "Brasil")
insert into cidade values ("12-14-1995", "São Luis do Piauí", 2561, "Brasil")
insert into cidade values ("16-05-1892", "São Luís do Quitunde", 32412, "Brasil")
insert into cidade values ("12-06-1854", "São Luís Gonzaga do Maranhão", 20156, "Brasil")

-- POPULATE 