#define BOOST_TEST_MODULE Vesperen Test
#include <boost/test/included/unit_test.hpp>

BOOST_AUTO_TEST_CASE(villainous_test) {
    int k = 20;
    BOOST_TEST(k);
    BOOST_TEST(k == 20);
}

BOOST_AUTO_TEST_CASE(heroic_test) {
    int k = 20;
    BOOST_TEST(k);
    BOOST_TEST(k == 20);
}

BOOST_AUTO_TEST_CASE(envious_test) {
    int k = 20;
    BOOST_TEST(k);
    BOOST_TEST(k == 20);
}
