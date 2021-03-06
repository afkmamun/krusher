DELIMITER $$
DROP PROCEDURE IF EXISTS reg_UpdLocation;
CREATE PROCEDURE reg_UpdLocation(
    $token            VARCHAR(100)
    , $HIID             BIGINT
    , $aID            INT
    , $aName          VARCHAR(150)
    , $cID            INT
    , $rgID           INT
    , $isActive       bit
) DETERMINISTIC MODIFIES SQL DATA
BEGIN
  /*DECLARE $Aid            INT;
  --
  SET $token = NULLIF(TRIM($token), '');
  SET $Aid = fn_GetAccountID($token);
  IF ($Aid = -999) THEN
    call RAISE(77068, 'reg_UpdLocation');
  ELSE
    set $aName = NULLIF(TRIM($aName),'');
    --
    if (($cID is NULL) OR ($rgID is NULL) OR ($aID is NULL)) then
      -- Параметр "ID записи" должен иметь значение
      call RAISE(77021, NULL);
    end if;
    if ($aName is NULL) then
      -- Параметр "Название" должен иметь значение
      call RAISE(77022, NULL);
    end if;
    --
    if not exists (
      select 1
      from reg_cities
      where HIID = $HIID
        and city_id = $aID
        AND Aid = $Aid) then
      -- Запиcь была изменена другим пользователем. Обновите документ без сохраненис и выполните действия еще раз.
      call RAISE(77003, NULL);
    end if;
    --
    update reg_cities set
      area_ru       = $aName
      , country_id  = $cID
      , region_id   = $rgID
      , isActive    = $isActive
      , HIID        = fn_GetStamp()
    where city_id = $aID AND Aid = $Aid;
  END IF;*/
END $$
DElIMITER ;
--
