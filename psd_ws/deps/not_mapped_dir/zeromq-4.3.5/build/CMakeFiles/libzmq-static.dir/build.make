# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build

# Include any dependencies generated for this target.
include CMakeFiles/libzmq-static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/libzmq-static.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/libzmq-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libzmq-static.dir/flags.make

# Object files for target libzmq-static
libzmq__static_OBJECTS =

# External object files for target libzmq-static
libzmq__static_EXTERNAL_OBJECTS = \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/external/sha1/sha1.c.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/precompiled.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/address.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/channel.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/client.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/clock.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/ctx.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/curve_mechanism_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/curve_client.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/curve_server.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/dealer.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/devpoll.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/dgram.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/dist.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/endpoint.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/epoll.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/err.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/fq.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/io_object.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/io_thread.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/ip.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/ipc_address.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/ipc_connecter.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/ipc_listener.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/kqueue.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/lb.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/mailbox.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/mailbox_safe.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/mechanism.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/mechanism_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/metadata.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/msg.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/mtrie.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/norm_engine.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/object.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/options.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/own.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/null_mechanism.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pair.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/peer.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pgm_receiver.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pgm_sender.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pgm_socket.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pipe.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/plain_client.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/plain_server.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/poll.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/poller_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/polling_util.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pollset.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/proxy.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pub.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/pull.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/push.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/random.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/raw_encoder.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/raw_decoder.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/raw_engine.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/reaper.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/rep.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/req.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/router.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/select.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/server.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/session_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/signaler.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/socket_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/socks.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/socks_connecter.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/stream.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/stream_engine_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/sub.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/tcp.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/tcp_address.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/tcp_connecter.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/tcp_listener.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/thread.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/trie.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/radix_tree.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/v1_decoder.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/v1_encoder.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/v2_decoder.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/v2_encoder.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/v3_1_encoder.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/xpub.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/xsub.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/zmq.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/zmq_utils.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/decoder_allocators.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/socket_poller.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/timers.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/radio.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/dish.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/udp_engine.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/udp_address.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/scatter.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/gather.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/ip_resolver.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/zap_client.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/zmtp_engine.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/stream_connecter_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/stream_listener_base.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/tipc_address.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/tipc_connecter.cpp.o" \
"/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/objects.dir/src/tipc_listener.cpp.o"

lib/libzmq.a: CMakeFiles/objects.dir/external/sha1/sha1.c.o
lib/libzmq.a: CMakeFiles/objects.dir/src/precompiled.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/address.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/channel.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/client.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/clock.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/ctx.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/curve_mechanism_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/curve_client.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/curve_server.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/dealer.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/devpoll.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/dgram.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/dist.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/endpoint.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/epoll.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/err.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/fq.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/io_object.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/io_thread.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/ip.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/ipc_address.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/ipc_connecter.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/ipc_listener.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/kqueue.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/lb.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/mailbox.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/mailbox_safe.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/mechanism.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/mechanism_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/metadata.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/msg.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/mtrie.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/norm_engine.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/object.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/options.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/own.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/null_mechanism.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pair.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/peer.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pgm_receiver.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pgm_sender.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pgm_socket.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pipe.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/plain_client.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/plain_server.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/poll.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/poller_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/polling_util.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pollset.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/proxy.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pub.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/pull.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/push.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/random.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/raw_encoder.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/raw_decoder.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/raw_engine.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/reaper.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/rep.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/req.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/router.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/select.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/server.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/session_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/signaler.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/socket_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/socks.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/socks_connecter.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/stream.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/stream_engine_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/sub.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/tcp.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/tcp_address.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/tcp_connecter.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/tcp_listener.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/thread.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/trie.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/radix_tree.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/v1_decoder.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/v1_encoder.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/v2_decoder.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/v2_encoder.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/v3_1_encoder.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/xpub.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/xsub.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/zmq.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/zmq_utils.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/decoder_allocators.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/socket_poller.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/timers.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/radio.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/dish.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/udp_engine.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/udp_address.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/scatter.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/gather.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/ip_resolver.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/zap_client.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/zmtp_engine.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/stream_connecter_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/stream_listener_base.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/tipc_address.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/tipc_connecter.cpp.o
lib/libzmq.a: CMakeFiles/objects.dir/src/tipc_listener.cpp.o
lib/libzmq.a: CMakeFiles/libzmq-static.dir/build.make
lib/libzmq.a: CMakeFiles/libzmq-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library lib/libzmq.a"
	$(CMAKE_COMMAND) -P CMakeFiles/libzmq-static.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libzmq-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libzmq-static.dir/build: lib/libzmq.a
.PHONY : CMakeFiles/libzmq-static.dir/build

CMakeFiles/libzmq-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libzmq-static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libzmq-static.dir/clean

CMakeFiles/libzmq-static.dir/depend:
	cd /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5 /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5 /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/libzmq-static.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/libzmq-static.dir/depend

