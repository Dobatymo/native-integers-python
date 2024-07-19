from distutils.core import Extension, setup

from Cython.Build import cythonize

extensions = [
    Extension("native_integers.int32", ["native_integers/int32.pyx"]),
    Extension("native_integers.uint32", ["native_integers/uint32.pyx"]),
    Extension("native_integers.int64", ["native_integers/int64.pyx"]),
    Extension("native_integers.uint64", ["native_integers/uint64.pyx"]),
]

setup(
    ext_modules=cythonize(extensions, language_level=3),
)
