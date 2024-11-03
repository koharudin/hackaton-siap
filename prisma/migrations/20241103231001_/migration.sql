-- CreateTable
CREATE TABLE "unit_kerja" (
    "id" SERIAL NOT NULL,
    "parent_id" INTEGER,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "unit_kerja_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "employees" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "employees_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "employees_email_key" ON "employees"("email");

-- AddForeignKey
ALTER TABLE "unit_kerja" ADD CONSTRAINT "unit_kerja_parent_id_fkey" FOREIGN KEY ("parent_id") REFERENCES "unit_kerja"("id") ON DELETE SET NULL ON UPDATE CASCADE;
