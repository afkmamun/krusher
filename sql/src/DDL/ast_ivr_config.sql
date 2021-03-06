CREATE TABLE IF NOT EXISTS `ast_ivr_config` (
	`HIID` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `id_ivr_config` INT(11) NOT NULL,
	`Aid` INT(11) NOT NULL DEFAULT '0',
	`ivr_name` VARCHAR(255) NOT NULL COMMENT 'Название IVR',
	`ivr_description` VARCHAR(250) NULL DEFAULT NULL COMMENT 'Описание IVR',
	`record_id` VARCHAR(250) NULL DEFAULT NULL COMMENT 'ID записи для IVR',
	`enable_direct_dial` BIT(1) NULL DEFAULT b'0',
	`timeout` INT(11) NULL DEFAULT NULL,
	`alert_info` VARCHAR(50) NULL DEFAULT NULL COMMENT 'Важное уведомление',
	`volume` INT(11) NULL DEFAULT NULL COMMENT 'Громкость',
	`invalid_retries` INT(11) NULL DEFAULT NULL,
	`retry_record_id` VARCHAR(250) NULL DEFAULT NULL COMMENT 'ID записи для IVR при повтороном ошибочном вводе',
	`append_record_to_invalid` BIT(1) NULL DEFAULT b'0' COMMENT 'Включить проигрывание записи при ошибочном вооде',
	`return_on_invalid` BIT(1) NULL DEFAULT b'0' COMMENT 'Включить возврата к родительскому IVR',
	`invalid_record_id` VARCHAR(250) NULL DEFAULT NULL,
	`invalid_destination` INT(11) NULL DEFAULT NULL COMMENT 'Destination для ошибочного ввода',
	`invalid_destdata` INT(11) NULL DEFAULT NULL COMMENT 'DestData для ошибочного ввода',
  `invalid_destdata2` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Дополнительная настройка для DestData',
	`timeout_retries` INT(11) NULL DEFAULT NULL,
	`timeout_retry_record_id` VARCHAR(250) NULL DEFAULT NULL,
	`append_record_on_timeout` BIT(1) NULL DEFAULT b'0' COMMENT 'Включить применение IVR записи, для таумаута',
	`return_on_timeout` BIT(1) NULL DEFAULT b'0' COMMENT 'Включить возврат к таймауту',
	`timeout_record_id` VARCHAR(250) NULL DEFAULT NULL,
	`timeout_destination` INT(11) NULL DEFAULT NULL COMMENT 'Destination для таймута',
	`timeout_destdata` INT(11) NULL DEFAULT NULL COMMENT 'DestData для таймаута',
	`timeout_destdata2` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Дополнительная настройка для DestData',
	`return_to_ivr_after_vm` BIT(1) NULL DEFAULT b'0' COMMENT 'Включить возврат к IVR после VoiceMail',
	`ttsID` VARCHAR(250) NULL DEFAULT NULL,
	`isActive` BIT(1) NOT NULL DEFAULT b'1' COMMENT 'Признак активности записи',
	`Created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания записи',
	`Changed` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время изменения записи',
	PRIMARY KEY (`id_ivr_config`),
	INDEX `Aid` (`Aid`),
	INDEX `ivr_name` (`ivr_name`),
	INDEX `ivr_description` (`ivr_description`),
	INDEX `record_id` (`record_id`),
	INDEX `ttsID` (`ttsID`),
	INDEX `isActive` (`isActive`),
	INDEX `Created` (`Created`),
	INDEX `HIID` (`HIID`)
)
COMMENT='Настройка IVR'
COLLATE='utf8_general_ci'
ENGINE=MyISAM
;
--
