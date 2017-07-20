CREATE TABLE ams.`students` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `department` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `mobile_no` varchar(250) DEFAULT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BATCH_FK` (`batch_id`),
  CONSTRAINT `BATCH_FK` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`batch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
