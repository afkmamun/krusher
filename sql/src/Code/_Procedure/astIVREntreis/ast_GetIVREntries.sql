DELIMITER $$
DROP PROCEDURE IF EXISTS ast_GetIVREntries;
CREATE PROCEDURE ast_GetIVREntries(
  $token              VARCHAR(100)
  , $entry_id         INT(11)
  , $id_ivr_config    INT(11)
  , $extension        VARCHAR(20)
  , $destination      INT(11)
  , $destdata         INT(11)
  , $destdata2        VARCHAR(100)
  , $return           BIT
  , $isActive         BIT
  , $sorting          VARCHAR(5)
  , $field            VARCHAR(50)
  , $offset           INT(11)
  , $limit            INT(11)
)
BEGIN
  DECLARE $sqlWhereCode   VARCHAR(100);
  DECLARE $sqlWhere       VARCHAR(5000);
  DECLARE $sqlCount       VARCHAR(500);
  DECLARE $sql            VARCHAR(5000);
  DECLARE $sorting_       VARCHAR(5);
  DECLARE $field_         VARCHAR(50);
  DECLARE $Aid          INT;
  --
  SET $token = NULLIF(TRIM($token), '');
  SET $Aid = fn_GetAccountID($token);
  IF ($Aid = -999) THEN
    call RAISE(77068, 'ast_GetIVREntries');
  ELSE
    SET $offset = IFNULL($offset, 0);
    SET $limit  = IFNULL($limit, 100);
    SET $limit = if($limit > 10000, 10000, $limit);
    SET $sqlWhereCode = 'WHERE ';
    SET $sqlWhere = '';
    --
    IF($sorting IS NULL) THEN
      SET $sorting_ = 'DESC';
    ELSE
      SET $sorting_ = $sorting;
    END IF;
    IF($field IS NULL) THEN
      SET $field_ = '`Created`';
    ELSE
      SET $field_ = $field;
    END IF;
    --
    SET $sqlCount = 'SELECT count(*) Qty FROM ast_ivr_entries';
    --
    SET $sql = '
            SELECT
              HIID
              , entry_id
              , id_ivr_config
              , extension
              , destination
              , destdata
              , destdata2
              , `return`
              , isActive
              , Created
              , Changed
            FROM ast_ivr_entries ';
    --
    IF $entry_id is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'entry_id = ', $entry_id);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $id_ivr_config is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'id_ivr_config = ', $id_ivr_config);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $extension is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'extension = ', $extension);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $destination is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'destination = ', $destination);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $destdata is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'destdata = ', $destdata);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $destdata2 is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'destdata2 = ', QUOTE($destdata));
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $isActive is NOT NULL THEN
      IF ($isActive = TRUE) THEN
        SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'isActive = 1');
      ELSE
        SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'isActive = 0');
      END IF;
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $return is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'return = ', QUOTE($return));
      SET $sqlWhereCode = ' AND ';
    END IF;
    --
    SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'Aid = ', $Aid);
    --
    SET @s = CONCAT($sql, CHAR(10), $sqlWhere, CHAR(10), 'ORDER BY ', $field_, ' ', $sorting_, CHAR(10), 'LIMIT ', $offset, ', ', $limit);
    PREPARE stmt FROM @s;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    --
    SET @s = CONCAT($sqlCount, CHAR(10), $sqlWhere);
    PREPARE stmt FROM @s;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
  END IF;
END $$
DELIMITER ;
--
