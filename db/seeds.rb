# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FamilyMember.destroy_all
FamilyMemberChildParent.destroy_all
Spouse.destroy_all

# Carlos Garcia's Senior Family 
carlos_senior = FamilyMember.create(fname: "Carlos", lname: "Garcia", sex: "M")
manuela = FamilyMember.create(fname: "Manuela", lname: "Apolinar", sex: "F")
sandra = FamilyMember.create(fname: "Sandra", lname: "Garcia", sex: "F")
carlos = FamilyMember.create(fname: "Carlos", lname: "Garcia", sex: "M", nickname: "Charlie")
melina = FamilyMember.create(fname: "Melina", lname: "Silva", sex: "F")

robert = FamilyMember.create(fname: "Robert", lname: "Cortez", sex: "M")
carlos_cortez = FamilyMember.create(fname: "Carlos", lname: "Cortez", sex: "M")
daniel_senior = FamilyMember.create(fname: "Daniel", lname: "Sanchez", sex: "M")
daniel = FamilyMember.create(fname: "Daniel", lname: "Sanchez", sex: "M")

sandra_child_garcia = FamilyMemberChildParent.create(parent_id: carlos_senior.id, child_id: sandra.id)
carlos_child_garcia = FamilyMemberChildParent.create(parent_id: carlos_senior.id, child_id: carlos.id)
melina_child_garcia = FamilyMemberChildParent.create(parent_id: carlos_senior.id, child_id: melina.id)
robert_child_garcia = FamilyMemberChildParent.create(parent_id: sandra.id, child_id: robert.id)
daniel_child_garcia = FamilyMemberChildParent.create(parent_id: melina.id, child_id: daniel.id)

sandra_child_garcia = FamilyMemberChildParent.create(parent_id: manuela.id, child_id: sandra.id)
carlos_child_garcia = FamilyMemberChildParent.create(parent_id: manuela.id, child_id: carlos.id)
melina_child_garcia = FamilyMemberChildParent.create(parent_id: manuela.id, child_id: melina.id)

carlos_manuela = Spouse.create(partner_1_id: carlos_senior.id, partner_2_id: manuela.id, current_spouse: true)
carlos_sandra = Spouse.create(partner_2_id: carlos_cortez.id, partner_1_id: sandra.id, current_spouse: true)
daniel_melina = Spouse.create(partner_2_id: daniel_senior.id, partner_1_id: melina.id, current_spouse: true)

# Socorro Garcia Family
socorro = FamilyMember.create(fname: "Socorro", lname: "Garcia", sex: "F")
claudia = FamilyMember.create(fname: "Claudia", lname: "Garcia", sex: "F")
miguel = FamilyMember.create(fname: "Miguel", lname: "Cruz", sex: "M")
jessica = FamilyMember.create(fname: "Jessica", lname: "Rodriguez", sex: "F")
veronica = FamilyMember.create(fname: "Veronica", lname: "Estrada", sex: "F")
josefina = FamilyMember.create(fname: "Josefina", lname: "Rodriguez", sex: "F")
monica = FamilyMember.create(fname: "Monica", lname: "Rodriguez", sex: "F")

claudia_child_garcia = FamilyMemberChildParent.create(parent_id: socorro.id, child_id: claudia.id)
miguel_child_garcia = FamilyMemberChildParent.create(parent_id: socorro.id, child_id: miguel.id)
jessica_child_garcia = FamilyMemberChildParent.create(parent_id: socorro.id, child_id: jessica.id)
veronica_child_garcia= FamilyMemberChildParent.create(parent_id: socorro.id, child_id: veronica.id)
josefina_child_garcia = FamilyMemberChildParent.create(parent_id: socorro.id, child_id: josefina.id)
monica_child_garcia = FamilyMemberChildParent.create(parent_id: socorro.id, child_id: monica.id)

# Elva Garcia Robles Family
elva = FamilyMember.create(fname: "Elva", lname: "Robles", sex: "F")
norma = FamilyMember.create(fname: "Norma", lname: "Garcia-Lopez", sex: "F")
ana = FamilyMember.create(fname: "Ana", lname: "Robles", sex: "F")
gloria = FamilyMember.create(fname: "Gloria", lname: "Corona", sex: "M")
vanessa = FamilyMember.create(fname: "Vanessa", lname: "Corona", sex: "F")
monica = FamilyMember.create(fname: "Monica", lname: "Robles", sex: "F")
juliana = FamilyMember.create(fname: "Juliana", lname: "Robles", sex: "F")
isabel = FamilyMember.create(fname: "Isabel", lname: "Robles", sex: "F")

norma_child_garcia = FamilyMemberChildParent.create(parent_id: elva.id, child_id: norma.id)
ana_child_garcia = FamilyMemberChildParent.create(parent_id: elva.id, child_id: ana.id)
gloria_child_garcia = FamilyMemberChildParent.create(parent_id: elva.id, child_id: gloria.id)
vanessa_child_garcia= FamilyMemberChildParent.create(parent_id: elva.id, child_id: vanessa.id)
monica_child_garcia = FamilyMemberChildParent.create(parent_id: elva.id, child_id: monica.id)
juliana_child_garcia = FamilyMemberChildParent.create(parent_id: elva.id, child_id: juliana.id)
isabel_child_garcia = FamilyMemberChildParent.create(parent_id: elva.id, child_id: isabel.id)
