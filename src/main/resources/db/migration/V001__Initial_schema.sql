CREATE TABLE `user` (
                        `user_id` varchar(32) NOT NULL,
                        `account_created` varchar(255) NOT NULL,
                        `account_updated` varchar(255) NOT NULL,
                        `email` varchar(255) DEFAULT NULL,
                        `first_name` varchar(255) DEFAULT NULL,
                        `last_name` varchar(255) DEFAULT NULL,
                        `middle_name` varchar(255) DEFAULT NULL,
                        `password` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`user_id`)

);

CREATE TABLE `lists` (
                         `list_id` varchar(32) NOT NULL,
                         `user_id` varchar(255) NOT NULL,
                         `account_created` varchar(255) NOT NULL,
                         `account_updated` varchar(255) NOT NULL,
                         `name` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`list_id`,`user_id`)
);

CREATE TABLE `task` (
                        `list_id` varchar(255) NOT NULL,
                        `task_id` varchar(32) NOT NULL,
                        `user_id` varchar(255) NOT NULL,
                        `account_created` varchar(255) NOT NULL,
                        `account_updated` varchar(255) NOT NULL,
                        `due_date` varchar(255) DEFAULT NULL,
                        `name` varchar(255) DEFAULT NULL,
                        `priority` varchar(255) DEFAULT NULL,
                        `status` varchar(255) DEFAULT NULL,
                        `summary` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`list_id`,`task_id`,`user_id`)
);

CREATE TABLE `comment` (
                           `id` varchar(32) NOT NULL,
                           `comment` varchar(255) DEFAULT NULL,
                           `comment_created` varchar(255) NOT NULL,
                           `comment_updated` varchar(255) NOT NULL,
                           `list_id` varchar(255) DEFAULT NULL,
                           `task_id` varchar(32) DEFAULT NULL,
                           `user_id` varchar(255) DEFAULT NULL,
                           PRIMARY KEY (`id`)
);


CREATE TABLE `remainder` (
                             `id` varchar(32) NOT NULL,
                             `date_time` varchar(255) DEFAULT NULL,
                             `tag_created` varchar(255) NOT NULL,
                             `tag_updated` varchar(255) NOT NULL,
                             `list_id` varchar(255) DEFAULT NULL,
                             `task_id` varchar(32) DEFAULT NULL,
                             `user_id` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
);

CREATE TABLE `tag` (
                       `tag_id` varchar(255) NOT NULL,
                       `tag_created` varchar(255) NOT NULL,
                       `tag_updated` varchar(255) NOT NULL,
                       `tagname` varchar(255) DEFAULT NULL,
                       `useri` varchar(255) DEFAULT NULL,
                       `list_id` varchar(255) DEFAULT NULL,
                       `task_id` varchar(32) DEFAULT NULL,
                       `user_id` varchar(255) DEFAULT NULL,
                       PRIMARY KEY (`tag_id`)

);


ALTER TABLE `user` ADD CONSTRAINT USER_PK unique (`email`);
ALTER TABLE `comment` ADD CONSTRAINT FK_COMMENT FOREIGN KEY (`list_id`, `task_id`, `user_id`) REFERENCES `task` (`list_id`, `task_id`, `user_id`);
ALTER TABLE `remainder` ADD CONSTRAINT FK_REMAINDER FOREIGN KEY (`list_id`, `task_id`, `user_id`) REFERENCES `task` (`list_id`, `task_id`, `user_id`);
ALTER TABLE `tag` ADD CONSTRAINT FK_TAG FOREIGN KEY (`list_id`, `task_id`, `user_id`) REFERENCES `task` (`list_id`, `task_id`, `user_id`);