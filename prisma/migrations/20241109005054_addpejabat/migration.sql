-- AlterTable
ALTER TABLE "unit_kerja" ADD COLUMN     "pejabat_id" INTEGER;

-- AddForeignKey
ALTER TABLE "unit_kerja" ADD CONSTRAINT "unit_kerja_pejabat_id_fkey" FOREIGN KEY ("pejabat_id") REFERENCES "employees"("id") ON DELETE SET NULL ON UPDATE CASCADE;
