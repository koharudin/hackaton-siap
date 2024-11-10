import { PrismaClient } from "@prisma/client"

export default async () => {
  const prisma = new PrismaClient()
  const callUnit = async function () {
    const units = await prisma.unitKerja.findMany()
    return units
  }
  const createUnit = async function (){
    await prisma.unitKerja.create({
        data : {
            name:"123"
        }
    })
  }
  //createUnit()
  const x = await callUnit();
  console.log("xxxx")
  console.log(JSON.stringify(x))
  return <>Manage Unit Kerja {JSON.stringify(x)}xx</>
}
