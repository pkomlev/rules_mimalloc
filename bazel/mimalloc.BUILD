load("@rules_cc//cc:defs.bzl", "cc_library")

licenses(["notice"])

cc_library(
    name = "mimalloc",
    srcs = ["src/static.c"],
    hdrs = glob([
        "include/*.h",
    ]),
    copts = ["-DMI_MALLOC_OVERRIDE"],
    includes = ["include"],
    textual_hdrs = glob(
        [
            "src/**/*.c",
            "src/*.h",
            "include/mimalloc/*.h",
        ],
        exclude = ["src/static.c"],
    ),
    visibility = ["//visibility:public"],
)
