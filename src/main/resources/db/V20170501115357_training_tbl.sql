CREATE TABLE ams.`training` (
  `id` bigint(20) NOT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  `training_date` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `batch1_fk` (`batch_id`),
  CONSTRAINT `batch1_fk` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`batch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
