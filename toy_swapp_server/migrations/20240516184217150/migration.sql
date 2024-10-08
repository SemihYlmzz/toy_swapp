BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "toys" ADD COLUMN "declineReason" text;

--
-- MIGRATION VERSION FOR toy_swapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('toy_swapp', '20240516184217150', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516184217150', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
