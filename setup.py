from distutils.core import Extension, setup

from Cython.Build import cythonize

extensions = [
    Extension("native_integers.int32", ["native_integers/int32.pyx"]),
    Extension("native_integers.uint32", ["native_integers/uint32.pyx"]),
    Extension("native_integers.int64", ["native_integers/int64.pyx"]),
    Extension("native_integers.uint64", ["native_integers/uint64.pyx"]),
]

setup(
    name="native-integers",
    version="0.1",
    python_requires=">=3.7",
    packages=["native_integers"],
    ext_modules=cythonize(extensions, language_level="3"),
)
