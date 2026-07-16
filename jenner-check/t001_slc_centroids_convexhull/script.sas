/* Adapted from utl-altair-personal-slc-identify-centroids-of-clusters-and-plot-convex-hull.sas
   Source: rogerjdeangelis/utl-altair-personal-slc-identify-centroids-of-clusters-and-plot-convex-hull
   The DATA step + PROC PLOT are byte-identical to the author's code.
   LIBNAME target changed from d:/sd1 (Windows path) to WORK; PROC R / RHOME / pdf() block
   omitted -- those steps depend on an external R install and hardcoded Windows paths and
   are out of scope for this bundle. */

options validvarname=v7;
data have;
  input x y @@;
cards4;
4 53 5 63 10 59 9 77 13 49 13 69 12 88 15 75 18 61 19 65 22
74 27 72 28 76 24 58 27 55 28 60 30 52 31 60 32 61 36 72 28
147 32 149 35 153 33 154 38 151 41 150 38 145 38 143 32 143
34 141 44 156 44 149 44 143 46 142 47 149 49 152 50 142 53
144 52 152 55 155 54 124 60 136 63 139 86 132 85 115 85 96
78 94 74 96 97 122 98 116 98 124 99 119 99 128 101 115 108
111 110 111 108 116 111 126 115 117 117 115
;;;;
run;quit;

/*--- create ascii plot ---*/

options ls=64 ps=64;
proc plot data=have;
 plot y*x/box;
run;quit;
