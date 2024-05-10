BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "toys" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "toys" (
    "id" serial PRIMARY KEY,
    "ownerConsumerID" integer NOT NULL,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "imageUrlList" json NOT NULL,
    "age" integer NOT NULL,
    "gender" integer NOT NULL,
    "condition" integer NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "isPublic" boolean NOT NULL,
    "isLocked" boolean NOT NULL,
    "likeCount" integer NOT NULL,
    "safeToPublicMarkerSupportID" text NOT NULL
);


--
-- MIGRATION VERSION FOR toy_swapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('toy_swapp', '20240509082329976', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240509082329976', "timestamp" = now();

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
