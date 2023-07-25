use mysql;

FLUSH PRIVILEGES;

DROP USER IF EXISTS 'root'@'localhost';


DROP USER IF EXISTS 'root'@'%';

FLUSH PRIVILEGES;

CREATE user 'root'@'%' identified WITH caching_sha2_password BY 'Bupe0617!&';

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

-- locations: TABLE
    CREATE TABLE `locations` (
        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
        `owner_firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `owner_lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `owner_id_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `owner_id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `owner_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `longitude` decimal(10, 7) NOT NULL,
        `latitude` decimal(10, 7) NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 134 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- main_valuations: TABLE
    CREATE TABLE `main_valuations` (
        `uuid` varchar(100) DEFAULT NULL,
        `PAP_ID` varchar(100) DEFAULT NULL,
        `today` varchar(100) DEFAULT NULL,
        `x1a_mmiliki` varchar(100) DEFAULT NULL,
        `status` varchar(100) DEFAULT NULL,
        `gender` varchar(100) DEFAULT NULL,
        `pap_id_original` varchar(100) DEFAULT NULL,
        `mobile` varchar(100) DEFAULT NULL,
        `municipality` varchar(100) DEFAULT NULL,
        `ward` varchar(100) DEFAULT NULL,
        `mtaa_street` varchar(100) DEFAULT NULL,
        `x1b_anuani` varchar(100) DEFAULT NULL,
        `maelezo_12` longtext,
        `matumizi_13` longtext,
        `building_usage` varchar(100) DEFAULT NULL,
        `building_type` varchar(100) DEFAULT NULL,
        `nos_building` varchar(100) DEFAULT NULL,
        `nos_sec_building` varchar(100) DEFAULT NULL,
        `sec_build_size_sqm` varchar(100) DEFAULT NULL,
        `nos_multistorey` varchar(100) DEFAULT NULL,
        `multi_st_size_sqm` varchar(100) DEFAULT NULL,
        `multi_storey_value` varchar(100) DEFAULT NULL,
        `x2_maelezo_ya_jumla_ya_mali` varchar(100) DEFAULT NULL,
        `x3a_paa` varchar(100) DEFAULT NULL,
        `x3a_other_specify` longtext,
        `x3b_kuta` varchar(100) DEFAULT NULL,
        `x3b_other_specify` longtext,
        `x3c_dari` varchar(100) DEFAULT NULL,
        `x3c_other_specify` varchar(100) DEFAULT NULL,
        `x3d_madirisha` longtext,
        `x3d_other_specify` varchar(100) DEFAULT NULL,
        `x3e_milango` varchar(100) DEFAULT NULL,
        `x3e_other_specify` varchar(100) DEFAULT NULL,
        `x3f_sakafu` varchar(100) DEFAULT NULL,
        `x3f_other_specify` varchar(100) DEFAULT NULL,
        `sketch_mchoro_wa_jengo` varchar(100) DEFAULT NULL,
        `sketch_mchoro_wa_jengo_url` varchar(100) DEFAULT NULL,
        `building_area_calculations` longtext,
        `building_area` varchar(100) DEFAULT NULL,
        `x4_je_kuna_mazao` varchar(100) DEFAULT NULL,
        `x3g_vyumba` longtext,
        `idadi_ya_vyumba_makazi` varchar(100) DEFAULT NULL,
        `idadi_ya_vyumba_biashara` varchar(100) DEFAULT NULL,
        `maendelezo_mengine_100` longtext,
        `matumizi_makazi_biashara_kadirio_la_kodi_ya_jengo_101` longtext,
        `matumizi_makazi_kadirio_la_kodi_ya_jengo` longtext,
        `matumizi_biashara_kadirio_la_kodi_ya_jengo` longtext,
        `wastan_wa_kodi_kwa_mwezi` varchar(100) DEFAULT NULL,
        `crop_1` varchar(100) DEFAULT NULL,
        `no_crop_1` varchar(100) DEFAULT NULL,
        `crop_1_growth_rate` varchar(100) DEFAULT NULL,
        `Crop1_rate` varchar(100) DEFAULT NULL,
        `Crop1_Value` varchar(100) DEFAULT NULL,
        `crop_2` varchar(100) DEFAULT NULL,
        `no_crop_2` varchar(100) DEFAULT NULL,
        `crop2_growth_rate` varchar(100) DEFAULT NULL,
        `_Crop2_rate_` varchar(100) DEFAULT NULL,
        `Crop2_Value` varchar(100) DEFAULT NULL,
        `crop_3` varchar(100) DEFAULT NULL,
        `no_crop_3` varchar(100) DEFAULT NULL,
        `crop3_growth_rate` varchar(100) DEFAULT NULL,
        `_Crop3_rate_` varchar(100) DEFAULT NULL,
        `Crop3_Value` varchar(100) DEFAULT NULL,
        `crop_4` varchar(100) DEFAULT NULL,
        `no_crop_4` varchar(100) DEFAULT NULL,
        `crop_4_growth_rate` varchar(100) DEFAULT NULL,
        `Crop4_rate` varchar(100) DEFAULT NULL,
        `Crop4_Value` varchar(100) DEFAULT NULL,
        `crop_5` varchar(100) DEFAULT NULL,
        `no_crop_5` varchar(100) DEFAULT NULL,
        `crop_5_growth_rate` varchar(100) DEFAULT NULL,
        `Crop5_rate` varchar(100) DEFAULT NULL,
        `Crop5_Value` varchar(100) DEFAULT NULL,
        `crop_6` varchar(100) DEFAULT NULL,
        `no_crop_6` varchar(100) DEFAULT NULL,
        `crop_6_growth_rate` varchar(100) DEFAULT NULL,
        `Crop6_rate` varchar(100) DEFAULT NULL,
        `Crop6_Value` varchar(100) DEFAULT NULL,
        `crop_7` varchar(100) DEFAULT NULL,
        `no_crop_7` varchar(100) DEFAULT NULL,
        `crop_7growth_rate` varchar(100) DEFAULT NULL,
        `Crop7_rate` varchar(100) DEFAULT NULL,
        `Crop7_Value` varchar(100) DEFAULT NULL,
        `crop_8` varchar(100) DEFAULT NULL,
        `no_crop_8` varchar(100) DEFAULT NULL,
        `crop_8_growth_rate` varchar(100) DEFAULT NULL,
        `Crop8_rate` varchar(100) DEFAULT NULL,
        `Crop8_Value` varchar(100) DEFAULT NULL,
        `Total_Value` varchar(100) DEFAULT NULL,
        `x4b_ukubwa_wa_shamba_eneo_kadirio_sqm` varchar(100) DEFAULT NULL,
        `owner_picture_front_147` longtext,
        `owner_picture_front_148` longtext,
        `picha_ya_mmiliki_kwa_mbele_url` longtext,
        `picha_ya_mmiliki_kwa_pembeni_url` longtext,
        `reasons_for_adjustment` longtext,
        `derived_adjsted_rate` varchar(100) DEFAULT NULL,
        `adopted_price` varchar(100) DEFAULT NULL,
        `adjustments_and_workings_percent` varchar(100) DEFAULT NULL,
        `jina_la_mmiliki` varchar(100) DEFAULT NULL,
        `mobile_no` varchar(100) DEFAULT NULL,
        `saini_ya_mmiliki_158` varchar(100) DEFAULT NULL,
        `saini_ya_mmiliki_url_159` longtext,
        `main_building_value` varchar(100) DEFAULT NULL,
        `secondary_build_value` varchar(100) DEFAULT NULL,
        `Total_Building_Value` varchar(100) DEFAULT NULL,
        `accomodation_allowance` varchar(100) DEFAULT NULL,
        `transport_allowance` varchar(100) DEFAULT NULL,
        `crop_value_Final` varchar(100) DEFAULT NULL,
        `land_size_sqm` varchar(100) DEFAULT NULL,
        `land_rate_TZS` varchar(100) DEFAULT NULL,
        `land_value_166` varchar(100) DEFAULT NULL,
        `disturbance_allowance` varchar(100) DEFAULT NULL,
        `total_compensation` varchar(100) DEFAULT NULL,
        `jina_la_mmiliki_pap_name` varchar(100) DEFAULT NULL,
        `mobile_pap_phone` varchar(100) DEFAULT NULL,
        `saini_ya_mmiliki_173` varchar(100) DEFAULT NULL,
        `saini_ya_mmiliki_url_174` longtext,
        `jina_la_mthamini` varchar(100) DEFAULT NULL,
        `saini_ya_mthamini` varchar(100) DEFAULT NULL,
        `saini_ya_mthamini_url` longtext,
        `id` varchar(100) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
        `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- sec_buildings: TABLE
    CREATE TABLE `sec_buildings` (
        `uuid` varchar(255) DEFAULT NULL,
        `HESABU_ZA_ENEO` varchar(255) DEFAULT NULL,
        `ENEO_LA_NYUMBA_RFA` varchar(255) DEFAULT NULL,
        `6b_Ukubwa_wa_eneo_sqm` varchar(255) DEFAULT NULL,
        `Adopted_Price` varchar(255) DEFAULT NULL,
        `Adjust_workings_percent` varchar(255) DEFAULT NULL,
        `reasons_for_adjustment` varchar(255) DEFAULT NULL,
        `Derived_Adjsted_Rate` varchar(255) DEFAULT NULL,
        `Building_value` varchar(255) DEFAULT NULL,
        `submission__uuid` varchar(255) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;


INSERT INTO
    users (
        id,
        name,
        email,
        email_verified_at,
        password,
        two_factor_secret,
        two_factor_recovery_codes,
        two_factor_confirmed_at,
        remember_token,
        current_team_id,
        profile_photo_path,
        created_at,
        updated_at
    )
values
    (
        1,
        'Bob Mwaimu',
        'bobMwaimu@relocation.co.tz',
        null,
        '$2y$10$3puO2EN382T5..LLnmpCHOTLrmFeOckHgLPG08BOPnxjgssARauVu',
        null,
        null,
        null,
        null,
        null,
        null,
        '2023-02-15 16:51:33',
        '2023-02-15 16:51:33'
    );

-- DB operations ADD
    -- datafeeds.sql failed_jobs.sql locations.sql main_valuations.sql migrations.sql password_resets.sql personal_access_tokens.sql sec_buildings.sql sessions.sql team_invitations.sql teams.sql team_user.sql users.sql
INSERT INTO
    datafeeds (
        id,
        label,
        data,
        dataset_name,
        data_type,
        created_at,
        updated_at
    )
values
    (
        1,
        '12-01-2020',
        732,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        2,
        '01-01-2021',
        610,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        3,
        '02-01-2021',
        610,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        4,
        '03-01-2021',
        504,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        5,
        '04-01-2021',
        504,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        6,
        '05-01-2021',
        504,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        7,
        '06-01-2021',
        349,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        8,
        '07-01-2021',
        349,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        9,
        '08-01-2021',
        504,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        10,
        '09-01-2021',
        342,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        11,
        '10-01-2021',
        504,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        12,
        '11-01-2021',
        610,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        13,
        '12-01-2021',
        391,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        14,
        '01-01-2022',
        192,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        15,
        '02-01-2022',
        154,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        16,
        '03-01-2022',
        273,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        17,
        '04-01-2022',
        191,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        18,
        '05-01-2022',
        191,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        19,
        '06-01-2022',
        126,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        20,
        '07-01-2022',
        263,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        21,
        '08-01-2022',
        349,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        22,
        '09-01-2022',
        252,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        23,
        '10-01-2022',
        423,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        24,
        '11-01-2022',
        622,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        25,
        '12-01-2022',
        470,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        26,
        '01-01-2023',
        532,
        1,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        27,
        null,
        532,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        28,
        null,
        532,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        29,
        null,
        532,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        30,
        null,
        404,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        31,
        null,
        404,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        32,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        33,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        34,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        35,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        36,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        37,
        null,
        234,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        38,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        39,
        null,
        234,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        40,
        null,
        234,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        41,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        42,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        43,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        44,
        null,
        388,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        45,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        46,
        null,
        202,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        47,
        null,
        202,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        48,
        null,
        202,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        49,
        null,
        202,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        50,
        null,
        314,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        51,
        null,
        720,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        52,
        null,
        642,
        2,
        1,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        53,
        '12-01-2020',
        622,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        54,
        '01-01-2021',
        622,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        55,
        '02-01-2021',
        426,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        56,
        '03-01-2021',
        471,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        57,
        '04-01-2021',
        365,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        58,
        '05-01-2021',
        365,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        59,
        '06-01-2021',
        238,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        60,
        '07-01-2021',
        324,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        61,
        '08-01-2021',
        288,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        62,
        '09-01-2021',
        206,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        63,
        '10-01-2021',
        324,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        64,
        '11-01-2021',
        324,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        65,
        '12-01-2021',
        500,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        66,
        '01-01-2022',
        409,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        67,
        '02-01-2022',
        409,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        68,
        '03-01-2022',
        273,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        69,
        '04-01-2022',
        232,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        70,
        '05-01-2022',
        273,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        71,
        '06-01-2022',
        500,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        72,
        '07-01-2022',
        570,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        73,
        '08-01-2022',
        767,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        74,
        '09-01-2022',
        808,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        75,
        '10-01-2022',
        685,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        76,
        '11-01-2022',
        767,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        77,
        '12-01-2022',
        685,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        78,
        '01-01-2023',
        685,
        1,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        79,
        null,
        732,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        80,
        null,
        610,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        81,
        null,
        610,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        82,
        null,
        504,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        83,
        null,
        504,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        84,
        null,
        504,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        85,
        null,
        349,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        86,
        null,
        349,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        87,
        null,
        504,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        88,
        null,
        342,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        89,
        null,
        504,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        90,
        null,
        610,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        91,
        null,
        391,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        92,
        null,
        192,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        93,
        null,
        154,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        94,
        null,
        273,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        95,
        null,
        191,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        96,
        null,
        191,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        97,
        null,
        126,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        98,
        null,
        263,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        99,
        null,
        349,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        100,
        null,
        252,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        101,
        null,
        423,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        102,
        null,
        622,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        103,
        null,
        470,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        104,
        null,
        532,
        2,
        2,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        105,
        '12-01-2020',
        540,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        106,
        '01-01-2021',
        466,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        107,
        '02-01-2021',
        540,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        108,
        '03-01-2021',
        466,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        109,
        '04-01-2021',
        385,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        110,
        '05-01-2021',
        432,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        111,
        '06-01-2021',
        334,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        112,
        '07-01-2021',
        334,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        113,
        '08-01-2021',
        289,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        114,
        '09-01-2021',
        289,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        115,
        '10-01-2021',
        200,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        116,
        '11-01-2021',
        289,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        117,
        '12-01-2021',
        222,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        118,
        '01-01-2022',
        289,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        119,
        '02-01-2022',
        289,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        120,
        '03-01-2022',
        403,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        121,
        '04-01-2022',
        554,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        122,
        '05-01-2022',
        304,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        123,
        '06-01-2022',
        289,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        124,
        '07-01-2022',
        270,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        125,
        '08-01-2022',
        134,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        126,
        '09-01-2022',
        270,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        127,
        '10-01-2022',
        829,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        128,
        '11-01-2022',
        344,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        129,
        '12-01-2022',
        388,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        130,
        '01-01-2023',
        364,
        1,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        131,
        null,
        689,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        132,
        null,
        562,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        133,
        null,
        477,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        134,
        null,
        477,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        135,
        null,
        477,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        136,
        null,
        477,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        137,
        null,
        458,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        138,
        null,
        314,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        139,
        null,
        430,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        140,
        null,
        378,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        141,
        null,
        430,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        142,
        null,
        498,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        143,
        null,
        642,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        144,
        null,
        350,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        145,
        null,
        145,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        146,
        null,
        145,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        147,
        null,
        354,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        148,
        null,
        260,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        149,
        null,
        188,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        150,
        null,
        188,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        151,
        null,
        300,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        152,
        null,
        300,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        153,
        null,
        282,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        154,
        null,
        364,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        155,
        null,
        660,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        156,
        null,
        554,
        2,
        3,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        157,
        '12-01-2020',
        800,
        1,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        158,
        '01-01-2021',
        1600,
        1,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        159,
        '02-01-2021',
        900,
        1,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        160,
        '03-01-2021',
        1300,
        1,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        161,
        '04-01-2021',
        1950,
        1,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        162,
        '05-01-2021',
        1700,
        1,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        163,
        null,
        4900,
        2,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        164,
        null,
        2600,
        2,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        165,
        null,
        5350,
        2,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        166,
        null,
        4800,
        2,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        167,
        null,
        5200,
        2,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        168,
        null,
        4800,
        2,
        4,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        169,
        '2022-05-18 11:30:00',
        57.81,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        170,
        '2022-05-18 12:00:00',
        57.75,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        171,
        '2022-05-18 12:30:00',
        55.48,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        172,
        '2022-05-18 13:00:00',
        54.28,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        173,
        '2022-05-18 13:30:00',
        53.14,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        174,
        '2022-05-18 14:00:00',
        52.25,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        175,
        '2022-05-18 14:30:00',
        51.04,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        176,
        '2022-05-18 15:00:00',
        52.49,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        177,
        '2022-05-18 15:30:00',
        55.49,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        178,
        '2022-05-18 16:00:00',
        56.87,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        179,
        '2022-05-18 16:30:00',
        53.73,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        180,
        '2022-05-18 17:00:00',
        56.42,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        181,
        '2022-05-18 17:30:00',
        58.06,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        182,
        '2022-05-18 18:00:00',
        55.62,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        183,
        '2022-05-18 18:30:00',
        58.16,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        184,
        '2022-05-18 19:00:00',
        55.22,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        185,
        '2022-05-18 19:30:00',
        58.67,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        186,
        '2022-05-18 20:00:00',
        60.18,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        187,
        '2022-05-18 20:30:00',
        61.31,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        188,
        '2022-05-18 21:00:00',
        63.25,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        189,
        '2022-05-18 21:30:00',
        65.91,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        190,
        '2022-05-18 22:00:00',
        64.44,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        191,
        '2022-05-18 22:30:00',
        65.97,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        192,
        '2022-05-18 23:00:00',
        62.27,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        193,
        '2022-05-18 23:30:00',
        60.96,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        194,
        '2022-05-19 00:00:00',
        59.34,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        195,
        '2022-05-19 00:30:00',
        55.07,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        196,
        '2022-05-19 01:00:00',
        59.85,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        197,
        '2022-05-19 01:30:00',
        53.79,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        198,
        '2022-05-19 02:00:00',
        51.92,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        199,
        '2022-05-19 02:30:00',
        50.95,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        200,
        '2022-05-19 03:00:00',
        49.65,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        201,
        '2022-05-19 03:30:00',
        48.09,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        202,
        '2022-05-19 04:00:00',
        49.81,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        203,
        '2022-05-19 04:30:00',
        47.85,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        204,
        '2022-05-19 05:00:00',
        49.52,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        205,
        '2022-05-19 05:30:00',
        50.21,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        206,
        '2022-05-19 06:00:00',
        52.22,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        207,
        '2022-05-19 06:30:00',
        54.42,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        208,
        '2022-05-19 07:00:00',
        53.42,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        209,
        '2022-05-19 07:30:00',
        50.91,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        210,
        '2022-05-19 08:00:00',
        58.52,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        211,
        '2022-05-19 08:30:00',
        53.37,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        212,
        '2022-05-19 09:00:00',
        57.58,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        213,
        '2022-05-19 09:30:00',
        59.09,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        214,
        '2022-05-19 10:00:00',
        59.36,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        215,
        '2022-05-19 10:30:00',
        58.71,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        216,
        '2022-05-19 11:00:00',
        59.42,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        217,
        '2022-05-19 11:30:00',
        55.93,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        218,
        '2022-05-19 12:00:00',
        57.71,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        219,
        '2022-05-19 12:30:00',
        50.62,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        220,
        '2022-05-19 13:00:00',
        56.28,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        221,
        '2022-05-19 13:30:00',
        57.37,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        222,
        '2022-05-19 14:00:00',
        53.08,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        223,
        '2022-05-19 14:30:00',
        55.94,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        224,
        '2022-05-19 15:00:00',
        55.82,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        225,
        '2022-05-19 15:30:00',
        53.94,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        226,
        '2022-05-19 16:00:00',
        52.65,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        227,
        '2022-05-19 16:30:00',
        50.25,
        1,
        5,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        228,
        'United States',
        35,
        null,
        6,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        229,
        'Italy',
        30,
        null,
        6,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        230,
        'Other',
        35,
        null,
        6,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        231,
        '12-01-2020',
        73,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        232,
        '01-01-2021',
        64,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        233,
        '02-01-2021',
        73,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        234,
        '03-01-2021',
        69,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        235,
        '04-01-2021',
        104,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        236,
        '05-01-2021',
        104,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        237,
        '06-01-2021',
        164,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        238,
        '07-01-2021',
        164,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        239,
        '08-01-2021',
        120,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        240,
        '09-01-2021',
        120,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        241,
        '10-01-2021',
        120,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        242,
        '11-01-2021',
        148,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        243,
        '12-01-2021',
        142,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        244,
        '01-01-2022',
        104,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        245,
        '02-01-2022',
        122,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        246,
        '03-01-2022',
        110,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        247,
        '04-01-2022',
        104,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        248,
        '05-01-2022',
        152,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        249,
        '06-01-2022',
        166,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        250,
        '07-01-2022',
        233,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        251,
        '08-01-2022',
        268,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        252,
        '09-01-2022',
        252,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        253,
        '10-01-2022',
        284,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        254,
        '11-01-2022',
        284,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        255,
        '12-01-2022',
        333,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        256,
        '01-01-2023',
        323,
        1,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        257,
        null,
        184,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        258,
        null,
        86,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        259,
        null,
        42,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        260,
        null,
        378,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        261,
        null,
        42,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        262,
        null,
        243,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        263,
        null,
        38,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        264,
        null,
        120,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        265,
        null,
        0,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        266,
        null,
        0,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        267,
        null,
        42,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        268,
        null,
        0,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        269,
        null,
        84,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        270,
        null,
        0,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        271,
        null,
        276,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        272,
        null,
        0,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        273,
        null,
        124,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        274,
        null,
        42,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        275,
        null,
        124,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        276,
        null,
        88,
        2,
        8,
        '2023-02-15 16:40:35',
        '2023-02-15 16:40:35'
    ),
    (
        277,
        null,
        88,
        2,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        278,
        null,
        215,
        2,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        279,
        null,
        156,
        2,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        280,
        null,
        88,
        2,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        281,
        null,
        124,
        2,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        282,
        null,
        64,
        2,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        283,
        null,
        122,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        284,
        null,
        170,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        285,
        null,
        192,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        286,
        null,
        86,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        287,
        null,
        102,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        288,
        null,
        124,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        289,
        null,
        115,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        290,
        null,
        115,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        291,
        null,
        56,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        292,
        null,
        104,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        293,
        null,
        0,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        294,
        null,
        72,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        295,
        null,
        208,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        296,
        null,
        186,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        297,
        null,
        223,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        298,
        null,
        188,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        299,
        null,
        114,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        300,
        null,
        162,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        301,
        null,
        200,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        302,
        null,
        150,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        303,
        null,
        118,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        304,
        null,
        118,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        305,
        null,
        76,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        306,
        null,
        122,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        307,
        null,
        230,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        308,
        null,
        268,
        3,
        8,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        309,
        '12-01-2020',
        6200,
        1,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        310,
        '01-01-2021',
        9200,
        1,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        311,
        '02-01-2021',
        6600,
        1,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        312,
        '03-01-2021',
        8800,
        1,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        313,
        '04-01-2021',
        5200,
        1,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        314,
        '05-01-2021',
        9200,
        1,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        315,
        null,
        -4000,
        2,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        316,
        null,
        -2600,
        2,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        317,
        null,
        -5350,
        2,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        318,
        null,
        -4000,
        2,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        319,
        null,
        -7500,
        2,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        320,
        null,
        -2000,
        2,
        9,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        321,
        'Reasons',
        131,
        1,
        10,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        322,
        null,
        100,
        2,
        10,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        323,
        null,
        91,
        3,
        10,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        324,
        null,
        65,
        4,
        10,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    ),
    (
        325,
        null,
        72,
        5,
        10,
        '2023-02-15 16:40:36',
        '2023-02-15 16:40:36'
    );

;


INSERT INTO
    locations (
        id,
        owner_firstname,
        owner_lastname,
        owner_id_type,
        owner_id_number,
        owner_mobile_number,
        region,
        district,
        ward,
        longitude,
        latitude,
        created_at,
        updated_at
    )
values
    (
        1,
        'John',
        'Doe',
        'ID',
        '1234567890',
        '555-123-4567',
        'East',
        'New York',
        'Manhattan',
        -73.9712000,
        40.7831000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        2,
        'Mary',
        'Smith',
        'Passport',
        'ASD1234567',
        '555-987-6543',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        3,
        'David',
        'Johnson',
        'Driver License',
        'QWE0987654',
        '555-555-5555',
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        4,
        'Emily',
        'Brown',
        'Passport',
        'ZXC4567890',
        '555-111-2222',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        5,
        'Steven',
        'Anderson',
        'ID',
        '9876543210',
        '555-444-3333',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        6,
        'Rachel',
        'Miller',
        'Driver License',
        'POI8765432',
        '555-222-1111',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        7,
        'Jasmine',
        'Reyes',
        'Passport',
        'JKL5678901',
        '555-111-2222',
        'North',
        'Minnesota',
        'Minneapolis',
        -93.2650000,
        44.9778000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        8,
        'Benjamin',
        'Wong',
        null,
        '2345678901',
        '555-222-3333',
        'West',
        'California',
        'San Francisco',
        -122.4194000,
        37.7749000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        9,
        'Sarah',
        'Nguyen',
        'Driver License',
        'QWERTYUIOP',
        '555-333-4444',
        'East',
        'New York',
        'Brooklyn',
        -73.9442000,
        40.6782000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        10,
        'Michael',
        'Garcia',
        'ID',
        '3456789012',
        '555-444-5555',
        'South',
        'Florida',
        'Orlando',
        -81.3792000,
        28.5383000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        11,
        'Amanda',
        'Taylor',
        'Passport',
        'ASDFGHJKL',
        '555-555-6666',
        'West',
        'California',
        'San Diego',
        -117.1611000,
        32.7157000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        12,
        'Kevin',
        'Clark',
        null,
        'ZXCVBNMASD',
        '555-666-7777',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        13,
        'Samantha',
        'Morris',
        'ID',
        '4567890123',
        '555-777-8888',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        14,
        'Jacob',
        'Martin',
        'Passport',
        'QWERTYUIO',
        '555-888-9999',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        15,
        'Olivia',
        'Smith',
        'Driver License',
        'POIUYTREWQ',
        null,
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        16,
        'Emily',
        'Jackson',
        'ID',
        '5678901234',
        '555-000-1111',
        'North',
        'Minnesota',
        'St. Paul',
        -93.0890000,
        44.9537000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        17,
        'Daniel',
        'Ramirez',
        'Passport',
        'ASDFGHJKL',
        '555-111-2222',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        18,
        'Julia',
        'Phillips',
        'Driver License',
        'ZXCVBNMLKJ',
        '555-222-3333',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        19,
        'Nicholas',
        'Gomez',
        'ID',
        '6789012345',
        null,
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-07 20:20:23',
        '2023-03-07 20:20:23'
    ),
    (
        20,
        'John',
        'Doe',
        'ID',
        '1234567890',
        '555-123-4567',
        'East',
        'New York',
        'Manhattan',
        -73.9712000,
        40.7831000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        21,
        'Mary',
        'Smith',
        'Passport',
        'ASD1234567',
        '555-987-6543',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        22,
        'David',
        'Johnson',
        'Driver License',
        'QWE0987654',
        '555-555-5555',
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        23,
        'Emily',
        'Brown',
        'Passport',
        'ZXC4567890',
        '555-111-2222',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        24,
        'Steven',
        'Anderson',
        'ID',
        '9876543210',
        '555-444-3333',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        25,
        'Rachel',
        'Miller',
        'Driver License',
        'POI8765432',
        '555-222-1111',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        26,
        'Jasmine',
        'Reyes',
        'Passport',
        'JKL5678901',
        '555-111-2222',
        'North',
        'Minnesota',
        'Minneapolis',
        -93.2650000,
        44.9778000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        27,
        'Benjamin',
        'Wong',
        null,
        '2345678901',
        '555-222-3333',
        'West',
        'California',
        'San Francisco',
        -122.4194000,
        37.7749000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        28,
        'Sarah',
        'Nguyen',
        'Driver License',
        'QWERTYUIOP',
        '555-333-4444',
        'East',
        'New York',
        'Brooklyn',
        -73.9442000,
        40.6782000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        29,
        'Michael',
        'Garcia',
        'ID',
        '3456789012',
        '555-444-5555',
        'South',
        'Florida',
        'Orlando',
        -81.3792000,
        28.5383000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        30,
        'Amanda',
        'Taylor',
        'Passport',
        'ASDFGHJKL',
        '555-555-6666',
        'West',
        'California',
        'San Diego',
        -117.1611000,
        32.7157000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        31,
        'Kevin',
        'Clark',
        null,
        'ZXCVBNMASD',
        '555-666-7777',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        32,
        'Samantha',
        'Morris',
        'ID',
        '4567890123',
        '555-777-8888',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        33,
        'Jacob',
        'Martin',
        'Passport',
        'QWERTYUIO',
        '555-888-9999',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        34,
        'Olivia',
        'Smith',
        'Driver License',
        'POIUYTREWQ',
        null,
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        35,
        'Emily',
        'Jackson',
        'ID',
        '5678901234',
        '555-000-1111',
        'North',
        'Minnesota',
        'St. Paul',
        -93.0890000,
        44.9537000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        36,
        'Daniel',
        'Ramirez',
        'Passport',
        'ASDFGHJKL',
        '555-111-2222',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        37,
        'Julia',
        'Phillips',
        'Driver License',
        'ZXCVBNMLKJ',
        '555-222-3333',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        38,
        'Nicholas',
        'Gomez',
        'ID',
        '6789012345',
        null,
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:33:18',
        '2023-03-08 18:33:18'
    ),
    (
        39,
        'John',
        'Doe',
        'ID',
        '1234567890',
        '555-123-4567',
        'East',
        'New York',
        'Manhattan',
        -73.9712000,
        40.7831000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        40,
        'Mary',
        'Smith',
        'Passport',
        'ASD1234567',
        '555-987-6543',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        41,
        'David',
        'Johnson',
        'Driver License',
        'QWE0987654',
        '555-555-5555',
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        42,
        'Emily',
        'Brown',
        'Passport',
        'ZXC4567890',
        '555-111-2222',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        43,
        'Steven',
        'Anderson',
        'ID',
        '9876543210',
        '555-444-3333',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        44,
        'Rachel',
        'Miller',
        'Driver License',
        'POI8765432',
        '555-222-1111',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        45,
        'Jasmine',
        'Reyes',
        'Passport',
        'JKL5678901',
        '555-111-2222',
        'North',
        'Minnesota',
        'Minneapolis',
        -93.2650000,
        44.9778000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        46,
        'Benjamin',
        'Wong',
        null,
        '2345678901',
        '555-222-3333',
        'West',
        'California',
        'San Francisco',
        -122.4194000,
        37.7749000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        47,
        'Sarah',
        'Nguyen',
        'Driver License',
        'QWERTYUIOP',
        '555-333-4444',
        'East',
        'New York',
        'Brooklyn',
        -73.9442000,
        40.6782000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        48,
        'Michael',
        'Garcia',
        'ID',
        '3456789012',
        '555-444-5555',
        'South',
        'Florida',
        'Orlando',
        -81.3792000,
        28.5383000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        49,
        'Amanda',
        'Taylor',
        'Passport',
        'ASDFGHJKL',
        '555-555-6666',
        'West',
        'California',
        'San Diego',
        -117.1611000,
        32.7157000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        50,
        'Kevin',
        'Clark',
        null,
        'ZXCVBNMASD',
        '555-666-7777',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        51,
        'Samantha',
        'Morris',
        'ID',
        '4567890123',
        '555-777-8888',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        52,
        'Jacob',
        'Martin',
        'Passport',
        'QWERTYUIO',
        '555-888-9999',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        53,
        'Olivia',
        'Smith',
        'Driver License',
        'POIUYTREWQ',
        null,
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        54,
        'Emily',
        'Jackson',
        'ID',
        '5678901234',
        '555-000-1111',
        'North',
        'Minnesota',
        'St. Paul',
        -93.0890000,
        44.9537000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        55,
        'Daniel',
        'Ramirez',
        'Passport',
        'ASDFGHJKL',
        '555-111-2222',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        56,
        'Julia',
        'Phillips',
        'Driver License',
        'ZXCVBNMLKJ',
        '555-222-3333',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        57,
        'Nicholas',
        'Gomez',
        'ID',
        '6789012345',
        null,
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:37:50',
        '2023-03-08 18:37:50'
    ),
    (
        58,
        'John',
        'Doe',
        'ID',
        '1234567890',
        '555-123-4567',
        'East',
        'New York',
        'Manhattan',
        -73.9712000,
        40.7831000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        59,
        'Mary',
        'Smith',
        'Passport',
        'ASD1234567',
        '555-987-6543',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        60,
        'David',
        'Johnson',
        'Driver License',
        'QWE0987654',
        '555-555-5555',
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        61,
        'Emily',
        'Brown',
        'Passport',
        'ZXC4567890',
        '555-111-2222',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        62,
        'Steven',
        'Anderson',
        'ID',
        '9876543210',
        '555-444-3333',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        63,
        'Rachel',
        'Miller',
        'Driver License',
        'POI8765432',
        '555-222-1111',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        64,
        'Jasmine',
        'Reyes',
        'Passport',
        'JKL5678901',
        '555-111-2222',
        'North',
        'Minnesota',
        'Minneapolis',
        -93.2650000,
        44.9778000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        65,
        'Benjamin',
        'Wong',
        null,
        '2345678901',
        '555-222-3333',
        'West',
        'California',
        'San Francisco',
        -122.4194000,
        37.7749000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        66,
        'Sarah',
        'Nguyen',
        'Driver License',
        'QWERTYUIOP',
        '555-333-4444',
        'East',
        'New York',
        'Brooklyn',
        -73.9442000,
        40.6782000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        67,
        'Michael',
        'Garcia',
        'ID',
        '3456789012',
        '555-444-5555',
        'South',
        'Florida',
        'Orlando',
        -81.3792000,
        28.5383000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        68,
        'Amanda',
        'Taylor',
        'Passport',
        'ASDFGHJKL',
        '555-555-6666',
        'West',
        'California',
        'San Diego',
        -117.1611000,
        32.7157000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        69,
        'Kevin',
        'Clark',
        null,
        'ZXCVBNMASD',
        '555-666-7777',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        70,
        'Samantha',
        'Morris',
        'ID',
        '4567890123',
        '555-777-8888',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        71,
        'Jacob',
        'Martin',
        'Passport',
        'QWERTYUIO',
        '555-888-9999',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        72,
        'Olivia',
        'Smith',
        'Driver License',
        'POIUYTREWQ',
        null,
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        73,
        'Emily',
        'Jackson',
        'ID',
        '5678901234',
        '555-000-1111',
        'North',
        'Minnesota',
        'St. Paul',
        -93.0890000,
        44.9537000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        74,
        'Daniel',
        'Ramirez',
        'Passport',
        'ASDFGHJKL',
        '555-111-2222',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        75,
        'Julia',
        'Phillips',
        'Driver License',
        'ZXCVBNMLKJ',
        '555-222-3333',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        76,
        'Nicholas',
        'Gomez',
        'ID',
        '6789012345',
        null,
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:39:23',
        '2023-03-08 18:39:23'
    ),
    (
        77,
        'John',
        'Doe',
        'ID',
        '1234567890',
        '555-123-4567',
        'East',
        'New York',
        'Manhattan',
        -73.9712000,
        40.7831000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        78,
        'Mary',
        'Smith',
        'Passport',
        'ASD1234567',
        '555-987-6543',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        79,
        'David',
        'Johnson',
        'Driver License',
        'QWE0987654',
        '555-555-5555',
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        80,
        'Emily',
        'Brown',
        'Passport',
        'ZXC4567890',
        '555-111-2222',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        81,
        'Steven',
        'Anderson',
        'ID',
        '9876543210',
        '555-444-3333',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        82,
        'Rachel',
        'Miller',
        'Driver License',
        'POI8765432',
        '555-222-1111',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        83,
        'Jasmine',
        'Reyes',
        'Passport',
        'JKL5678901',
        '555-111-2222',
        'North',
        'Minnesota',
        'Minneapolis',
        -93.2650000,
        44.9778000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        84,
        'Benjamin',
        'Wong',
        null,
        '2345678901',
        '555-222-3333',
        'West',
        'California',
        'San Francisco',
        -122.4194000,
        37.7749000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        85,
        'Sarah',
        'Nguyen',
        'Driver License',
        'QWERTYUIOP',
        '555-333-4444',
        'East',
        'New York',
        'Brooklyn',
        -73.9442000,
        40.6782000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        86,
        'Michael',
        'Garcia',
        'ID',
        '3456789012',
        '555-444-5555',
        'South',
        'Florida',
        'Orlando',
        -81.3792000,
        28.5383000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        87,
        'Amanda',
        'Taylor',
        'Passport',
        'ASDFGHJKL',
        '555-555-6666',
        'West',
        'California',
        'San Diego',
        -117.1611000,
        32.7157000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        88,
        'Kevin',
        'Clark',
        null,
        'ZXCVBNMASD',
        '555-666-7777',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        89,
        'Samantha',
        'Morris',
        'ID',
        '4567890123',
        '555-777-8888',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        90,
        'Jacob',
        'Martin',
        'Passport',
        'QWERTYUIO',
        '555-888-9999',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        91,
        'Olivia',
        'Smith',
        'Driver License',
        'POIUYTREWQ',
        null,
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        92,
        'Emily',
        'Jackson',
        'ID',
        '5678901234',
        '555-000-1111',
        'North',
        'Minnesota',
        'St. Paul',
        -93.0890000,
        44.9537000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        93,
        'Daniel',
        'Ramirez',
        'Passport',
        'ASDFGHJKL',
        '555-111-2222',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        94,
        'Julia',
        'Phillips',
        'Driver License',
        'ZXCVBNMLKJ',
        '555-222-3333',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        95,
        'Nicholas',
        'Gomez',
        'ID',
        '6789012345',
        null,
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:45:48',
        '2023-03-08 18:45:48'
    ),
    (
        96,
        'John',
        'Doe',
        'ID',
        '1234567890',
        '555-123-4567',
        'East',
        'New York',
        'Manhattan',
        -73.9712000,
        40.7831000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        97,
        'Mary',
        'Smith',
        'Passport',
        'ASD1234567',
        '555-987-6543',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        98,
        'David',
        'Johnson',
        'Driver License',
        'QWE0987654',
        '555-555-5555',
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        99,
        'Emily',
        'Brown',
        'Passport',
        'ZXC4567890',
        '555-111-2222',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        100,
        'Steven',
        'Anderson',
        'ID',
        '9876543210',
        '555-444-3333',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        101,
        'Rachel',
        'Miller',
        'Driver License',
        'POI8765432',
        '555-222-1111',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        102,
        'Jasmine',
        'Reyes',
        'Passport',
        'JKL5678901',
        '555-111-2222',
        'North',
        'Minnesota',
        'Minneapolis',
        -93.2650000,
        44.9778000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        103,
        'Benjamin',
        'Wong',
        null,
        '2345678901',
        '555-222-3333',
        'West',
        'California',
        'San Francisco',
        -122.4194000,
        37.7749000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        104,
        'Sarah',
        'Nguyen',
        'Driver License',
        'QWERTYUIOP',
        '555-333-4444',
        'East',
        'New York',
        'Brooklyn',
        -73.9442000,
        40.6782000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        105,
        'Michael',
        'Garcia',
        'ID',
        '3456789012',
        '555-444-5555',
        'South',
        'Florida',
        'Orlando',
        -81.3792000,
        28.5383000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        106,
        'Amanda',
        'Taylor',
        'Passport',
        'ASDFGHJKL',
        '555-555-6666',
        'West',
        'California',
        'San Diego',
        -117.1611000,
        32.7157000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        107,
        'Kevin',
        'Clark',
        null,
        'ZXCVBNMASD',
        '555-666-7777',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        108,
        'Samantha',
        'Morris',
        'ID',
        '4567890123',
        '555-777-8888',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        109,
        'Jacob',
        'Martin',
        'Passport',
        'QWERTYUIO',
        '555-888-9999',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        110,
        'Olivia',
        'Smith',
        'Driver License',
        'POIUYTREWQ',
        null,
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        111,
        'Emily',
        'Jackson',
        'ID',
        '5678901234',
        '555-000-1111',
        'North',
        'Minnesota',
        'St. Paul',
        -93.0890000,
        44.9537000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        112,
        'Daniel',
        'Ramirez',
        'Passport',
        'ASDFGHJKL',
        '555-111-2222',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        113,
        'Julia',
        'Phillips',
        'Driver License',
        'ZXCVBNMLKJ',
        '555-222-3333',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        114,
        'Nicholas',
        'Gomez',
        'ID',
        '6789012345',
        null,
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 18:46:22',
        '2023-03-08 18:46:22'
    ),
    (
        115,
        'John',
        'Doe',
        'ID',
        '1234567890',
        '555-123-4567',
        'East',
        'New York',
        'Manhattan',
        -73.9712000,
        40.7831000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        116,
        'Mary',
        'Smith',
        'Passport',
        'ASD1234567',
        '555-987-6543',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        117,
        'David',
        'Johnson',
        'Driver License',
        'QWE0987654',
        '555-555-5555',
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        118,
        'Emily',
        'Brown',
        'Passport',
        'ZXC4567890',
        '555-111-2222',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        119,
        'Steven',
        'Anderson',
        'ID',
        '9876543210',
        '555-444-3333',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        120,
        'Rachel',
        'Miller',
        'Driver License',
        'POI8765432',
        '555-222-1111',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        121,
        'Jasmine',
        'Reyes',
        'Passport',
        'JKL5678901',
        '555-111-2222',
        'North',
        'Minnesota',
        'Minneapolis',
        -93.2650000,
        44.9778000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        122,
        'Benjamin',
        'Wong',
        null,
        '2345678901',
        '555-222-3333',
        'West',
        'California',
        'San Francisco',
        -122.4194000,
        37.7749000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        123,
        'Sarah',
        'Nguyen',
        'Driver License',
        'QWERTYUIOP',
        '555-333-4444',
        'East',
        'New York',
        'Brooklyn',
        -73.9442000,
        40.6782000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        124,
        'Michael',
        'Garcia',
        'ID',
        '3456789012',
        '555-444-5555',
        'South',
        'Florida',
        'Orlando',
        -81.3792000,
        28.5383000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        125,
        'Amanda',
        'Taylor',
        'Passport',
        'ASDFGHJKL',
        '555-555-6666',
        'West',
        'California',
        'San Diego',
        -117.1611000,
        32.7157000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        126,
        'Kevin',
        'Clark',
        null,
        'ZXCVBNMASD',
        '555-666-7777',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        127,
        'Samantha',
        'Morris',
        'ID',
        '4567890123',
        '555-777-8888',
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        128,
        'Jacob',
        'Martin',
        'Passport',
        'QWERTYUIO',
        '555-888-9999',
        'East',
        'Florida',
        'Miami',
        -80.1918000,
        25.7617000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        129,
        'Olivia',
        'Smith',
        'Driver License',
        'POIUYTREWQ',
        null,
        'South',
        'Texas',
        'Houston',
        -95.3698000,
        29.7604000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        130,
        'Emily',
        'Jackson',
        'ID',
        '5678901234',
        '555-000-1111',
        'North',
        'Minnesota',
        'St. Paul',
        -93.0890000,
        44.9537000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        131,
        'Daniel',
        'Ramirez',
        'Passport',
        'ASDFGHJKL',
        '555-111-2222',
        'West',
        'California',
        'Los Angeles',
        -118.2437000,
        34.0522000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        132,
        'Julia',
        'Phillips',
        'Driver License',
        'ZXCVBNMLKJ',
        '555-222-3333',
        'North',
        'Illinois',
        'Chicago',
        -87.6298000,
        41.8781000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    ),
    (
        133,
        'Nicholas',
        'Gomez',
        'ID',
        '6789012345',
        null,
        'West',
        'Oregon',
        'Portland',
        -122.6765000,
        45.5231000,
        '2023-03-08 20:05:44',
        '2023-03-08 20:05:44'
    );

;


INSERT INTO
    migrations (id, migration, batch)
values
    (1, '2014_10_12_000000_create_users_table', 1),
    (
        2,
        '2014_10_12_100000_create_password_resets_table',
        1
    ),
    (
        3,
        '2014_10_12_200000_add_two_factor_columns_to_users_table',
        1
    ),
    (
        4,
        '2019_08_19_000000_create_failed_jobs_table',
        1
    ),
    (
        5,
        '2019_12_14_000001_create_personal_access_tokens_table',
        1
    ),
    (6, '2022_03_23_163443_create_sessions_table', 1),
    (7, '2022_05_11_154250_create_datafeeds_table', 1),
    (8, '2020_05_21_100000_create_teams_table', 2),
    (9, '2020_05_21_200000_create_team_user_table', 2),
    (
        10,
        '2020_05_21_300000_create_team_invitations_table',
        2
    ),
    (
        12,
        '2023_02_15_180737_create_locations_table',
        3
    )
;


INSERT INTO
    sessions (
        id,
        user_id,
        ip_address,
        user_agent,
        payload,
        last_activity
    )
values
    (
        'y7RIt5JRk2jRo6dWNf8yWVcwrLQmtDhKYgPUJ1uS',
        1,
        '127.0.0.1',
        'Mozilla/5.0 (X11;

 Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36',
        'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlVYR1ZhR3VlRDU3dnZXVm9rck1BN3lCdTBSOVNSVUxxSVZ5eGRlSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9qc29uLWRhdGEtZmVlZD9kYXRhdHlwZT0xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',
        1678914574
    )
;


-- INSERT INTO
--     MY_TABLE (
--         id,
--         name,
--         email,
--         email_verified_at,
--         password,
--         two_factor_secret,
--         two_factor_recovery_codes,
--         two_factor_confirmed_at,
--         remember_token,
--         current_team_id,
--         profile_photo_path,
--         created_at,
--         updated_at
--     )
-- values
--     (
--         1,
--         'Bob Mwaimu',
--         'bobMwaimu@relocation.co.tz',
--         null,
--         '$2y$10$3puO2EN382T5..LLnmpCHOTLrmFeOckHgLPG08BOPnxjgssARauVu',
--         null,
--         null,
--         null,
--         null,
--         null,
--         null,
--         '2023-02-15 16:51:33',
--         '2023-02-15 16:51:33'
--     );

