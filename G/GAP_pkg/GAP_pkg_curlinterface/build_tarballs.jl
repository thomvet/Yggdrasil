# Note that this script can accept some limited command-line arguments, run
# `julia build_tarballs.jl --help` to see a usage message.
include("../common.jl")

gap_version = v"400.1400.0"
gap_lib_version = v"400.1400.0"
name = "curlinterface"
upstream_version = "2.4.0" # when you increment this, reset offset to v"0.0.0"
offset = v"0.0.0" # increment this when rebuilding with unchanged upstream_version, e.g. gap_version changes
version = offset_version(upstream_version, offset)

# Collection of sources required to build libsingular-julia
sources = [
    ArchiveSource("https://github.com/gap-packages/curlInterface/releases/download/v$(upstream_version)/curlInterface-$(upstream_version).tar.gz",
                  "6f758ad512edf033ba8892875c3216cf111feb5b856909b84889cad89c78a4ff"),
]

# Bash recipe for building across all platforms
script = raw"""
cd curlInterface*

./configure --prefix=${prefix} --build=${MACHTYPE} --host=${target} --with-gaproot=${prefix}/lib/gap --with-libcurl=${prefix}
make -j${nproc}

# copy the loadable module
mkdir -p ${prefix}/lib/gap
cp bin/*/*.so ${prefix}/lib/gap/

install_license LICENSE
"""

name = gap_pkg_name(name)
platforms, dependencies = setup_gap_package(gap_version, gap_lib_version)

append!(dependencies, [
    Dependency("LibCURL_jll"; compat="7.73,8"),
])

# The products that we will ensure are always built
products = [
    FileProduct("lib/gap/curl.so", :curl),
]

# Build the tarballs, and possibly a `build.jl` as well.
build_tarballs(ARGS, name, version, sources, script, platforms, products, dependencies;
               julia_compat="1.6", preferred_gcc_version=v"7")

# rebuild trigger: 1