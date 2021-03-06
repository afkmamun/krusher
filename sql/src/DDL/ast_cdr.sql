CREATE TABLE IF NOT EXISTS `ast_cdr` (
  `id`            INT(10)     UNSIGNED        NOT NULL      AUTO_INCREMENT,
  `Aid`           INT(10)     UNSIGNED        NOT NULL,
  `calldate`      DATETIME                    NOT NULL      DEFAULT '0000-00-00 00:00:00',
  `clid`          VARCHAR(80)                 NOT NULL      DEFAULT '',
  `src`           VARCHAR(80)                 NOT NULL      DEFAULT '',
  `dst`           VARCHAR(80)                 NOT NULL      DEFAULT '',
  `dcontext`      VARCHAR(80)                 NOT NULL      DEFAULT '',
  `channel`       VARCHAR(80)                 NOT NULL      DEFAULT '',
  `dstchannel`    VARCHAR(80)                 NOT NULL      DEFAULT '',
  `lastapp`       VARCHAR(80)                 NOT NULL      DEFAULT '',
  `lastdata`      VARCHAR(80)                 NOT NULL      DEFAULT '',
  `duration`      INT(11)                     NOT NULL      DEFAULT '0',
  `billsec`       INT(11)                     NOT NULL      DEFAULT '0',
  `disposition`   VARCHAR(45)                 NOT NULL      DEFAULT '',
  `amaflags`      INT(11)                     NOT NULL      DEFAULT '0',
  `accountcode`   VARCHAR(20)                 NOT NULL      DEFAULT '',
  `userfield`     VARCHAR(255)                NOT NULL      DEFAULT '',
  `uniqueid`      VARCHAR(32)                 NOT NULL,
  `recordfile`    VARCHAR(100)                NULL          DEFAULT NULL,
  `actionid`      INT(11)                     NULL          DEFAULT NULL,
  `GUID`          VARCHAR(36)                 NULL          DEFAULT NULL,
  `isAutocall`    BIT(1)                      NOT NULL      DEFAULT b'0',
  PRIMARY KEY (`id`),
  INDEX `calldate` (`calldate`),
  INDEX `dst` (`dst`),
  INDEX `accountcode` (`accountcode`),
  INDEX `src` (`src`),
  INDEX `disposition` (`disposition`),
  INDEX `uniqueid` (`uniqueid`),
  INDEX `Aid` (`Aid`)
)
  COLLATE='utf8_general_ci'
  ENGINE=MyISAM
;
