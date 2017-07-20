CREATE TABLE ams.`batches` (
  `batch_no` bigint(20) NOT NULL,
  `batch_name` varchar(25) DEFAULT NULL,
  `college_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`batch_no`),
  KEY `college_id` (`college_id`),
  CONSTRAINT `batches_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
