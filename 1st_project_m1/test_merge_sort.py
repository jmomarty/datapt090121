import unittest
from ms import merge_sort
import random


class TestMergeSort(unittest.TestCase):

    # even number of elements
    def test_1(self):
        self.assertEqual(merge_sort([12, 15, 23, 4 , 6, 10, 35, 28]), sorted([12, 15, 23, 4 , 6, 10, 35, 28]))

    # empty list
    def test_2(self):
        self.assertEqual(merge_sort([]), sorted([]))

    # already sorted
    def test_3(self):
        self.assertEqual(merge_sort([4, 6, 10, 12, 15, 23, 28, 35]), sorted([4, 6, 10, 12, 15, 23, 28, 35]))

    # odd length
    def test_4(self):
        self.assertEqual(merge_sort([12, 15, 23, 4 , 6, 10, 35]), sorted([12, 15, 23, 4 , 6, 10, 35]))

    # descending sorted array input
    def test_5(self):
        self.assertEqual(merge_sort([35, 28, 23, 15, 12, 10, 6, 4]), sorted([35, 28, 23, 15, 12, 10, 6, 4]))

    # one element
    def test_6(self):
        self.assertEqual(merge_sort([35]), sorted([35]))

    # negative elements
    def test_7(self):
        self.assertEqual(merge_sort([12, 15, -23, -4 , 6, 10, -35, 28]), sorted([12, 15, -23, -4 , 6, 10, -35, 28]))

    # large list
    def test_8(self):
        N = 10000
        l = [random.randint(-1000, 1000) for i in range(N)]
        self.assertEqual(merge_sort(l), sorted(l))

    # duplicate elements
    def test_9(self):
        self.assertEqual(merge_sort([12, 12, 23, 4 , 6, 6, 10, -35, 28]), sorted([12, 12, 23, 4 , 6, 6, 10, -35, 28]))

    # same element
    def test_10(self):
        self.assertEqual(merge_sort([12, 12, 12, 12, 12]), sorted([12, 12, 12, 12, 12]))

    # reversed
    def test_11(self):
        self.assertEqual(merge_sort([12, 12, 23, 4 , 6, 6, 10, -35, 28], reversed=True),
                         sorted([12, 12, 23, 4 , 6, 6, 10, -35, 28],
                                reverse=True))

    # reversed
    def test_12(self):
        self.assertEqual(merge_sort([12, 37, 23, 4 , 6, 6, 10, -35, 28], reversed=True),
                         sorted([12, 37, 23, 4 , 6, 6, 10, -35, 28],
                                reverse=True))

    # bad input
    def test_13(self):
        self.assertEqual(merge_sort([12, 'a', 23, 'b' , 6, True, 10, -35, 28]),
                         None)

    # bad input
    def test_14(self):
        self.assertEqual(merge_sort([True, False, True]),
                         None)

    # bad input
    def test_15(self):
        self.assertEqual(merge_sort('abce'),
                         None)

    # bad input
    def test_16(self):
        self.assertEqual(merge_sort(True),
                         None)

    # bad input
    def test_17(self):
        self.assertEqual(merge_sort([[1, 2], [3]]),
                         None)

    # bad input
    def test_18(self):
        self.assertEqual(merge_sort(None),
                         None)

    # reversed empty
    def test_19(self):
        self.assertEqual(merge_sort([], reversed=True),
                         [])

    # bad input
    def test_20(self):
        self.assertEqual(merge_sort({3: 1}),
                         None)

if __name__ == '__main__':
    unittest.main()