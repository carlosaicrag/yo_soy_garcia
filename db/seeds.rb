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