#!/bin/sh

export TEST_PHP_EXECUTABLE='/Applications/MAMP/bin/php/php8.2.0/bin/php'
export CC='cc'
export TEST_PHP_SRCDIR='/Users/takuya/example-app/memcached'
export MANPATH='/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/share/man:/Library/Developer/CommandLineTools/usr/share/man:/Library/Developer/CommandLineTools/Toolchains/XcodeDefault.xctoolchain/usr/share/man:/opt/homebrew/share/man::'
export TERM_PROGRAM='Apple_Terminal'
export TERM='xterm-256color'
export SHELL='/bin/zsh'
export MAKEFLAGS=''
export HOMEBREW_REPOSITORY='/opt/homebrew'
export TMPDIR='/var/folders/fm/x968jdqs7yg_tg_3lpth86km0000gn/T/'
export TERM_PROGRAM_VERSION='447'
export TERM_SESSION_ID='AF819146-407F-4E86-83B6-62FE3C44E92C'
export USER='takuya'
export SSH_AUTH_SOCK='/private/tmp/com.apple.launchd.nGH6EDPTlo/Listeners'
export __CF_USER_TEXT_ENCODING='0x1F5:0x1:0xE'
export MAKELEVEL='1'
export MFLAGS=''
export PATH='/Applications/MAMP/bin/php/php8.2.0/bin:/opt/homebrew/opt/mysql@8.0/bin:/opt/homebrew/opt/postgresql@13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/PostgreSQL/11/bin:/Library/PostgreSQL/16/bin:/Users/takuya/apache-maven-3.6.3/bin:/Users/takuya/apache-maven-3.9.5/bin:/Applications/Eclipse_2023-06.app/Contents/java/17/Home/bin'
export __CFBundleIdentifier='com.apple.Terminal'
export PWD='/Users/takuya/example-app/memcached'
export LANG='ja_JP.UTF-8'
export XPC_FLAGS='0x0'
export XPC_SERVICE_NAME='0'
export SHLVL='2'
export HOME='/Users/takuya'
export HOMEBREW_PREFIX='/opt/homebrew'
export LOGNAME='takuya'
export HOMEBREW_CELLAR='/opt/homebrew/Cellar'
export INFOPATH='/opt/homebrew/share/info:'
export _='/Applications/MAMP/bin/php/php8.2.0/bin/php'
export TEMP='/var/folders/fm/x968jdqs7yg_tg_3lpth86km0000gn/T'
export TEST_PHP_CGI_EXECUTABLE='/Applications/MAMP/bin/php/php8.2.0/bin/php-cgi'
export TEST_PHPDBG_EXECUTABLE='/Applications/MAMP/bin/php/php8.2.0/bin/phpdbg'
export REDIRECT_STATUS='1'
export QUERY_STRING=''
export PATH_TRANSLATED='/Users/takuya/example-app/memcached/tests/compression_conditions.php'
export SCRIPT_FILENAME='/Users/takuya/example-app/memcached/tests/compression_conditions.php'
export REQUEST_METHOD='GET'
export CONTENT_TYPE=''
export CONTENT_LENGTH=''
export TZ=''
export TEST_PHP_EXTRA_ARGS=' -n -c '\''/Users/takuya/example-app/memcached/tmp-php.ini'\''  -d "output_handler=" -d "open_basedir=" -d "disable_functions=" -d "output_buffering=Off" -d "error_reporting=32767" -d "display_errors=1" -d "display_startup_errors=1" -d "log_errors=0" -d "html_errors=0" -d "track_errors=0" -d "report_memleaks=1" -d "report_zend_debug=0" -d "docref_root=" -d "docref_ext=.html" -d "error_prepend_string=" -d "error_append_string=" -d "auto_prepend_file=" -d "auto_append_file=" -d "ignore_repeated_errors=0" -d "precision=14" -d "serialize_precision=-1" -d "memory_limit=128M" -d "opcache.fast_shutdown=0" -d "opcache.file_update_protection=0" -d "opcache.revalidate_freq=0" -d "opcache.jit_hot_loop=1" -d "opcache.jit_hot_func=1" -d "opcache.jit_hot_return=1" -d "opcache.jit_hot_side_exit=1" -d "zend.assertions=1" -d "zend.exception_ignore_args=0" -d "zend.exception_string_param_max_len=15" -d "short_open_tag=0" -d "extension_dir=/Users/takuya/example-app/memcached/modules/" -d "extension=memcached.so" -d "session.auto_start=0" -d "zlib.output_compression=Off"'
export HTTP_COOKIE=''

case "$1" in
"gdb")
    gdb --args /Applications/MAMP/bin/php/php8.2.0/bin/php  -n -c '/Users/takuya/example-app/memcached/tmp-php.ini'   -d "output_handler=" -d "open_basedir=" -d "disable_functions=" -d "output_buffering=Off" -d "error_reporting=32767" -d "display_errors=1" -d "display_startup_errors=1" -d "log_errors=0" -d "html_errors=0" -d "track_errors=0" -d "report_memleaks=1" -d "report_zend_debug=0" -d "docref_root=" -d "docref_ext=.html" -d "error_prepend_string=" -d "error_append_string=" -d "auto_prepend_file=" -d "auto_append_file=" -d "ignore_repeated_errors=0" -d "precision=14" -d "serialize_precision=-1" -d "memory_limit=128M" -d "opcache.fast_shutdown=0" -d "opcache.file_update_protection=0" -d "opcache.revalidate_freq=0" -d "opcache.jit_hot_loop=1" -d "opcache.jit_hot_func=1" -d "opcache.jit_hot_return=1" -d "opcache.jit_hot_side_exit=1" -d "zend.assertions=1" -d "zend.exception_ignore_args=0" -d "zend.exception_string_param_max_len=15" -d "short_open_tag=0" -d "extension_dir=/Users/takuya/example-app/memcached/modules/" -d "extension=memcached.so" -d "session.auto_start=0" -d "zlib.output_compression=Off" -f "/Users/takuya/example-app/memcached/tests/compression_conditions.php"  2>&1
    ;;
"lldb")
    lldb -- /Applications/MAMP/bin/php/php8.2.0/bin/php  -n -c '/Users/takuya/example-app/memcached/tmp-php.ini'   -d "output_handler=" -d "open_basedir=" -d "disable_functions=" -d "output_buffering=Off" -d "error_reporting=32767" -d "display_errors=1" -d "display_startup_errors=1" -d "log_errors=0" -d "html_errors=0" -d "track_errors=0" -d "report_memleaks=1" -d "report_zend_debug=0" -d "docref_root=" -d "docref_ext=.html" -d "error_prepend_string=" -d "error_append_string=" -d "auto_prepend_file=" -d "auto_append_file=" -d "ignore_repeated_errors=0" -d "precision=14" -d "serialize_precision=-1" -d "memory_limit=128M" -d "opcache.fast_shutdown=0" -d "opcache.file_update_protection=0" -d "opcache.revalidate_freq=0" -d "opcache.jit_hot_loop=1" -d "opcache.jit_hot_func=1" -d "opcache.jit_hot_return=1" -d "opcache.jit_hot_side_exit=1" -d "zend.assertions=1" -d "zend.exception_ignore_args=0" -d "zend.exception_string_param_max_len=15" -d "short_open_tag=0" -d "extension_dir=/Users/takuya/example-app/memcached/modules/" -d "extension=memcached.so" -d "session.auto_start=0" -d "zlib.output_compression=Off" -f "/Users/takuya/example-app/memcached/tests/compression_conditions.php"  2>&1
    ;;
"valgrind")
    USE_ZEND_ALLOC=0 valgrind $2 /Applications/MAMP/bin/php/php8.2.0/bin/php  -n -c '/Users/takuya/example-app/memcached/tmp-php.ini'   -d "output_handler=" -d "open_basedir=" -d "disable_functions=" -d "output_buffering=Off" -d "error_reporting=32767" -d "display_errors=1" -d "display_startup_errors=1" -d "log_errors=0" -d "html_errors=0" -d "track_errors=0" -d "report_memleaks=1" -d "report_zend_debug=0" -d "docref_root=" -d "docref_ext=.html" -d "error_prepend_string=" -d "error_append_string=" -d "auto_prepend_file=" -d "auto_append_file=" -d "ignore_repeated_errors=0" -d "precision=14" -d "serialize_precision=-1" -d "memory_limit=128M" -d "opcache.fast_shutdown=0" -d "opcache.file_update_protection=0" -d "opcache.revalidate_freq=0" -d "opcache.jit_hot_loop=1" -d "opcache.jit_hot_func=1" -d "opcache.jit_hot_return=1" -d "opcache.jit_hot_side_exit=1" -d "zend.assertions=1" -d "zend.exception_ignore_args=0" -d "zend.exception_string_param_max_len=15" -d "short_open_tag=0" -d "extension_dir=/Users/takuya/example-app/memcached/modules/" -d "extension=memcached.so" -d "session.auto_start=0" -d "zlib.output_compression=Off" -f "/Users/takuya/example-app/memcached/tests/compression_conditions.php"  2>&1
    ;;
"rr")
    rr record $2 /Applications/MAMP/bin/php/php8.2.0/bin/php  -n -c '/Users/takuya/example-app/memcached/tmp-php.ini'   -d "output_handler=" -d "open_basedir=" -d "disable_functions=" -d "output_buffering=Off" -d "error_reporting=32767" -d "display_errors=1" -d "display_startup_errors=1" -d "log_errors=0" -d "html_errors=0" -d "track_errors=0" -d "report_memleaks=1" -d "report_zend_debug=0" -d "docref_root=" -d "docref_ext=.html" -d "error_prepend_string=" -d "error_append_string=" -d "auto_prepend_file=" -d "auto_append_file=" -d "ignore_repeated_errors=0" -d "precision=14" -d "serialize_precision=-1" -d "memory_limit=128M" -d "opcache.fast_shutdown=0" -d "opcache.file_update_protection=0" -d "opcache.revalidate_freq=0" -d "opcache.jit_hot_loop=1" -d "opcache.jit_hot_func=1" -d "opcache.jit_hot_return=1" -d "opcache.jit_hot_side_exit=1" -d "zend.assertions=1" -d "zend.exception_ignore_args=0" -d "zend.exception_string_param_max_len=15" -d "short_open_tag=0" -d "extension_dir=/Users/takuya/example-app/memcached/modules/" -d "extension=memcached.so" -d "session.auto_start=0" -d "zlib.output_compression=Off" -f "/Users/takuya/example-app/memcached/tests/compression_conditions.php"  2>&1
    ;;
*)
    /Applications/MAMP/bin/php/php8.2.0/bin/php  -n -c '/Users/takuya/example-app/memcached/tmp-php.ini'   -d "output_handler=" -d "open_basedir=" -d "disable_functions=" -d "output_buffering=Off" -d "error_reporting=32767" -d "display_errors=1" -d "display_startup_errors=1" -d "log_errors=0" -d "html_errors=0" -d "track_errors=0" -d "report_memleaks=1" -d "report_zend_debug=0" -d "docref_root=" -d "docref_ext=.html" -d "error_prepend_string=" -d "error_append_string=" -d "auto_prepend_file=" -d "auto_append_file=" -d "ignore_repeated_errors=0" -d "precision=14" -d "serialize_precision=-1" -d "memory_limit=128M" -d "opcache.fast_shutdown=0" -d "opcache.file_update_protection=0" -d "opcache.revalidate_freq=0" -d "opcache.jit_hot_loop=1" -d "opcache.jit_hot_func=1" -d "opcache.jit_hot_return=1" -d "opcache.jit_hot_side_exit=1" -d "zend.assertions=1" -d "zend.exception_ignore_args=0" -d "zend.exception_string_param_max_len=15" -d "short_open_tag=0" -d "extension_dir=/Users/takuya/example-app/memcached/modules/" -d "extension=memcached.so" -d "session.auto_start=0" -d "zlib.output_compression=Off" -f "/Users/takuya/example-app/memcached/tests/compression_conditions.php"  2>&1
    ;;
esac