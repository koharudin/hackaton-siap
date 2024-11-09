-- CreateTable
CREATE TABLE "RiwayatAnak" (
    "id" SERIAL NOT NULL,
    "employee_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "birth_date" TIMESTAMP(3),

    CONSTRAINT "RiwayatAnak_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "RiwayatAnak" ADD CONSTRAINT "RiwayatAnak_employee_id_fkey" FOREIGN KEY ("employee_id") REFERENCES "employees"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
