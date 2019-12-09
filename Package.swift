// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Nifty-libs",  
    products: [
        .library(name: "Nifty-libs", targets: ["Nifty-libs"]),
    ],
    targets: [
        .systemLibrary(
            name: "Nifty-libs",
            providers: [
                .apt(["gfortran", "liblapack3", "liblapacke", "liblapacke-dev", "libopenblas-base", "libopenblas-dev"]),
                .brew(["homebrew/dupes/lapack", "homebrew/science/openblas"])
            ]
        )
    ]
)