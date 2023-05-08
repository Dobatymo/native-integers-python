from libc.stdint cimport int32_t, uint32_t


cdef class Int32:
	cdef int32_t ni

	def __init__(Int32 self, int32_t value):
		self.ni = value

	def __int__(Int32 self):
		return self.ni

	def __str__(Int32 self):
		return str(int(self.ni))

	def __repr__(Int32 self):
		return repr(int(self.ni))

	def __add__(Int32 self, Int32 other):
		return Int32(self.ni + other.ni)

	def __sub__(Int32 self, Int32 other):
		return Int32(self.ni - other.ni)

	def __mul__(Int32 self, Int32 other):
		return Int32(self.ni * other.ni)

	def __truediv__(Int32 self, Int32 other):
		return Int32(self.ni / other.ni)

	def __and__(Int32 self, Int32 other):
		return Int32(self.ni & other.ni)

	def __or__(Int32 self, Int32 other):
		return Int32(self.ni | other.ni)

	def __xor__(Int32 self, Int32 other):
		return Int32(self.ni ^ other.ni)

	#def __not__(Int32 self):
	#	return Int32(!self.ni)

	def __invert__(Int32 self):
		return Int32(~self.ni)

	def __lshift__(Int32 self, Int32 other):
		return Int32(self.ni << other)

	def __rshift__(Int32 self, Int32 other):
		return Int32(self.ni >> other)

	def __neg__(Int32 self):
		return Int32(-self.ni)

	def __pos__(Int32 self):
		return Int32(+self.ni)

	def __mod__(Int32 self, Int32 other):
		return Int32(self.ni % other.ni)

	def __lt__(Int32 self, Int32 other):
		return self.ni < other.ni

	def __le__(Int32 self, Int32 other):
		return self.ni <= other.ni

	def __eq__(Int32 self, Int32 other):
		return self.ni == other.ni

	def __ne__(Int32 self, Int32 other):
		return self.ni != other.ni

	def __ge__(Int32 self, Int32 other):
		return self.ni >= other.ni

	def __gt__(Int32 self, Int32 other):
		return self.ni > other.ni

	def as_unsigned(Int32 self):
		from .uint32 import Uint32
		return Uint32(<uint32_t>self.ni)

	def to_unsigned(Int32 self):
		from .uint32 import Uint32
		return Uint32(self.ni)
