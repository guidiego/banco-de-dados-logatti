select c.nome, c.cpf
from cliente as c
join venda as v
    on c.cpf = v.cpf_cliente