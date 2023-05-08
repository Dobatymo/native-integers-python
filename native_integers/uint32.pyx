from libc.stdint cimport int32_t, uint32_t


cdef class Uint32:
	cdef uint32_t ni

	def __init__(Uint32 self, uint32_t value):
		self.ni = value

	def __int__(Uint32 self):
		return self.ni

	def __str__(Uint32 self):
		return str(int(self.ni))

	def __repr__(Uint32 self):
		return repr(int(self.ni))

	def __add__(Uint32 self, Uint32 other):
		return Uint32(self.ni + other.ni)

	def __sub__(Uint32 self, Uint32 other):
		return Uint32(self.ni - other.ni)

	def __mul__(Uint32 self, Uint32 other):
		return Uint32(self.ni * other.ni)

	def __truediv__(Uint32 self, Uint32 other):
		return Uint32(self.ni / other.ni)

	def __and__(Uint32 self, Uint32 other):
		return Uint32(self.ni & other.ni)

	def __or__(Uint32 self, Uint32 other):
		return Uint32(self.ni | other.ni)

	def __xor__(Uint32 self, Uint32 other):
		return Uint32(self.ni ^ other.ni)

	#def __not__(Uint32 self):
	#	return Uint32(!self.ni)

	def __invert__(Uint32 self):
		return Uint32(~self.ni)

	def __lshift__(Uint32 self, Uint32 other):
		return Uint32(self.ni << other)

	def __rshift__(Uint32 self, Uint32 other):
		return Uint32(self.ni >> other)

	def __neg__(Uint32 self):
		return Uint32(-self.ni)

	def __pos__(Uint32 self):
		return Uint32(+self.ni)

	def __mod__(Uint32 self, Uint32 other):
		return Uint32(self.ni % other.ni)

	def __lt__(Uint32 self, Uint32 other):
		return self.ni < other.ni

	def __le__(Uint32 self, Uint32 other):
		return self.ni <= other.ni

	def __eq__(Uint32 self, Uint32 other):
		return self.ni == other.ni

	def __ne__(Uint32 self, Uint32 other):
		return self.ni != other.ni

	def __ge__(Uint32 self, Uint32 other):
		return self.ni >= other.ni

	def __gt__(Uint32 self, Uint32 other):
		return self.ni > other.ni

	def as_signed(Uint32 self):
		from .int32 import Int32
		return Int32(<int32_t>self.ni)

	def to_signed(Uint32 self):
		from .int32 import Int32
		return Int32(self.ni)
