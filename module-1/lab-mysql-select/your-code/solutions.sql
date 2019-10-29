# Challenge 1
SELECT
	au.au_id AS `AUTHOR ID`, au.au_lname AS `LAST NAME`, au.au_fname AS `FIRST NAME`, t.title AS `TITLE`, p.pub_name AS `PUBLISHER`
    FROM `lab-select`.authors AS au
    INNER JOIN titleauthor AS ta ON au.au_id=ta.au_id
    INNER JOIN titles AS t ON ta.title_id=t.title_id
    INNER JOIN publishers AS p ON t.pub_id=p.pub_id
