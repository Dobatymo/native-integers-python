import unittest

from native_integers import Int32, Int64, Uint32, Uint64


class Int32Test(unittest.TestCase):
    def test_all(self):
        x = Int32(1)
        y = Int32(2)

        self.assertEqual(int(x + y), 3)
        self.assertEqual(int(x - y), -1)
        self.assertEqual(int(x * y), 2)
        self.assertEqual(int(y / x), 2)
        self.assertEqual(int(x | y), 3)
        self.assertEqual(int(x & y), 0)
        self.assertEqual(int(x ^ y), 3)
        self.assertEqual(int(~x), -2)

        self.assertEqual(x.as_unsigned(), Uint32(1))
        self.assertEqual(x.to_unsigned(), Uint32(1))
        self.assertEqual(Int32(-1).as_unsigned(), Uint32(2**32 - 1))
        with self.assertRaises(OverflowError):
            Int32(-1).to_unsigned()


class Uint32Test(unittest.TestCase):
    def test_all(self):
        x = Uint32(1)
        y = Uint32(2)

        self.assertEqual(int(x + y), 3)
        self.assertEqual(int(x - y), 2**32 - 1)
        self.assertEqual(int(x * y), 2)
        self.assertEqual(int(y / x), 2)
        self.assertEqual(int(x | y), 3)
        self.assertEqual(int(x & y), 0)
        self.assertEqual(int(x ^ y), 3)
        self.assertEqual(int(~x), 2**32 - 2)

        self.assertEqual(x.as_signed(), Int32(1))
        self.assertEqual(x.to_signed(), Int32(1))
        self.assertEqual(Uint32(2**32 - 1).as_signed(), Int32(-1))
        with self.assertRaises(OverflowError):
            Uint32(2**32 - 1).to_signed()


class Int64Test(unittest.TestCase):
    def test_all(self):
        x = Int64(1)
        y = Int64(2)

        self.assertEqual(int(x + y), 3)
        self.assertEqual(int(x - y), -1)
        self.assertEqual(int(x * y), 2)
        self.assertEqual(int(y / x), 2)
        self.assertEqual(int(x | y), 3)
        self.assertEqual(int(x & y), 0)
        self.assertEqual(int(x ^ y), 3)
        self.assertEqual(int(~x), -2)

        self.assertEqual(x.as_unsigned(), Uint64(1))
        self.assertEqual(x.to_unsigned(), Uint64(1))
        self.assertEqual(Int64(-1).as_unsigned(), Uint64(2**64 - 1))
        with self.assertRaises(OverflowError):
            Int64(-1).to_unsigned()


class Uint64Test(unittest.TestCase):
    def test_all(self):
        x = Uint64(1)
        y = Uint64(2)

        self.assertEqual(int(x + y), 3)
        self.assertEqual(int(x - y), 2**64 - 1)
        self.assertEqual(int(x * y), 2)
        self.assertEqual(int(y / x), 2)
        self.assertEqual(int(x | y), 3)
        self.assertEqual(int(x & y), 0)
        self.assertEqual(int(x ^ y), 3)
        self.assertEqual(int(~x), 2**64 - 2)

        self.assertEqual(x.as_signed(), Int64(1))
        self.assertEqual(x.to_signed(), Int64(1))
        self.assertEqual(Uint64(2**64 - 1).as_signed(), Int64(-1))
        with self.assertRaises(OverflowError):
            Uint32(2**64 - 1).to_signed()


if __name__ == "__main__":
    unittest.main()
