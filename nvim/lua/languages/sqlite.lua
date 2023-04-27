vim.cmd([[ 
 augroup sqlite
     autocmd!
	 au BufNewFile,BufRead *.sql iab abort ABORT
	 au BufNewFile,BufRead *.sql iab action ACTION
	 au BufNewFile,BufRead *.sql iab add ADD
	 au BufNewFile,BufRead *.sql iab after AFTER
	 au BufNewFile,BufRead *.sql iab all ALL
	 au BufNewFile,BufRead *.sql iab alter ALTER
	 au BufNewFile,BufRead *.sql iab analyze ANALYZE
	 au BufNewFile,BufRead *.sql iab and AND
	 au BufNewFile,BufRead *.sql iab as AS
	 au BufNewFile,BufRead *.sql iab asc ASC
	 au BufNewFile,BufRead *.sql iab attach ATTACH
	 au BufNewFile,BufRead *.sql iab autoincrement AUTOINCREMENT
	 au BufNewFile,BufRead *.sql iab before BEFORE
	 au BufNewFile,BufRead *.sql iab begin BEGIN
	 au BufNewFile,BufRead *.sql iab between BETWEEN
	 au BufNewFile,BufRead *.sql iab by BY
	 au BufNewFile,BufRead *.sql iab cascade CASCADE
	 au BufNewFile,BufRead *.sql iab case CASE
	 au BufNewFile,BufRead *.sql iab cast CAST
	 au BufNewFile,BufRead *.sql iab check CHECK
	 au BufNewFile,BufRead *.sql iab collate COLLATE
	 au BufNewFile,BufRead *.sql iab column COLUMN
	 au BufNewFile,BufRead *.sql iab commit COMMIT
	 au BufNewFile,BufRead *.sql iab conflict CONFLICT
	 au BufNewFile,BufRead *.sql iab constraint CONSTRAINT
	 au BufNewFile,BufRead *.sql iab create CREATE
	 au BufNewFile,BufRead *.sql iab cross CROSS
	 au BufNewFile,BufRead *.sql iab current_date CURRENT_DATE
	 au BufNewFile,BufRead *.sql iab current_time CURRENT_TIME
	 au BufNewFile,BufRead *.sql iab current_timestamp CURRENT_TIMESTAMP
	 au BufNewFile,BufRead *.sql iab database DATABASE
	 au BufNewFile,BufRead *.sql iab default DEFAULT
	 au BufNewFile,BufRead *.sql iab deferrable DEFERRABLE
	 au BufNewFile,BufRead *.sql iab deferred DEFERRED
	 au BufNewFile,BufRead *.sql iab delete DELETE
	 au BufNewFile,BufRead *.sql iab desc DESC
	 au BufNewFile,BufRead *.sql iab detach DETACH
	 au BufNewFile,BufRead *.sql iab distinct DISTINCT
	 au BufNewFile,BufRead *.sql iab drop DROP
	 au BufNewFile,BufRead *.sql iab each EACH
	 au BufNewFile,BufRead *.sql iab else ELSE
	 au BufNewFile,BufRead *.sql iab end END
	 au BufNewFile,BufRead *.sql iab escape ESCAPE
	 au BufNewFile,BufRead *.sql iab except EXCEPT
	 au BufNewFile,BufRead *.sql iab exclusive EXCLUSIVE
	 au BufNewFile,BufRead *.sql iab exists EXISTS
	 au BufNewFile,BufRead *.sql iab explain EXPLAIN
	 au BufNewFile,BufRead *.sql iab fail FAIL
	 au BufNewFile,BufRead *.sql iab for FOR
	 au BufNewFile,BufRead *.sql iab foreign FOREIGN
	 au BufNewFile,BufRead *.sql iab from FROM
	 au BufNewFile,BufRead *.sql iab full FULL
	 au BufNewFile,BufRead *.sql iab glob GLOB
	 au BufNewFile,BufRead *.sql iab group GROUP
	 au BufNewFile,BufRead *.sql iab having HAVING
	 au BufNewFile,BufRead *.sql iab if IF
	 au BufNewFile,BufRead *.sql iab ignore IGNORE
	 au BufNewFile,BufRead *.sql iab immediate IMMEDIATE
	 au BufNewFile,BufRead *.sql iab in IN
	 au BufNewFile,BufRead *.sql iab index INDEX
	 au BufNewFile,BufRead *.sql iab indexed INDEXED
	 au BufNewFile,BufRead *.sql iab initially INITIALLY
	 au BufNewFile,BufRead *.sql iab inner INNER
	 au BufNewFile,BufRead *.sql iab insert INSERT
	 au BufNewFile,BufRead *.sql iab instead INSTEAD
	 au BufNewFile,BufRead *.sql iab intersect INTERSECT
	 au BufNewFile,BufRead *.sql iab into INTO
	 au BufNewFile,BufRead *.sql iab is IS
	 au BufNewFile,BufRead *.sql iab isnull ISNULL
	 au BufNewFile,BufRead *.sql iab join JOIN
	 au BufNewFile,BufRead *.sql iab key KEY
	 au BufNewFile,BufRead *.sql iab left LEFT
	 au BufNewFile,BufRead *.sql iab like LIKE
	 au BufNewFile,BufRead *.sql iab limit LIMIT
	 au BufNewFile,BufRead *.sql iab match MATCH
	 au BufNewFile,BufRead *.sql iab natural NATURAL
	 au BufNewFile,BufRead *.sql iab no NO
	 au BufNewFile,BufRead *.sql iab not NOT
	 au BufNewFile,BufRead *.sql iab notnull NOTNULL
	 au BufNewFile,BufRead *.sql iab null NULL
	 au BufNewFile,BufRead *.sql iab of OF
	 au BufNewFile,BufRead *.sql iab offset OFFSET
	 au BufNewFile,BufRead *.sql iab on ON
	 au BufNewFile,BufRead *.sql iab or OR
	 au BufNewFile,BufRead *.sql iab order ORDER
	 au BufNewFile,BufRead *.sql iab outer OUTER
	 au BufNewFile,BufRead *.sql iab plan PLAN
	 au BufNewFile,BufRead *.sql iab pragma PRAGMA
	 au BufNewFile,BufRead *.sql iab primary PRIMARY
	 au BufNewFile,BufRead *.sql iab query QUERY
	 au BufNewFile,BufRead *.sql iab raise RAISE
	 au BufNewFile,BufRead *.sql iab recursive RECURSIVE
	 au BufNewFile,BufRead *.sql iab references REFERENCES
	 au BufNewFile,BufRead *.sql iab regexp REGEXP
	 au BufNewFile,BufRead *.sql iab reindex REINDEX
	 au BufNewFile,BufRead *.sql iab release RELEASE
	 au BufNewFile,BufRead *.sql iab rename RENAME
	 au BufNewFile,BufRead *.sql iab replace REPLACE
	 au BufNewFile,BufRead *.sql iab restrict RESTRICT
	 au BufNewFile,BufRead *.sql iab right RIGHT
	 au BufNewFile,BufRead *.sql iab rollback ROLLBACK
	 au BufNewFile,BufRead *.sql iab row ROW
	 au BufNewFile,BufRead *.sql iab savepoint SAVEPOINT
	 au BufNewFile,BufRead *.sql iab select SELECT
	 au BufNewFile,BufRead *.sql iab set SET
	 au BufNewFile,BufRead *.sql iab table TABLE
	 au BufNewFile,BufRead *.sql iab temp TEMP
	 au BufNewFile,BufRead *.sql iab temporary TEMPORARY
	 au BufNewFile,BufRead *.sql iab then THEN
	 au BufNewFile,BufRead *.sql iab to TO
	 au BufNewFile,BufRead *.sql iab transaction TRANSACTION
	 au BufNewFile,BufRead *.sql iab trigger TRIGGER
	 au BufNewFile,BufRead *.sql iab union UNION
	 au BufNewFile,BufRead *.sql iab unique UNIQUE
	 au BufNewFile,BufRead *.sql iab update UPDATE
	 au BufNewFile,BufRead *.sql iab using USING
	 au BufNewFile,BufRead *.sql iab vacuum VACUUM
	 au BufNewFile,BufRead *.sql iab values VALUES
	 au BufNewFile,BufRead *.sql iab view VIEW
	 au BufNewFile,BufRead *.sql iab virtual VIRTUAL
	 au BufNewFile,BufRead *.sql iab when WHEN
	 au BufNewFile,BufRead *.sql iab where WHERE
	 au BufNewFile,BufRead *.sql iab with WITH
	 au BufNewFile,BufRead *.sql iab without WITHOUT
 augroup END
]])

