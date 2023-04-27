--UNION de selects
--Aula 23
  -- mesmo n�mero de colunas
  -- o Uso do null para contornar limita��o
  -- Nome das colunas ser� do primeiro select
  -- Executa um distinct quando utilizado

 select p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.class, p.color
   from dimproduct P
  where p.color = 'NA'

union

select p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.class, p.color
   from dimproduct P
  where p.color <> 'NA'


  --IGNORAR ESSA LIMITA��O

  select p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, null, null
   from dimproduct P
  where p.color = 'NA'

union

select p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.class, p.color
   from dimproduct P
  where p.color <> 'NA'


--ORDEM DOS CAMPOS

  select p.SafetyStockLevel, p.EnglishProductName, p.DaysToManufacture, null, null
   from dimproduct P
  where p.color = 'NA'

union

select p.EnglishProductName, p.SafetyStockLevel, p.DaysToManufacture, p.class, p.color
   from dimproduct P
  where p.color <> 'NA'

--ALIAS PARA COLUNAS 

Select p.EnglishProductName as Produto, 
       p.SafetyStockLevel	as Estoque_Seguro, 
	   p.DaysToManufacture	as Dias_Produ��o, 
	   p.class				as Classe,	 
	   p.color				as Color
  from dimproduct p
 where p.color = 'NA' 
   and p.class is not null
 
UNION

Select p.EnglishProductName Produto_nome, p.SafetyStockLevel, p.DaysToManufacture, p.class, p.color
  from dimproduct p
 where color = 'Black'
   and class = 'L'

--UNION (DISTINCT) / UNION ALL (TODOS OS REGISTROS)

select englishproductname, class, color
  from dimproduct

union 

select englishproductname, class, color
  from dimproduct

order by 1