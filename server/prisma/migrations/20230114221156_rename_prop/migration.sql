/*
  Warnings:

  - You are about to drop the column `isDarkModeUI` on the `User` table. All the data in the column will be lost.
  - Added the required column `isUIDarkMode` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_User" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "email" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "totalXp" INTEGER NOT NULL,
    "currentXp" INTEGER NOT NULL,
    "level" INTEGER NOT NULL,
    "completedChallenges" INTEGER NOT NULL,
    "isUIDarkMode" BOOLEAN NOT NULL
);
INSERT INTO "new_User" ("completedChallenges", "currentXp", "email", "id", "level", "name", "totalXp", "username") SELECT "completedChallenges", "currentXp", "email", "id", "level", "name", "totalXp", "username" FROM "User";
DROP TABLE "User";
ALTER TABLE "new_User" RENAME TO "User";
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
