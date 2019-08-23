-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0HumXX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "nba_salaries" (
    "Player" VARCHAR   NOT NULL,
    "Salary" INTEGER   NOT NULL,
    "Team" VARCHAR   NOT NULL,
    CONSTRAINT "pk_nba_salaries" PRIMARY KEY (
        "Player"
     )
);

CREATE TABLE "nba_stats" (
    "Player" VARCHAR   NOT NULL,
    "Pos" VARCHAR   NOT NULL,
    "Age" INTEGER   NOT NULL,
    "Tm" VARCHAR   NOT NULL,
    "G" INTEGER   NOT NULL,
    "GS" INTEGER   NOT NULL,
    "MP" INTEGER   NOT NULL,
    "PER" FLOAT   NOT NULL,
    "FTr" FLOAT   NOT NULL,
    "TRB%" FLOAT   NOT NULL,
    "AST%" FLOAT   NOT NULL,
    "USG%" FLOAT   NOT NULL,
    "OWS" FLOAT   NOT NULL,
    "DWS" FLOAT   NOT NULL,
    "WS" FLOAT   NOT NULL,
    "VORP" FLOAT   NOT NULL,
    "FGA" INTEGER   NOT NULL,
    "FG%" FLOAT   NOT NULL,
    "3P%" FLOAT   NOT NULL,
    "eFG%" FLOAT   NOT NULL,
    "TRB" INTEGER   NOT NULL,
    "AST" INTEGER   NOT NULL,
    "STL" INTEGER   NOT NULL,
    "BLK" INTEGER   NOT NULL,
    "PTS" INTEGER   NOT NULL
);

ALTER TABLE "nba_stats" ADD CONSTRAINT "fk_nba_stats_Player" FOREIGN KEY("Player")
REFERENCES "nba_salaries" ("Player");

