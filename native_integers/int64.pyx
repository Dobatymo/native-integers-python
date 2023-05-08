from libc.stdint cimport int64_t, uint64_t


cdef class Int64:
	cdef int64_t ni

	def __init__(Int64 self, int64_t value):
		self.ni = value

	def __int__(Int64 self):
		return self.ni

	def __str__(Int64 self):
		return str(int(self.ni))

	def __repr__(Int64 self):
		return repr(int(self.ni))

	def __add__(Int64 self, Int64 other):
		return Int64(self.ni + other.ni)

	def __sub__(Int64 self, Int64 other):
		return Int64(self.ni - other.ni)

	def __mul__(Int64 self, Int64 other):
		return Int64(self.ni * other.ni)

	def __truediv__(Int64 self, Int64 other):
		return Int64(self.ni / other.ni)

	def __and__(Int64 self, Int64 other):
		return Int64(self.ni & other.ni)

	def __or__(Int64 self, Int64 other):
		return Int64(self.ni | other.ni)

	def __xor__(Int64 self, Int64 other):
		return Int64(self.ni ^ other.ni)

	#def __not__(Int64 self):
	#	return Int64(!self.ni)

	def __invert__(Int64 self):
		return Int64(~self.ni)

	def __lshift__(Int64 self, Int64 other):
		return Int64(self.ni << other)

	def __rshift__(Int64 self, Int64 other):
		return Int64(self.ni >> other)

	def __neg__(Int64 self):
		return Int64(-self.ni)

	def __pos__(Int64 self):
		return Int64(+self.ni)

	def __mod__(Int64 self, Int64 other):
		return Int64(self.ni % other.ni)

	def __lt__(Int64 self, Int64 other):
		return self.ni < other.ni

	def __le__(Int64 self, Int64 other):
		return self.ni <= other.ni

	def __eq__(Int64 self, Int64 other):
		return self.ni == other.ni

	def __ne__(Int64 self, Int64 other):
		return self.ni != other.ni

	def __ge__(Int64 self, Int64 other):
		return self.ni >= other.ni

	def __gt__(Int64 self, Int64 other):
		return self.ni > other.ni

	def as_unsigned(Int64 self):
		from .uint64 import Uint64
		return Uint64(<uint64_t>self.ni)

	def to_unsigned(Int64 self):
		from .uint64 import Uint64
		return Uint64(self.ni)
