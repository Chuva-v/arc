select 
NO_CIDADAO,
DT_NASCIMENTO,
NO_SEXO,
case
when (CURRENT_DATE - dt_nascimento)/365 >= 50 AND (CURRENT_DATE - dt_nascimento)/365 <= 69 then 'FAZER EXAME' else 'NAO PRECISA DE EXAME' end STATUS,
(CURRENT_DATE - dt_nascimento)/365 IDADE
from tb_cidadao
where no_sexo ilike '%FEMININO%' 
/*AND (CURRENT_DATE - dt_nascimento)/365 >= 50 
AND (CURRENT_DATE - dt_nascimento)/365 <= 69*/