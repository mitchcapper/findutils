#!/bin/sh
# Exercise error diagnostics for options with mandatory numeric arguments.

# Copyright (C) 2023-2025 Free Software Foundation, Inc.

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

. "${srcdir=.}/tests/init.sh"; fu_path_prepend_
print_ver_ find

for o in -inum -links -uid -gid; do
  # Check error diagnosic for missing argument.
  returns_ 1 find $o >out 2>err || fail=1
  compare /dev/null out || fail=1
  grep -F 'missing argument to' err || { fail=1; cat err; }

  # Check error diagnosic for non-numeric argument.
  returns_ 1 find $o foo >out 2>err || fail=1
  compare /dev/null out || fail=1
  grep -F 'non-numeric argument to' err || { fail=1; cat err; }
done

Exit $fail
