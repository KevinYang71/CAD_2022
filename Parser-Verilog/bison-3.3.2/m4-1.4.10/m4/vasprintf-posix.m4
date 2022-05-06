# vasprintf-posix.m4 serial 8
dnl Copyright (C) 2007 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_VASPRINTF_POSIX],
[
  AC_REQUIRE([gl_EOVERFLOW])
  AC_REQUIRE([gl_PRINTF_SIZES_C99])
  AC_REQUIRE([gl_PRINTF_LONG_DOUBLE])
  AC_REQUIRE([gl_PRINTF_INFINITE])
  AC_REQUIRE([gl_PRINTF_INFINITE_LONG_DOUBLE])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_A])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_F])
  AC_REQUIRE([gl_PRINTF_DIRECTIVE_N])
  AC_REQUIRE([gl_PRINTF_POSITIONS])
  AC_REQUIRE([gl_PRINTF_FLAG_GROUPING])
  AC_REQUIRE([gl_PRINTF_FLAG_ZERO])
  gl_cv_func_vasprintf_posix=no
  AC_CHECK_FUNCS([vasprintf])
  case "$gl_cv_func_printf_sizes_c99" in
    *yes)
      case "$gl_cv_func_printf_long_double" in
        *yes)
          case "$gl_cv_func_printf_infinite" in
            *yes)
              case "$gl_cv_func_printf_infinite_long_double" in
                *yes)
                  case "$gl_cv_func_printf_directive_a" in
                    *yes)
                      case "$gl_cv_func_printf_directive_f" in
                        *yes)
                          case "$gl_cv_func_printf_directive_n" in
                            *yes)
                              case "$gl_cv_func_printf_positions" in
                                *yes)
                                  case "$gl_cv_func_printf_flag_grouping" in
                                    *yes)
                                      case "$gl_cv_func_printf_flag_zero" in
                                        *yes)
                                          if test $ac_cv_func_vasprintf = yes; then
                                            # vasprintf exists and is already
                                            # POSIX compliant.
                                            gl_cv_func_vasprintf_posix=yes
                                          fi
                                          ;;
                                      esac
                                      ;;
                                  esac
                                  ;;
                              esac
                              ;;
                          esac
                          ;;
                      esac
                      ;;
                  esac
                  ;;
              esac
              ;;
          esac
          ;;
      esac
      ;;
  esac
  if test $gl_cv_func_vasprintf_posix = no; then
    gl_PREREQ_VASNPRINTF_LONG_DOUBLE
    gl_PREREQ_VASNPRINTF_INFINITE_DOUBLE
    gl_PREREQ_VASNPRINTF_INFINITE_LONG_DOUBLE
    gl_PREREQ_VASNPRINTF_DIRECTIVE_A
    gl_PREREQ_VASNPRINTF_DIRECTIVE_F
    gl_PREREQ_VASNPRINTF_FLAG_GROUPING
    gl_PREREQ_VASNPRINTF_FLAG_ZERO
    gl_REPLACE_VASNPRINTF
    gl_REPLACE_VASPRINTF
  fi
])
