/*
-- Query: SELECT
	Author_ID,
    SUM(Sales_Royalty + Advance*Royal_Typer/100) AS "Profits"
	FROM (
		SELECT
			Title_ID AS "Title_ID",
			Author_ID AS "Author_ID",
			SUM(Sales_Royalty) AS "Sales_Royalty",
            Advance AS "Advance",
            Royal_Typer AS "Royal_Typer"
			FROM (
				SELECT 
					titleauthor.title_id AS "Title_ID",
					titleauthor.au_id AS "Author_ID",
					(titles.price * sales.qty * titles.royalty/100 * titleauthor.royaltyper/100) AS "Sales_Royalty",
                    titles.advance AS "Advance",
                    titleauthor.royaltyper AS "Royal_Typer"
					FROM titleauthor
					LEFT JOIN sales ON titleauthor.title_id = sales.title_id
					LEFT JOIN titles ON sales.title_id = titles.title_id
			) AS x
			GROUP BY Title_ID, Author_ID
	) AS y
	GROUP BY Author_ID
    ORDER BY Profits DESC
    LIMIT 3
-- Date: 2019-10-30 18:40
*/
INSERT INTO `most_profiting_authors` (`Author_ID`,`Profits`) VALUES ('213-46-8915',12162.110000000000);
INSERT INTO `most_profiting_authors` (`Author_ID`,`Profits`) VALUES ('722-51-5454',11271.528000000000);
INSERT INTO `most_profiting_authors` (`Author_ID`,`Profits`) VALUES ('998-72-3567',7225.956000000000);
