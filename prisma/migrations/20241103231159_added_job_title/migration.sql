/*
  Warnings:

  - The primary key for the `employees` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `idx` on the `employees` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "employees" DROP CONSTRAINT "employees_pkey",
DROP COLUMN "idx",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "employees_pkey" PRIMARY KEY ("id");
