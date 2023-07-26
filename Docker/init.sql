use mysql;

FLUSH PRIVILEGES;

DROP USER IF EXISTS 'root'@'localhost';


DROP USER IF EXISTS 'root'@'%';

FLUSH PRIVILEGES;

CREATE user 'root'@'%' identified WITH caching_sha2_password BY 'BlackOPS269*^';

FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

DROP USER IF EXISTS 'dc_user'@'%';

FLUSH PRIVILEGES;

CREATE user 'dc_user'@'%' identified WITH caching_sha2_password BY 'BlackOPS269*^';

FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON *.* TO 'dc_user'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CREATE database if not exists ra_mysql;

CREATE database if not exists relocation;

CREATE DATABASE if not EXISTS test_db;

use relocation;

CREATE database if not exists relocation;

use relocation;

DROP TABLE IF EXISTS datafeeds;

DROP TABLE IF EXISTS failed_jobs;

DROP TABLE IF EXISTS locations;

DROP TABLE IF EXISTS main_valuations;

DROP TABLE IF EXISTS migrations;

DROP TABLE IF EXISTS password_resets;

DROP TABLE IF EXISTS personal_access_tokens;

DROP TABLE IF EXISTS sec_buildings;

DROP TABLE IF EXISTS `sessions`;

DROP TABLE IF EXISTS team_invitations;

DROP TABLE IF EXISTS team_user;

DROP TABLE IF EXISTS teams;

DROP TABLE IF EXISTS users;

-- datafeeds: TABLE
    CREATE TABLE `datafeeds` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `data` double(10, 2) DEFAULT NULL,
        `dataset_name` tinyint DEFAULT NULL,
        `data_type` tinyint NOT NULL DEFAULT '1',
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 326 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

CREATE TABLE `users` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `email_verified_at` timestamp NULL DEFAULT NULL,
        `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
        `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
        `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
        `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `current_team_id` bigint unsigned DEFAULT NULL,
        `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `users_email_unique` (`email`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- failed_jobs: TABLE
    CREATE TABLE `failed_jobs` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
        `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
        `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`),
        UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- sessions: TABLE
    CREATE TABLE `sessions` (
        `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `user_id` bigint unsigned DEFAULT NULL,
        `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `user_agent` text COLLATE utf8mb4_unicode_ci,
        `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `last_activity` int NOT NULL,
        PRIMARY KEY (`id`),
        KEY `sessions_user_id_index` (`user_id`),
        KEY `sessions_last_activity_index` (`last_activity`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- migrations: TABLE
    CREATE TABLE `migrations` (
        `id` int unsigned NOT NULL AUTO_INCREMENT,
        `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `batch` int NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 13 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- password_resets: TABLE
    CREATE TABLE `password_resets` (
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        KEY `password_resets_email_index` (`email`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- No native definition for element: password_resets_email_index (index)
    -- personal_access_tokens: TABLE
    CREATE TABLE `personal_access_tokens` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `tokenable_id` bigint unsigned NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `abilities` text COLLATE utf8mb4_unicode_ci,
        `last_used_at` timestamp NULL DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
        KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`, `tokenable_id`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- No native definition for element: personal_access_tokens_tokenable_type_tokenable_id_index (index)
    -- teams: TABLE
    CREATE TABLE `teams` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `user_id` bigint unsigned NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `personal_team` tinyint(1) NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`),
        KEY `teams_user_id_index` (`user_id`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- team_invitations: TABLE
    CREATE TABLE `team_invitations` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `team_id` bigint unsigned NOT NULL,
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`, `email`),
        CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON
DELETE CASCADE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- team_user: TABLE
    CREATE TABLE `team_user` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `team_id` bigint unsigned NOT NULL,
        `user_id` bigint unsigned NOT NULL,
        `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`, `user_id`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
