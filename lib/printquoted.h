/* Print a string, appropriately quoted.

   Copyright (C) 1997-2025 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

#if !defined PRINTQUOTED_H
# define PRINTQUOTED_H

# include <stdbool.h>
# include <stdio.h>

# include "quote.h"
# include "quotearg.h"


size_t qmark_chars(char *buf, size_t len);
int print_quoted (FILE *fp, const struct quoting_options *qopts, bool dest_is_tty, const char *format, const char *s);


#endif
