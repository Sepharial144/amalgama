#include <gtest/gtest.h>

#include <string>

TEST(AmalgamaTest, amalgamatest)
{
	const std::string testString{ "Amalgama test" };
	EXPECT_STREQ(testString.c_str(), testString.c_str());
	EXPECT_EQ(1, 1);
}