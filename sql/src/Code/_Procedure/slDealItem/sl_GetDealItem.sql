DELIMITER $$
DROP PROCEDURE IF EXISTS sl_GetDealItem;
CREATE PROCEDURE sl_GetDealItem(
    $token            VARCHAR(100)
    , $dcID           int
    , $diID           int
    , $psID           int
    , $psName         varchar(1020)
    , $iPrice         decimal(14,2)
    , $iQty           decimal(14,4)
    , $isActive       BIT
    , $sorting        VARCHAR(5)
    , $field          VARCHAR(50)
    , $offset         INT(11)
    , $limit          INT(11)
)
BEGIN
  DECLARE $sqlWhereCode   VARCHAR(100);
  DECLARE $sqlWhere       VARCHAR(5000);
  DECLARE $sqlCount       VARCHAR(500);
  DECLARE $sql            VARCHAR(5000);
  DECLARE $sorting_       VARCHAR(5);
  DECLARE $field_         VARCHAR(50);
  DECLARE $Aid            INT;
  --
  SET $token = NULLIF(TRIM($token), '');
  SET $Aid = fn_GetAccountID($token);
  IF ($Aid = -999) THEN
    call RAISE(77068, 'sl_GetDealItem');
  ELSE
    SET $offset = IFNULL($offset, 0);
    SET $limit = IFNULL($limit, 100);
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
    SET $sqlCount = 'SELECT count(*) Qty FROM slDealItem ';
    --
    SET $sql = '
            SELECT
              HIID
              , diID
              , dcID
              , psID
              , psName
              , iPrice
              , iQty
              , Created
              , Changed
              , isActive
            FROM slDealItem ';
    --
    IF $dcID is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'dcID = ', $dcID);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $diID is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'diID = ', $diID);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $psID is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'psID = ', $psID);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $psName is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'psName = ', QUOTE($psName));
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $iPrice is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'iPrice = ', $iPrice);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $iQty is NOT NULL THEN
      SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'iQty = ', $iQty);
      SET $sqlWhereCode = ' AND ';
    END IF;
    IF $isActive is NOT NULL THEN
      IF $isActive = TRUE THEN
        SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'isActive = 1');
      ELSE
        SET $sqlWhere = CONCAT($sqlWhere, CHAR(10), $sqlWhereCode, 'isActive = 0');
      END IF;
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
