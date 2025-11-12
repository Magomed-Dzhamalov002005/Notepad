--
-- Файл сгенерирован с помощью SQLiteStudio v3.4.4 в Ср ноя 12 23:00:19 2025
--
-- Использованная кодировка текста: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: auth_group
CREATE TABLE IF NOT EXISTS auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- Таблица: auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Таблица: auth_permission
CREATE TABLE IF NOT EXISTS auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                1,
                                1,
                                'add_logentry',
                                'Can add log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                2,
                                1,
                                'change_logentry',
                                'Can change log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                3,
                                1,
                                'delete_logentry',
                                'Can delete log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                4,
                                1,
                                'view_logentry',
                                'Can view log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                5,
                                2,
                                'add_permission',
                                'Can add permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                6,
                                2,
                                'change_permission',
                                'Can change permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                7,
                                2,
                                'delete_permission',
                                'Can delete permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                8,
                                2,
                                'view_permission',
                                'Can view permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                9,
                                3,
                                'add_group',
                                'Can add group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                10,
                                3,
                                'change_group',
                                'Can change group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                11,
                                3,
                                'delete_group',
                                'Can delete group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                12,
                                3,
                                'view_group',
                                'Can view group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                13,
                                4,
                                'add_user',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                14,
                                4,
                                'change_user',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                15,
                                4,
                                'delete_user',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                16,
                                4,
                                'view_user',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                17,
                                5,
                                'add_contenttype',
                                'Can add content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                18,
                                5,
                                'change_contenttype',
                                'Can change content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                19,
                                5,
                                'delete_contenttype',
                                'Can delete content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                20,
                                5,
                                'view_contenttype',
                                'Can view content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                21,
                                6,
                                'add_session',
                                'Can add session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                22,
                                6,
                                'change_session',
                                'Can change session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                23,
                                6,
                                'delete_session',
                                'Can delete session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                24,
                                6,
                                'view_session',
                                'Can view session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                25,
                                7,
                                'add_note',
                                'Can add note'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                26,
                                7,
                                'change_note',
                                'Can change note'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                27,
                                7,
                                'delete_note',
                                'Can delete note'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                28,
                                7,
                                'view_note',
                                'Can view note'
                            );


-- Таблица: auth_user
CREATE TABLE IF NOT EXISTS auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    last_name    VARCHAR (150) NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    first_name   VARCHAR (150) NOT NULL
);

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          1,
                          'pbkdf2_sha256$600000$F61G6tC3VKkdP9GmdDxup1$6/a0HBokHXevQ2rjEFC527yvjmEpg5F71ZW0SHMhEkY=',
                          '2025-11-05 20:56:31.352670',
                          1,
                          'admin',
                          '',
                          '',
                          1,
                          1,
                          '2025-11-05 20:54:46.973112',
                          ''
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          3,
                          'pbkdf2_sha256$600000$Dz52LMh7UL4cmG31nXeirh$SQXfYrkWoqBdAc2i+bSXqmVyfLlseKTOj3IGr+RT0vQ=',
                          '2025-11-05 21:14:19.142251',
                          0,
                          'Maga',
                          '',
                          '123@gmail.com',
                          0,
                          1,
                          '2025-11-05 21:00:00.134801',
                          ''
                      );


-- Таблица: auth_user_groups
CREATE TABLE IF NOT EXISTS auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- Таблица: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Таблица: django_admin_log
CREATE TABLE IF NOT EXISTS django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    object_id       TEXT,
    object_repr     VARCHAR (200)       NOT NULL,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0),
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_time     DATETIME            NOT NULL
);

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 1,
                                 '2',
                                 'Maga',
                                 3,
                                 '',
                                 4,
                                 1,
                                 '2025-11-05 20:59:49.552584'
                             );


-- Таблица: django_content_type
CREATE TABLE IF NOT EXISTS django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    1,
                                    'admin',
                                    'logentry'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    2,
                                    'auth',
                                    'permission'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    3,
                                    'auth',
                                    'group'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    4,
                                    'auth',
                                    'user'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    5,
                                    'contenttypes',
                                    'contenttype'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    6,
                                    'sessions',
                                    'session'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    7,
                                    'main',
                                    'note'
                                );


-- Таблица: django_migrations
CREATE TABLE IF NOT EXISTS django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  1,
                                  'contenttypes',
                                  '0001_initial',
                                  '2025-11-05 20:54:23.074612'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  2,
                                  'auth',
                                  '0001_initial',
                                  '2025-11-05 20:54:23.492696'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  3,
                                  'admin',
                                  '0001_initial',
                                  '2025-11-05 20:54:23.769371'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  4,
                                  'admin',
                                  '0002_logentry_remove_auto_add',
                                  '2025-11-05 20:54:23.923504'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  5,
                                  'admin',
                                  '0003_logentry_add_action_flag_choices',
                                  '2025-11-05 20:54:24.068365'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  6,
                                  'contenttypes',
                                  '0002_remove_content_type_name',
                                  '2025-11-05 20:54:24.203497'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  7,
                                  'auth',
                                  '0002_alter_permission_name_max_length',
                                  '2025-11-05 20:54:24.344956'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  8,
                                  'auth',
                                  '0003_alter_user_email_max_length',
                                  '2025-11-05 20:54:24.601450'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  9,
                                  'auth',
                                  '0004_alter_user_username_opts',
                                  '2025-11-05 20:54:24.788815'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  10,
                                  'auth',
                                  '0005_alter_user_last_login_null',
                                  '2025-11-05 20:54:24.915888'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  11,
                                  'auth',
                                  '0006_require_contenttypes_0002',
                                  '2025-11-05 20:54:25.085331'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  12,
                                  'auth',
                                  '0007_alter_validators_add_error_messages',
                                  '2025-11-05 20:54:25.177861'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  13,
                                  'auth',
                                  '0008_alter_user_username_max_length',
                                  '2025-11-05 20:54:25.314345'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  14,
                                  'auth',
                                  '0009_alter_user_last_name_max_length',
                                  '2025-11-05 20:54:25.536017'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  15,
                                  'auth',
                                  '0010_alter_group_name_max_length',
                                  '2025-11-05 20:54:25.699333'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  16,
                                  'auth',
                                  '0011_update_proxy_permissions',
                                  '2025-11-05 20:54:25.848761'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  17,
                                  'auth',
                                  '0012_alter_user_first_name_max_length',
                                  '2025-11-05 20:54:25.977104'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  18,
                                  'sessions',
                                  '0001_initial',
                                  '2025-11-05 20:54:26.223527'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  19,
                                  'main',
                                  '0001_initial',
                                  '2025-11-06 19:29:07.762715'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  20,
                                  'main',
                                  '0002_alter_note_dateend_alter_note_datestart',
                                  '2025-11-06 19:40:19.113329'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  21,
                                  'main',
                                  '0003_note_taskiscomplete',
                                  '2025-11-06 19:56:16.162528'
                              );


-- Таблица: django_session
CREATE TABLE IF NOT EXISTS django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);


-- Таблица: main_note
CREATE TABLE IF NOT EXISTS main_note (
    id             INTEGER       NOT NULL
                                 PRIMARY KEY AUTOINCREMENT,
    title          VARCHAR (149) NOT NULL,
    addingDate     DATETIME      NOT NULL,
    dateStart      DATETIME      NOT NULL,
    dateEnd        DATETIME      NOT NULL,
    author_id      INTEGER       NOT NULL
                                 REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    taskIsComplete BOOL          NOT NULL
);

INSERT INTO main_note (
                          id,
                          title,
                          addingDate,
                          dateStart,
                          dateEnd,
                          author_id,
                          taskIsComplete
                      )
                      VALUES (
                          1,
                          'Initial.',
                          '2025-11-06 19:40:54.217000',
                          '2025-11-06 19:40:54.217000',
                          '2025-11-06 19:40:54.217000',
                          1,
                          0
                      );

INSERT INTO main_note (
                          id,
                          title,
                          addingDate,
                          dateStart,
                          dateEnd,
                          author_id,
                          taskIsComplete
                      )
                      VALUES (
                          2,
                          'Initial.',
                          '2025-11-06 19:41:21.498882',
                          '2025-11-06 19:41:21.498882',
                          '2025-11-06 19:41:21.498882',
                          1,
                          0
                      );


-- Индекс: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Индекс: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Индекс: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Индекс: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Индекс: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- Индекс: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- Индекс: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- Индекс: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- Индекс: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- Индекс: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- Индекс: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- Индекс: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- Индекс: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- Индекс: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- Индекс: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


-- Индекс: main_note_author_id_19d56016
CREATE INDEX IF NOT EXISTS main_note_author_id_19d56016 ON main_note (
    "author_id"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
