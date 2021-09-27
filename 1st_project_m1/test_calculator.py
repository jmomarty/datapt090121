import unittest
from calculator import calculate


class TestCalculator(unittest.TestCase):

    def test_1(self):
        self.assertEqual(calculate('1 + 1'), 2)

    def test_2(self):
        self.assertEqual(calculate('1 - 2'), -1)

    def test_3(self):
        self.assertEqual(calculate('1 * 3'), 3)

    def test_4(self):
        self.assertEqual(calculate('1 / 3'), 1 / 3)

    def test_5(self):
        self.assertEqual(calculate('1 / 0'), None)

    def test_6(self):
        self.assertEqual(calculate('1.0 * 2'), 2.0)

    def test_7(self):
        self.assertEqual(calculate('3 / 1.0'), 3.0)

    def test_8(self):
        self.assertEqual(calculate('2 + 3 + 4'), 9)

    def test_9(self):
        self.assertEqual(calculate('3 * 2.0 - 5'), 1.0)

    def test_10(self):
        self.assertEqual(calculate('4 + 1.0 / 3'), 4 + 1/3)

    def test_11(self):
        self.assertEqual(calculate('-5.2 + 1.0 / 0'), None)

    def test_12(self):
        self.assertEqual(calculate('10009 / 3 + 1.0'), 10009 / 3 + 1)

    def test_13(self):
        self.assertEqual(calculate('3 * (1 + 3)'), 12)

    def test_14(self):
        self.assertEqual(calculate('-15.2 / (1.0 * 4)'), -15.2 / 4)

    def test_15(self):
        self.assertEqual(calculate('3 / 1.0'), 3.0)

    def test_16(self):
        self.assertEqual(calculate('3 / (1.0 / 3) + 2'), 3 / (1.0 / 3) + 2)

    def test_17(self):
        self.assertEqual(calculate('3.1 * (4.2 - 2.7) / 4.1'), 3.1 * (4.2 - 2.7) / 4.1)

    def test_18(self):
        self.assertEqual(calculate('3/1.0'), 3.0)

    def test_19(self):
        self.assertEqual(calculate('aB = 2'), None)

    def test_20(self):
        self.assertEqual(calculate(' 3 %2'), None)


if __name__ == '__main__':
    unittest.main()