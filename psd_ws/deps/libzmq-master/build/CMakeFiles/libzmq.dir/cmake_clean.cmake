file(REMOVE_RECURSE
  "lib/.5"
  "lib/libzmq.pdb"
  "lib/libzmq.so"
  "lib/libzmq.so.5"
  "lib/libzmq.so.5.2.6"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libzmq.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
