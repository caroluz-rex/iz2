//
// Created by Dashik on 29.10.2020.
//

#include "gtest/gtest.h"


extern "C" {
#include "DZ2/utils.h"
}

//TEST(create_database, ok){
//    struct Database *list = nullptr;
//    list = create_database(sizeof(struct Worker));
//    EXPECT_NE(list, nullptr);
//}

//TEST(load_base_from_file, ok){
//    FILE* input_file = fopen("../../test1.txt", "r+");
//    struct Database *list = load_base_from_file(input_file);
//    EXPECT_NE(list, nullptr);
//}
//
//TEST(create_staff, ok){
//    char string_helper_ptr[MAX_STRING_SIZE] = "";
//    FILE* input_file = fopen("../../test1.txt", "r+");
//    auto *new_staff = static_cast<Worker *>(malloc(sizeof(struct Worker)));
//    new_staff->name = scan_to_pointer(input_file, string_helper_ptr);
//    std::string name = new_staff->name;
//    EXPECT_EQ(name, "Ivan");
//    new_staff->surname = scan_to_pointer(input_file, string_helper_ptr);
//    std::string surname = new_staff->surname;
//    EXPECT_EQ(surname, "Ivanov");
//    new_staff->sex = scan_to_value(input_file, string_helper_ptr);
//    EXPECT_EQ(new_staff->sex, 'm');
//    new_staff->age = scan_to_value(input_file, string_helper_ptr);
//    EXPECT_EQ(new_staff->age, 50);
//    new_staff->salary = scan_to_int(input_file, string_helper_ptr);
//    unsigned int salary = new_staff->salary;
//    EXPECT_EQ(salary, 45000);
//    new_staff->position = scan_to_pointer(input_file, string_helper_ptr);
//    std::string position = new_staff->position;
//    EXPECT_EQ(position, "headmanager");
//    new_staff->work_experience = scan_to_value(input_file, string_helper_ptr);
//    EXPECT_EQ(new_staff->work_experience, 8);
//}