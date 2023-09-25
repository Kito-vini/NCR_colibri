select 
	m.descricao,
	it.preco as preco,
	m.codigo,
	m.unidade as unidade_medida,
	fm.prod_origem as origem,
	fm.cest,
	fm.cod_ncm as ncm,
	left(fm.cod_ncm,2) as ncm_genero,
	(case when fm.cst_icms = '102' then '00' else '60' end) as icms,
	fm.cst_icms as csosn,
	fm.aliq_icms_iss as Aliquota_icms,
	fm.reducao_bc_icms as reducao_base_calculo,
	fm.aliq_fcp as fcp_aliquota,
	fm.codigo_beneficio_fiscal as codigo_beneficio,
	fm.cst_pis,
	fm.aliq_pis as aliquota_pis,
	fm.cst_cofins,
	fm.aliq_cofins as aliquota_cofins
from material m
inner join item_preco it on m.id = it.material_id
inner join fiscal.material fm on m.id = fm.material_id