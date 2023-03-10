cmake_minimum_required(VERSION 3.12)
project(fit_vutbr_ims2022)

set(CMAKE_CXX_STANDARD 14)

include_directories(src)
set(SIMLIB_SOURCE
        #       src/simlib/_test_.cc
        src/simlib/algloop.cc
        src/simlib/atexit.cc
        src/simlib/barrier.cc
        src/simlib/calendar.cc
        src/simlib/cond.cc
        src/simlib/continuous.cc
        src/simlib/debug.cc
        src/simlib/delay.cc
        src/simlib/delay.h
        src/simlib/entity.cc
        src/simlib/error.cc
        src/simlib/errors.cc
        src/simlib/errors.h
        src/simlib/event.cc
        src/simlib/facility.cc
        src/simlib/fun.cc
        src/simlib/generr.c
        src/simlib/graph.cc
        src/simlib/histo.cc
        src/simlib/internal.h
        src/simlib/intg.cc
        src/simlib/link.cc
        src/simlib/list.cc
        src/simlib/name.cc
        src/simlib/ni_abm4.cc
        src/simlib/ni_abm4.h
        src/simlib/ni_euler.cc
        src/simlib/ni_euler.h
        src/simlib/ni_fw.cc
        src/simlib/ni_fw.h
        src/simlib/ni_rke.cc
        src/simlib/ni_rke.h
        src/simlib/ni_rkf3.cc
        src/simlib/ni_rkf3.h
        src/simlib/ni_rkf5.cc
        src/simlib/ni_rkf5.h
        src/simlib/ni_rkf8.cc
        src/simlib/ni_rkf8.h
        src/simlib/numint.cc
        src/simlib/object.cc
        src/simlib/opt-hooke.cc
        src/simlib/opt-param.cc
        src/simlib/opt-simann.cc
        src/simlib/optimize.h
        src/simlib/output1.cc
        src/simlib/output2.cc
        src/simlib/print.cc
        src/simlib/process.cc
        src/simlib/queue.cc
        src/simlib/random1.cc
        src/simlib/random2.cc
        src/simlib/rdtsc.h
        src/simlib/run.cc
        src/simlib/sampler.cc
        src/simlib/semaphor.cc
        src/simlib/simlib.h
        src/simlib/simlib2D.cc
        src/simlib/simlib2D.h
        src/simlib/simlib3D.cc
        src/simlib/simlib3D.h
        src/simlib/stat.cc
        src/simlib/stdblock.cc
        src/simlib/store.cc
        src/simlib/tstat.cc
        src/simlib/version.cc
        src/simlib/waitunti.cc
        src/simlib/zdelay.cc
        src/simlib/zdelay.h
        )

add_library(simlib SHARED ${SIMLIB_SOURCE})

include_directories(src/ims2022)
set(SOURCES
        src/ims2022/main.cpp
        )

add_executable(ims2022 ${SOURCES})
target_link_libraries(ims2022 simlib)

add_custom_target(run
    COMMAND ./ims2022
    DEPENDS ${CMAKE_PROJECT_DIR}ims2022
    WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
)
