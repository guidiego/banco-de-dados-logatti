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
