# Average of sorted numbers

BEGIN {
  c = 0;
  sum = 0;
}
{
  for (i = 1; i <= NF; i++) {
    a[c++] = $i;
    sum += $i
  }
}
END {
  avg = sum / c;
  if( (c % 2) == 1 ) {
    median = a[ int(c/2) ];
  } else {
    median = ( a[c/2] + a[c/2-1] ) / 2;
  }
  OFS="\t";
  # print "SUM:", sum, "COUNT:", c, "AVG:", avg, "MED:", median, "MIN:", a[0], "MAX:", a[c-1];
  print avg;
}
