from libc.stdint cimport int64_t, uint64_t


cdef class Uint64:
	cdef uint64_t ni

	def __init__(Uint64 self, uint64_t value):
		self.ni = value

	def __int__(Uint64 self):
		return self.ni

	def __str__(Uint64 self):
		return str(int(self.ni))

	def __repr__(Uint64 self):
		return repr(int(self.ni))

	def __add__(Uint64 self, Uint64 other):
		return Uint64(self.ni + other.ni)

	def __sub__(Uint64 self, Uint64 other):
		return Uint64(self.ni - other.ni)

	def __mul__(Uint64 self, Uint64 other):
		return Uint64(self.ni * other.ni)

	def __truediv__(Uint64 self, Uint64 other):
		return Uint64(self.ni / other.ni)

	def __and__(Uint64 self, Uint64 other):
		return Uint64(self.ni & other.ni)

	def __or__(Uint64 self, Uint64 other):
		return Uint64(self.ni | other.ni)

	def __xor__(Uint64 self, Uint64 other):
		return Uint64(self.ni ^ other.ni)

	#def __not__(Uint64 self):
	#	return Uint64(!self.ni)

	def __invert__(Uint64 self):
		return Uint64(~self.ni)

	def __lshift__(Uint64 self, Uint64 other):
		return Uint64(self.ni << other.ni)

	def __rshift__(Uint64 self, Uint64 other):
		return Uint64(self.ni >> other.ni)

	def __neg__(Uint64 self):
		return Uint64(-self.ni)

	def __pos__(Uint64 self):
		return Uint64(+self.ni)

	def __mod__(Uint64 self, Uint64 other):
		return Uint64(self.ni % other.ni)

	def __lt__(Uint64 self, Uint64 other):
		return self.ni < other.ni

	def __le__(Uint64 self, Uint64 other):
		return self.ni <= other.ni

	def __eq__(Uint64 self, Uint64 other):
		return self.ni == other.ni

	def __ne__(Uint64 self, Uint64 other):
		return self.ni != other.ni

	def __ge__(Uint64 self, Uint64 other):
		return self.ni >= other.ni

	def __gt__(Uint64 self, Uint64 other):
		return self.ni > other.ni

	def as_signed(Uint64 self):
		from .int64 import Int64
		return Int64(<int64_t>self.ni)

	def to_signed(Uint64 self):
		from .int64 import Int64
		return Int64(self.ni)
