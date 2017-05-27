# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create(name: "Programming")
Course.create(name: "Microsoft Office")
Course.create(name: "1C")

Group.create(name: "PR", course_id: 1)
Group.create(name: "MSO", course_id: 2)
Group.create(name: "1C", course_id: 3)

Teacher.create(name: "Елена Брониславовна Тойвонен", course_id: 1)
Teacher.create(name: "Елена Дмитриевна Куплинова", course_id: 2)
Teacher.create(name: "Алексей Юрьевич Тихонов", course_id: 3)

Student.create(name: "Алексей Вадимович Сырников", birth_date: "20.10.2001", school_name: "Колледж предпринимательства №11", address: "Беломорская улица дом 8", passport_data: "Выдан ОУФМС по гор. Москве в районе Левобережный", phone_number: "88005553535", group_id: 1)
Student.create(name: "Кирилл Юрьевич Соболев", birth_date: "12.11.2001", school_name: "Колледж предпринимательства №11", address: "Беломорская улица дом 8", passport_data: "Выдан ОУФМС по гор. Москве в районе Ховрино", phone_number: "88005553535", group_id: 1)
Student.create(name: "Максим Петрович Макаров", birth_date: "15.07.2001", school_name: "Колледж предпринимательства №11", address: "Беломорская улица дом 8", passport_data: "Выдан ОУФМС по гор. Москве в районе Коптево", phone_number: "88005553535", group_id: 2)
Student.create(name: "Андрей Иванович Леваков", birth_date: "12.09.2001", school_name: "Колледж предпринимательства №11", address: "Беломорская улица дом 8", passport_data: "Выдан ОУФМС по гор. Москве в районе Войковский", phone_number: "88005553535", group_id: 2)
Student.create(name: "Илья Сергеевич Синицын", birth_date: "08.02.2001", school_name: "Колледж предпринимательства №11", address: "Беломорская улица дом 8", passport_data: "Выдан ОУФМС по гор. Москве в районе Левобережный", phone_number: "88005553535", group_id: 3)
Student.create(name: "Илья Станиславович Сухомлин", birth_date: "01.12.2001", school_name: "Колледж предпринимательства №11", address: "Беломорская улица дом 8", passport_data: "Выдан ОУФМС по гор. Москве в районе Левобережный", phone_number: "88005553535", group_id: 3)

User.create(email: "heelmistico@gmail.com", password: "1234567")
Admin.create(email: "heelmistico@outlook.com", password: "1234567")