select a.id, a.valor as name, b.valor as lastname

from {{ source("teste_nome", "nome") }} a
join {{ source("teste_nome", "sobrenome") }} b on a.id = b.id
