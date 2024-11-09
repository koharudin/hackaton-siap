import { PrismaClient } from "@prisma/client"

export default () => {
  const prisma = new PrismaClient()
  const callUnit = async function () {
    const units = await prisma.unitKerja.findMany()
    console.log(units)
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
  const x = callUnit();
  return <>Manage Unit Kerja {JSON.stringify(x)}xx</>
}
