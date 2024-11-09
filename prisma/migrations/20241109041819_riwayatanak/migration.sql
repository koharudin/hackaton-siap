/*
  Warnings:

  - You are about to drop the `RiwayatAnak` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "RiwayatAnak" DROP CONSTRAINT "RiwayatAnak_employee_id_fkey";

-- DropTable
DROP TABLE "RiwayatAnak";

-- CreateTable
CREATE TABLE "riwayat_anak" (
    "id" SERIAL NOT NULL,
    "employee_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "birth_date" TIMESTAMP(3),

    CONSTRAINT "riwayat_anak_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "riwayat_anak" ADD CONSTRAINT "riwayat_anak_employee_id_fkey" FOREIGN KEY ("employee_id") REFERENCES "employees"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
