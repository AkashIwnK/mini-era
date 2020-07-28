; ModuleID = './output//test.query.bc'
source_filename = "src//main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radar_dict_entry_t = type { i32, float, [32768 x float] }
%struct.vit_dict_entry_t = type { i32, i32, %struct.ofdm_param, %struct.frame_param, [24780 x i8] }
%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }
%union.branchtab27 = type { [32 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.vehicle_state_t = type { i32, float }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.out.execute_rad_kernel = type <{ i64 }>
%struct.out.execute_rad_wrapper = type <{ i64 }>
%struct.out.execute_vit_kernel = type <{ i64, i64 }>
%struct.out.execute_vit_wrapper = type <{ i64 }>
%struct.out.execute_cv_kernel = type <{ i64 }>
%struct.out.execute_cv_wrapper = type <{ i64 }>
%struct.out.plan_and_control = type <{ i64 }>
%struct.out.plan_and_control_wrapper = type <{ i64 }>
%struct.out.miniERARoot = type <{ i64 }>
%miniERARoot_cloned.9.arg.struct.ty = type <{ float*, i64, i32, i32, i32, float*, i64, %struct.ofdm_param*, i64, %struct.frame_param*, i64, i8*, i64, i8*, i64, i32*, i64, i32, i32*, i64, %struct.vehicle_state_t*, i64, %struct.out.miniERARoot }>

@.str = private unnamed_addr constant [30 x i8] c"traces/objects_dictionary.dfn\00", align 1
@cv_dict = dso_local local_unnamed_addr global i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"traces/radar_dictionary.dfn\00", align 1
@rad_dict = dso_local local_unnamed_addr global i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"traces/vit_dictionary.dfn\00", align 1
@vit_dict = dso_local local_unnamed_addr global i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), align 8
@all_obstacle_lanes_mode = dso_local local_unnamed_addr global i32 0, align 4
@output_viz_trace = dso_local local_unnamed_addr global i8 0, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Usage: %s <OPTIONS>\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"LHazard\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"RHazard\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@lane_names = dso_local local_unnamed_addr global [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)], align 16
@.str.21 = private unnamed_addr constant [12 x i8] c"Safe_L_or_R\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Safe_R_only\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Safe_L_only\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Unsafe_L_or_R\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Unknowwn\00", align 1
@message_names = dso_local local_unnamed_addr global [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)], align 16
@.str.26 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Bike\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Car\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Person\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Truck\00", align 1
@object_names = dso_local local_unnamed_addr global [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)], align 16
@nearest_obj = dso_local local_unnamed_addr global [5 x i8] c"NNNNN", align 1
@nearest_dist = dso_local local_unnamed_addr global [5 x float] [float 5.500000e+02, float 5.500000e+02, float 5.500000e+02, float 5.500000e+02, float 5.500000e+02], align 16
@label_match = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@label_lookup = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@label_mismatch = dso_local local_unnamed_addr global [5 x [5 x i32]] zeroinitializer, align 16
@num_radar_dictionary_items = dso_local global i32 0, align 4
@radar_inf_errs = dso_local local_unnamed_addr global i32 0, align 4
@radar_inf_noerr = dso_local local_unnamed_addr global i32 0, align 4
@radar_zero_errs = dso_local local_unnamed_addr global i32 0, align 4
@radar_zero_noerr = dso_local local_unnamed_addr global i32 0, align 4
@radar_total_calc = dso_local local_unnamed_addr global i32 0, align 4
@hist_pct_errs = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [6 x i8] c"   0%\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"<  1%\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"< 10%\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"<100%\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c">100%\00", align 1
@hist_pct_err_label = dso_local local_unnamed_addr global [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)], align 16
@num_viterbi_dictionary_items = dso_local global i32 0, align 4
@vit_msgs_behavior = dso_local local_unnamed_addr global i32 0, align 4
@total_msgs = dso_local local_unnamed_addr global i32 0, align 4
@bad_decode_msgs = dso_local local_unnamed_addr global i32 0, align 4
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"Error: unable to open dictionary file %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@the_radar_return_dict = common dso_local local_unnamed_addr global %struct.radar_dict_entry_t* null, align 8
@.str.39 = private unnamed_addr constant [60 x i8] c"ERROR : Cannot allocate Radar Trace Dictionary memory space\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"%u %f\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"NOTE: Did not hit eof on the radar dictionary file %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"radar_dictionary.dfn\00", align 1
@.str.44 = private unnamed_addr constant [62 x i8] c"Error: unable to open viterbi dictionary definitiond file %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"vit_dictionary.dfn\00", align 1
@the_viterbi_trace_dict = common dso_local local_unnamed_addr global %struct.vit_dict_entry_t* null, align 8
@.str.46 = private unnamed_addr constant [62 x i8] c"ERROR : Cannot allocate Viterbi Trace Dictionary memory space\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [69 x i8] c"ERROR : Check Viterbi Dictionary : i = %d but Mnum = %d  (Mid = %d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@hist_total_objs = common dso_local local_unnamed_addr global [80 x i32] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [47 x i8] c"ERROR : Unknown object type in cv trace: '%c'\0A\00", align 1
@.str.52 = private unnamed_addr constant [111 x i8] c"echo -n \22  > NVDLA: \22; ./nvdla_runtime --loadable hpvm-mod.nvdla --image 2004_2.jpg --rawdump | grep execution\00", align 1
@total_obj = common dso_local local_unnamed_addr global i32 0, align 4
@d_depunctured = internal global [24780 x i8] zeroinitializer, align 16
@PARTAB = internal unnamed_addr constant [256 x i8] c"\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00", align 16
@d_branchtab27_generic = common dso_local local_unnamed_addr global [2 x %union.branchtab27] zeroinitializer, align 16
@.str.54 = private unnamed_addr constant [35 x i8] c"ERROR : imi = %u and should be 64\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"ERROR : imi = %u and should be 70\0A\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"ERROR : imi = %u and should be 24852\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c" ERROR  In %s with UNDEFINED MESSAGE: %u\0A\00", align 1
@.str.58 = private unnamed_addr constant [67 x i8] c"\0AFinal CV CNN Accuracy: %u correct of %u classifications = %.2f%%\0A\00", align 1
@.str.59 = private unnamed_addr constant [72 x i8] c"  CV CNN Accuracy for %10s : %u correct of %u classifications = %.2f%%\0A\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"\0AAnalysis of the %u mis-identifications:\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"  Mislabeled %10s as %10s on %u occasions\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"%7s | %9u \0A\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Inf_Err\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Inf_OK\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"ZeroOk\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"%3u | %9u \0A\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"There were %.3lf obstacles per time step (average)\0A\00", align 1
@.str.71 = private unnamed_addr constant [51 x i8] c"There were %.3lf messages per time step (average)\0A\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c":hAot:v:s:r:\00", align 1
@optarg = external dso_local local_unnamed_addr global i8*, align 8
@.str.74 = private unnamed_addr constant [22 x i8] c"Using trace file: %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"Using viterbi behavior %u\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"unknown option: %c\0A\00", align 1
@optopt = external dso_local local_unnamed_addr global i32, align 4
@optind = external dso_local local_unnamed_addr global i32, align 4
@.str.78 = private unnamed_addr constant [21 x i8] c"extra arguments: %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"Input trace file: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"Program run time in milliseconds %f\0A\00", align 1
@lane_obj = common dso_local local_unnamed_addr global [5 x [16 x i8]] zeroinitializer, align 16
@obj_in_lane = common dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@lane_dist = common dso_local local_unnamed_addr global [5 x [16 x i32]] zeroinitializer, align 16
@.str.86 = private unnamed_addr constant [14 x i8] c"./output.dimg\00", align 1
@str = private unnamed_addr constant [10 x i8] c" OPTIONS:\00", align 1
@str.87 = private unnamed_addr constant [45 x i8] c"    -h         : print this help information\00", align 1
@str.88 = private unnamed_addr constant [57 x i8] c"    -o         : output the Visualizer trace (to stdout)\00", align 1
@str.89 = private unnamed_addr constant [53 x i8] c"    -t <trace> : defines the input trace file to use\00", align 1
@str.90 = private unnamed_addr constant [53 x i8] c"    -v <N>     : defines Viterbi messaging behavior:\00", align 1
@str.91 = private unnamed_addr constant [58 x i8] c"               :      0 = One short message per time step\00", align 1
@str.92 = private unnamed_addr constant [58 x i8] c"               :      1 = One long  message per time step\00", align 1
@str.93 = private unnamed_addr constant [71 x i8] c"               :      2 = One short message per obstacle per time step\00", align 1
@str.94 = private unnamed_addr constant [71 x i8] c"               :      3 = One long  message per obstacle per time step\00", align 1
@str.95 = private unnamed_addr constant [71 x i8] c"               :      4 = One short msg per obstacle + 1 per time step\00", align 1
@str.96 = private unnamed_addr constant [71 x i8] c"               :      5 = One long  msg per obstacle + 1 per time step\00", align 1
@str.97 = private unnamed_addr constant [44 x i8] c"\0AHistogram of Radar Distance ABS-PCT-ERROR:\00", align 1
@str.98 = private unnamed_addr constant [29 x i8] c"\0AHistogram of Total Objects:\00", align 1
@str.99 = private unnamed_addr constant [58 x i8] c"Error: the trace reader couldn't be initialized properly.\00", align 1
@str.100 = private unnamed_addr constant [58 x i8] c"Error: the radar kernel couldn't be initialized properly.\00", align 1
@str.101 = private unnamed_addr constant [69 x i8] c"Error: the Viterbi decoding kernel couldn't be initialized properly.\00", align 1
@str.102 = private unnamed_addr constant [7 x i8] c"\0ADone.\00", align 1
@str.103 = private unnamed_addr constant [21 x i8] c"option needs a value\00", align 1
@str.104 = private unnamed_addr constant [67 x i8] c"Running in All-obstacle-lanes mode (i.e. obstacles in all 5 lanes)\00", align 1
@switch.table.iterate_vit_kernel = private unnamed_addr constant [5 x i32] [i32 4, i32 0, i32 4, i32 0, i32 4], align 4
@switch.table.viterbi_reset = private unnamed_addr constant [8 x i32] [i32 5, i32 10, i32 5, i32 10, i32 5, i32 10, i32 9, i32 10], align 4
@switch.table.viterbi_reset.105 = private unnamed_addr constant [8 x i32] [i32 1, i32 3, i32 1, i32 3, i32 1, i32 3, i32 2, i32 3], align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_usage(i8* %pname) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %pname)
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  %puts12 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @str.87, i64 0, i64 0))
  %puts13 = tail call i32 @puts(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @str.88, i64 0, i64 0))
  %puts14 = tail call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @str.89, i64 0, i64 0))
  %puts15 = tail call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @str.90, i64 0, i64 0))
  %puts16 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.91, i64 0, i64 0))
  %puts17 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.92, i64 0, i64 0))
  %puts18 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.93, i64 0, i64 0))
  %puts19 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.94, i64 0, i64 0))
  %puts20 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.95, i64 0, i64 0))
  %puts21 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.96, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @init_rad_kernel(i8* %dict_fn) local_unnamed_addr #2 {
entry:
  %entry_id = alloca i32, align 4
  %entry_dist = alloca float, align 4
  %fin = alloca float, align 4
  %call = tail call %struct._IO_FILE* @fopen(i8* %dict_fn, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  %tobool = icmp eq %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i8* %dict_fn)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32* nonnull @num_radar_dictionary_items) #14
  %0 = load i32, i32* @num_radar_dictionary_items, align 4, !tbaa !11
  %conv = zext i32 %0 to i64
  %call6 = tail call noalias i8* @calloc(i64 %conv, i64 131080) #14
  store i8* %call6, i8** bitcast (%struct.radar_dict_entry_t** @the_radar_return_dict to i8**), align 8, !tbaa !15
  %cmp = icmp eq i8* %call6, null
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %1 = load i32, i32* @num_radar_dictionary_items, align 4, !tbaa !11
  %cmp1162 = icmp eq i32 %1, 0
  br i1 %cmp1162, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = bitcast i32* %entry_id to i8*
  %3 = bitcast float* %entry_dist to i8*
  %4 = bitcast float* %entry_dist to i32*
  %5 = bitcast float* %fin to i8*
  %6 = bitcast float* %fin to i32*
  br label %for.body

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.39, i64 0, i64 0))
  br label %cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup22, %for.cond.preheader
  %call37 = call i32 @feof(%struct._IO_FILE* nonnull %call) #14
  %tobool38 = icmp eq i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end41

for.body:                                         ; preds = %for.cond.cleanup22, %for.body.lr.ph
  %indvars.iv65 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next66, %for.cond.cleanup22 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i32* nonnull %entry_id, float* nonnull %entry_dist) #14
  %7 = load i32, i32* %entry_id, align 4, !tbaa !11
  %8 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !tbaa !15
  %return_id = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %8, i64 %indvars.iv65, i32 0
  store i32 %7, i32* %return_id, align 4, !tbaa !17
  %9 = load i32, i32* %4, align 4, !tbaa !20
  %distance = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %8, i64 %indvars.iv65, i32 1
  %10 = bitcast float* %distance to i32*
  store i32 %9, i32* %10, align 4, !tbaa !21
  br label %for.body23

for.cond.cleanup22:                               ; preds = %for.body23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %11 = load i32, i32* @num_radar_dictionary_items, align 4, !tbaa !11
  %12 = zext i32 %11 to i64
  %cmp11 = icmp ult i64 %indvars.iv.next66, %12
  br i1 %cmp11, label %for.body, label %for.cond.cleanup

for.body23:                                       ; preds = %for.body23, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body23 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), float* nonnull %fin) #14
  %13 = load i32, i32* %6, align 4, !tbaa !20
  %14 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !tbaa !15
  %arrayidx31 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %14, i64 %indvars.iv65, i32 2, i64 %indvars.iv
  %15 = bitcast float* %arrayidx31 to i32*
  store i32 %13, i32* %15, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond, label %for.cond.cleanup22, label %for.body23

if.then39:                                        ; preds = %for.cond.cleanup
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0))
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %for.cond.cleanup
  %call42 = call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %if.end41 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nounwind
declare dso_local i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @init_vit_kernel(i8* nocapture readonly %dict_fn) local_unnamed_addr #2 {
entry:
  %mnum = alloca i32, align 4
  %mid = alloca i32, align 4
  %in_bpsc = alloca i32, align 4
  %in_cbps = alloca i32, align 4
  %in_dbps = alloca i32, align 4
  %in_encoding = alloca i32, align 4
  %in_rate = alloca i32, align 4
  %in_pdsu_size = alloca i32, align 4
  %in_sym = alloca i32, align 4
  %in_pad = alloca i32, align 4
  %in_encoded_bits = alloca i32, align 4
  %in_data_bits = alloca i32, align 4
  %c = alloca i32, align 4
  %call = tail call %struct._IO_FILE* @fopen(i8* %dict_fn, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  %tobool = icmp eq %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0))
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i32* nonnull @num_viterbi_dictionary_items) #14
  %0 = load i32, i32* @num_viterbi_dictionary_items, align 4, !tbaa !11
  %conv = zext i32 %0 to i64
  %call6 = tail call noalias i8* @calloc(i64 %conv, i64 24828) #14
  store i8* %call6, i8** bitcast (%struct.vit_dict_entry_t** @the_viterbi_trace_dict to i8**), align 8, !tbaa !15
  %cmp = icmp eq i8* %call6, null
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %1 = load i32, i32* @num_viterbi_dictionary_items, align 4, !tbaa !11
  %cmp11126 = icmp eq i32 %1, 0
  br i1 %cmp11126, label %cleanup.loopexit, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = bitcast i32* %mnum to i8*
  %3 = bitcast i32* %mid to i8*
  %4 = bitcast i32* %in_bpsc to i8*
  %5 = bitcast i32* %in_cbps to i8*
  %6 = bitcast i32* %in_dbps to i8*
  %7 = bitcast i32* %in_encoding to i8*
  %8 = bitcast i32* %in_rate to i8*
  %9 = bitcast i32* %in_pdsu_size to i8*
  %10 = bitcast i32* %in_sym to i8*
  %11 = bitcast i32* %in_pad to i8*
  %12 = bitcast i32* %in_encoded_bits to i8*
  %13 = bitcast i32* %in_data_bits to i8*
  %14 = bitcast i32* %c to i8*
  br label %for.body

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.46, i64 0, i64 0))
  br label %cleanup

for.body:                                         ; preds = %for.cond.cleanup65, %for.body.lr.ph
  %indvars.iv130 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next131, %for.cond.cleanup65 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i32* nonnull %mnum, i32* nonnull %mid) #14
  %15 = load i32, i32* %mnum, align 4, !tbaa !11
  %16 = zext i32 %15 to i64
  %cmp17 = icmp eq i64 %indvars.iv130, %16
  br i1 %cmp17, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.body
  %17 = trunc i64 %indvars.iv130 to i32
  %18 = load i32, i32* %mid, align 4, !tbaa !11
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.48, i64 0, i64 0), i32 %17, i32 %15, i32 %18)
  call void @exit(i32 -5) #15
  unreachable

if.end21:                                         ; preds = %for.body
  %19 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %msg_id = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %19, i64 %indvars.iv130, i32 1
  store i32 %15, i32* %msg_id, align 4, !tbaa !22
  %20 = load i32, i32* %mid, align 4, !tbaa !11
  store i32 %20, i32* %msg_id, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #14
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i32* nonnull %in_bpsc, i32* nonnull %in_cbps, i32* nonnull %in_dbps, i32* nonnull %in_encoding, i32* nonnull %in_rate) #14
  %21 = load i32, i32* %in_encoding, align 4, !tbaa !11
  %22 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %encoding = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %22, i64 %indvars.iv130, i32 2, i32 0
  store i32 %21, i32* %encoding, align 4, !tbaa !26
  %23 = load i32, i32* %in_bpsc, align 4, !tbaa !11
  %n_bpsc = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %22, i64 %indvars.iv130, i32 2, i32 2
  store i32 %23, i32* %n_bpsc, align 4, !tbaa !27
  %24 = load i32, i32* %in_cbps, align 4, !tbaa !11
  %n_cbps = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %22, i64 %indvars.iv130, i32 2, i32 3
  store i32 %24, i32* %n_cbps, align 4, !tbaa !28
  %25 = load i32, i32* %in_dbps, align 4, !tbaa !11
  %n_dbps = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %22, i64 %indvars.iv130, i32 2, i32 4
  store i32 %25, i32* %n_dbps, align 4, !tbaa !29
  %26 = load i32, i32* %in_rate, align 4, !tbaa !11
  %conv40 = trunc i32 %26 to i8
  %rate_field = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %22, i64 %indvars.iv130, i32 2, i32 1
  store i8 %conv40, i8* %rate_field, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #14
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i32* nonnull %in_pdsu_size, i32* nonnull %in_sym, i32* nonnull %in_pad, i32* nonnull %in_encoded_bits, i32* nonnull %in_data_bits) #14
  %27 = load i32, i32* %in_pdsu_size, align 4, !tbaa !11
  %28 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %psdu_size = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %28, i64 %indvars.iv130, i32 3, i32 0
  store i32 %27, i32* %psdu_size, align 4, !tbaa !31
  %29 = load i32, i32* %in_sym, align 4, !tbaa !11
  %n_sym = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %28, i64 %indvars.iv130, i32 3, i32 1
  store i32 %29, i32* %n_sym, align 4, !tbaa !32
  %30 = load i32, i32* %in_pad, align 4, !tbaa !11
  %n_pad = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %28, i64 %indvars.iv130, i32 3, i32 2
  store i32 %30, i32* %n_pad, align 4, !tbaa !33
  %31 = load i32, i32* %in_encoded_bits, align 4, !tbaa !11
  %n_encoded_bits = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %28, i64 %indvars.iv130, i32 3, i32 3
  store i32 %31, i32* %n_encoded_bits, align 4, !tbaa !34
  %32 = load i32, i32* %in_data_bits, align 4, !tbaa !11
  %n_data_bits = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %28, i64 %indvars.iv130, i32 3, i32 4
  store i32 %32, i32* %n_data_bits, align 4, !tbaa !35
  %33 = load i32, i32* %in_encoded_bits, align 4, !tbaa !11
  %cmp63124 = icmp sgt i32 %33, -10
  br i1 %cmp63124, label %for.body66.preheader, label %for.cond.cleanup65

for.body66.preheader:                             ; preds = %if.end21
  %34 = add i32 %33, 10
  %wide.trip.count = zext i32 %34 to i64
  br label %for.body66

for.cond.cleanup65:                               ; preds = %for.body66, %if.end21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %35 = load i32, i32* @num_viterbi_dictionary_items, align 4, !tbaa !11
  %36 = zext i32 %35 to i64
  %cmp11 = icmp ult i64 %indvars.iv.next131, %36
  br i1 %cmp11, label %for.body, label %cleanup.loopexit

for.body66:                                       ; preds = %for.body66, %for.body66.preheader
  %indvars.iv = phi i64 [ 0, %for.body66.preheader ], [ %indvars.iv.next, %for.body66 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #14
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i32* nonnull %c) #14
  %37 = load i32, i32* %c, align 4, !tbaa !11
  %conv71 = trunc i32 %37 to i8
  %38 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %arrayidx75 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %38, i64 %indvars.iv130, i32 4, i64 %indvars.iv
  store i8 %conv71, i8* %arrayidx75, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup65, label %for.body66

cleanup.loopexit:                                 ; preds = %for.cond.cleanup65, %for.cond.preheader
  %call79 = call i32 @fclose(%struct._IO_FILE* nonnull %call)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([80 x i32]* @hist_total_objs to i8*), i8 0, i64 320, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then ], [ 1, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #5

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @init_cv_kernel(i8* nocapture readnone %dict_fn) local_unnamed_addr #6 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @iterate_cv_kernel(i64 %vs.coerce) local_unnamed_addr #2 {
entry:
  %idxprom = and i64 %vs.coerce, 4294967295
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 78, label %sw.epilog
    i32 66, label %sw.bb1
    i32 67, label %sw.bb2
    i32 80, label %sw.bb3
    i32 84, label %sw.bb4
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.51, i64 0, i64 0), i32 %conv)
  tail call void @exit(i32 -2) #15
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry
  %tr_val.0 = phi i32 [ 2, %sw.bb4 ], [ 3, %sw.bb3 ], [ 1, %sw.bb2 ], [ 4, %sw.bb1 ], [ 0, %entry ]
  ret i32 %tr_val.0
}

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @run_object_classification_syscall(i32 returned %tr_val) local_unnamed_addr #6 {
entry:
  ret i32 %tr_val
}

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @run_object_classification(i32 returned %tr_val) local_unnamed_addr #6 {
entry:
  ret i32 %tr_val
}

; Function Attrs: nofree
declare dso_local i32 @system(i8* nocapture readonly) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @post_execute_cv_kernel(i32 %d_object, i32 %object) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq i32 %d_object, %object
  %idxprom = sext i32 %d_object to i64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @label_match, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !11
  %inc = add i32 %0, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %object to i64
  %arrayidx5 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %idxprom, i64 %idxprom4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx5.sink14 = phi i32* [ %arrayidx5, %if.else ], [ getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 5), %if.then ]
  %1 = load i32, i32* %arrayidx5.sink14, align 4, !tbaa !11
  %inc6 = add i32 %1, 1
  store i32 %inc6, i32* %arrayidx5.sink14, align 4, !tbaa !11
  %2 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !tbaa !11
  %inc7 = add i32 %2, 1
  store i32 %inc7, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !tbaa !11
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* @label_lookup, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx9, align 4, !tbaa !11
  %inc10 = add i32 %3, 1
  store i32 %inc10, i32* %arrayidx9, align 4, !tbaa !11
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local %struct.radar_dict_entry_t* @iterate_rad_kernel(i64 %vs.coerce) local_unnamed_addr #9 {
entry:
  %idxprom = and i64 %vs.coerce, 4294967295
  %arrayidx = getelementptr inbounds [5 x float], [5 x float]* @nearest_dist, i64 0, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !20
  %conv = fpext float %0 to double
  %div = fmul fast double %conv, 2.000000e-02
  %conv1 = fptoui double %div to i32
  %1 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !tbaa !15
  %idxprom2 = zext i32 %conv1 to i64
  %arrayidx3 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %1, i64 %idxprom2
  ret %struct.radar_dict_entry_t* %arrayidx3
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @fft(float* nocapture %data, i32 %N, i32 %logn, i32 %sign) local_unnamed_addr #0 {
entry:
  tail call fastcc void @bit_reverse(float* %data, i32 %N, i32 %logn)
  %cmp147 = icmp eq i32 %logn, 0
  br i1 %cmp147, label %for.end75, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %conv = sitofp i32 %sign to double
  %mul1 = fmul fast double %conv, 0x400921FB54442D18
  %cmp20138 = icmp eq i32 %N, 0
  br label %for.body

for.body:                                         ; preds = %for.end71, %for.body.lr.ph
  %transform_length.0149 = phi i32 [ 1, %for.body.lr.ph ], [ %mul72, %for.end71 ]
  %bit.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %inc74, %for.end71 ]
  %conv2 = uitofp i32 %transform_length.0149 to float
  %conv3 = fpext float %conv2 to double
  %div = fdiv fast double %mul1, %conv3
  %conv4 = fptrunc double %div to float
  %conv5 = fpext float %conv4 to double
  %0 = tail call fast double @llvm.sin.f64(double %conv5)
  %conv6 = fptrunc double %0 to float
  %mul8 = fmul fast double %conv5, 5.000000e-01
  %1 = tail call fast double @llvm.sin.f64(double %mul8)
  %conv9 = fptrunc double %1 to float
  %conv10 = fpext float %conv9 to double
  %2 = fmul fast double %conv10, %conv10
  %mul13 = fmul fast double %2, 2.000000e+00
  %conv14 = fptrunc double %mul13 to float
  %cmp16140 = icmp eq i32 %transform_length.0149, 0
  br i1 %cmp16140, label %for.end71, label %for.cond19.preheader.lr.ph

for.cond19.preheader.lr.ph:                       ; preds = %for.body
  %mul60 = shl i32 %transform_length.0149, 1
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.end, %for.cond19.preheader.lr.ph
  %a.0145 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %inc, %for.end ]
  %w_imag.0143 = phi float [ 0.000000e+00, %for.cond19.preheader.lr.ph ], [ %add69, %for.end ]
  %w_real.0141 = phi float [ 1.000000e+00, %for.cond19.preheader.lr.ph ], [ %sub65137, %for.end ]
  br i1 %cmp20138, label %for.end, label %for.body22

for.body22:                                       ; preds = %for.body22, %for.cond19.preheader
  %b.0139 = phi i32 [ %add61, %for.body22 ], [ 0, %for.cond19.preheader ]
  %add = add i32 %b.0139, %a.0145
  %add24 = add i32 %add, %transform_length.0149
  %mul25 = shl i32 %add24, 1
  %idxprom = zext i32 %mul25 to i64
  %arrayidx = getelementptr inbounds float, float* %data, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4, !tbaa !20
  %add27 = or i32 %mul25, 1
  %idxprom28 = zext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds float, float* %data, i64 %idxprom28
  %4 = load float, float* %arrayidx29, align 4, !tbaa !20
  %mul30 = fmul fast float %3, %w_real.0141
  %mul31 = fmul fast float %4, %w_imag.0143
  %sub = fsub fast float %mul30, %mul31
  %mul32 = fmul fast float %4, %w_real.0141
  %mul33 = fmul fast float %3, %w_imag.0143
  %add34 = fadd fast float %mul32, %mul33
  %mul35 = shl i32 %add, 1
  %idxprom36 = zext i32 %mul35 to i64
  %arrayidx37 = getelementptr inbounds float, float* %data, i64 %idxprom36
  %5 = load float, float* %arrayidx37, align 4, !tbaa !20
  %sub38 = fsub fast float %5, %sub
  store float %sub38, float* %arrayidx, align 4, !tbaa !20
  %add43 = or i32 %mul35, 1
  %idxprom44 = zext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds float, float* %data, i64 %idxprom44
  %6 = load float, float* %arrayidx45, align 4, !tbaa !20
  %sub46 = fsub fast float %6, %add34
  store float %sub46, float* %arrayidx29, align 4, !tbaa !20
  %7 = load float, float* %arrayidx37, align 4, !tbaa !20
  %add54 = fadd fast float %7, %sub
  store float %add54, float* %arrayidx37, align 4, !tbaa !20
  %8 = load float, float* %arrayidx45, align 4, !tbaa !20
  %add59 = fadd fast float %8, %add34
  store float %add59, float* %arrayidx45, align 4, !tbaa !20
  %add61 = add i32 %b.0139, %mul60
  %cmp20 = icmp ult i32 %add61, %N
  br i1 %cmp20, label %for.body22, label %for.end

for.end:                                          ; preds = %for.body22, %for.cond19.preheader
  %mul63.neg = fmul fast float %w_real.0141, %conv14
  %mul62.neg = fmul fast float %w_imag.0143, %conv6
  %reass.add = fadd fast float %mul62.neg, %mul63.neg
  %sub65137 = fsub fast float %w_real.0141, %reass.add
  %mul66 = fmul fast float %w_real.0141, %conv6
  %mul67 = fmul fast float %w_imag.0143, %conv14
  %sub68 = fadd fast float %w_imag.0143, %mul66
  %add69 = fsub fast float %sub68, %mul67
  %inc = add nuw i32 %a.0145, 1
  %exitcond = icmp eq i32 %inc, %transform_length.0149
  br i1 %exitcond, label %for.end71, label %for.cond19.preheader

for.end71:                                        ; preds = %for.end, %for.body
  %mul72 = shl i32 %transform_length.0149, 1
  %inc74 = add nuw i32 %bit.0148, 1
  %exitcond151 = icmp eq i32 %inc74, %logn
  br i1 %exitcond151, label %for.end75, label %for.body

for.end75:                                        ; preds = %for.end71, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc void @bit_reverse(float* nocapture %w, i32 %N, i32 %bits) unnamed_addr #8 {
entry:
  %add = sub i32 32, %bits
  %cmp2 = icmp eq i32 %N, 0
  br i1 %cmp2, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %N to i64
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end ]
  %0 = trunc i64 %indvars.iv to i32
  %call = tail call fastcc i32 @_rev(i32 %0)
  %shr = lshr i32 %call, %add
  %1 = zext i32 %shr to i64
  %cmp1 = icmp ult i64 %indvars.iv, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32
  %mul = shl i32 %2, 1
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %w, i64 %idxprom
  %3 = bitcast float* %arrayidx to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !20
  %add3 = or i32 %mul, 1
  %idxprom4 = zext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds float, float* %w, i64 %idxprom4
  %5 = bitcast float* %arrayidx5 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !20
  %mul6 = shl i32 %shr, 1
  %idxprom7 = zext i32 %mul6 to i64
  %arrayidx8 = getelementptr inbounds float, float* %w, i64 %idxprom7
  %7 = bitcast float* %arrayidx8 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !20
  store i32 %8, i32* %3, align 4, !tbaa !20
  %add13 = or i32 %mul6, 1
  %idxprom14 = zext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds float, float* %w, i64 %idxprom14
  %9 = bitcast float* %arrayidx15 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !20
  store i32 %10, i32* %5, align 4, !tbaa !20
  store i32 %4, i32* %7, align 4, !tbaa !20
  store i32 %6, i32* %9, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sin.f64(double) #10

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @get_dist_from_fft(float* nocapture %distance, i64 %dist_size, i32 %input_N, float* nocapture readonly %data, i64 %data_size_bytes) local_unnamed_addr #8 {
entry:
  %cmp40 = icmp eq i32 %input_N, 0
  br i1 %cmp40, label %if.end25, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %conv = trunc i64 %data_size_bytes to i32
  %wide.trip.count = zext i32 %input_N to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %phitmp = fpext float %max_psd.1 to double
  %phitmp47 = fcmp ogt double %phitmp, 0x3F7B7CDFD9D7BDBB
  br i1 %phitmp47, label %if.then15, label %if.end25

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %max_psd.042 = phi float [ 0.000000e+00, %for.body.preheader ], [ %max_psd.1, %for.body ]
  %max_index.041 = phi i32 [ %conv, %for.body.preheader ], [ %max_index.1, %for.body ]
  %0 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds float, float* %data, i64 %0
  %1 = load float, float* %arrayidx, align 4, !tbaa !20
  %conv2 = fpext float %1 to double
  %square = fmul fast double %conv2, %conv2
  %2 = or i64 %0, 1
  %arrayidx5 = getelementptr inbounds float, float* %data, i64 %2
  %3 = load float, float* %arrayidx5, align 4, !tbaa !20
  %conv6 = fpext float %3 to double
  %square39 = fmul fast double %conv6, %conv6
  %add7 = fadd fast double %square39, %square
  %div = fmul fast double %add7, 1.000000e-02
  %conv8 = fptrunc double %div to float
  %cmp9 = fcmp fast olt float %max_psd.042, %conv8
  %4 = trunc i64 %indvars.iv to i32
  %max_index.1 = select i1 %cmp9, i32 %4, i32 %max_index.041
  %max_psd.1 = select i1 %cmp9, float %conv8, float %max_psd.042
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body

if.then15:                                        ; preds = %for.cond.cleanup
  %conv16 = uitofp i32 %max_index.1 to float
  %mul17 = fmul fast float %conv16, 3.276800e+07
  %conv18 = uitofp i32 %input_N to float
  %div19 = fdiv fast float %mul17, %conv18
  %conv20 = fpext float %div19 to double
  %div23 = fmul fast double %conv20, 0x3F00624DE0145A15
  %conv24 = fptrunc double %div23 to float
  br label %if.end25

if.end25:                                         ; preds = %if.then15, %for.cond.cleanup, %entry
  %dist.0 = phi float [ %conv24, %if.then15 ], [ 0x7FF0000000000000, %for.cond.cleanup ], [ 0x7FF0000000000000, %entry ]
  store float %dist.0, float* %distance, align 4, !tbaa !20
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @post_execute_rad_kernel(float %ddist, float %dist) local_unnamed_addr #8 {
entry:
  %0 = load i32, i32* @radar_total_calc, align 4, !tbaa !11
  %inc = add i32 %0, 1
  store i32 %inc, i32* @radar_total_calc, align 4, !tbaa !11
  %cmp = fcmp fast oeq float %dist, 0x7FF0000000000000
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %cmp1 = fcmp fast olt float %ddist, 5.000000e+02
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %1 = load i32, i32* @radar_inf_errs, align 4, !tbaa !11
  %inc4 = add i32 %1, 1
  store i32 %inc4, i32* @radar_inf_errs, align 4, !tbaa !11
  br label %if.end50

if.else:                                          ; preds = %if.then
  %2 = load i32, i32* @radar_inf_noerr, align 4, !tbaa !11
  %inc5 = add i32 %2, 1
  store i32 %inc5, i32* @radar_inf_noerr, align 4, !tbaa !11
  br label %if.end50

if.else6:                                         ; preds = %entry
  %cmp8 = fcmp fast oeq float %ddist, 0.000000e+00
  br i1 %cmp8, label %if.then10, label %if.else19

if.then10:                                        ; preds = %if.else6
  %cmp12 = fcmp fast une float %ddist, 0.000000e+00
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.then10
  %3 = load i32, i32* @radar_zero_errs, align 4, !tbaa !11
  %inc15 = add i32 %3, 1
  store i32 %inc15, i32* @radar_zero_errs, align 4, !tbaa !11
  br label %if.end50

if.else16:                                        ; preds = %if.then10
  %4 = load i32, i32* @radar_zero_noerr, align 4, !tbaa !11
  %inc17 = add i32 %4, 1
  store i32 %inc17, i32* @radar_zero_noerr, align 4, !tbaa !11
  br label %if.end50

if.else19:                                        ; preds = %if.else6
  %sub = fsub fast float %dist, %ddist
  %div = fdiv fast float %sub, %ddist
  %conv20 = fpext float %div to double
  %cmp21 = fcmp fast oeq float %div, 0.000000e+00
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else19
  %5 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 0), align 16, !tbaa !11
  %inc24 = add i32 %5, 1
  store i32 %inc24, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 0), align 16, !tbaa !11
  br label %if.end50

if.else25:                                        ; preds = %if.else19
  %cmp27 = fcmp fast olt double %conv20, 1.000000e-02
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else25
  %6 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 1), align 4, !tbaa !11
  %inc30 = add i32 %6, 1
  store i32 %inc30, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 1), align 4, !tbaa !11
  br label %if.end50

if.else31:                                        ; preds = %if.else25
  %cmp33 = fcmp fast olt double %conv20, 1.000000e-01
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else31
  %7 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 2), align 8, !tbaa !11
  %inc36 = add i32 %7, 1
  store i32 %inc36, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 2), align 8, !tbaa !11
  br label %if.end50

if.else37:                                        ; preds = %if.else31
  %cmp39 = fcmp fast olt float %div, 1.000000e+00
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %8 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 3), align 4, !tbaa !11
  %inc42 = add i32 %8, 1
  store i32 %inc42, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 3), align 4, !tbaa !11
  br label %if.end50

if.else43:                                        ; preds = %if.else37
  %9 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 4), align 16, !tbaa !11
  %inc44 = add i32 %9, 1
  store i32 %inc44, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 4), align 16, !tbaa !11
  br label %if.end50

if.end50:                                         ; preds = %if.else43, %if.then41, %if.then35, %if.then29, %if.then23, %if.else16, %if.then14, %if.else, %if.then3
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local %struct.vit_dict_entry_t* @iterate_vit_kernel(i64 %vs.coerce) local_unnamed_addr #8 {
entry:
  %vs.sroa.0.0.extract.trunc = trunc i64 %vs.coerce to i32
  %0 = load i32, i32* @total_obj, align 4, !tbaa !11
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [80 x i32], [80 x i32]* @hist_total_objs, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !11
  %inc = add i32 %1, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !11
  switch i32 %vs.sroa.0.0.extract.trunc, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb9
    i32 3, label %sw.bb9
    i32 4, label %sw.bb56
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 1), align 1, !tbaa !36
  %cmp = icmp eq i8 %2, 78
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %3 = load float, float* getelementptr inbounds ([5 x float], [5 x float]* @nearest_dist, i64 0, i64 1), align 4, !tbaa !20
  %conv = fpext float %3 to double
  %div = fmul fast double %conv, 2.000000e-02
  %conv1 = fptoui double %div to i32
  %mul110 = mul i32 %conv1, 50
  %cmp7 = icmp ult i32 %mul110, 155
  br i1 %cmp7, label %sw.epilog, label %if.else

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry, %entry
  %add = add i64 %vs.coerce, 1
  %idxprom11 = and i64 %add, 4294967295
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* @nearest_dist, i64 0, i64 %idxprom11
  %4 = load float, float* %arrayidx12, align 4, !tbaa !20
  %conv13 = fpext float %4 to double
  %div14 = fmul fast double %conv13, 2.000000e-02
  %conv15 = fptoui double %div14 to i32
  %mul17111 = mul i32 %conv15, 50
  %sub = add i64 %vs.coerce, 4294967295
  %idxprom20 = and i64 %sub, 4294967295
  %arrayidx31 = getelementptr inbounds [5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 %idxprom20
  %5 = load i8, i8* %arrayidx31, align 1, !tbaa !36
  %cmp33 = icmp eq i8 %5, 78
  br i1 %cmp33, label %if.end41, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %sw.bb9
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* @nearest_dist, i64 0, i64 %idxprom20
  %6 = load float, float* %arrayidx21, align 4, !tbaa !20
  %conv22 = fpext float %6 to double
  %div23 = fmul fast double %conv22, 2.000000e-02
  %conv24 = fptoui double %div23 to i32
  %mul26112 = mul i32 %conv24, 50
  %cmp37 = icmp ult i32 %mul26112, 155
  %spec.select = zext i1 %cmp37 to i32
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true35, %sw.bb9
  %tr_val.1 = phi i32 [ 0, %sw.bb9 ], [ %spec.select, %land.lhs.true35 ]
  %arrayidx45 = getelementptr inbounds [5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 %idxprom11
  %7 = load i8, i8* %arrayidx45, align 1, !tbaa !36
  %cmp47 = icmp ne i8 %7, 78
  %cmp51 = icmp ult i32 %mul17111, 155
  %or.cond = and i1 %cmp51, %cmp47
  %add54 = or i32 %tr_val.1, 2
  %tr_val.2 = select i1 %or.cond, i32 %add54, i32 %tr_val.1
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  %8 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 3), align 1, !tbaa !36
  %cmp64 = icmp eq i8 %8, 78
  br i1 %cmp64, label %if.else71, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %sw.bb56
  %9 = load float, float* getelementptr inbounds ([5 x float], [5 x float]* @nearest_dist, i64 0, i64 3), align 4, !tbaa !20
  %conv57 = fpext float %9 to double
  %div58 = fmul fast double %conv57, 2.000000e-02
  %conv59 = fptoui double %div58 to i32
  %mul61113 = mul i32 %conv59, 50
  %cmp68 = icmp ult i32 %mul61113, 155
  br i1 %cmp68, label %sw.epilog, label %if.else71

if.else71:                                        ; preds = %land.lhs.true66, %sw.bb56
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else71, %land.lhs.true66, %if.end41, %if.else, %land.lhs.true, %entry
  %tr_val.4 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 3, %land.lhs.true ], [ %tr_val.2, %if.end41 ], [ 2, %if.else71 ], [ 3, %land.lhs.true66 ]
  %10 = load i32, i32* @vit_msgs_behavior, align 4, !tbaa !11
  %switch.tableidx = add i32 %10, -1
  %11 = icmp ult i32 %switch.tableidx, 5
  br i1 %11, label %switch.lookup, label %sw.epilog76

switch.lookup:                                    ; preds = %sw.epilog
  %12 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.iterate_vit_kernel, i64 0, i64 %12
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %switch.lookup, %sw.epilog
  %msg_offset.0 = phi i32 [ 0, %sw.epilog ], [ %switch.load, %switch.lookup ]
  switch i32 %tr_val.4, label %sw.epilog93 [
    i32 0, label %sw.bb77
    i32 1, label %sw.bb81
    i32 2, label %sw.bb85
    i32 3, label %sw.bb89
  ]

sw.bb77:                                          ; preds = %sw.epilog76
  %13 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %idxprom79 = zext i32 %msg_offset.0 to i64
  %arrayidx80 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %13, i64 %idxprom79
  br label %sw.epilog93

sw.bb81:                                          ; preds = %sw.epilog76
  %14 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %add82 = or i32 %msg_offset.0, 1
  %idxprom83 = zext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %14, i64 %idxprom83
  br label %sw.epilog93

sw.bb85:                                          ; preds = %sw.epilog76
  %15 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %add86 = or i32 %msg_offset.0, 2
  %idxprom87 = zext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %15, i64 %idxprom87
  br label %sw.epilog93

sw.bb89:                                          ; preds = %sw.epilog76
  %16 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !tbaa !15
  %add90 = or i32 %msg_offset.0, 3
  %idxprom91 = zext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %16, i64 %idxprom91
  br label %sw.epilog93

sw.epilog93:                                      ; preds = %sw.bb89, %sw.bb85, %sw.bb81, %sw.bb77, %sw.epilog76
  %trace_msg.0 = phi %struct.vit_dict_entry_t* [ undef, %sw.epilog76 ], [ %arrayidx92, %sw.bb89 ], [ %arrayidx88, %sw.bb85 ], [ %arrayidx84, %sw.bb81 ], [ %arrayidx80, %sw.bb77 ]
  ret %struct.vit_dict_entry_t* %trace_msg.0
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i8* @depuncture(%struct.ofdm_param* nocapture readonly %ofdm, i64 %ofdm_size, %struct.frame_param* nocapture readonly %frame, i64 %frame_size, i32 %ntraceback, i32 %k_val, i8* nocapture readonly %d_depuncture_pattern, i64 %depunc_ptn_size, i8* readonly %in, i64 %in_size) local_unnamed_addr #8 {
entry:
  %n_cbps1 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 3
  %0 = load i32, i32* %n_cbps1, align 4, !tbaa !37
  %cmp = icmp eq i32 %ntraceback, 5
  br i1 %cmp, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_sym2 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame, i64 0, i32 1
  %1 = load i32, i32* %n_sym2, align 4, !tbaa !38
  %cmp378 = icmp sgt i32 %1, 0
  br i1 %cmp378, label %for.cond4.preheader.lr.ph, label %if.end

for.cond4.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp574 = icmp sgt i32 %0, 0
  %mul8 = shl nsw i32 %k_val, 1
  %2 = sext i32 %0 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond.cleanup6, %for.cond4.preheader.lr.ph
  %indvars.iv88 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next89, %for.cond.cleanup6 ]
  %count.079 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %count.1.lcssa, %for.cond.cleanup6 ]
  br i1 %cmp574, label %while.cond.preheader.lr.ph, label %for.cond.cleanup6

while.cond.preheader.lr.ph:                       ; preds = %for.cond4.preheader
  %3 = mul nsw i64 %indvars.iv88, %2
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc, %while.cond.preheader.lr.ph
  %indvars.iv85 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next86, %for.inc ]
  %count.175 = phi i32 [ %count.079, %while.cond.preheader.lr.ph ], [ %count.3.lcssa, %for.inc ]
  %rem61 = srem i32 %count.175, %mul8
  %idxprom62 = sext i32 %rem61 to i64
  %arrayidx63 = getelementptr inbounds i8, i8* %d_depuncture_pattern, i64 %idxprom62
  %4 = load i8, i8* %arrayidx63, align 1, !tbaa !36
  %cmp964 = icmp eq i8 %4, 0
  br i1 %cmp964, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %5 = sext i32 %count.175 to i64
  br label %while.body

for.cond.cleanup6:                                ; preds = %for.inc, %for.cond4.preheader
  %count.1.lcssa = phi i32 [ %count.079, %for.cond4.preheader ], [ %count.3.lcssa, %for.inc ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %6 = load i32, i32* %n_sym2, align 4, !tbaa !38
  %7 = sext i32 %6 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next89, %7
  br i1 %cmp3, label %for.cond4.preheader, label %if.end

while.body:                                       ; preds = %while.body, %while.body.preheader
  %indvars.iv = phi i64 [ %5, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %arrayidx12 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv
  store i8 2, i8* %arrayidx12, align 1, !tbaa !36
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %rem = srem i32 %8, %mul8
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %d_depuncture_pattern, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %cmp9 = icmp eq i8 %9, 0
  br i1 %cmp9, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  %10 = trunc i64 %indvars.iv.next to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %count.2.lcssa = phi i32 [ %count.175, %while.cond.preheader ], [ %10, %while.end.loopexit ]
  %11 = add nsw i64 %indvars.iv85, %3
  %arrayidx15 = getelementptr inbounds i8, i8* %in, i64 %11
  %12 = load i8, i8* %arrayidx15, align 1, !tbaa !36
  %idxprom16 = sext i32 %count.2.lcssa to i64
  %arrayidx17 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %idxprom16
  store i8 %12, i8* %arrayidx17, align 1, !tbaa !36
  %count.367 = add nsw i32 %count.2.lcssa, 1
  %rem2168 = srem i32 %count.367, %mul8
  %idxprom2269 = sext i32 %rem2168 to i64
  %arrayidx2370 = getelementptr inbounds i8, i8* %d_depuncture_pattern, i64 %idxprom2269
  %13 = load i8, i8* %arrayidx2370, align 1, !tbaa !36
  %cmp2571 = icmp eq i8 %13, 0
  br i1 %cmp2571, label %while.body27.preheader, label %for.inc

while.body27.preheader:                           ; preds = %while.end
  %14 = add i32 %count.2.lcssa, 1
  %15 = sext i32 %14 to i64
  br label %while.body27

while.body27:                                     ; preds = %while.body27, %while.body27.preheader
  %indvars.iv83 = phi i64 [ %15, %while.body27.preheader ], [ %indvars.iv.next84, %while.body27 ]
  %arrayidx29 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv83
  store i8 2, i8* %arrayidx29, align 1, !tbaa !36
  %indvars.iv.next84 = add i64 %indvars.iv83, 1
  %16 = trunc i64 %indvars.iv.next84 to i32
  %rem21 = srem i32 %16, %mul8
  %idxprom22 = sext i32 %rem21 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %d_depuncture_pattern, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1, !tbaa !36
  %cmp25 = icmp eq i8 %17, 0
  br i1 %cmp25, label %while.body27, label %for.inc.loopexit

for.inc.loopexit:                                 ; preds = %while.body27
  %18 = trunc i64 %indvars.iv.next84 to i32
  br label %for.inc

for.inc:                                          ; preds = %for.inc.loopexit, %while.end
  %count.3.lcssa = phi i32 [ %count.367, %while.end ], [ %18, %for.inc.loopexit ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond = icmp eq i64 %indvars.iv.next86, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup6, label %while.cond.preheader

if.end:                                           ; preds = %for.cond.cleanup6, %for.cond.preheader, %entry
  %depunctured.0 = phi i8* [ %in, %entry ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %for.cond.preheader ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %for.cond.cleanup6 ]
  ret i8* %depunctured.0
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @viterbi_get_output_generic(i8* nocapture %mm0, i64 %mm0_size, i8* nocapture %pp0, i64 %pp0_size, i32 %ntraceback, i32* nocapture %store_pos, i64 %size_store_pos, i8* nocapture %mmresult, i64 %mmres_size, [64 x i8]* nocapture %ppresult, i64 %ppres_size, i8* nocapture %outbuf, i64 %outbuf_size) local_unnamed_addr #8 {
entry:
  %0 = load i32, i32* %store_pos, align 4, !tbaa !11
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, %ntraceback
  store i32 %rem, i32* %store_pos, align 4, !tbaa !11
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc19, %entry
  %indvar182 = phi i64 [ 0, %entry ], [ %indvar.next183, %for.inc19 ]
  %1 = shl i64 %indvar182, 4
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv178 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next179, %for.body3 ]
  %2 = add nuw nsw i64 %indvars.iv178, %1
  %arrayidx = getelementptr inbounds i8, i8* %mm0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %arrayidx8 = getelementptr inbounds i8, i8* %mmresult, i64 %2
  store i8 %3, i8* %arrayidx8, align 1, !tbaa !36
  %arrayidx12 = getelementptr inbounds i8, i8* %pp0, i64 %2
  %4 = load i8, i8* %arrayidx12, align 1, !tbaa !36
  %5 = load i32, i32* %store_pos, align 4, !tbaa !11
  %idxprom13 = sext i32 %5 to i64
  %arrayidx18 = getelementptr inbounds [64 x i8], [64 x i8]* %ppresult, i64 %idxprom13, i64 %2
  store i8 %4, i8* %arrayidx18, align 1, !tbaa !36
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %exitcond181 = icmp eq i64 %indvars.iv.next179, 16
  br i1 %exitcond181, label %for.inc19, label %for.body3

for.inc19:                                        ; preds = %for.body3
  %indvar.next183 = add nuw nsw i64 %indvar182, 1
  %exitcond185 = icmp eq i64 %indvar.next183, 4
  br i1 %exitcond185, label %for.end21, label %for.cond1.preheader

for.end21:                                        ; preds = %for.inc19
  %6 = load i8, i8* %mmresult, align 1, !tbaa !36
  %conv = zext i8 %6 to i32
  br label %for.body30

for.body30:                                       ; preds = %for.body30, %for.end21
  %indvars.iv175 = phi i64 [ 1, %for.end21 ], [ %indvars.iv.next176, %for.body30 ]
  %beststate.0167 = phi i32 [ 0, %for.end21 ], [ %spec.select155, %for.body30 ]
  %minmetric.0166 = phi i32 [ %conv, %for.end21 ], [ %minmetric.1, %for.body30 ]
  %bestmetric.0165 = phi i32 [ %conv, %for.end21 ], [ %spec.select, %for.body30 ]
  %arrayidx32 = getelementptr inbounds i8, i8* %mmresult, i64 %indvars.iv175
  %7 = load i8, i8* %arrayidx32, align 1, !tbaa !36
  %conv33 = zext i8 %7 to i32
  %cmp34 = icmp ult i32 %bestmetric.0165, %conv33
  %spec.select = select i1 %cmp34, i32 %conv33, i32 %bestmetric.0165
  %8 = trunc i64 %indvars.iv175 to i32
  %spec.select155 = select i1 %cmp34, i32 %8, i32 %beststate.0167
  %cmp42 = icmp sgt i32 %minmetric.0166, %conv33
  %minmetric.1 = select i1 %cmp42, i32 %conv33, i32 %minmetric.0166
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %exitcond177 = icmp eq i64 %indvars.iv.next176, 64
  br i1 %exitcond177, label %for.end51, label %for.body30

for.end51:                                        ; preds = %for.body30
  %9 = load i32, i32* %store_pos, align 4, !tbaa !11
  %cmp53158 = icmp sgt i32 %ntraceback, 1
  %idxprom56159 = sext i32 %9 to i64
  %idxprom58160 = sext i32 %spec.select155 to i64
  %arrayidx59161 = getelementptr inbounds [64 x i8], [64 x i8]* %ppresult, i64 %idxprom56159, i64 %idxprom58160
  %10 = load i8, i8* %arrayidx59161, align 1, !tbaa !36
  br i1 %cmp53158, label %for.body55.lr.ph, label %for.end66

for.body55.lr.ph:                                 ; preds = %for.end51
  %sub61 = add nsw i32 %ntraceback, -1
  br label %for.body55

for.body55:                                       ; preds = %for.body55, %for.body55.lr.ph
  %11 = phi i8 [ %10, %for.body55.lr.ph ], [ %13, %for.body55 ]
  %pos.0163 = phi i32 [ %9, %for.body55.lr.ph ], [ %rem63, %for.body55 ]
  %i.2162 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc65, %for.body55 ]
  %12 = lshr i8 %11, 2
  %add62 = add i32 %sub61, %pos.0163
  %rem63 = srem i32 %add62, %ntraceback
  %inc65 = add nuw nsw i32 %i.2162, 1
  %idxprom56 = sext i32 %rem63 to i64
  %idxprom58 = zext i8 %12 to i64
  %arrayidx59 = getelementptr inbounds [64 x i8], [64 x i8]* %ppresult, i64 %idxprom56, i64 %idxprom58
  %13 = load i8, i8* %arrayidx59, align 1, !tbaa !36
  %exitcond174 = icmp eq i32 %inc65, %sub61
  br i1 %exitcond174, label %for.end66, label %for.body55

for.end66:                                        ; preds = %for.body55, %for.end51
  %.lcssa = phi i8 [ %10, %for.end51 ], [ %13, %for.body55 ]
  store i8 %.lcssa, i8* %outbuf, align 1, !tbaa !36
  %14 = trunc i32 %minmetric.1 to i8
  br label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %for.inc97, %for.end66
  %indvar = phi i64 [ 0, %for.end66 ], [ %indvar.next, %for.inc97 ]
  %15 = shl i64 %indvar, 4
  br label %for.body78

for.body78:                                       ; preds = %for.body78, %for.cond75.preheader
  %indvars.iv = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next, %for.body78 ]
  %16 = add nuw nsw i64 %indvars.iv, %15
  %arrayidx82 = getelementptr inbounds i8, i8* %pp0, i64 %16
  store i8 0, i8* %arrayidx82, align 1, !tbaa !36
  %arrayidx86 = getelementptr inbounds i8, i8* %mm0, i64 %16
  %17 = load i8, i8* %arrayidx86, align 1, !tbaa !36
  %conv89 = sub i8 %17, %14
  store i8 %conv89, i8* %arrayidx86, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond, label %for.inc97, label %for.body78

for.inc97:                                        ; preds = %for.body78
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond173 = icmp eq i64 %indvar.next, 4
  br i1 %exitcond173, label %for.end99, label %for.cond75.preheader

for.end99:                                        ; preds = %for.inc97
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @viterbi_reset(%struct.ofdm_param* nocapture readonly %ofdm, i64 %ofdm_size, i8* nocapture %d_metric0_generic, i64 %d_m0_size, i8* nocapture readnone %d_metric1_generic, i64 %d_m1_size, i8* nocapture %d_path0_generic, i64 %d_p0_size, i8* nocapture readnone %d_path1_generic, i64 %d_p1_size, i8* nocapture %d_mmresult, i64 %mmres_size, [64 x i8]* nocapture %d_ppresult, i64 %ppres_size, i32* nocapture %d_ntraceback, i64 %ntrbk_size, i32* nocapture %d_k, i64 %d_k_size, i8* nocapture readnone %d_depuncture_pattern, i64 %depunc_ptn_size) local_unnamed_addr #8 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv92 = phi i64 [ 0, %entry ], [ %indvars.iv.next93, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %d_metric0_generic, i64 %indvars.iv92
  store i8 0, i8* %arrayidx, align 1, !tbaa !36
  %arrayidx2 = getelementptr inbounds i8, i8* %d_path0_generic, i64 %indvars.iv92
  store i8 0, i8* %arrayidx2, align 1, !tbaa !36
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond94 = icmp eq i64 %indvars.iv.next93, 4
  br i1 %exitcond94, label %for.body5, label %for.body

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body5 ], [ 0, %for.body ]
  %0 = shl nuw nsw i64 %indvars.iv88, 1
  %and = and i64 %0, 108
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %and
  %1 = load i8, i8* %arrayidx10, align 4, !tbaa !36
  %tobool = icmp ne i8 %1, 0
  %conv12 = zext i1 %tobool to i8
  %arrayidx14 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv88
  store i8 %conv12, i8* %arrayidx14, align 1, !tbaa !36
  %and21 = and i64 %0, 78
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %and21
  %2 = load i8, i8* %arrayidx23, align 2, !tbaa !36
  %tobool26 = icmp ne i8 %2, 0
  %conv28 = zext i1 %tobool26 to i8
  %arrayidx30 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv88
  store i8 %conv28, i8* %arrayidx30, align 1, !tbaa !36
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond91 = icmp eq i64 %indvars.iv.next89, 32
  br i1 %exitcond91, label %for.body37, label %for.body5

for.body37:                                       ; preds = %for.inc51, %for.body5
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc51 ], [ 0, %for.body5 ]
  %arrayidx39 = getelementptr inbounds i8, i8* %d_mmresult, i64 %indvars.iv85
  store i8 0, i8* %arrayidx39, align 1, !tbaa !36
  br label %for.body43

for.body43:                                       ; preds = %for.body43, %for.body37
  %indvars.iv = phi i64 [ 0, %for.body37 ], [ %indvars.iv.next, %for.body43 ]
  %arrayidx47 = getelementptr inbounds [64 x i8], [64 x i8]* %d_ppresult, i64 %indvars.iv, i64 %indvars.iv85
  store i8 0, i8* %arrayidx47, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond, label %for.inc51, label %for.body43

for.inc51:                                        ; preds = %for.body43
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond87 = icmp eq i64 %indvars.iv.next86, 64
  br i1 %exitcond87, label %for.end53, label %for.body37

for.end53:                                        ; preds = %for.inc51
  %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 0
  %3 = load i32, i32* %encoding, align 4, !tbaa !39
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %for.end53
  %5 = sext i32 %3 to i64
  %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.viterbi_reset, i64 0, i64 %5
  %switch.load = load i32, i32* %switch.gep, align 4
  %6 = sext i32 %3 to i64
  %switch.gep96 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.viterbi_reset.105, i64 0, i64 %6
  %switch.load97 = load i32, i32* %switch.gep96, align 4
  store i32 %switch.load, i32* %d_ntraceback, align 4, !tbaa !11
  store i32 %switch.load97, i32* %d_k, align 4, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.end53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @do_decoding(i32 %in_n_data_bits, i32 %in_cbps, i32 %in_ntraceback, i8* nocapture readonly %inMemory, i8* nocapture %outMemory) local_unnamed_addr #2 {
entry:
  %l_metric0_generic = alloca [64 x i8], align 16
  %l_metric0_generic1184 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 0
  %l_metric1_generic = alloca [64 x i8], align 16
  %l_metric1_generic1185 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric1_generic, i64 0, i64 0
  %l_path0_generic = alloca [64 x i8], align 16
  %l_path0_generic1172 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 0
  %l_path1_generic = alloca [64 x i8], align 16
  %l_path1_generic1186 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path1_generic, i64 0, i64 0
  %l_mmresult = alloca [64 x i8], align 16
  %l_mmresult1187 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 0
  %l_ppresult = alloca [24 x [64 x i8]], align 16
  %m0 = alloca [16 x i8], align 16
  %m1 = alloca [16 x i8], align 16
  %m2 = alloca [16 x i8], align 16
  %m3 = alloca [16 x i8], align 16
  %decision0 = alloca [16 x i8], align 16
  %decision1 = alloca [16 x i8], align 16
  %survivor0 = alloca [16 x i8], align 16
  %survivor1 = alloca [16 x i8], align 16
  %metsv = alloca [16 x i8], align 16
  %metsvm = alloca [16 x i8], align 16
  %shift0 = alloca [16 x i8], align 16
  %shift1 = alloca [16 x i8], align 16
  %tmp0 = alloca [16 x i8], align 16
  %tmp1 = alloca [16 x i8], align 16
  %sym0v = alloca [16 x i8], align 16
  %sym1v = alloca [16 x i8], align 16
  %arrayidx1 = getelementptr inbounds i8, i8* %inMemory, i64 32
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric1_generic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path1_generic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #14
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #14
  %5 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1536, i8* nonnull %5) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %l_metric0_generic1184, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %l_path0_generic1172, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %l_metric1_generic1185, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %l_path1_generic1186, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %l_mmresult1187, i8 0, i64 64, i1 false)
  br label %for.body

while.cond.preheader:                             ; preds = %for.cond.cleanup16
  %sym0v1065 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 0
  %sym1v1066 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 0
  %arrayidx3 = getelementptr inbounds i8, i8* %inMemory, i64 72
  %cmp251052 = icmp sgt i32 %in_n_data_bits, 0
  br i1 %cmp251052, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %m0, i64 0, i64 0
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %m1, i64 0, i64 0
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %m2, i64 0, i64 0
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %m3, i64 0, i64 0
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 0
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 0
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor0, i64 0, i64 0
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor1, i64 0, i64 0
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 0
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 0
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 0
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 0
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp0, i64 0, i64 0
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp1, i64 0, i64 0
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 0
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 0
  %cmp6421042 = icmp sgt i32 %in_ntraceback, 1
  %sub651 = add i32 %in_ntraceback, -1
  br label %while.body

for.body:                                         ; preds = %for.cond.cleanup16, %entry
  %indvars.iv1181 = phi i64 [ 0, %entry ], [ %indvars.iv.next1182, %for.cond.cleanup16 ]
  br label %for.body17

for.cond.cleanup16:                               ; preds = %for.body17
  %indvars.iv.next1182 = add nuw nsw i64 %indvars.iv1181, 1
  %exitcond1183 = icmp eq i64 %indvars.iv.next1182, 64
  br i1 %exitcond1183, label %while.cond.preheader, label %for.body

for.body17:                                       ; preds = %for.body17, %for.body
  %indvars.iv1178 = phi i64 [ 0, %for.body ], [ %indvars.iv.next1179, %for.body17 ]
  %arrayidx21 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %indvars.iv1178, i64 %indvars.iv1181
  store i8 0, i8* %arrayidx21, align 1, !tbaa !36
  %indvars.iv.next1179 = add nuw nsw i64 %indvars.iv1178, 1
  %exitcond1180 = icmp eq i64 %indvars.iv.next1179, 24
  br i1 %exitcond1180, label %for.cond.cleanup16, label %for.body17

while.body:                                       ; preds = %if.end716, %while.body.lr.ph
  %in_count.01058 = phi i32 [ 0, %while.body.lr.ph ], [ %inc717, %if.end716 ]
  %out_count.01056 = phi i32 [ 0, %while.body.lr.ph ], [ %out_count.1, %if.end716 ]
  %n_decoded.01055 = phi i32 [ 0, %while.body.lr.ph ], [ %n_decoded.3, %if.end716 ]
  %l_store_pos.01054 = phi i32 [ 0, %while.body.lr.ph ], [ %l_store_pos.1, %if.end716 ]
  %rem = and i32 %in_count.01058, 3
  %cmp26 = icmp eq i32 %rem, 0
  br i1 %cmp26, label %for.cond48.preheader, label %if.end716

for.cond48.preheader:                             ; preds = %while.body
  %and = and i32 %in_count.01058, 2147483644
  %idxprom30 = zext i32 %and to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %arrayidx3, i64 %idxprom30
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #14
  %22 = load i8, i8* %arrayidx31, align 1, !tbaa !36
  %arrayidx42 = getelementptr inbounds i8, i8* %arrayidx31, i64 1
  %23 = load i8, i8* %arrayidx42, align 1, !tbaa !36
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %sym0v1065, i8 %22, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %sym1v1066, i8 %23, i64 16, i1 false)
  %arrayidx547 = getelementptr inbounds i8, i8* %arrayidx31, i64 2
  %24 = load i8, i8* %arrayidx547, align 1, !tbaa !36
  %arrayidx551 = getelementptr inbounds i8, i8* %arrayidx31, i64 3
  %25 = load i8, i8* %arrayidx551, align 1, !tbaa !36
  br label %for.cond53.preheader

for.cond53.preheader:                             ; preds = %for.cond.cleanup544, %for.cond48.preheader
  %s.01035 = phi i32 [ 0, %for.cond48.preheader ], [ %inc558, %for.cond.cleanup544 ]
  %second_symbol.01034 = phi i64 [ 1, %for.cond48.preheader ], [ 3, %for.cond.cleanup544 ]
  %first_symbol.01033 = phi i64 [ 0, %for.cond48.preheader ], [ 2, %for.cond.cleanup544 ]
  %path1.01032 = phi i8* [ %3, %for.cond48.preheader ], [ %2, %for.cond.cleanup544 ]
  %path0.01031 = phi i8* [ %2, %for.cond48.preheader ], [ %3, %for.cond.cleanup544 ]
  %metric1.01030 = phi i8* [ %1, %for.cond48.preheader ], [ %0, %for.cond.cleanup544 ]
  %metric0.01029 = phi i8* [ %0, %for.cond48.preheader ], [ %1, %for.cond.cleanup544 ]
  %arrayidx58 = getelementptr inbounds i8, i8* %arrayidx31, i64 %first_symbol.01033
  %26 = load i8, i8* %arrayidx58, align 1, !tbaa !36
  %cmp59 = icmp eq i8 %26, 2
  %arrayidx89 = getelementptr inbounds i8, i8* %arrayidx31, i64 %second_symbol.01034
  br label %for.body56

for.cond.cleanup50:                               ; preds = %for.cond.cleanup544
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14
  %rem563 = and i32 %in_count.01058, 15
  %cmp564 = icmp eq i32 %rem563, 8
  br i1 %cmp564, label %if.then566, label %if.end716

for.body56:                                       ; preds = %for.cond.cleanup513, %for.cond53.preheader
  %indvars.iv1133 = phi i64 [ 0, %for.cond53.preheader ], [ %indvars.iv.next1134, %for.cond.cleanup513 ]
  br i1 %cmp59, label %for.cond63.preheader, label %if.else

for.cond63.preheader:                             ; preds = %for.body56
  %27 = shl i64 %indvars.iv1133, 4
  br label %for.body67

for.body67:                                       ; preds = %for.body67, %for.cond63.preheader
  %indvars.iv1072 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next1073, %for.body67 ]
  %28 = add nuw nsw i64 %indvars.iv1072, %27
  %arrayidx71 = getelementptr inbounds i8, i8* %arrayidx1, i64 %28
  %29 = load i8, i8* %arrayidx71, align 1, !tbaa !36
  %arrayidx74 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 %indvars.iv1072
  %30 = load i8, i8* %arrayidx74, align 1, !tbaa !36
  %xor1004 = xor i8 %30, %29
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %indvars.iv1072
  store i8 %xor1004, i8* %arrayidx78, align 1, !tbaa !36
  %sub = sub i8 1, %xor1004
  %arrayidx84 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %indvars.iv1072
  store i8 %sub, i8* %arrayidx84, align 1, !tbaa !36
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 1
  %exitcond1075 = icmp eq i64 %indvars.iv.next1073, 16
  br i1 %exitcond1075, label %if.end164, label %for.body67

if.else:                                          ; preds = %for.body56
  %31 = load i8, i8* %arrayidx89, align 1, !tbaa !36
  %cmp91 = icmp eq i8 %31, 2
  %32 = shl i64 %indvars.iv1133, 4
  br i1 %cmp91, label %for.body99, label %for.body129

for.body99:                                       ; preds = %for.body99, %if.else
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %for.body99 ], [ 0, %if.else ]
  %33 = add nuw nsw i64 %indvars.iv1068, %32
  %arrayidx104 = getelementptr inbounds i8, i8* %inMemory, i64 %33
  %34 = load i8, i8* %arrayidx104, align 1, !tbaa !36
  %arrayidx107 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 %indvars.iv1068
  %35 = load i8, i8* %arrayidx107, align 1, !tbaa !36
  %xor1091003 = xor i8 %35, %34
  %arrayidx112 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %indvars.iv1068
  store i8 %xor1091003, i8* %arrayidx112, align 1, !tbaa !36
  %sub116 = sub i8 1, %xor1091003
  %arrayidx119 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %indvars.iv1068
  store i8 %sub116, i8* %arrayidx119, align 1, !tbaa !36
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1
  %exitcond1071 = icmp eq i64 %indvars.iv.next1069, 16
  br i1 %exitcond1071, label %if.end164, label %for.body99

for.body129:                                      ; preds = %for.body129, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body129 ], [ 0, %if.else ]
  %36 = add nuw nsw i64 %indvars.iv, %32
  %arrayidx134 = getelementptr inbounds i8, i8* %inMemory, i64 %36
  %37 = load i8, i8* %arrayidx134, align 1, !tbaa !36
  %arrayidx137 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 %indvars.iv
  %38 = load i8, i8* %arrayidx137, align 1, !tbaa !36
  %xor1391001 = xor i8 %38, %37
  %arrayidx144 = getelementptr inbounds i8, i8* %arrayidx1, i64 %36
  %39 = load i8, i8* %arrayidx144, align 1, !tbaa !36
  %arrayidx147 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 %indvars.iv
  %40 = load i8, i8* %arrayidx147, align 1, !tbaa !36
  %xor1491002 = xor i8 %40, %39
  %add150 = add i8 %xor1491002, %xor1391001
  %arrayidx153 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %indvars.iv
  store i8 %add150, i8* %arrayidx153, align 1, !tbaa !36
  %sub157 = sub i8 2, %add150
  %arrayidx160 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %indvars.iv
  store i8 %sub157, i8* %arrayidx160, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond, label %if.end164, label %for.body129

if.end164:                                        ; preds = %for.body129, %for.body99, %for.body67
  %41 = shl i64 %indvars.iv1133, 4
  br label %for.body170

for.body170:                                      ; preds = %for.body170, %if.end164
  %indvars.iv1076 = phi i64 [ 0, %if.end164 ], [ %indvars.iv.next1077, %for.body170 ]
  %42 = add nuw nsw i64 %indvars.iv1076, %41
  %arrayidx174 = getelementptr inbounds i8, i8* %metric0.01029, i64 %42
  %43 = load i8, i8* %arrayidx174, align 1, !tbaa !36
  %arrayidx177 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %indvars.iv1076
  %44 = load i8, i8* %arrayidx177, align 1, !tbaa !36
  %add179 = add i8 %44, %43
  %arrayidx182 = getelementptr inbounds [16 x i8], [16 x i8]* %m0, i64 0, i64 %indvars.iv1076
  store i8 %add179, i8* %arrayidx182, align 1, !tbaa !36
  %45 = add nuw nsw i64 %indvars.iv1076, %41
  %46 = add nuw nsw i64 %45, 32
  %arrayidx187 = getelementptr inbounds i8, i8* %metric0.01029, i64 %46
  %47 = load i8, i8* %arrayidx187, align 1, !tbaa !36
  %arrayidx190 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %indvars.iv1076
  %48 = load i8, i8* %arrayidx190, align 1, !tbaa !36
  %add192 = add i8 %48, %47
  %arrayidx195 = getelementptr inbounds [16 x i8], [16 x i8]* %m1, i64 0, i64 %indvars.iv1076
  store i8 %add192, i8* %arrayidx195, align 1, !tbaa !36
  %add204 = add i8 %48, %43
  %arrayidx207 = getelementptr inbounds [16 x i8], [16 x i8]* %m2, i64 0, i64 %indvars.iv1076
  store i8 %add204, i8* %arrayidx207, align 1, !tbaa !36
  %add217 = add i8 %47, %44
  %arrayidx220 = getelementptr inbounds [16 x i8], [16 x i8]* %m3, i64 0, i64 %indvars.iv1076
  store i8 %add217, i8* %arrayidx220, align 1, !tbaa !36
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 1
  %exitcond1081 = icmp eq i64 %indvars.iv.next1077, 16
  br i1 %exitcond1081, label %for.body229, label %for.body170

for.cond295.preheader:                            ; preds = %for.body229
  %49 = shl i64 %indvars.iv1133, 4
  %50 = add nuw nsw i64 %49, 32
  br label %for.body299

for.body229:                                      ; preds = %for.body229, %for.body170
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %for.body229 ], [ 0, %for.body170 ]
  %arrayidx231 = getelementptr inbounds [16 x i8], [16 x i8]* %m0, i64 0, i64 %indvars.iv1082
  %51 = load i8, i8* %arrayidx231, align 1, !tbaa !36
  %arrayidx234 = getelementptr inbounds [16 x i8], [16 x i8]* %m1, i64 0, i64 %indvars.iv1082
  %52 = load i8, i8* %arrayidx234, align 1, !tbaa !36
  %cmp237 = icmp ugt i8 %51, %52
  %conv239 = sext i1 %cmp237 to i8
  %arrayidx241 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 %indvars.iv1082
  store i8 %conv239, i8* %arrayidx241, align 1, !tbaa !36
  %arrayidx243 = getelementptr inbounds [16 x i8], [16 x i8]* %m2, i64 0, i64 %indvars.iv1082
  %53 = load i8, i8* %arrayidx243, align 1, !tbaa !36
  %arrayidx246 = getelementptr inbounds [16 x i8], [16 x i8]* %m3, i64 0, i64 %indvars.iv1082
  %54 = load i8, i8* %arrayidx246, align 1, !tbaa !36
  %cmp249 = icmp ugt i8 %53, %54
  %conv252 = sext i1 %cmp249 to i8
  %arrayidx254 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 %indvars.iv1082
  store i8 %conv252, i8* %arrayidx254, align 1, !tbaa !36
  %55 = select i1 %cmp237, i8 %51, i8 %52
  %arrayidx271 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor0, i64 0, i64 %indvars.iv1082
  store i8 %55, i8* %arrayidx271, align 1, !tbaa !36
  %56 = select i1 %cmp249, i8 %53, i8 %54
  %arrayidx290 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor1, i64 0, i64 %indvars.iv1082
  store i8 %56, i8* %arrayidx290, align 1, !tbaa !36
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 1
  %exitcond1084 = icmp eq i64 %indvars.iv.next1083, 16
  br i1 %exitcond1084, label %for.cond295.preheader, label %for.body229

for.body299:                                      ; preds = %for.body299, %for.cond295.preheader
  %indvars.iv1085 = phi i64 [ 0, %for.cond295.preheader ], [ %indvars.iv.next1086, %for.body299 ]
  %57 = add nuw nsw i64 %indvars.iv1085, %49
  %arrayidx303 = getelementptr inbounds i8, i8* %path0.01031, i64 %57
  %58 = load i8, i8* %arrayidx303, align 1, !tbaa !36
  %59 = or i64 %indvars.iv1085, 1
  %60 = add nuw nsw i64 %59, %49
  %arrayidx309 = getelementptr inbounds i8, i8* %path0.01031, i64 %60
  %61 = load i8, i8* %arrayidx309, align 1, !tbaa !36
  %conv310 = zext i8 %61 to i16
  %shl = shl nuw i16 %conv310, 8
  %conv311 = zext i8 %58 to i16
  %or312 = or i16 %shl, %conv311
  %shl315 = shl i8 %58, 1
  %arrayidx319 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %indvars.iv1085
  store i8 %shl315, i8* %arrayidx319, align 2, !tbaa !36
  %62 = lshr i16 %or312, 7
  %conv321 = trunc i16 %62 to i8
  %arrayidx324 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %59
  store i8 %conv321, i8* %arrayidx324, align 1, !tbaa !36
  %63 = add nuw nsw i64 %indvars.iv1085, %50
  %arrayidx329 = getelementptr inbounds i8, i8* %path0.01031, i64 %63
  %64 = load i8, i8* %arrayidx329, align 1, !tbaa !36
  %65 = add nuw nsw i64 %59, %50
  %arrayidx336 = getelementptr inbounds i8, i8* %path0.01031, i64 %65
  %66 = load i8, i8* %arrayidx336, align 1, !tbaa !36
  %conv337 = zext i8 %66 to i16
  %shl338 = shl nuw i16 %conv337, 8
  %conv339 = zext i8 %64 to i16
  %or340 = or i16 %shl338, %conv339
  %shl343 = shl i8 %64, 1
  %arrayidx347 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %indvars.iv1085
  store i8 %shl343, i8* %arrayidx347, align 2, !tbaa !36
  %67 = lshr i16 %or340, 7
  %conv350 = trunc i16 %67 to i8
  %arrayidx353 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %59
  store i8 %conv350, i8* %arrayidx353, align 1, !tbaa !36
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 2
  %cmp296 = icmp ult i64 %indvars.iv.next1086, 16
  br i1 %cmp296, label %for.body299, label %for.body362

for.cond374.preheader:                            ; preds = %for.body362
  %68 = shl nsw i64 %indvars.iv1133, 5
  br label %for.body378

for.body362:                                      ; preds = %for.body362, %for.body299
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %for.body362 ], [ 0, %for.body299 ]
  %arrayidx364 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %indvars.iv1092
  %69 = load i8, i8* %arrayidx364, align 1, !tbaa !36
  %add366 = add i8 %69, 1
  store i8 %add366, i8* %arrayidx364, align 1, !tbaa !36
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 1
  %exitcond1094 = icmp eq i64 %indvars.iv.next1093, 16
  br i1 %exitcond1094, label %for.cond374.preheader, label %for.body362

for.body378:                                      ; preds = %for.body378, %for.cond374.preheader
  %indvars.iv1097 = phi i64 [ 0, %for.cond374.preheader ], [ %indvars.iv.next1098, %for.body378 ]
  %indvars.iv1095 = phi i64 [ 0, %for.cond374.preheader ], [ %indvars.iv.next1096, %for.body378 ]
  %arrayidx380 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor0, i64 0, i64 %indvars.iv1095
  %70 = load i8, i8* %arrayidx380, align 1, !tbaa !36
  %71 = add nuw nsw i64 %indvars.iv1097, %68
  %arrayidx385 = getelementptr inbounds i8, i8* %metric1.01030, i64 %71
  store i8 %70, i8* %arrayidx385, align 1, !tbaa !36
  %arrayidx387 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor1, i64 0, i64 %indvars.iv1095
  %72 = load i8, i8* %arrayidx387, align 1, !tbaa !36
  %73 = or i64 %indvars.iv1097, 1
  %74 = add nuw nsw i64 %73, %68
  %arrayidx393 = getelementptr inbounds i8, i8* %metric1.01030, i64 %74
  store i8 %72, i8* %arrayidx393, align 1, !tbaa !36
  %indvars.iv.next1098 = add nuw nsw i64 %indvars.iv1097, 2
  %indvars.iv.next1096 = add nuw nsw i64 %indvars.iv1095, 1
  %exitcond1102 = icmp eq i64 %indvars.iv.next1096, 8
  br i1 %exitcond1102, label %for.body403, label %for.body378

for.cond428.preheader:                            ; preds = %for.body403
  %75 = shl i64 %indvars.iv1133, 5
  %76 = or i64 %75, 16
  br label %for.body432

for.body403:                                      ; preds = %for.body403, %for.body378
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %for.body403 ], [ 0, %for.body378 ]
  %arrayidx405 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 %indvars.iv1103
  %77 = load i8, i8* %arrayidx405, align 1, !tbaa !36
  %arrayidx408 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %indvars.iv1103
  %78 = load i8, i8* %arrayidx408, align 1, !tbaa !36
  %and410998 = and i8 %78, %77
  %neg414 = xor i8 %77, -1
  %arrayidx416 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %indvars.iv1103
  %79 = load i8, i8* %arrayidx416, align 1, !tbaa !36
  %and418 = and i8 %79, %neg414
  %or419 = or i8 %and418, %and410998
  %arrayidx422 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp0, i64 0, i64 %indvars.iv1103
  store i8 %or419, i8* %arrayidx422, align 1, !tbaa !36
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 1
  %exitcond1105 = icmp eq i64 %indvars.iv.next1104, 16
  br i1 %exitcond1105, label %for.cond428.preheader, label %for.body403

for.body432:                                      ; preds = %for.body432, %for.cond428.preheader
  %indvars.iv1108 = phi i64 [ 0, %for.cond428.preheader ], [ %indvars.iv.next1109, %for.body432 ]
  %indvars.iv1106 = phi i64 [ 8, %for.cond428.preheader ], [ %indvars.iv.next1107, %for.body432 ]
  %arrayidx434 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor0, i64 0, i64 %indvars.iv1106
  %80 = load i8, i8* %arrayidx434, align 1, !tbaa !36
  %81 = add nuw nsw i64 %indvars.iv1108, %76
  %arrayidx440 = getelementptr inbounds i8, i8* %metric1.01030, i64 %81
  store i8 %80, i8* %arrayidx440, align 1, !tbaa !36
  %arrayidx442 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor1, i64 0, i64 %indvars.iv1106
  %82 = load i8, i8* %arrayidx442, align 1, !tbaa !36
  %83 = or i64 %indvars.iv1108, 1
  %84 = add nuw nsw i64 %83, %76
  %arrayidx449 = getelementptr inbounds i8, i8* %metric1.01030, i64 %84
  store i8 %82, i8* %arrayidx449, align 1, !tbaa !36
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 2
  %indvars.iv.next1107 = add nuw nsw i64 %indvars.iv1106, 1
  %exitcond1113 = icmp eq i64 %indvars.iv.next1107, 16
  br i1 %exitcond1113, label %for.body459, label %for.body432

for.cond484.preheader:                            ; preds = %for.body459
  %85 = shl nsw i64 %indvars.iv1133, 5
  br label %for.body488

for.body459:                                      ; preds = %for.body459, %for.body432
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %for.body459 ], [ 0, %for.body432 ]
  %arrayidx461 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 %indvars.iv1114
  %86 = load i8, i8* %arrayidx461, align 1, !tbaa !36
  %arrayidx464 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %indvars.iv1114
  %87 = load i8, i8* %arrayidx464, align 1, !tbaa !36
  %and466997 = and i8 %87, %86
  %neg470 = xor i8 %86, -1
  %arrayidx472 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %indvars.iv1114
  %88 = load i8, i8* %arrayidx472, align 1, !tbaa !36
  %and474 = and i8 %88, %neg470
  %or475 = or i8 %and474, %and466997
  %arrayidx478 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp1, i64 0, i64 %indvars.iv1114
  store i8 %or475, i8* %arrayidx478, align 1, !tbaa !36
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1
  %exitcond1116 = icmp eq i64 %indvars.iv.next1115, 16
  br i1 %exitcond1116, label %for.cond484.preheader, label %for.body459

for.cond510.preheader:                            ; preds = %for.body488
  %89 = shl i64 %indvars.iv1133, 5
  %90 = or i64 %89, 16
  br label %for.body514

for.body488:                                      ; preds = %for.body488, %for.cond484.preheader
  %indvars.iv1119 = phi i64 [ 0, %for.cond484.preheader ], [ %indvars.iv.next1120, %for.body488 ]
  %indvars.iv1117 = phi i64 [ 0, %for.cond484.preheader ], [ %indvars.iv.next1118, %for.body488 ]
  %arrayidx490 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp0, i64 0, i64 %indvars.iv1117
  %91 = load i8, i8* %arrayidx490, align 1, !tbaa !36
  %92 = add nuw nsw i64 %indvars.iv1119, %85
  %arrayidx495 = getelementptr inbounds i8, i8* %path1.01032, i64 %92
  store i8 %91, i8* %arrayidx495, align 1, !tbaa !36
  %arrayidx497 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp1, i64 0, i64 %indvars.iv1117
  %93 = load i8, i8* %arrayidx497, align 1, !tbaa !36
  %94 = or i64 %indvars.iv1119, 1
  %95 = add nuw nsw i64 %94, %85
  %arrayidx503 = getelementptr inbounds i8, i8* %path1.01032, i64 %95
  store i8 %93, i8* %arrayidx503, align 1, !tbaa !36
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 2
  %indvars.iv.next1118 = add nuw nsw i64 %indvars.iv1117, 1
  %exitcond1124 = icmp eq i64 %indvars.iv.next1118, 8
  br i1 %exitcond1124, label %for.cond510.preheader, label %for.body488

for.cond.cleanup513:                              ; preds = %for.body514
  %indvars.iv.next1134 = add nuw nsw i64 %indvars.iv1133, 1
  %exitcond1146 = icmp eq i64 %indvars.iv.next1134, 2
  br i1 %exitcond1146, label %for.cond.cleanup544, label %for.body56

for.body514:                                      ; preds = %for.body514, %for.cond510.preheader
  %indvars.iv1127 = phi i64 [ 0, %for.cond510.preheader ], [ %indvars.iv.next1128, %for.body514 ]
  %indvars.iv1125 = phi i64 [ 8, %for.cond510.preheader ], [ %indvars.iv.next1126, %for.body514 ]
  %arrayidx516 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp0, i64 0, i64 %indvars.iv1125
  %96 = load i8, i8* %arrayidx516, align 1, !tbaa !36
  %97 = add nuw nsw i64 %indvars.iv1127, %90
  %arrayidx522 = getelementptr inbounds i8, i8* %path1.01032, i64 %97
  store i8 %96, i8* %arrayidx522, align 1, !tbaa !36
  %arrayidx524 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp1, i64 0, i64 %indvars.iv1125
  %98 = load i8, i8* %arrayidx524, align 1, !tbaa !36
  %99 = or i64 %indvars.iv1127, 1
  %100 = add nuw nsw i64 %99, %90
  %arrayidx531 = getelementptr inbounds i8, i8* %path1.01032, i64 %100
  store i8 %98, i8* %arrayidx531, align 1, !tbaa !36
  %indvars.iv.next1128 = add nuw nsw i64 %indvars.iv1127, 2
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1
  %exitcond1132 = icmp eq i64 %indvars.iv.next1126, 16
  br i1 %exitcond1132, label %for.cond.cleanup513, label %for.body514

for.cond.cleanup544:                              ; preds = %for.cond.cleanup513
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %sym0v1065, i8 %24, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %sym1v1066, i8 %25, i64 16, i1 false)
  %inc558 = add nuw nsw i32 %s.01035, 1
  %exitcond1150 = icmp eq i32 %inc558, 2
  br i1 %exitcond1150, label %for.cond.cleanup50, label %for.cond53.preheader

if.then566:                                       ; preds = %for.cond.cleanup50
  %add573 = add nsw i32 %l_store_pos.01054, 1
  %rem574 = srem i32 %add573, %in_ntraceback
  %idxprom595 = sext i32 %rem574 to i64
  br label %for.inc604

for.inc604:                                       ; preds = %for.inc604, %if.then566
  %indvar = phi i64 [ 0, %if.then566 ], [ %indvar.next, %for.inc604 ]
  %101 = shl nuw nsw i64 %indvar, 4
  %scevgep1156 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom595, i64 %101
  %scevgep1157 = getelementptr [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 %101
  %102 = shl nuw nsw i64 %indvar, 4
  %scevgep = getelementptr [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %102
  %scevgep1155 = getelementptr [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 %102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %scevgep, i8* align 16 %scevgep1155, i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %scevgep1156, i8* align 16 %scevgep1157, i64 16, i1 false)
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond1158 = icmp eq i64 %indvar.next, 4
  br i1 %exitcond1158, label %for.end606, label %for.inc604

for.end606:                                       ; preds = %for.inc604
  %103 = load i8, i8* %4, align 16, !tbaa !36
  %conv609 = zext i8 %103 to i32
  br label %for.body616

for.cond640.preheader:                            ; preds = %for.body616
  %idxprom6451043 = sext i32 %rem574 to i64
  %idxprom6471044 = sext i32 %spec.select1005 to i64
  %arrayidx6481045 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom6451043, i64 %idxprom6471044
  %104 = load i8, i8* %arrayidx6481045, align 1, !tbaa !36
  br i1 %cmp6421042, label %for.body644, label %for.cond661.preheader

for.body616:                                      ; preds = %for.body616, %for.end606
  %indvars.iv1159 = phi i64 [ 1, %for.end606 ], [ %indvars.iv.next1160, %for.body616 ]
  %beststate.01041 = phi i32 [ 0, %for.end606 ], [ %spec.select1005, %for.body616 ]
  %minmetric.01040 = phi i32 [ %conv609, %for.end606 ], [ %minmetric.1, %for.body616 ]
  %bestmetric.01039 = phi i32 [ %conv609, %for.end606 ], [ %spec.select, %for.body616 ]
  %arrayidx618 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv1159
  %105 = load i8, i8* %arrayidx618, align 1, !tbaa !36
  %conv619 = zext i8 %105 to i32
  %cmp620 = icmp ult i32 %bestmetric.01039, %conv619
  %spec.select = select i1 %cmp620, i32 %conv619, i32 %bestmetric.01039
  %106 = trunc i64 %indvars.iv1159 to i32
  %spec.select1005 = select i1 %cmp620, i32 %106, i32 %beststate.01041
  %cmp630 = icmp sgt i32 %minmetric.01040, %conv619
  %minmetric.1 = select i1 %cmp630, i32 %conv619, i32 %minmetric.01040
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 1
  %exitcond1161 = icmp eq i64 %indvars.iv.next1160, 64
  br i1 %exitcond1161, label %for.cond640.preheader, label %for.body616

for.cond661.preheader:                            ; preds = %for.body644, %for.cond640.preheader
  %.lcssa = phi i8 [ %104, %for.cond640.preheader ], [ %110, %for.body644 ]
  %107 = trunc i32 %minmetric.1 to i8
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %l_path0_generic1172, i8 0, i64 64, i1 false)
  br label %for.cond665.preheader

for.body644:                                      ; preds = %for.body644, %for.cond640.preheader
  %108 = phi i8 [ %110, %for.body644 ], [ %104, %for.cond640.preheader ]
  %pos.01047 = phi i32 [ %rem653, %for.body644 ], [ %rem574, %for.cond640.preheader ]
  %i571.21046 = phi i32 [ %inc655, %for.body644 ], [ 0, %for.cond640.preheader ]
  %109 = lshr i8 %108, 2
  %add652 = add i32 %sub651, %pos.01047
  %rem653 = srem i32 %add652, %in_ntraceback
  %inc655 = add nuw nsw i32 %i571.21046, 1
  %idxprom645 = sext i32 %rem653 to i64
  %idxprom647 = zext i8 %109 to i64
  %arrayidx648 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom645, i64 %idxprom647
  %110 = load i8, i8* %arrayidx648, align 1, !tbaa !36
  %exitcond1162 = icmp eq i32 %inc655, %sub651
  br i1 %exitcond1162, label %for.cond661.preheader, label %for.body644

for.cond665.preheader:                            ; preds = %for.inc687, %for.cond661.preheader
  %indvar1167 = phi i64 [ 0, %for.cond661.preheader ], [ %indvar.next1168, %for.inc687 ]
  %111 = shl i64 %indvar1167, 4
  br label %for.body668

for.body668:                                      ; preds = %for.body668, %for.cond665.preheader
  %indvars.iv1163 = phi i64 [ 0, %for.cond665.preheader ], [ %indvars.iv.next1164, %for.body668 ]
  %112 = add nuw nsw i64 %indvars.iv1163, %111
  %arrayidx676 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 %112
  %113 = load i8, i8* %arrayidx676, align 1, !tbaa !36
  %conv679 = sub i8 %113, %107
  store i8 %conv679, i8* %arrayidx676, align 1, !tbaa !36
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 1
  %exitcond1166 = icmp eq i64 %indvars.iv.next1164, 16
  br i1 %exitcond1166, label %for.inc687, label %for.body668

for.inc687:                                       ; preds = %for.body668
  %indvar.next1168 = add nuw nsw i64 %indvar1167, 1
  %exitcond1171 = icmp eq i64 %indvar.next1168, 4
  br i1 %exitcond1171, label %for.end689, label %for.cond665.preheader

for.end689:                                       ; preds = %for.inc687
  %cmp690 = icmp slt i32 %out_count.01056, %in_ntraceback
  br i1 %cmp690, label %if.end713, label %for.cond694.preheader

for.cond694.preheader:                            ; preds = %for.end689
  %conv699 = zext i8 %.lcssa to i32
  %sub704 = sub nsw i32 %out_count.01056, %in_ntraceback
  %mul705 = shl i32 %sub704, 3
  %114 = sext i32 %mul705 to i64
  br label %for.body698

for.body698:                                      ; preds = %for.body698, %for.cond694.preheader
  %indvars.iv1173 = phi i64 [ 0, %for.cond694.preheader ], [ %indvars.iv.next1174, %for.body698 ]
  %115 = trunc i64 %indvars.iv1173 to i32
  %116 = sub i32 7, %115
  %shr701 = lshr i32 %conv699, %116
  %117 = trunc i32 %shr701 to i8
  %conv703 = and i8 %117, 1
  %118 = add nuw nsw i64 %indvars.iv1173, %114
  %arrayidx708 = getelementptr inbounds i8, i8* %outMemory, i64 %118
  store i8 %conv703, i8* %arrayidx708, align 1, !tbaa !36
  %indvars.iv.next1174 = add nuw nsw i64 %indvars.iv1173, 1
  %exitcond1177 = icmp eq i64 %indvars.iv.next1174, 8
  br i1 %exitcond1177, label %if.end713.loopexit, label %for.body698

if.end713.loopexit:                               ; preds = %for.body698
  %119 = add i32 %n_decoded.01055, 8
  br label %if.end713

if.end713:                                        ; preds = %if.end713.loopexit, %for.end689
  %n_decoded.2 = phi i32 [ %n_decoded.01055, %for.end689 ], [ %119, %if.end713.loopexit ]
  %inc714 = add nsw i32 %out_count.01056, 1
  br label %if.end716

if.end716:                                        ; preds = %if.end713, %for.cond.cleanup50, %while.body
  %l_store_pos.1 = phi i32 [ %rem574, %if.end713 ], [ %l_store_pos.01054, %for.cond.cleanup50 ], [ %l_store_pos.01054, %while.body ]
  %n_decoded.3 = phi i32 [ %n_decoded.2, %if.end713 ], [ %n_decoded.01055, %for.cond.cleanup50 ], [ %n_decoded.01055, %while.body ]
  %out_count.1 = phi i32 [ %inc714, %if.end713 ], [ %out_count.01056, %for.cond.cleanup50 ], [ %out_count.01056, %while.body ]
  %inc717 = add nuw nsw i32 %in_count.01058, 1
  %cmp25 = icmp slt i32 %n_decoded.3, %in_n_data_bits
  br i1 %cmp25, label %while.body, label %while.end

while.end:                                        ; preds = %if.end716, %while.cond.preheader
  call void @llvm.lifetime.end.p0i8(i64 1536, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @viterbi_decode(%struct.ofdm_param* nocapture readonly %ofdm, i64 %ofdm_size, %struct.frame_param* nocapture readonly %frame, i64 %frame_size, i8* readonly %in, i64 %in_size, i8* nocapture %l_decoded, i64 %decd_size) local_unnamed_addr #2 {
for.cond.cleanup:
  %d_metric0_generic = alloca [64 x i8], align 16
  %d_metric0_generic166 = getelementptr inbounds [64 x i8], [64 x i8]* %d_metric0_generic, i64 0, i64 0
  %d_path0_generic = alloca [64 x i8], align 16
  %d_path0_generic167 = getelementptr inbounds [64 x i8], [64 x i8]* %d_path0_generic, i64 0, i64 0
  %d_mmresult = alloca [64 x i8], align 16
  %d_ppresult = alloca [24 x [64 x i8]], align 16
  %d_ntraceback = alloca i32, align 4
  %d_k = alloca i32, align 4
  %inMemory = alloca [24852 x i8], align 16
  %outMemory = alloca [18585 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %d_metric0_generic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %d_path0_generic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %d_metric0_generic166, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %d_path0_generic167, i8 0, i64 64, i1 false)
  %outMemory150 = getelementptr inbounds [18585 x i8], [18585 x i8]* %outMemory, i64 0, i64 0
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %d_mmresult, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #14
  %3 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %d_ppresult, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1536, i8* nonnull %3) #14
  %4 = bitcast i32* %d_ntraceback to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #14
  %5 = bitcast i32* %d_k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14
  %arraydecay11 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %d_ppresult, i64 0, i64 0
  call void @viterbi_reset(%struct.ofdm_param* %ofdm, i64 undef, i8* nonnull %0, i64 undef, i8* undef, i64 undef, i8* nonnull %1, i64 undef, i8* undef, i64 undef, i8* nonnull %2, i64 undef, [64 x i8]* nonnull %arraydecay11, i64 undef, i32* nonnull %d_ntraceback, i64 undef, i32* nonnull %d_k, i64 undef, i8* undef, i64 undef)
  %6 = load i32, i32* %d_ntraceback, align 4, !tbaa !11
  %7 = load i32, i32* %d_k, align 4, !tbaa !11
  %call = tail call i8* @depuncture(%struct.ofdm_param* %ofdm, i64 undef, %struct.frame_param* %frame, i64 undef, i32 %6, i32 %7, i8* undef, i64 undef, i8* %in, i64 undef)
  %8 = getelementptr inbounds [24852 x i8], [24852 x i8]* %inMemory, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24852, i8* nonnull %8) #14
  %9 = getelementptr inbounds [18585 x i8], [18585 x i8]* %outMemory, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 18585, i8* nonnull %9) #14
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond.cleanup18, %for.cond.cleanup
  %indvar = phi i64 [ 0, %for.cond.cleanup ], [ %indvar.next, %for.cond.cleanup18 ]
  %imi.0147 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next157, %for.cond.cleanup18 ]
  %scevgep160161 = getelementptr [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 %indvar, i32 0, i64 0
  %sext = shl i64 %imi.0147, 32
  %10 = ashr exact i64 %sext, 32
  %scevgep159 = getelementptr [24852 x i8], [24852 x i8]* %inMemory, i64 0, i64 %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %scevgep159, i8* align 16 %scevgep160161, i64 32, i1 false)
  br label %for.body19

for.cond.cleanup14:                               ; preds = %for.cond.cleanup18
  %11 = trunc i64 %indvars.iv.next157 to i32
  %cmp33 = icmp eq i32 %11, 64
  br i1 %cmp33, label %if.end51, label %if.then49

for.cond.cleanup18:                               ; preds = %for.body19
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond162 = icmp eq i64 %indvar.next, 2
  br i1 %exitcond162, label %for.cond.cleanup14, label %for.cond16.preheader

for.body19:                                       ; preds = %for.body19, %for.cond16.preheader
  %indvars.iv156 = phi i64 [ %10, %for.cond16.preheader ], [ %indvars.iv.next157, %for.body19 ]
  %indvars.iv154 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next155, %for.body19 ]
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 1
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %exitcond158 = icmp eq i64 %indvars.iv.next155, 32
  br i1 %exitcond158, label %for.cond.cleanup18, label %for.body19

if.then49:                                        ; preds = %for.cond.cleanup14
  %call34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i64 0, i64 0), i32 %11)
  %12 = add i32 %11, 6
  %call50 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i32 %12)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.cond.cleanup14
  %13 = shl i64 %indvars.iv.next157, 32
  %sext168 = add i64 %13, 34359738368
  %14 = ashr exact i64 %sext168, 32
  %scevgep = getelementptr [24852 x i8], [24852 x i8]* %inMemory, i64 0, i64 %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %scevgep, i8* align 1 %call, i64 24780, i1 false)
  br label %for.body56

for.cond.cleanup55:                               ; preds = %for.body56
  %15 = trunc i64 %indvars.iv.next152 to i32
  %cmp65 = icmp eq i32 %15, 24852
  br i1 %cmp65, label %for.cond.cleanup84, label %if.then66

for.body56:                                       ; preds = %for.body56, %if.end51
  %indvars.iv151 = phi i64 [ %14, %if.end51 ], [ %indvars.iv.next152, %for.body56 ]
  %indvars.iv = phi i64 [ 0, %if.end51 ], [ %indvars.iv.next, %for.body56 ]
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 24780
  br i1 %exitcond, label %for.cond.cleanup55, label %for.body56

if.then66:                                        ; preds = %for.cond.cleanup55
  %call67 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i64 0, i64 0), i32 %15)
  br label %for.cond.cleanup84

for.cond.cleanup84:                               ; preds = %if.then66, %for.cond.cleanup55
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %outMemory150, i8 0, i64 18585, i1 false)
  %n_data_bits = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame, i64 0, i32 4
  %16 = load i32, i32* %n_data_bits, align 4, !tbaa !40
  call void @do_decoding(i32 %16, i32 undef, i32 %6, i8* nonnull %8, i8* nonnull %9)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %l_decoded, i8* nonnull align 16 %outMemory150, i64 18585, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 18585, i8* nonnull %9) #14
  call void @llvm.lifetime.end.p0i8(i64 24852, i8* nonnull %8) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 1536, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @viterbi_descrambler(i8* nocapture readonly %in, i64 %in_size, i32 %psdusize, i8* nocapture %out_msg, i64 %out_msg_size) local_unnamed_addr #8 {
entry:
  %add = add nsw i32 %psdusize, 2
  %0 = zext i32 %add to i64
  %vla = alloca i8, i64 %0, align 16
  br label %for.body

for.cond3.preheader:                              ; preds = %for.inc
  %sub = add nsw i32 %psdusize, -28
  %cmp4110 = icmp eq i32 %add, 0
  br i1 %cmp4110, label %for.cond49.preheader.thread, label %for.cond.cleanup5

for.cond49.preheader.thread:                      ; preds = %for.cond3.preheader
  %conv125 = trunc i32 %state.1 to i8
  store i8 %conv125, i8* %vla, align 16, !tbaa !36
  br label %for.cond.cleanup52.loopexit

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv121 = phi i64 [ 0, %entry ], [ %indvars.iv.next122, %for.inc ]
  %state.0114 = phi i32 [ 0, %entry ], [ %state.1, %for.inc ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %indvars.iv121
  %1 = load i8, i8* %add.ptr, align 1, !tbaa !36
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %2 = trunc i64 %indvars.iv121 to i32
  %3 = sub i32 6, %2
  %shl = shl i32 1, %3
  %or = or i32 %shl, %state.0114
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %state.1 = phi i32 [ %or, %if.then ], [ %state.0114, %for.body ]
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %exitcond124 = icmp eq i64 %indvars.iv.next122, 7
  br i1 %exitcond124, label %for.cond3.preheader, label %for.body

for.cond.cleanup5:                                ; preds = %for.cond3.preheader
  %4 = add i32 %psdusize, 2
  %5 = zext i32 %4 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %vla, i8 0, i64 %5, i1 false)
  %conv = trunc i32 %state.1 to i8
  store i8 %conv, i8* %vla, align 16, !tbaa !36
  %mul = shl i32 %psdusize, 3
  %cmp14107 = icmp sgt i32 %mul, -9
  br i1 %cmp14107, label %for.body17.preheader, label %for.cond49.preheader

for.body17.preheader:                             ; preds = %for.cond.cleanup5
  %6 = add i32 %mul, 16
  %wide.trip.count116 = zext i32 %6 to i64
  br label %for.body17

for.cond49.preheader:                             ; preds = %for.body17, %for.cond.cleanup5
  %cmp50105 = icmp eq i32 %sub, 0
  br i1 %cmp50105, label %for.cond.cleanup52, label %for.cond.cleanup52.loopexit

for.body17:                                       ; preds = %for.body17, %for.body17.preheader
  %indvars.iv = phi i64 [ 7, %for.body17.preheader ], [ %indvars.iv.next, %for.body17 ]
  %state.2109 = phi i32 [ %state.1, %for.body17.preheader ], [ %or44, %for.body17 ]
  %and = lshr i32 %state.2109, 6
  %and20 = lshr i32 %state.2109, 3
  %and.lobit104 = xor i32 %and, %and20
  %xor = and i32 %and.lobit104, 1
  %add.ptr27 = getelementptr inbounds i8, i8* %in, i64 %indvars.iv
  %7 = load i8, i8* %add.ptr27, align 1, !tbaa !36
  %8 = and i8 %7, 1
  %and29 = zext i8 %8 to i32
  %xor30 = xor i32 %xor, %and29
  %div = lshr i64 %indvars.iv, 3
  %9 = trunc i64 %indvars.iv to i32
  %rem = and i32 %9, 7
  %shl31 = shl i32 %xor30, %rem
  %idxprom32 = and i64 %div, 536870911
  %arrayidx33 = getelementptr inbounds i8, i8* %vla, i64 %idxprom32
  %10 = load i8, i8* %arrayidx33, align 1, !tbaa !36
  %11 = trunc i32 %shl31 to i8
  %conv36 = or i8 %10, %11
  store i8 %conv36, i8* %arrayidx33, align 1, !tbaa !36
  %shl42 = shl i32 %state.2109, 1
  %and43 = and i32 %shl42, 126
  %or44 = or i32 %xor, %and43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count116
  br i1 %exitcond, label %for.cond49.preheader, label %for.body17

for.cond.cleanup52.loopexit:                      ; preds = %for.cond49.preheader, %for.cond49.preheader.thread
  %12 = add i32 %psdusize, -28
  %scevgep = getelementptr i8, i8* %vla, i64 26
  %13 = zext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %out_msg, i8* align 2 %scevgep, i64 %13, i1 false)
  br label %for.cond.cleanup52

for.cond.cleanup52:                               ; preds = %for.cond.cleanup52.loopexit, %for.cond49.preheader
  %idxprom62 = zext i32 %sub to i64
  %arrayidx63 = getelementptr inbounds i8, i8* %out_msg, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1, !tbaa !36
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @viterbi_analyze_msg_text(i8* nocapture readonly %msg_txt, i64 %msg_txt_size, i32* nocapture %out_message, i64 %out_message_size) local_unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %msg_txt, i64 3
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !36
  %conv = sext i8 %0 to i32
  %switch.tableidx = add nsw i32 %conv, -48
  %1 = icmp ult i32 %switch.tableidx, 4
  %switch.tableidx. = select i1 %1, i32 %switch.tableidx, i32 4
  store i32 %switch.tableidx., i32* %out_message, align 4, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @viterbi_decode_to_message_t(%struct.ofdm_param* nocapture readonly %ofdm_ptr, i64 %ofdm_size, %struct.frame_param* nocapture readonly %frame_ptr, i64 %frame_size, i8* readonly %input_bits, i64 %in_bits_size, i8* nocapture %l_decoded, i64 %decd_size, i8* nocapture %out_msg_txt, i64 %out_msg_txt_size, i32* nocapture %out_message, i64 %out_message_size) local_unnamed_addr #2 {
entry:
  tail call void @viterbi_decode(%struct.ofdm_param* %ofdm_ptr, i64 undef, %struct.frame_param* %frame_ptr, i64 undef, i8* %input_bits, i64 undef, i8* %l_decoded, i64 undef)
  %psdu_size = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame_ptr, i64 0, i32 0
  %0 = load i32, i32* %psdu_size, align 4, !tbaa !41
  tail call void @viterbi_descrambler(i8* %l_decoded, i64 undef, i32 %0, i8* %out_msg_txt, i64 undef)
  tail call void @viterbi_analyze_msg_text(i8* %out_msg_txt, i64 undef, i32* %out_message, i64 undef)
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @post_execute_vit_kernel(i32 %tr_msg, i32 %dec_msg) local_unnamed_addr #8 {
entry:
  %0 = load i32, i32* @total_msgs, align 4, !tbaa !11
  %inc = add i32 %0, 1
  store i32 %inc, i32* @total_msgs, align 4, !tbaa !11
  %cmp = icmp eq i32 %dec_msg, %tr_msg
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @bad_decode_msgs, align 4, !tbaa !11
  %inc1 = add i32 %1, 1
  store i32 %inc1, i32* @bad_decode_msgs, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @closeout_cv_kernel() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 5), align 4, !tbaa !11
  %conv = uitofp i32 %0 to double
  %mul = fmul fast double %conv, 1.000000e+02
  %1 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !tbaa !11
  %conv1 = uitofp i32 %1 to double
  %div = fdiv fast double %mul, %conv1
  %conv3 = fptrunc double %div to float
  %conv4 = fpext float %conv3 to double
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.58, i64 0, i64 0), i32 %0, i32 %1, double %conv4)
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %2 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !tbaa !11
  %3 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 5), align 4, !tbaa !11
  %sub = sub i32 %2, %3
  %cmp22 = icmp eq i32 %sub, 0
  br i1 %cmp22, label %if.end58, label %if.then

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv86 = phi i64 [ 0, %entry ], [ %indvars.iv.next87, %for.body ]
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @label_match, i64 0, i64 %indvars.iv86
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !11
  %conv6 = uitofp i32 %4 to double
  %mul7 = fmul fast double %conv6, 1.000000e+02
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* @label_lookup, i64 0, i64 %indvars.iv86
  %5 = load i32, i32* %arrayidx9, align 4, !tbaa !11
  %conv10 = uitofp i32 %5 to double
  %div12 = fdiv fast double %mul7, %conv10
  %conv13 = fptrunc double %div12 to float
  %arrayidx15 = getelementptr inbounds [6 x i8*], [6 x i8*]* @object_names, i64 0, i64 %indvars.iv86
  %6 = load i8*, i8** %arrayidx15, align 8, !tbaa !15
  %conv20 = fpext float %conv13 to double
  %call21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.59, i64 0, i64 0), i8* %6, i32 %4, i32 %5, double %conv20)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond88 = icmp eq i64 %indvars.iv.next87, 5
  br i1 %exitcond88, label %for.cond.cleanup, label %for.body

if.then:                                          ; preds = %for.cond.cleanup
  %call24 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i64 0, i64 0), i32 %sub)
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond.cleanup34, %if.then
  %indvars.iv83 = phi i64 [ 0, %if.then ], [ %indvars.iv.next84, %for.cond.cleanup34 ]
  %arrayidx44 = getelementptr inbounds [6 x i8*], [6 x i8*]* @object_names, i64 0, i64 %indvars.iv83
  br label %for.body35

for.cond.cleanup34:                               ; preds = %for.inc52
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond85 = icmp eq i64 %indvars.iv.next84, 5
  br i1 %exitcond85, label %if.end58, label %for.cond31.preheader

for.body35:                                       ; preds = %for.inc52, %for.cond31.preheader
  %indvars.iv = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next, %for.inc52 ]
  %arrayidx39 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %indvars.iv83, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx39, align 4, !tbaa !11
  %cmp40 = icmp eq i32 %7, 0
  br i1 %cmp40, label %for.inc52, label %if.then42

if.then42:                                        ; preds = %for.body35
  %8 = load i8*, i8** %arrayidx44, align 8, !tbaa !15
  %arrayidx46 = getelementptr inbounds [6 x i8*], [6 x i8*]* @object_names, i64 0, i64 %indvars.iv
  %9 = load i8*, i8** %arrayidx46, align 8, !tbaa !15
  %call51 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.61, i64 0, i64 0), i8* %8, i8* %9, i32 %7)
  br label %for.inc52

for.inc52:                                        ; preds = %if.then42, %for.body35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond, label %for.cond.cleanup34, label %for.body35

if.end58:                                         ; preds = %for.cond.cleanup34, %for.cond.cleanup
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @closeout_rad_kernel() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.97, i64 0, i64 0))
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %0 = load i32, i32* @radar_inf_errs, align 4, !tbaa !11
  %call4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i32 %0)
  %1 = load i32, i32* @radar_inf_noerr, align 4, !tbaa !11
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32 %1)
  %2 = load i32, i32* @radar_zero_errs, align 4, !tbaa !11
  %call6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* @radar_zero_noerr, align 4, !tbaa !11
  %call7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i32 %3)
  %4 = load i32, i32* @radar_total_calc, align 4, !tbaa !11
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i32 %4)
  ret void

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 %indvars.iv
  %5 = load i8*, i8** %arrayidx, align 8, !tbaa !15
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* @hist_pct_errs, i64 0, i64 %indvars.iv
  %6 = load i32, i32* %arrayidx2, align 4, !tbaa !11
  %call3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* %5, i32 %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @closeout_vit_kernel() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str.98, i64 0, i64 0))
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  %conv = uitofp i32 %sum.1 to double
  %0 = load i32, i32* @radar_total_calc, align 4, !tbaa !11
  %conv8 = uitofp i32 %0 to double
  %div = fdiv fast double %conv, %conv8
  %call10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i64 0, i64 0), double %div)
  %1 = load i32, i32* @total_msgs, align 4, !tbaa !11
  %conv11 = uitofp i32 %1 to double
  %2 = load i32, i32* @radar_total_calc, align 4, !tbaa !11
  %conv13 = uitofp i32 %2 to double
  %div15 = fdiv fast double %conv11, %conv13
  %call16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.71, i64 0, i64 0), double %div15)
  ret void

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %sum.030 = phi i32 [ 0, %entry ], [ %sum.1, %for.inc ]
  %arrayidx = getelementptr inbounds [80 x i32], [80 x i32]* @hist_total_objs, i64 0, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !11
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32
  %call4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i32 %4, i32 %3)
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !11
  %6 = trunc i64 %indvars.iv to i32
  %mul = mul i32 %5, %6
  %add = add i32 %mul, %sum.030
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %sum.1 = phi i32 [ %add, %if.then ], [ %sum.030, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) local_unnamed_addr #2 {
entry:
  %vehicle_state = alloca i64, align 8
  %tmpcast = bitcast i64* %vehicle_state to %struct.vehicle_state_t*
  %stop = alloca %struct.timeval, align 8
  %start = alloca %struct.timeval, align 8
  %radar_input = alloca [32768 x float], align 16
  %0 = bitcast [32768 x float]* %radar_input to i8*
  %radar_distance = alloca float, align 4
  %xfer_ofdm = alloca %struct.ofdm_param, align 4
  %xfer_frame = alloca %struct.frame_param, align 4
  %xfer_vit_inputs = alloca [24780 x i8], align 16
  %vit_msg_txt = alloca [1600 x i8], align 16
  %vit_message = alloca i32, align 4
  %cv_infer_label = alloca i32, align 4
  %1 = bitcast i64* %vehicle_state to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb4, %entry
  %trace_file.0.ph = phi i8* [ %4, %sw.bb4 ], [ undef, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %call = tail call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0)) #14
  switch i32 %call, label %while.cond.backedge [
    i32 -1, label %for.cond.preheader
    i32 104, label %sw.bb
    i32 65, label %sw.bb1
    i32 111, label %sw.bb3
    i32 63, label %sw.bb11
    i32 58, label %sw.bb9
    i32 116, label %sw.bb4
    i32 118, label %sw.bb6
  ]

while.cond.backedge:                              ; preds = %sw.bb11, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb1, %while.cond
  br label %while.cond

for.cond.preheader:                               ; preds = %while.cond
  %2 = load i32, i32* @optind, align 4, !tbaa !11
  %cmp13198 = icmp slt i32 %2, %argc
  br i1 %cmp13198, label %for.body, label %for.end

sw.bb:                                            ; preds = %while.cond
  %3 = load i8*, i8** %argv, align 8, !tbaa !15
  tail call void @print_usage(i8* %3)
  tail call void @exit(i32 0) #15
  unreachable

sw.bb1:                                           ; preds = %while.cond
  store i32 1, i32* @all_obstacle_lanes_mode, align 4, !tbaa !36
  %puts189 = tail call i32 @puts(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @str.104, i64 0, i64 0))
  br label %while.cond.backedge

sw.bb3:                                           ; preds = %while.cond
  store i8 1, i8* @output_viz_trace, align 1, !tbaa !42
  br label %while.cond.backedge

sw.bb4:                                           ; preds = %while.cond
  %4 = load i8*, i8** @optarg, align 8, !tbaa !15
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i64 0, i64 0), i8* %4)
  br label %while.cond.outer

sw.bb6:                                           ; preds = %while.cond
  %5 = load i8*, i8** @optarg, align 8, !tbaa !15
  %call7 = tail call i32 @atoi(i8* %5) #16
  store i32 %call7, i32* @vit_msgs_behavior, align 4, !tbaa !11
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), i32 %call7)
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %puts188 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.103, i64 0, i64 0))
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  %6 = load i32, i32* @optopt, align 4, !tbaa !11
  %call12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i32 %6)
  br label %while.cond.backedge

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %7 = phi i32 [ %inc, %for.body ], [ %2, %for.cond.preheader ]
  %idxprom = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom
  %8 = load i8*, i8** %arrayidx14, align 8, !tbaa !15
  %call15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* %8)
  %9 = load i32, i32* @optind, align 4, !tbaa !11
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @optind, align 4, !tbaa !11
  %cmp13 = icmp slt i32 %inc, %argc
  br i1 %cmp13, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i64 0, i64 0), i8* %trace_file.0.ph)
  %call17 = tail call i32 @init_trace_reader(i8* %trace_file.0.ph) #14
  %tobool = icmp eq i32 %call17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.99, i64 0, i64 0))
  br label %cleanup

if.end:                                           ; preds = %for.end
  %10 = load i8*, i8** @rad_dict, align 8, !tbaa !15
  %call24 = tail call i32 @init_rad_kernel(i8* %10)
  %tobool25 = icmp eq i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %puts185 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.100, i64 0, i64 0))
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %11 = load i8*, i8** @vit_dict, align 8, !tbaa !15
  %call29 = tail call i32 @init_vit_kernel(i8* %11)
  %tobool30 = icmp eq i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %puts186 = tail call i32 @puts(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @str.101, i64 0, i64 0))
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %lane = bitcast i64* %vehicle_state to i32*
  store i32 2, i32* %lane, align 8, !tbaa !44
  %speed = getelementptr inbounds %struct.vehicle_state_t, %struct.vehicle_state_t* %tmpcast, i64 0, i32 1
  store float 5.000000e+01, float* %speed, align 4, !tbaa !46
  %12 = bitcast %struct.timeval* %stop to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #14
  %13 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #14
  %call34 = tail call noalias i8* @malloc(i64 160) #14
  call void @llvm.lifetime.start.p0i8(i64 131072, i8* nonnull %0) #14
  %14 = bitcast float* %radar_distance to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #14
  %arraydecay = getelementptr inbounds [32768 x float], [32768 x float]* %radar_input, i64 0, i64 0
  call void @llvm_hpvm_track_mem(i8* nonnull %0, i64 131072) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %14, i64 4) #14
  %15 = bitcast %struct.ofdm_param* %xfer_ofdm to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %15) #14
  %16 = bitcast %struct.frame_param* %xfer_frame to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %16) #14
  %17 = getelementptr inbounds [24780 x i8], [24780 x i8]* %xfer_vit_inputs, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24780, i8* nonnull %17) #14
  %18 = getelementptr inbounds [1600 x i8], [1600 x i8]* %vit_msg_txt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1600, i8* nonnull %18) #14
  %19 = bitcast i32* %vit_message to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %15, i64 20) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %16, i64 20) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %17, i64 24780) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %18, i64 1600) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %19, i64 4) #14
  %20 = bitcast i32* %cv_infer_label to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %20, i64 4) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %1, i64 8) #14
  %21 = load i64, i64* %vehicle_state, align 8
  %call37 = call i32 @read_next_trace_record(i64 %21) #14
  %call39195 = call i32 (...) @eof_trace_reader() #14
  %tobool40196 = icmp eq i32 %call39195, 0
  br i1 %tobool40196, label %while.body41.lr.ph, label %while.end108

while.body41.lr.ph:                               ; preds = %if.end33
  %radar_data = bitcast i8* %call34 to float**
  %bytes_radar_data = getelementptr inbounds i8, i8* %call34, i64 8
  %22 = bitcast i8* %bytes_radar_data to i64*
  %radar_N = getelementptr inbounds i8, i8* %call34, i64 16
  %23 = bitcast i8* %radar_N to i32*
  %radar_logn = getelementptr inbounds i8, i8* %call34, i64 20
  %24 = bitcast i8* %radar_logn to i32*
  %radar_sign = getelementptr inbounds i8, i8* %call34, i64 24
  %25 = bitcast i8* %radar_sign to i32*
  %radar_distance63 = getelementptr inbounds i8, i8* %call34, i64 28
  %26 = bitcast i8* %radar_distance63 to float**
  %bytes_radar_distance = getelementptr inbounds i8, i8* %call34, i64 36
  %27 = bitcast i8* %bytes_radar_distance to i64*
  %encoding64 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %xfer_ofdm, i64 0, i32 0
  %rate_field66 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %xfer_ofdm, i64 0, i32 1
  %n_bpsc68 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %xfer_ofdm, i64 0, i32 2
  %n_cbps70 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %xfer_ofdm, i64 0, i32 3
  %n_dbps72 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %xfer_ofdm, i64 0, i32 4
  %psdu_size73 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %xfer_frame, i64 0, i32 0
  %n_sym75 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %xfer_frame, i64 0, i32 1
  %n_encoded_bits77 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %xfer_frame, i64 0, i32 3
  %n_data_bits79 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %xfer_frame, i64 0, i32 4
  %ofdm_ptr = getelementptr inbounds i8, i8* %call34, i64 44
  %28 = bitcast i8* %ofdm_ptr to %struct.ofdm_param**
  %bytes_ofdm_parm = getelementptr inbounds i8, i8* %call34, i64 52
  %29 = bitcast i8* %bytes_ofdm_parm to i64*
  %frame_ptr = getelementptr inbounds i8, i8* %call34, i64 60
  %30 = bitcast i8* %frame_ptr to %struct.frame_param**
  %bytes_frame_parm = getelementptr inbounds i8, i8* %call34, i64 68
  %31 = bitcast i8* %bytes_frame_parm to i64*
  %vit_in_bits = getelementptr inbounds i8, i8* %call34, i64 76
  %32 = bitcast i8* %vit_in_bits to i8**
  %bytes_vit_in_bits = getelementptr inbounds i8, i8* %call34, i64 84
  %33 = bitcast i8* %bytes_vit_in_bits to i64*
  %vit_out_msg_txt = getelementptr inbounds i8, i8* %call34, i64 92
  %34 = bitcast i8* %vit_out_msg_txt to i8**
  %bytes_vit_out_msg_txt = getelementptr inbounds i8, i8* %call34, i64 100
  %35 = bitcast i8* %bytes_vit_out_msg_txt to i64*
  %vit_out_msg = getelementptr inbounds i8, i8* %call34, i64 108
  %36 = bitcast i8* %vit_out_msg to i32**
  %bytes_vit_out_msg = getelementptr inbounds i8, i8* %call34, i64 116
  %37 = bitcast i8* %bytes_vit_out_msg to i64*
  %num_msgs_to_decode = getelementptr inbounds i8, i8* %call34, i64 124
  %38 = bitcast i8* %num_msgs_to_decode to i32*
  %label = getelementptr inbounds i8, i8* %call34, i64 128
  %39 = bitcast i8* %label to i32**
  %bytes_label = getelementptr inbounds i8, i8* %call34, i64 136
  %40 = bitcast i8* %bytes_label to i64*
  %vehicle_state93 = getelementptr inbounds i8, i8* %call34, i64 144
  %41 = bitcast i8* %vehicle_state93 to i64**
  %bytes_vehicle_state = getelementptr inbounds i8, i8* %call34, i64 152
  %42 = bitcast i8* %bytes_vehicle_state to i64*
  br label %while.body41

while.body41:                                     ; preds = %if.end106, %while.body41.lr.ph
  %loop.0197 = phi i32 [ 0, %while.body41.lr.ph ], [ %inc102, %if.end106 ]
  %43 = load i64, i64* %vehicle_state, align 8
  %call42 = call i32 @iterate_cv_kernel(i64 %43)
  %44 = load i64, i64* %vehicle_state, align 8
  %call43 = call %struct.radar_dict_entry_t* @iterate_rad_kernel(i64 %44)
  %distance = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call43, i64 0, i32 1
  %45 = load float, float* %distance, align 4, !tbaa !21
  br label %for.body47

for.cond.cleanup:                                 ; preds = %for.body47
  %call55 = call %struct.vit_dict_entry_t* @iterate_vit_kernel(i64 %44)
  %46 = load i32, i32* @vit_msgs_behavior, align 4, !tbaa !11
  switch i32 %46, label %sw.epilog61 [
    i32 2, label %sw.bb56
    i32 3, label %sw.bb57
    i32 4, label %sw.bb58
    i32 5, label %sw.bb59
  ]

for.body47:                                       ; preds = %for.body47, %while.body41
  %indvars.iv = phi i64 [ 0, %while.body41 ], [ %indvars.iv.next, %for.body47 ]
  %arrayidx49 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call43, i64 0, i32 2, i64 %indvars.iv
  %47 = bitcast float* %arrayidx49 to i32*
  %48 = load i32, i32* %47, align 4, !tbaa !20
  %arrayidx51 = getelementptr inbounds [32768 x float], [32768 x float]* %radar_input, i64 0, i64 %indvars.iv
  %49 = bitcast float* %arrayidx51 to i32*
  store i32 %48, i32* %49, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond, label %for.cond.cleanup, label %for.body47

sw.bb56:                                          ; preds = %for.cond.cleanup
  %50 = load i32, i32* @total_obj, align 4, !tbaa !11
  br label %sw.epilog61

sw.bb57:                                          ; preds = %for.cond.cleanup
  %51 = load i32, i32* @total_obj, align 4, !tbaa !11
  br label %sw.epilog61

sw.bb58:                                          ; preds = %for.cond.cleanup
  %52 = load i32, i32* @total_obj, align 4, !tbaa !11
  %add = add i32 %52, 1
  br label %sw.epilog61

sw.bb59:                                          ; preds = %for.cond.cleanup
  %53 = load i32, i32* @total_obj, align 4, !tbaa !11
  %add60 = add i32 %53, 1
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %for.cond.cleanup
  %num_vit_msgs.0 = phi i32 [ 1, %for.cond.cleanup ], [ %add60, %sw.bb59 ], [ %add, %sw.bb58 ], [ %51, %sw.bb57 ], [ %50, %sw.bb56 ]
  store i32 %call42, i32* %cv_infer_label, align 4, !tbaa !36
  store float* %arraydecay, float** %radar_data, align 1, !tbaa !47
  store i64 131072, i64* %22, align 1, !tbaa !50
  store i32 16384, i32* %23, align 1, !tbaa !51
  store i32 14, i32* %24, align 1, !tbaa !52
  store i32 -1, i32* %25, align 1, !tbaa !53
  store float* %radar_distance, float** %26, align 1, !tbaa !54
  store i64 4, i64* %27, align 1, !tbaa !55
  %encoding = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 2, i32 0
  %54 = load i32, i32* %encoding, align 4, !tbaa !26
  store i32 %54, i32* %encoding64, align 4, !tbaa !39
  %rate_field = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 2, i32 1
  %55 = load i8, i8* %rate_field, align 4, !tbaa !30
  store i8 %55, i8* %rate_field66, align 4, !tbaa !56
  %n_bpsc = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 2, i32 2
  %56 = load i32, i32* %n_bpsc, align 4, !tbaa !27
  store i32 %56, i32* %n_bpsc68, align 4, !tbaa !57
  %n_cbps = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 2, i32 3
  %57 = load i32, i32* %n_cbps, align 4, !tbaa !28
  store i32 %57, i32* %n_cbps70, align 4, !tbaa !37
  %n_dbps = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 2, i32 4
  %58 = load i32, i32* %n_dbps, align 4, !tbaa !29
  store i32 %58, i32* %n_dbps72, align 4, !tbaa !58
  %psdu_size = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 3, i32 0
  %59 = load i32, i32* %psdu_size, align 4, !tbaa !31
  store i32 %59, i32* %psdu_size73, align 4, !tbaa !41
  %n_sym = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 3, i32 1
  %60 = load i32, i32* %n_sym, align 4, !tbaa !32
  store i32 %60, i32* %n_sym75, align 4, !tbaa !38
  %n_encoded_bits = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 3, i32 3
  %61 = load i32, i32* %n_encoded_bits, align 4, !tbaa !34
  store i32 %61, i32* %n_encoded_bits77, align 4, !tbaa !59
  %n_data_bits = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 3, i32 4
  %62 = load i32, i32* %n_data_bits, align 4, !tbaa !35
  store i32 %62, i32* %n_data_bits79, align 4, !tbaa !40
  br label %for.body83

for.cond.cleanup82:                               ; preds = %for.body83
  store %struct.ofdm_param* %xfer_ofdm, %struct.ofdm_param** %28, align 1, !tbaa !60
  store i64 20, i64* %29, align 1, !tbaa !61
  store %struct.frame_param* %xfer_frame, %struct.frame_param** %30, align 1, !tbaa !62
  store i64 20, i64* %31, align 1, !tbaa !63
  store i8* %17, i8** %32, align 1, !tbaa !64
  store i64 24780, i64* %33, align 1, !tbaa !65
  store i8* %18, i8** %34, align 1, !tbaa !66
  store i64 1600, i64* %35, align 1, !tbaa !67
  store i32* %vit_message, i32** %36, align 1, !tbaa !68
  store i64 4, i64* %37, align 1, !tbaa !69
  store i32 %num_vit_msgs.0, i32* %38, align 1, !tbaa !70
  store i32* %cv_infer_label, i32** %39, align 1, !tbaa !71
  store i64 4, i64* %40, align 1, !tbaa !72
  store i64* %vehicle_state, i64** %41, align 1, !tbaa !73
  store i64 8, i64* %42, align 1, !tbaa !74
  %graphminiERARoot_cloned = call i8* @llvm_hpvm_cpu_launch(i8* (i8*)* @LaunchDataflowGraph, i8* %call34)
  call void @llvm_hpvm_cpu_wait(i8* %graphminiERARoot_cloned)
  call void @llvm_hpvm_request_mem(i8* nonnull %14, i64 4) #14
  call void @llvm_hpvm_request_mem(i8* nonnull %19, i64 4) #14
  call void @llvm_hpvm_request_mem(i8* nonnull %1, i64 8) #14
  %63 = load i32, i32* %cv_infer_label, align 4, !tbaa !36
  call void @post_execute_cv_kernel(i32 %call42, i32 %63)
  %64 = load float, float* %radar_distance, align 4, !tbaa !20
  call void @post_execute_rad_kernel(float %45, float %64)
  %cmp96193 = icmp sgt i32 %num_vit_msgs.0, 0
  br i1 %cmp96193, label %for.body98.lr.ph, label %for.cond.cleanup97

for.body98.lr.ph:                                 ; preds = %for.cond.cleanup82
  %msg_id = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 1
  br label %for.body98

for.body83:                                       ; preds = %for.body83, %sw.epilog61
  %indvars.iv200 = phi i64 [ 0, %sw.epilog61 ], [ %indvars.iv.next201, %for.body83 ]
  %arrayidx85 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call55, i64 0, i32 4, i64 %indvars.iv200
  %65 = load i8, i8* %arrayidx85, align 1, !tbaa !36
  %arrayidx87 = getelementptr inbounds [24780 x i8], [24780 x i8]* %xfer_vit_inputs, i64 0, i64 %indvars.iv200
  store i8 %65, i8* %arrayidx87, align 1, !tbaa !36
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  %exitcond202 = icmp eq i64 %indvars.iv.next201, 24780
  br i1 %exitcond202, label %for.cond.cleanup82, label %for.body83

for.cond.cleanup97:                               ; preds = %for.body98, %for.cond.cleanup82
  %inc102 = add nuw nsw i32 %loop.0197, 1
  %cmp103 = icmp eq i32 %loop.0197, 0
  br i1 %cmp103, label %if.then104, label %if.end106

for.body98:                                       ; preds = %for.body98, %for.body98.lr.ph
  %mi.0194 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc100, %for.body98 ]
  %66 = load i32, i32* %msg_id, align 4, !tbaa !22
  %67 = load i32, i32* %vit_message, align 4, !tbaa !36
  call void @post_execute_vit_kernel(i32 %66, i32 %67)
  %inc100 = add nuw nsw i32 %mi.0194, 1
  %exitcond204 = icmp eq i32 %inc100, %num_vit_msgs.0
  br i1 %exitcond204, label %for.cond.cleanup97, label %for.body98

if.then104:                                       ; preds = %for.cond.cleanup97
  %call105 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #14
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %for.cond.cleanup97
  %68 = load i64, i64* %vehicle_state, align 8
  %call107 = call i32 @read_next_trace_record(i64 %68) #14
  %call39 = call i32 (...) @eof_trace_reader() #14
  %tobool40 = icmp eq i32 %call39, 0
  br i1 %tobool40, label %while.body41, label %while.end108

while.end108:                                     ; preds = %if.end106, %if.end33
  %call109 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #14
  call void @closeout_cv_kernel()
  call void @closeout_rad_kernel()
  call void @closeout_vit_kernel()
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0
  %69 = load i64, i64* %tv_sec, align 8, !tbaa !75
  %tv_sec110 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %70 = load i64, i64* %tv_sec110, align 8, !tbaa !75
  %sub = sub nsw i64 %69, %70
  %conv = sitofp i64 %sub to double
  %mul = fmul fast double %conv, 1.000000e+03
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1
  %71 = load i64, i64* %tv_usec, align 8, !tbaa !77
  %tv_usec111 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %72 = load i64, i64* %tv_usec111, align 8, !tbaa !77
  %sub112 = sub nsw i64 %71, %72
  %conv113 = sitofp i64 %sub112 to double
  %div = fmul fast double %conv113, 1.000000e-03
  %add114 = fadd fast double %div, %mul
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.84, i64 0, i64 0), double %add114)
  call void @llvm_hpvm_untrack_mem(i8* nonnull %0) #14
  call void @llvm_hpvm_untrack_mem(i8* nonnull %14) #14
  call void @llvm_hpvm_untrack_mem(i8* nonnull %15) #14
  call void @llvm_hpvm_untrack_mem(i8* nonnull %16) #14
  call void @llvm_hpvm_untrack_mem(i8* nonnull %17) #14
  call void @llvm_hpvm_untrack_mem(i8* nonnull %18) #14
  call void @llvm_hpvm_untrack_mem(i8* nonnull %19) #14
  call void @llvm_hpvm_track_mem(i8* nonnull %20, i64 4) #14
  call void @llvm_hpvm_untrack_mem(i8* nonnull %1) #14
  %puts187 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.102, i64 0, i64 0))
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #14
  call void @llvm.lifetime.end.p0i8(i64 1600, i8* nonnull %18) #14
  call void @llvm.lifetime.end.p0i8(i64 24780, i8* nonnull %17) #14
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %16) #14
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %15) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #14
  call void @llvm.lifetime.end.p0i8(i64 131072, i8* nonnull %0) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end108, %if.then31, %if.then26, %if.then
  %retval.0 = phi i32 [ 0, %while.end108 ], [ 1, %if.then31 ], [ 1, %if.then26 ], [ 1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  ret i32 %retval.0
}

declare dso_local i32 @getopt(i32, i8**, i8*) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) local_unnamed_addr #11 {
entry:
  %call = tail call i64 @strtol(i8* nocapture nonnull %__nptr, i8** null, i32 10) #14
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare dso_local i32 @init_trace_reader(i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #1

declare dso_local void @llvm_hpvm_track_mem(i8*, i64) local_unnamed_addr #4

declare dso_local i32 @read_next_trace_record(i64) local_unnamed_addr #4

declare dso_local i32 @eof_trace_reader(...) local_unnamed_addr #4

declare dso_local void @llvm_hpvm_request_mem(i8*, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #1

declare dso_local void @llvm_hpvm_untrack_mem(i8*) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @parse_output_dimg() unnamed_addr #12 {
entry:
  %probs = alloca [5 x float], align 16
  %call = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  %0 = bitcast [5 x float]* %probs to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #14
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [5 x float], [5 x float]* %probs, i64 0, i64 %i.03
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), float* nonnull %arrayidx) #14
  %inc = add nuw nsw i64 %i.03, 1
  %exitcond = icmp eq i64 %inc, 5
  br i1 %exitcond, label %for.cond.cleanup5, label %for.body

for.cond.cleanup5:                                ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #14
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @_rev(i32 %v) unnamed_addr #6 {
entry:
  %v.addr.013 = lshr i32 %v, 1
  %tobool14 = icmp eq i32 %v.addr.013, 0
  br i1 %tobool14, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %v.addr.017 = phi i32 [ %v.addr.0, %for.body ], [ %v.addr.013, %entry ]
  %s.016 = phi i32 [ %dec, %for.body ], [ 31, %entry ]
  %r.015 = phi i32 [ %or, %for.body ], [ %v, %entry ]
  %shl = shl i32 %r.015, 1
  %and = and i32 %v.addr.017, 1
  %or = or i32 %shl, %and
  %dec = add nsw i32 %s.016, -1
  %v.addr.0 = lshr i32 %v.addr.017, 1
  %tobool = icmp eq i32 %v.addr.0, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i32 [ %v, %entry ], [ %or, %for.body ]
  %s.0.lcssa = phi i32 [ 31, %entry ], [ %dec, %for.body ]
  %shl2 = shl i32 %r.0.lcssa, %s.0.lcssa
  ret i32 %shl2
}

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #13

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i8* @llvm.hpvm.createNode(i8*) #14

; Function Attrs: nounwind
declare void @llvm.hpvm.bind.input(i8*, i32, i32, i1) #14

; Function Attrs: nounwind
declare void @llvm.hpvm.bind.output(i8*, i32, i32, i1) #14

; Function Attrs: nounwind
declare i8* @llvm.hpvm.createEdge(i8*, i8*, i1, i32, i32, i1) #14

; Function Attrs: nounwind
declare i8* @llvm.hpvm.launch(i8*, i8*, i1) #14

; Function Attrs: nounwind
declare void @llvm.hpvm.wait(i8*) #14

declare i8* @llvm_hpvm_cpu_launch(i8* (i8*)*, i8*)

declare void @llvm_hpvm_cpu_wait(i8*)

declare i8* @llvm_hpvm_cpu_argument_ptr(i8*, i64)

declare i8* @llvm_hpvm_streamLaunch(void (i8*, i8*)*, i8*)

declare void @llvm_hpvm_streamPush(i8*, i8*)

declare i8* @llvm_hpvm_streamPop(i8*)

declare void @llvm_hpvm_streamWait(i8*)

declare i8* @llvm_hpvm_createBindInBuffer(i8*, i64, i32)

declare i8* @llvm_hpvm_createBindOutBuffer(i8*, i64)

declare i8* @llvm_hpvm_createEdgeBuffer(i8*, i64)

declare i8* @llvm_hpvm_createLastInputBuffer(i8*, i64)

declare void @llvm_hpvm_createThread(i8*, i8* (i8*)*, i8*)

declare void @llvm_hpvm_bufferPush(i8*, i64)

declare i64 @llvm_hpvm_bufferPop(i8*)

declare void @llvm_hpvm_cpu_dstack_push(i32, i64, i64, i64, i64, i64, i64)

declare void @llvm_hpvm_cpu_dstack_pop()

declare i64 @llvm_hpvm_cpu_getDimLimit(i32, i32)

declare i64 @llvm_hpvm_cpu_getDimInstance(i32, i32)

declare i8* @llvm_hpvm_initializeTimerSet()

declare void @llvm_hpvm_switchToTimer(i8**, i32)

declare void @llvm_hpvm_printTimerSet(i8**, i8*)

; Function Attrs: nounwind uwtable
define dso_local %struct.out.execute_rad_kernel @execute_rad_kernel_cloned.1_cloned_cloned_cloned_cloned_cloned_cloned(float* %inputs, i64 %input_size_bytes, i32 %input_N, i32 %in_logn, i32 %in_sign, float* %distance, i64 %dist_size, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) #2 {
getHPVMPtrArgs:
  %inputs.i8ptr = bitcast float* %inputs to i8*
  %0 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %inputs.i8ptr, i64 %input_size_bytes)
  %distance.i8ptr = bitcast float* %distance to i8*
  %1 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %distance.i8ptr, i64 %dist_size)
  br label %entry

entry:                                            ; preds = %getHPVMPtrArgs
  call void @fft_hook(float* %inputs, i32 %input_N, i32 %in_logn, i32 %in_sign)
  tail call void @get_dist_from_fft(float* %distance, i64 undef, i32 %input_N, float* %inputs, i64 %input_size_bytes)
  %returnStruct = insertvalue %struct.out.execute_rad_kernel undef, i64 %dist_size, 0
  ret %struct.out.execute_rad_kernel %returnStruct
}

define %struct.out.execute_rad_wrapper @execute_rad_wrapper_cloned.2_cloned_cloned_cloned_cloned_cloned_cloned(float* %inputs, i64 %input_size_bytes, i32 %input_N, i32 %in_logn, i32 %in_sign, float* %distance, i64 %dist_size, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) {
entry:
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %execute_rad_kernel_cloned.1_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.execute_rad_kernel @execute_rad_kernel_cloned.1_cloned_cloned_cloned_cloned_cloned_cloned(float* %inputs, i64 %input_size_bytes, i32 %input_N, i32 %in_logn, i32 %in_sign, float* %distance, i64 %dist_size, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  %0 = extractvalue %struct.out.execute_rad_kernel %execute_rad_kernel_cloned.1_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  %output = insertvalue %struct.out.execute_rad_wrapper undef, i64 %0, 0
  ret %struct.out.execute_rad_wrapper %output
}

; Function Attrs: nounwind uwtable
define dso_local %struct.out.execute_vit_kernel @execute_vit_kernel_cloned.3_cloned_cloned_cloned_cloned_cloned_cloned(%struct.ofdm_param* %ofdm_ptr, i64 %ofdm_parm_size, %struct.frame_param* %frame_ptr, i64 %frame_parm_size, i8* %input_bits, i64 %input_bits_size, i8* %out_msg_txt, i64 %out_msg_txt_size, i32* %out_message, i64 %out_message_size, i32 %num_msgs_to_decode, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) #2 {
getHPVMPtrArgs:
  %ofdm_ptr.i8ptr = bitcast %struct.ofdm_param* %ofdm_ptr to i8*
  %0 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %ofdm_ptr.i8ptr, i64 %ofdm_parm_size)
  %frame_ptr.i8ptr = bitcast %struct.frame_param* %frame_ptr to i8*
  %1 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %frame_ptr.i8ptr, i64 %frame_parm_size)
  %input_bits.i8ptr = bitcast i8* %input_bits to i8*
  %2 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %input_bits.i8ptr, i64 %input_bits_size)
  %out_msg_txt.i8ptr = bitcast i8* %out_msg_txt to i8*
  %3 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %out_msg_txt.i8ptr, i64 %out_msg_txt_size)
  %out_message.i8ptr = bitcast i32* %out_message to i8*
  %4 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %out_message.i8ptr, i64 %out_message_size)
  br label %entry

entry:                                            ; preds = %getHPVMPtrArgs
  %l_decoded = alloca [18585 x i8], align 16
  %5 = getelementptr inbounds [18585 x i8], [18585 x i8]* %l_decoded, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 18585, i8* nonnull %5) #14
  %cmp10 = icmp sgt i32 %num_msgs_to_decode, 0
  br i1 %cmp10, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %returnStruct = insertvalue %struct.out.execute_vit_kernel undef, i64 %out_message_size, 0
  %returnStruct1 = insertvalue %struct.out.execute_vit_kernel %returnStruct, i64 %out_msg_txt_size, 1
  call void @llvm.lifetime.end.p0i8(i64 18585, i8* nonnull %5) #14
  ret %struct.out.execute_vit_kernel %returnStruct1

for.body:                                         ; preds = %for.body, %entry
  %mi.011 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call void @viterbi_decode_to_message_t(%struct.ofdm_param* %ofdm_ptr, i64 undef, %struct.frame_param* %frame_ptr, i64 undef, i8* %input_bits, i64 undef, i8* nonnull %5, i64 undef, i8* %out_msg_txt, i64 undef, i32* %out_message, i64 undef)
  %inc = add nuw nsw i32 %mi.011, 1
  %exitcond = icmp eq i32 %inc, %num_msgs_to_decode
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

define %struct.out.execute_vit_wrapper @execute_vit_wrapper_cloned.4_cloned_cloned_cloned_cloned_cloned_cloned(%struct.ofdm_param* %ofdm_ptr, i64 %ofdm_parm_size, %struct.frame_param* %frame_ptr, i64 %frame_parm_size, i8* %input_bits, i64 %input_bits_size, i8* %out_msg_txt, i64 %out_msg_txt_size, i32* %out_message, i64 %out_message_size, i32 %num_msgs_to_decode, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) {
entry:
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %execute_vit_kernel_cloned.3_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.execute_vit_kernel @execute_vit_kernel_cloned.3_cloned_cloned_cloned_cloned_cloned_cloned(%struct.ofdm_param* %ofdm_ptr, i64 %ofdm_parm_size, %struct.frame_param* %frame_ptr, i64 %frame_parm_size, i8* %input_bits, i64 %input_bits_size, i8* %out_msg_txt, i64 %out_msg_txt_size, i32* %out_message, i64 %out_message_size, i32 %num_msgs_to_decode, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  %0 = extractvalue %struct.out.execute_vit_kernel %execute_vit_kernel_cloned.3_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  %output = insertvalue %struct.out.execute_vit_wrapper undef, i64 %0, 0
  ret %struct.out.execute_vit_wrapper %output
}

; Function Attrs: nounwind uwtable
define dso_local %struct.out.execute_cv_kernel @execute_cv_kernel_cloned.5_cloned_cloned_cloned_cloned_cloned_cloned(i32* %in_tr_val, i64 %in_tr_val_size, i32* %out_label, i64 %out_label_size, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) #2 {
getHPVMPtrArgs:
  %in_tr_val.i8ptr = bitcast i32* %in_tr_val to i8*
  %0 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %in_tr_val.i8ptr, i64 %in_tr_val_size)
  %out_label.i8ptr = bitcast i32* %out_label to i8*
  %1 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %out_label.i8ptr, i64 %out_label_size)
  br label %entry

entry:                                            ; preds = %getHPVMPtrArgs
  %call = tail call i32 @system(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.52, i64 0, i64 0)) #14
  %putchar = tail call i32 @putchar(i32 10)
  tail call fastcc void @parse_output_dimg()
  %2 = load i32, i32* %in_tr_val, align 4, !tbaa !36
  store i32 %2, i32* %out_label, align 4, !tbaa !36
  %returnStruct = insertvalue %struct.out.execute_cv_kernel undef, i64 %out_label_size, 0
  ret %struct.out.execute_cv_kernel %returnStruct
}

define %struct.out.execute_cv_wrapper @execute_cv_wrapper_cloned.6_cloned_cloned_cloned_cloned_cloned_cloned(i32* %in_tr_val, i64 %in_tr_val_size, i32* %out_label, i64 %out_label_size, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) {
entry:
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %execute_cv_kernel_cloned.5_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.execute_cv_kernel @execute_cv_kernel_cloned.5_cloned_cloned_cloned_cloned_cloned_cloned(i32* %in_tr_val, i64 %in_tr_val_size, i32* %out_label, i64 %out_label_size, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  %0 = extractvalue %struct.out.execute_cv_kernel %execute_cv_kernel_cloned.5_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  %output = insertvalue %struct.out.execute_cv_wrapper undef, i64 %0, 0
  ret %struct.out.execute_cv_wrapper %output
}

; Function Attrs: nounwind uwtable
define dso_local %struct.out.plan_and_control @plan_and_control_cloned.7_cloned_cloned_cloned_cloned_cloned_cloned(i32* %label, i64 %size_label, float* %distance, i64 %size_distance, i32* %message, i64 %size_message, %struct.vehicle_state_t* %vehicle_state, i64 %size_vehicle_state, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) #2 {
getHPVMPtrArgs:
  %label.i8ptr = bitcast i32* %label to i8*
  %0 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %label.i8ptr, i64 %size_label)
  %distance.i8ptr = bitcast float* %distance to i8*
  %1 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %distance.i8ptr, i64 %size_distance)
  %message.i8ptr = bitcast i32* %message to i8*
  %2 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %message.i8ptr, i64 %size_message)
  %vehicle_state.i8ptr = bitcast %struct.vehicle_state_t* %vehicle_state to i8*
  %3 = call i8* @llvm_hpvm_cpu_argument_ptr(i8* %vehicle_state.i8ptr, i64 %size_vehicle_state)
  br label %entry

entry:                                            ; preds = %getHPVMPtrArgs
  %new_vehicle_state.sroa.0.0..sroa_idx62 = getelementptr inbounds %struct.vehicle_state_t, %struct.vehicle_state_t* %vehicle_state, i64 0, i32 0
  %new_vehicle_state.sroa.0.0.copyload63 = load i32, i32* %new_vehicle_state.sroa.0.0..sroa_idx62, align 4
  %new_vehicle_state.sroa.15.0..sroa_idx66 = getelementptr inbounds %struct.vehicle_state_t, %struct.vehicle_state_t* %vehicle_state, i64 0, i32 1
  %new_vehicle_state.sroa.15.0.copyload67 = load float, float* %new_vehicle_state.sroa.15.0..sroa_idx66, align 4
  %4 = load i32, i32* %label, align 4, !tbaa !36
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.else16, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load float, float* %distance, align 4, !tbaa !20
  %cmp1 = fcmp fast ugt float %5, 1.550000e+02
  br i1 %cmp1, label %if.else16, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %message, align 4, !tbaa !36
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb11
    i32 3, label %if.end56
  ]

sw.bb:                                            ; preds = %if.then
  %cmp3 = icmp ult i32 %new_vehicle_state.sroa.0.0.copyload63, 3
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.bb
  %add = add nuw nsw i32 %new_vehicle_state.sroa.0.0.copyload63, 1
  br label %if.end56

if.else:                                          ; preds = %sw.bb
  %sub = add i32 %new_vehicle_state.sroa.0.0.copyload63, -1
  br label %if.end56

sw.bb8:                                           ; preds = %if.then
  %add10 = add i32 %new_vehicle_state.sroa.0.0.copyload63, 1
  br label %if.end56

sw.bb11:                                          ; preds = %if.then
  %sub13 = add i32 %new_vehicle_state.sroa.0.0.copyload63, -1
  br label %if.end56

sw.default:                                       ; preds = %if.then
  %idxprom = zext i32 %new_vehicle_state.sroa.0.0.copyload63 to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @lane_names, i64 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !15
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i64 0, i64 0), i8* %7, i32 %6)
  br label %if.end56

if.else16:                                        ; preds = %land.lhs.true, %entry
  switch i32 %new_vehicle_state.sroa.0.0.copyload63, label %sw.epilog37 [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb18
    i32 4, label %sw.bb27
    i32 3, label %sw.bb27
  ]

sw.bb18:                                          ; preds = %if.else16, %if.else16
  %8 = load i32, i32* %message, align 4, !tbaa !36
  %switch = icmp ult i32 %8, 2
  %add25 = zext i1 %switch to i32
  %spec.select = add nuw nsw i32 %new_vehicle_state.sroa.0.0.copyload63, %add25
  br label %sw.epilog37

sw.bb27:                                          ; preds = %if.else16, %if.else16
  %9 = load i32, i32* %message, align 4, !tbaa !36
  switch i32 %9, label %sw.epilog37 [
    i32 0, label %if.then33
    i32 2, label %if.then33
  ]

if.then33:                                        ; preds = %sw.bb27, %sw.bb27
  %sub35 = add nsw i32 %new_vehicle_state.sroa.0.0.copyload63, -1
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %if.then33, %sw.bb27, %sw.bb18, %if.else16
  %new_vehicle_state.sroa.0.0 = phi i32 [ %new_vehicle_state.sroa.0.0.copyload63, %if.else16 ], [ %sub35, %if.then33 ], [ %new_vehicle_state.sroa.0.0.copyload63, %sw.bb27 ], [ %spec.select, %sw.bb18 ]
  %cmp40 = fcmp fast olt float %new_vehicle_state.sroa.15.0.copyload67, 5.000000e+01
  br i1 %cmp40, label %if.then42, label %if.end56

if.then42:                                        ; preds = %sw.epilog37
  %cmp45 = fcmp fast ugt float %new_vehicle_state.sroa.15.0.copyload67, 3.500000e+01
  br i1 %cmp45, label %if.end56, label %if.then47

if.then47:                                        ; preds = %if.then42
  %conv51 = fadd fast float %new_vehicle_state.sroa.15.0.copyload67, 1.500000e+01
  br label %if.end56

if.end56:                                         ; preds = %if.then47, %if.then42, %sw.epilog37, %sw.default, %sw.bb11, %sw.bb8, %if.else, %if.then5, %if.then
  %new_vehicle_state.sroa.15.0 = phi float [ %new_vehicle_state.sroa.15.0.copyload67, %sw.default ], [ %new_vehicle_state.sroa.15.0.copyload67, %sw.bb11 ], [ %new_vehicle_state.sroa.15.0.copyload67, %sw.bb8 ], [ %new_vehicle_state.sroa.15.0.copyload67, %if.then5 ], [ %new_vehicle_state.sroa.15.0.copyload67, %if.else ], [ %conv51, %if.then47 ], [ %new_vehicle_state.sroa.15.0.copyload67, %sw.epilog37 ], [ 0.000000e+00, %if.then ], [ 5.000000e+01, %if.then42 ]
  %new_vehicle_state.sroa.0.1 = phi i32 [ %new_vehicle_state.sroa.0.0.copyload63, %sw.default ], [ %sub13, %sw.bb11 ], [ %add10, %sw.bb8 ], [ %add, %if.then5 ], [ %sub, %if.else ], [ %new_vehicle_state.sroa.0.0, %if.then47 ], [ %new_vehicle_state.sroa.0.0, %sw.epilog37 ], [ %new_vehicle_state.sroa.0.0.copyload63, %if.then ], [ %new_vehicle_state.sroa.0.0, %if.then42 ]
  store i32 %new_vehicle_state.sroa.0.1, i32* %new_vehicle_state.sroa.0.0..sroa_idx62, align 4
  store float %new_vehicle_state.sroa.15.0, float* %new_vehicle_state.sroa.15.0..sroa_idx66, align 4
  %returnStruct = insertvalue %struct.out.plan_and_control undef, i64 %size_vehicle_state, 0
  ret %struct.out.plan_and_control %returnStruct
}

define %struct.out.plan_and_control_wrapper @plan_and_control_wrapper_cloned.8_cloned_cloned_cloned_cloned_cloned_cloned(i32* %label, i64 %size_label, float* %distance, i64 %size_distance, i32* %message, i64 %size_message, %struct.vehicle_state_t* %vehicle_state, i64 %size_vehicle_state, i64 %idx_x, i64 %idx_y, i64 %idx_z, i64 %dim_x, i64 %dim_y, i64 %dim_z) {
entry:
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %plan_and_control_cloned.7_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.plan_and_control @plan_and_control_cloned.7_cloned_cloned_cloned_cloned_cloned_cloned(i32* %label, i64 %size_label, float* %distance, i64 %size_distance, i32* %message, i64 %size_message, %struct.vehicle_state_t* %vehicle_state, i64 %size_vehicle_state, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  %0 = extractvalue %struct.out.plan_and_control %plan_and_control_cloned.7_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  %output = insertvalue %struct.out.plan_and_control_wrapper undef, i64 %0, 0
  ret %struct.out.plan_and_control_wrapper %output
}

define %struct.out.miniERARoot @miniERARoot_cloned.9(float* %radar_data, i64 %bytes_radar_data, i32 %radar_N, i32 %radar_logn, i32 %radar_sign, float* %radar_distance, i64 %bytes_radar_distance, %struct.ofdm_param* %ofdm_ptr, i64 %bytes_ofdm_parm, %struct.frame_param* %frame_ptr, i64 %bytes_frame_parm, i8* %vit_in_bits, i64 %bytes_vit_in_bits, i8* %vit_out_msg_txt, i64 %bytes_vit_out_msg_txt, i32* %vit_out_msg, i64 %bytes_vit_out_msg, i32 %num_msgs_to_decode, i32* %label, i64 %bytes_label, %struct.vehicle_state_t* %vehicle_state, i64 %bytes_vehicle_state) {
entry:
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %execute_rad_wrapper_cloned.2_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.execute_rad_wrapper @execute_rad_wrapper_cloned.2_cloned_cloned_cloned_cloned_cloned_cloned(float* %radar_data, i64 %bytes_radar_data, i32 %radar_N, i32 %radar_logn, i32 %radar_sign, float* %radar_distance, i64 %bytes_radar_distance, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %execute_vit_wrapper_cloned.4_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.execute_vit_wrapper @execute_vit_wrapper_cloned.4_cloned_cloned_cloned_cloned_cloned_cloned(%struct.ofdm_param* %ofdm_ptr, i64 %bytes_ofdm_parm, %struct.frame_param* %frame_ptr, i64 %bytes_frame_parm, i8* %vit_in_bits, i64 %bytes_vit_in_bits, i8* %vit_out_msg_txt, i64 %bytes_vit_out_msg_txt, i32* %vit_out_msg, i64 %bytes_vit_out_msg, i32 %num_msgs_to_decode, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %execute_cv_wrapper_cloned.6_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.execute_cv_wrapper @execute_cv_wrapper_cloned.6_cloned_cloned_cloned_cloned_cloned_cloned(i32* %label, i64 %bytes_label, i32* %label, i64 %bytes_label, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  %0 = extractvalue %struct.out.execute_cv_wrapper %execute_cv_wrapper_cloned.6_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  %1 = extractvalue %struct.out.execute_rad_wrapper %execute_rad_wrapper_cloned.2_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  %2 = extractvalue %struct.out.execute_vit_wrapper %execute_vit_wrapper_cloned.4_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  call void @llvm_hpvm_cpu_dstack_push(i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %plan_and_control_wrapper_cloned.8_cloned_cloned_cloned_cloned_cloned_cloned_output = call %struct.out.plan_and_control_wrapper @plan_and_control_wrapper_cloned.8_cloned_cloned_cloned_cloned_cloned_cloned(i32* %label, i64 %0, float* %radar_distance, i64 %1, i32* %vit_out_msg, i64 %2, %struct.vehicle_state_t* %vehicle_state, i64 %bytes_vehicle_state, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  call void @llvm_hpvm_cpu_dstack_pop()
  %3 = extractvalue %struct.out.plan_and_control_wrapper %plan_and_control_wrapper_cloned.8_cloned_cloned_cloned_cloned_cloned_cloned_output, 0
  %output = insertvalue %struct.out.miniERARoot undef, i64 %3, 0
  ret %struct.out.miniERARoot %output
}

define i8* @LaunchDataflowGraph(i8* %data.addr) {
entry:
  %radar_data.addr = bitcast i8* %data.addr to float**
  %radar_data = load float*, float** %radar_data.addr
  %nextArg = getelementptr float*, float** %radar_data.addr, i64 1
  %bytes_radar_data.addr = bitcast float** %nextArg to i64*
  %bytes_radar_data = load i64, i64* %bytes_radar_data.addr
  %nextArg1 = getelementptr i64, i64* %bytes_radar_data.addr, i64 1
  %radar_N.addr = bitcast i64* %nextArg1 to i32*
  %radar_N = load i32, i32* %radar_N.addr
  %nextArg2 = getelementptr i32, i32* %radar_N.addr, i64 1
  %radar_logn.addr = bitcast i32* %nextArg2 to i32*
  %radar_logn = load i32, i32* %radar_logn.addr
  %nextArg3 = getelementptr i32, i32* %radar_logn.addr, i64 1
  %radar_sign.addr = bitcast i32* %nextArg3 to i32*
  %radar_sign = load i32, i32* %radar_sign.addr
  %nextArg4 = getelementptr i32, i32* %radar_sign.addr, i64 1
  %radar_distance.addr = bitcast i32* %nextArg4 to float**
  %radar_distance = load float*, float** %radar_distance.addr
  %nextArg5 = getelementptr float*, float** %radar_distance.addr, i64 1
  %bytes_radar_distance.addr = bitcast float** %nextArg5 to i64*
  %bytes_radar_distance = load i64, i64* %bytes_radar_distance.addr
  %nextArg6 = getelementptr i64, i64* %bytes_radar_distance.addr, i64 1
  %ofdm_ptr.addr = bitcast i64* %nextArg6 to %struct.ofdm_param**
  %ofdm_ptr = load %struct.ofdm_param*, %struct.ofdm_param** %ofdm_ptr.addr
  %nextArg7 = getelementptr %struct.ofdm_param*, %struct.ofdm_param** %ofdm_ptr.addr, i64 1
  %bytes_ofdm_parm.addr = bitcast %struct.ofdm_param** %nextArg7 to i64*
  %bytes_ofdm_parm = load i64, i64* %bytes_ofdm_parm.addr
  %nextArg8 = getelementptr i64, i64* %bytes_ofdm_parm.addr, i64 1
  %frame_ptr.addr = bitcast i64* %nextArg8 to %struct.frame_param**
  %frame_ptr = load %struct.frame_param*, %struct.frame_param** %frame_ptr.addr
  %nextArg9 = getelementptr %struct.frame_param*, %struct.frame_param** %frame_ptr.addr, i64 1
  %bytes_frame_parm.addr = bitcast %struct.frame_param** %nextArg9 to i64*
  %bytes_frame_parm = load i64, i64* %bytes_frame_parm.addr
  %nextArg10 = getelementptr i64, i64* %bytes_frame_parm.addr, i64 1
  %vit_in_bits.addr = bitcast i64* %nextArg10 to i8**
  %vit_in_bits = load i8*, i8** %vit_in_bits.addr
  %nextArg11 = getelementptr i8*, i8** %vit_in_bits.addr, i64 1
  %bytes_vit_in_bits.addr = bitcast i8** %nextArg11 to i64*
  %bytes_vit_in_bits = load i64, i64* %bytes_vit_in_bits.addr
  %nextArg12 = getelementptr i64, i64* %bytes_vit_in_bits.addr, i64 1
  %vit_out_msg_txt.addr = bitcast i64* %nextArg12 to i8**
  %vit_out_msg_txt = load i8*, i8** %vit_out_msg_txt.addr
  %nextArg13 = getelementptr i8*, i8** %vit_out_msg_txt.addr, i64 1
  %bytes_vit_out_msg_txt.addr = bitcast i8** %nextArg13 to i64*
  %bytes_vit_out_msg_txt = load i64, i64* %bytes_vit_out_msg_txt.addr
  %nextArg14 = getelementptr i64, i64* %bytes_vit_out_msg_txt.addr, i64 1
  %vit_out_msg.addr = bitcast i64* %nextArg14 to i32**
  %vit_out_msg = load i32*, i32** %vit_out_msg.addr
  %nextArg15 = getelementptr i32*, i32** %vit_out_msg.addr, i64 1
  %bytes_vit_out_msg.addr = bitcast i32** %nextArg15 to i64*
  %bytes_vit_out_msg = load i64, i64* %bytes_vit_out_msg.addr
  %nextArg16 = getelementptr i64, i64* %bytes_vit_out_msg.addr, i64 1
  %num_msgs_to_decode.addr = bitcast i64* %nextArg16 to i32*
  %num_msgs_to_decode = load i32, i32* %num_msgs_to_decode.addr
  %nextArg17 = getelementptr i32, i32* %num_msgs_to_decode.addr, i64 1
  %label.addr = bitcast i32* %nextArg17 to i32**
  %label = load i32*, i32** %label.addr
  %nextArg18 = getelementptr i32*, i32** %label.addr, i64 1
  %bytes_label.addr = bitcast i32** %nextArg18 to i64*
  %bytes_label = load i64, i64* %bytes_label.addr
  %nextArg19 = getelementptr i64, i64* %bytes_label.addr, i64 1
  %vehicle_state.addr = bitcast i64* %nextArg19 to %struct.vehicle_state_t**
  %vehicle_state = load %struct.vehicle_state_t*, %struct.vehicle_state_t** %vehicle_state.addr
  %nextArg20 = getelementptr %struct.vehicle_state_t*, %struct.vehicle_state_t** %vehicle_state.addr, i64 1
  %bytes_vehicle_state.addr = bitcast %struct.vehicle_state_t** %nextArg20 to i64*
  %bytes_vehicle_state = load i64, i64* %bytes_vehicle_state.addr
  %miniERARoot_cloned.9.output = call %struct.out.miniERARoot @miniERARoot_cloned.9(float* %radar_data, i64 %bytes_radar_data, i32 %radar_N, i32 %radar_logn, i32 %radar_sign, float* %radar_distance, i64 %bytes_radar_distance, %struct.ofdm_param* %ofdm_ptr, i64 %bytes_ofdm_parm, %struct.frame_param* %frame_ptr, i64 %bytes_frame_parm, i8* %vit_in_bits, i64 %bytes_vit_in_bits, i8* %vit_out_msg_txt, i64 %bytes_vit_out_msg_txt, i32* %vit_out_msg, i64 %bytes_vit_out_msg, i32 %num_msgs_to_decode, i32* %label, i64 %bytes_label, %struct.vehicle_state_t* %vehicle_state, i64 %bytes_vehicle_state)
  %argStructCast.addr = bitcast i8* %data.addr to %miniERARoot_cloned.9.arg.struct.ty*
  %miniERARoot_cloned.9.output.addr = getelementptr %miniERARoot_cloned.9.arg.struct.ty, %miniERARoot_cloned.9.arg.struct.ty* %argStructCast.addr, i32 0, i32 22
  store %struct.out.miniERARoot %miniERARoot_cloned.9.output, %struct.out.miniERARoot* %miniERARoot_cloned.9.output.addr
  ret i8* null
}

declare void @fft_hook(float*, i32, i32, i32)

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { nounwind readnone speculatable }
attributes #11 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}
!hpvm_hint_cpu = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!hpvm_hint_gpu = !{}
!hpvm_hint_cpu_gpu = !{}
!hpvm_hint_cpu_spir = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (https://gitlab.engr.illinois.edu/llvm/hpvm.git 89a553d81fd32d44471f3fe489102282ed621da4)"}
!2 = !{%struct.out.execute_cv_kernel (i32*, i64, i32*, i64)* undef}
!3 = !{%struct.out.execute_rad_kernel (float*, i64, i32, i32, i32, float*, i64)* undef}
!4 = !{%struct.out.execute_vit_kernel (%struct.ofdm_param*, i64, %struct.frame_param*, i64, i8*, i64, i8*, i64, i32*, i64, i32)* undef}
!5 = !{%struct.out.plan_and_control (i32*, i64, float*, i64, i32*, i64, %struct.vehicle_state_t*, i64)* undef}
!6 = !{%struct.out.execute_cv_wrapper (i32*, i64, i32*, i64)* undef}
!7 = !{%struct.out.execute_rad_wrapper (float*, i64, i32, i32, i32, float*, i64)* undef}
!8 = !{%struct.out.execute_vit_wrapper (%struct.ofdm_param*, i64, %struct.frame_param*, i64, i8*, i64, i8*, i64, i32*, i64, i32)* undef}
!9 = !{%struct.out.plan_and_control_wrapper (i32*, i64, float*, i64, i32*, i64, %struct.vehicle_state_t*, i64)* undef}
!10 = !{%struct.out.miniERARoot (float*, i64, i32, i32, i32, float*, i64, %struct.ofdm_param*, i64, %struct.frame_param*, i64, i8*, i64, i8*, i64, i32*, i64, i32, i32*, i64, %struct.vehicle_state_t*, i64)* undef}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!18, !12, i64 0}
!18 = !{!"", !12, i64 0, !19, i64 4, !13, i64 8}
!19 = !{!"float", !13, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!18, !19, i64 4}
!22 = !{!23, !12, i64 4}
!23 = !{!"", !12, i64 0, !12, i64 4, !24, i64 8, !25, i64 28, !13, i64 48}
!24 = !{!"", !13, i64 0, !13, i64 4, !12, i64 8, !12, i64 12, !12, i64 16}
!25 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16}
!26 = !{!23, !13, i64 8}
!27 = !{!23, !12, i64 16}
!28 = !{!23, !12, i64 20}
!29 = !{!23, !12, i64 24}
!30 = !{!23, !13, i64 12}
!31 = !{!23, !12, i64 28}
!32 = !{!23, !12, i64 32}
!33 = !{!23, !12, i64 36}
!34 = !{!23, !12, i64 40}
!35 = !{!23, !12, i64 44}
!36 = !{!13, !13, i64 0}
!37 = !{!24, !12, i64 12}
!38 = !{!25, !12, i64 4}
!39 = !{!24, !13, i64 0}
!40 = !{!25, !12, i64 16}
!41 = !{!25, !12, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"_Bool", !13, i64 0}
!44 = !{!45, !13, i64 0}
!45 = !{!"", !13, i64 0, !19, i64 4}
!46 = !{!45, !19, i64 4}
!47 = !{!48, !16, i64 0}
!48 = !{!"", !16, i64 0, !49, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !16, i64 28, !49, i64 36, !16, i64 44, !49, i64 52, !16, i64 60, !49, i64 68, !16, i64 76, !49, i64 84, !16, i64 92, !49, i64 100, !16, i64 108, !49, i64 116, !12, i64 124, !16, i64 128, !49, i64 136, !16, i64 144, !49, i64 152}
!49 = !{!"long", !13, i64 0}
!50 = !{!48, !49, i64 8}
!51 = !{!48, !12, i64 16}
!52 = !{!48, !12, i64 20}
!53 = !{!48, !12, i64 24}
!54 = !{!48, !16, i64 28}
!55 = !{!48, !49, i64 36}
!56 = !{!24, !13, i64 4}
!57 = !{!24, !12, i64 8}
!58 = !{!24, !12, i64 16}
!59 = !{!25, !12, i64 12}
!60 = !{!48, !16, i64 44}
!61 = !{!48, !49, i64 52}
!62 = !{!48, !16, i64 60}
!63 = !{!48, !49, i64 68}
!64 = !{!48, !16, i64 76}
!65 = !{!48, !49, i64 84}
!66 = !{!48, !16, i64 92}
!67 = !{!48, !49, i64 100}
!68 = !{!48, !16, i64 108}
!69 = !{!48, !49, i64 116}
!70 = !{!48, !12, i64 124}
!71 = !{!48, !16, i64 128}
!72 = !{!48, !49, i64 136}
!73 = !{!48, !16, i64 144}
!74 = !{!48, !49, i64 152}
!75 = !{!76, !49, i64 0}
!76 = !{!"timeval", !49, i64 0, !49, i64 8}
!77 = !{!76, !49, i64 8}
