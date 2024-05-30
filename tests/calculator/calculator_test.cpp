#include "CppUTest/TestHarness.h"


extern "C" {
	#include "calculator.h"
}


TEST_GROUP(calculator_test_group)
{
	void setup()
	{

	}

	void teardown()
	{

	}

	
};

TEST(calculator_test_group, adding_test)
{
	float value = add(2.0, 5.0);
	CHECK_EQUAL(value, 7.0);
}

TEST(calculator_test_group, subtracting_test)
{
        float value = sub(2.0, 5.0);
        CHECK_EQUAL(value, -3.0);
}

TEST(calculator_test_group, multiplication_test)
{
        float value = mult(2.0, 5.0);
        CHECK_EQUAL(value, 10.0);
}

TEST(calculator_test_group, division_test)
{
        float value = division(15.0, 5.0);
        CHECK_EQUAL(value, 3.0);
}
