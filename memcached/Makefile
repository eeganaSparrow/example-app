srcdir = /Users/takuya/example-app/memcached
builddir = /Users/takuya/example-app/memcached
top_srcdir = /Users/takuya/example-app/memcached
top_builddir = /Users/takuya/example-app/memcached
EGREP = /usr/bin/grep -E
SED = /usr/bin/sed
CONFIGURE_COMMAND = './configure' '--with-zlib-dir=/opt/homebrew/Cellar/zlib/1.3/'
CONFIGURE_OPTIONS = '--with-zlib-dir=/opt/homebrew/Cellar/zlib/1.3/'
SHLIB_SUFFIX_NAME = dylib
SHLIB_DL_SUFFIX_NAME = so
AWK = awk
MEMCACHED_SHARED_LIBADD = -Wl,-rpath,/opt/homebrew/Cellar/libmemcached/1.0.18_2/lib -L/opt/homebrew/Cellar/libmemcached/1.0.18_2/lib -Wl,-rpath,/opt/homebrew/Cellar/zlib/1.3//lib -L/opt/homebrew/Cellar/zlib/1.3//lib -lz -lmemcached -lmemcachedutil -lsasl2
shared_objects_memcached = php_memcached.lo php_libmemcached_compat.lo g_fmt.lo fastlz/fastlz.lo php_memcached_session.lo
PHP_PECL_EXTENSION = memcached
PHP_MODULES = $(phplibdir)/memcached.la
PHP_ZEND_EX =
all_targets = $(PHP_MODULES) $(PHP_ZEND_EX)
install_targets = install-modules install-headers
prefix = /Applications/MAMP/bin/php/php8.2.0
exec_prefix = $(prefix)
libdir = ${exec_prefix}/lib
prefix = /Applications/MAMP/bin/php/php8.2.0
phplibdir = /Users/takuya/example-app/memcached/modules
phpincludedir = /Applications/MAMP/bin/php/php8.2.0/include/php
CC = cc
CFLAGS = -g -O2 -I/Applications/MAMP/bin/php/php8.2.0/include/php -I/Applications/MAMP/bin/php/php8.2.0/include/php/main -I/Applications/MAMP/bin/php/php8.2.0/include/php/TSRM -I/Applications/MAMP/bin/php/php8.2.0/include/php/Zend -I/Applications/MAMP/bin/php/php8.2.0/include/php/ext -I/Applications/MAMP/bin/php/php8.2.0/include/php/ext/date/lib -I/opt/homebrew/Cellar/zlib/1.3//include -I/opt/homebrew/Cellar/libmemcached/1.0.18_2/include
CFLAGS_CLEAN = $(CFLAGS) -D_GNU_SOURCE
CPP = cc -E
CPPFLAGS = -DHAVE_CONFIG_H
CXX =
CXXFLAGS =
CXXFLAGS_CLEAN = $(CXXFLAGS)
EXTENSION_DIR = /Applications/MAMP/bin/php/php8.2.0/lib/php/extensions/no-debug-non-zts-20220829
PHP_EXECUTABLE = /Applications/MAMP/bin/php/php8.2.0/bin/php
EXTRA_LDFLAGS =
EXTRA_LIBS =
INCLUDES = -I/Applications/MAMP/bin/php/php8.2.0/include/php -I/Applications/MAMP/bin/php/php8.2.0/include/php/main -I/Applications/MAMP/bin/php/php8.2.0/include/php/TSRM -I/Applications/MAMP/bin/php/php8.2.0/include/php/Zend -I/Applications/MAMP/bin/php/php8.2.0/include/php/ext -I/Applications/MAMP/bin/php/php8.2.0/include/php/ext/date/lib -I/opt/homebrew/Cellar/zlib/1.3//include -I/opt/homebrew/Cellar/libmemcached/1.0.18_2/include
LFLAGS =
LDFLAGS =
SHARED_LIBTOOL =
LIBTOOL = $(SHELL) $(top_builddir)/libtool
SHELL = /bin/sh
INSTALL_HEADERS =
BUILD_CC = cc
mkinstalldirs = $(top_srcdir)/build/shtool mkdir -p
INSTALL = $(top_srcdir)/build/shtool install -c
INSTALL_DATA = $(INSTALL) -m 644

DEFS = -I$(top_builddir)/include -I$(top_builddir)/main -I$(top_srcdir)
COMMON_FLAGS = $(DEFS) $(INCLUDES) $(EXTRA_INCLUDES) $(CPPFLAGS) $(PHP_FRAMEWORKPATH)

all: $(all_targets)
	@echo
	@echo "Build complete."
	@echo "Don't forget to run 'make test'."
	@echo

build-modules: $(PHP_MODULES) $(PHP_ZEND_EX)

build-binaries: $(PHP_BINARIES)

libphp.la: $(PHP_GLOBAL_OBJS) $(PHP_SAPI_OBJS)
	$(LIBTOOL) --mode=link $(CC) $(LIBPHP_CFLAGS) $(CFLAGS) $(EXTRA_CFLAGS) -rpath $(phptempdir) $(EXTRA_LDFLAGS) $(LDFLAGS) $(PHP_RPATHS) $(PHP_GLOBAL_OBJS) $(PHP_SAPI_OBJS) $(EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $@
	-@$(LIBTOOL) --silent --mode=install cp $@ $(phptempdir)/$@ >/dev/null 2>&1

libs/libphp.bundle: $(PHP_GLOBAL_OBJS) $(PHP_SAPI_OBJS)
	$(CC) $(MH_BUNDLE_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(LDFLAGS) $(EXTRA_LDFLAGS) $(PHP_GLOBAL_OBJS:.lo=.o) $(PHP_SAPI_OBJS:.lo=.o) $(PHP_FRAMEWORKS) $(EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $@ && cp $@ libs/libphp.so

install: $(all_targets) $(install_targets)

install-sapi: $(OVERALL_TARGET)
	@echo "Installing PHP SAPI module:       $(PHP_SAPI)"
	-@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
	-@if test ! -r $(phptempdir)/libphp.$(SHLIB_DL_SUFFIX_NAME); then \
		for i in 0.0.0 0.0 0; do \
			if test -r $(phptempdir)/libphp.$(SHLIB_DL_SUFFIX_NAME).$$i; then \
				$(LN_S) $(phptempdir)/libphp.$(SHLIB_DL_SUFFIX_NAME).$$i $(phptempdir)/libphp.$(SHLIB_DL_SUFFIX_NAME); \
				break; \
			fi; \
		done; \
	fi
	@$(INSTALL_IT)

install-binaries: build-binaries $(install_binary_targets)

install-modules: build-modules
	@test -d modules && \
	$(mkinstalldirs) $(INSTALL_ROOT)$(EXTENSION_DIR)
	@echo "Installing shared extensions:     $(INSTALL_ROOT)$(EXTENSION_DIR)/"
	@rm -f modules/*.la >/dev/null 2>&1
	@$(INSTALL) modules/* $(INSTALL_ROOT)$(EXTENSION_DIR)

install-headers:
	-@if test "$(INSTALL_HEADERS)"; then \
		for i in `echo $(INSTALL_HEADERS)`; do \
			i=`$(top_srcdir)/build/shtool path -d $$i`; \
			paths="$$paths $(INSTALL_ROOT)$(phpincludedir)/$$i"; \
		done; \
		$(mkinstalldirs) $$paths && \
		echo "Installing header files:          $(INSTALL_ROOT)$(phpincludedir)/" && \
		for i in `echo $(INSTALL_HEADERS)`; do \
			if test "$(PHP_PECL_EXTENSION)"; then \
				src=`echo $$i | $(SED) -e "s#ext/$(PHP_PECL_EXTENSION)/##g"`; \
			else \
				src=$$i; \
			fi; \
			if test -f "$(top_srcdir)/$$src"; then \
				$(INSTALL_DATA) $(top_srcdir)/$$src $(INSTALL_ROOT)$(phpincludedir)/$$i; \
			elif test -f "$(top_builddir)/$$src"; then \
				$(INSTALL_DATA) $(top_builddir)/$$src $(INSTALL_ROOT)$(phpincludedir)/$$i; \
			else \
				(cd $(top_srcdir)/$$src && $(INSTALL_DATA) *.h $(INSTALL_ROOT)$(phpincludedir)/$$i; \
				cd $(top_builddir)/$$src && $(INSTALL_DATA) *.h $(INSTALL_ROOT)$(phpincludedir)/$$i) 2>/dev/null || true; \
			fi \
		done; \
	fi

PHP_TEST_SETTINGS = -d 'open_basedir=' -d 'output_buffering=0' -d 'memory_limit=-1'
PHP_TEST_SHARED_EXTENSIONS =  ` \
	if test "x$(PHP_MODULES)" != "x"; then \
		for i in $(PHP_MODULES)""; do \
			. $$i; \
			if test "x$$dlname" != "xdl_test.so"; then \
				$(top_srcdir)/build/shtool echo -n -- " -d extension=$$dlname"; \
			fi; \
		done; \
	fi; \
	if test "x$(PHP_ZEND_EX)" != "x"; then \
		for i in $(PHP_ZEND_EX)""; do \
			. $$i; $(top_srcdir)/build/shtool echo -n -- " -d zend_extension=$(top_builddir)/modules/$$dlname"; \
		done; \
	fi`
PHP_DEPRECATED_DIRECTIVES_REGEX = '^(magic_quotes_(gpc|runtime|sybase)?|(zend_)?extension(_debug)?(_ts)?)[\t\ ]*='

test: all
	@if test ! -z "$(PHP_EXECUTABLE)" && test -x "$(PHP_EXECUTABLE)"; then \
		INI_FILE=`$(PHP_EXECUTABLE) -d 'display_errors=stderr' -r 'echo php_ini_loaded_file();' 2> /dev/null`; \
		if test "$$INI_FILE"; then \
			$(EGREP) -h -v $(PHP_DEPRECATED_DIRECTIVES_REGEX) "$$INI_FILE" > $(top_builddir)/tmp-php.ini; \
		else \
			echo > $(top_builddir)/tmp-php.ini; \
		fi; \
		INI_SCANNED_PATH=`$(PHP_EXECUTABLE) -d 'display_errors=stderr' -r '$$a = explode(",\n", trim(php_ini_scanned_files())); echo $$a[0];' 2> /dev/null`; \
		if test "$$INI_SCANNED_PATH"; then \
			INI_SCANNED_PATH=`$(top_srcdir)/build/shtool path -d $$INI_SCANNED_PATH`; \
			$(EGREP) -h -v $(PHP_DEPRECATED_DIRECTIVES_REGEX) "$$INI_SCANNED_PATH"/*.ini >> $(top_builddir)/tmp-php.ini; \
		fi; \
		TEST_PHP_EXECUTABLE=$(PHP_EXECUTABLE) \
		TEST_PHP_SRCDIR=$(top_srcdir) \
		CC="$(CC)" \
			$(PHP_EXECUTABLE) -n -c $(top_builddir)/tmp-php.ini $(PHP_TEST_SETTINGS) $(top_srcdir)/run-tests.php -n -c $(top_builddir)/tmp-php.ini -d extension_dir=$(top_builddir)/modules/ $(PHP_TEST_SHARED_EXTENSIONS) $(TESTS); \
		TEST_RESULT_EXIT_CODE=$$?; \
		rm $(top_builddir)/tmp-php.ini; \
		exit $$TEST_RESULT_EXIT_CODE; \
	else \
		echo "ERROR: Cannot run tests without CLI sapi."; \
	fi

clean:
	find . -name \*.gcno -o -name \*.gcda | xargs rm -f
	find . -name \*.lo -o -name \*.o -o -name \*.dep | xargs rm -f
	find . -name \*.la -o -name \*.a | xargs rm -f
	find . -name \*.so | xargs rm -f
	find . -name .libs -a -type d|xargs rm -rf
	rm -f libphp.la $(SAPI_CLI_PATH) $(SAPI_CGI_PATH) $(SAPI_LITESPEED_PATH) $(SAPI_FPM_PATH) $(OVERALL_TARGET) modules/* libs/*
	rm -f ext/opcache/jit/zend_jit_x86.c
	rm -f ext/opcache/jit/zend_jit_arm64.c
	rm -f ext/opcache/minilua

distclean: clean
	rm -f Makefile config.cache config.log config.status Makefile.objects Makefile.fragments libtool main/php_config.h main/internal_functions_cli.c main/internal_functions.c Zend/zend_dtrace_gen.h Zend/zend_dtrace_gen.h.bak Zend/zend_config.h
	rm -f main/build-defs.h scripts/phpize
	rm -f ext/date/lib/timelib_config.h ext/mbstring/libmbfl/config.h ext/oci8/oci8_dtrace_gen.h ext/oci8/oci8_dtrace_gen.h.bak
	rm -f scripts/man1/phpize.1 scripts/php-config scripts/man1/php-config.1 sapi/cli/php.1 sapi/cgi/php-cgi.1 sapi/phpdbg/phpdbg.1 ext/phar/phar.1 ext/phar/phar.phar.1
	rm -f sapi/fpm/php-fpm.conf sapi/fpm/init.d.php-fpm sapi/fpm/php-fpm.service sapi/fpm/php-fpm.8 sapi/fpm/status.html
	rm -f ext/phar/phar.phar ext/phar/phar.php
	if test "$(srcdir)" != "$(builddir)"; then \
	  rm -f ext/phar/phar/phar.inc; \
	fi
	$(EGREP) define'.*include/php' $(top_srcdir)/configure | $(SED) 's/.*>//'|xargs rm -f

prof-gen:
	CCACHE_DISABLE=1 $(MAKE) PROF_FLAGS=-fprofile-generate all
	find . -name \*.gcda | xargs rm -f

prof-clean:
	find . -name \*.lo -o -name \*.o | xargs rm -f
	find . -name \*.la -o -name \*.a | xargs rm -f
	find . -name \*.so | xargs rm -f
	rm -f libphp.la $(SAPI_CLI_PATH) $(SAPI_CGI_PATH) $(SAPI_LITESPEED_PATH) $(SAPI_FPM_PATH) $(OVERALL_TARGET) modules/* libs/*

prof-use:
	CCACHE_DISABLE=1 $(MAKE) PROF_FLAGS=-fprofile-use all

%_arginfo.h: %.stub.php
	@if test -e "$(top_srcdir)/build/gen_stub.php"; then \
		if test ! -z "$(PHP)"; then \
			echo Parse $< to generate $@;\
			$(PHP) $(top_srcdir)/build/gen_stub.php $<; \
		elif test ! -z "$(PHP_EXECUTABLE)" && test -x "$(PHP_EXECUTABLE)"; then \
			echo Parse $< to generate $@;\
			$(PHP_EXECUTABLE) $(top_srcdir)/build/gen_stub.php $<; \
		fi; \
	fi;

.PHONY: all clean install distclean test prof-gen prof-clean prof-use
.NOEXPORT:
-include php_memcached.dep
php_memcached.lo: /Users/takuya/example-app/memcached/php_memcached.c
	$(LIBTOOL) --mode=compile $(CC) -I. -I/Users/takuya/example-app/memcached $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -I/Applications/MAMP/bin/php/php8.2.0/include/php    -DZEND_COMPILE_DL_EXT=1 -c /Users/takuya/example-app/memcached/php_memcached.c -o php_memcached.lo  -MMD -MF php_memcached.dep -MT php_memcached.lo
-include php_libmemcached_compat.dep
php_libmemcached_compat.lo: /Users/takuya/example-app/memcached/php_libmemcached_compat.c
	$(LIBTOOL) --mode=compile $(CC) -I. -I/Users/takuya/example-app/memcached $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -I/Applications/MAMP/bin/php/php8.2.0/include/php    -DZEND_COMPILE_DL_EXT=1 -c /Users/takuya/example-app/memcached/php_libmemcached_compat.c -o php_libmemcached_compat.lo  -MMD -MF php_libmemcached_compat.dep -MT php_libmemcached_compat.lo
-include g_fmt.dep
g_fmt.lo: /Users/takuya/example-app/memcached/g_fmt.c
	$(LIBTOOL) --mode=compile $(CC) -I. -I/Users/takuya/example-app/memcached $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -I/Applications/MAMP/bin/php/php8.2.0/include/php    -DZEND_COMPILE_DL_EXT=1 -c /Users/takuya/example-app/memcached/g_fmt.c -o g_fmt.lo  -MMD -MF g_fmt.dep -MT g_fmt.lo
-include fastlz/fastlz.dep
fastlz/fastlz.lo: /Users/takuya/example-app/memcached/fastlz/fastlz.c
	$(LIBTOOL) --mode=compile $(CC) -I. -I/Users/takuya/example-app/memcached $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -I/Applications/MAMP/bin/php/php8.2.0/include/php    -DZEND_COMPILE_DL_EXT=1 -c /Users/takuya/example-app/memcached/fastlz/fastlz.c -o fastlz/fastlz.lo  -MMD -MF fastlz/fastlz.dep -MT fastlz/fastlz.lo
-include php_memcached_session.dep
php_memcached_session.lo: /Users/takuya/example-app/memcached/php_memcached_session.c
	$(LIBTOOL) --mode=compile $(CC) -I. -I/Users/takuya/example-app/memcached $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -I/Applications/MAMP/bin/php/php8.2.0/include/php    -DZEND_COMPILE_DL_EXT=1 -c /Users/takuya/example-app/memcached/php_memcached_session.c -o php_memcached_session.lo  -MMD -MF php_memcached_session.dep -MT php_memcached_session.lo
$(phplibdir)/memcached.la: ./memcached.la
	$(LIBTOOL) --mode=install cp ./memcached.la $(phplibdir)

./memcached.la: $(shared_objects_memcached) $(MEMCACHED_SHARED_DEPENDENCIES)
	$(LIBTOOL) --mode=link $(CC) -shared $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(LDFLAGS)  -o $@ -export-dynamic -avoid-version -prefer-pic -module -rpath $(phplibdir) $(EXTRA_LDFLAGS) $(shared_objects_memcached) $(MEMCACHED_SHARED_LIBADD)

