CREATE TABLE "attendings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "event_id" integer NOT NULL, "user_id" integer NOT NULL, "recipient_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255) NOT NULL, "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255) NOT NULL, "email" varchar(255) NOT NULL, "created_at" datetime, "updated_at" datetime, "wishes_count" integer);
CREATE TABLE "wishes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer NOT NULL, "title" varchar(255) NOT NULL, "description" text, "price" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "index_attendings_on_event_id_and_user_id" ON "attendings" ("event_id", "user_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_username" ON "users" ("username");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20091127201429');

INSERT INTO schema_migrations (version) VALUES ('20091127201954');

INSERT INTO schema_migrations (version) VALUES ('20091127202152');

INSERT INTO schema_migrations (version) VALUES ('20091127202423');

INSERT INTO schema_migrations (version) VALUES ('20091203045710');