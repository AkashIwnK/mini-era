; ModuleID = './output//test.query.ll'
source_filename = "src//main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.branchtab27 = type { [32 x i8] }
%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.out.execute_cv_kernel = type <{ i64 }>
%struct.out.execute_rad_kernel = type <{ i64 }>
%struct.out.execute_vit_kernel = type <{ i64, i64 }>
%struct.frame_param = type { i32, i32, i32, i32, i32 }
%struct.out.plan_and_control = type <{ i64 }>
%struct.vehicle_state_t = type { i32, float }
%struct.out.execute_cv_wrapper = type <{ i64 }>
%struct.out.execute_rad_wrapper = type <{ i64 }>
%struct.out.execute_vit_wrapper = type <{ i64 }>
%struct.out.plan_and_control_wrapper = type <{ i64 }>
%struct.out.miniERARoot = type <{ i64 }>

@PARTAB = external hidden unnamed_addr constant [256 x i8], align 16
@d_branchtab27_generic = external dso_local local_unnamed_addr global [2 x %union.branchtab27], align 16
@switch.table.viterbi_reset = external hidden unnamed_addr constant [8 x i32], align 4
@switch.table.viterbi_reset.105 = external hidden unnamed_addr constant [8 x i32], align 4

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @viterbi_reset(%struct.ofdm_param* nocapture readonly %ofdm, i64 %ofdm_size, i8* nocapture %d_metric0_generic, i64 %d_m0_size, i8* nocapture readnone %d_metric1_generic, i64 %d_m1_size, i8* nocapture %d_path0_generic, i64 %d_p0_size, i8* nocapture readnone %d_path1_generic, i64 %d_p1_size, i8* nocapture %d_mmresult, i64 %mmres_size, [64 x i8]* nocapture %d_ppresult, i64 %ppres_size, i32* nocapture %d_ntraceback, i64 %ntrbk_size, i32* nocapture %d_k, i64 %d_k_size, i8* nocapture readnone %d_depuncture_pattern, i64 %depunc_ptn_size) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv92 = phi i64 [ 0, %entry ], [ %indvars.iv.next93, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %d_metric0_generic, i64 %indvars.iv92
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %arrayidx2 = getelementptr inbounds i8, i8* %d_path0_generic, i64 %indvars.iv92
  store i8 0, i8* %arrayidx2, align 1, !tbaa !11
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond94 = icmp eq i64 %indvars.iv.next93, 4
  br i1 %exitcond94, label %for.body5, label %for.body

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body5 ], [ 0, %for.body ]
  %0 = shl nuw nsw i64 %indvars.iv88, 1
  %and = and i64 %0, 108
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %and
  %1 = load i8, i8* %arrayidx10, align 4, !tbaa !11
  %tobool = icmp ne i8 %1, 0
  %conv12 = zext i1 %tobool to i8
  %arrayidx14 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv88
  store i8 %conv12, i8* %arrayidx14, align 1, !tbaa !11
  %and21 = and i64 %0, 78
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %and21
  %2 = load i8, i8* %arrayidx23, align 2, !tbaa !11
  %tobool26 = icmp ne i8 %2, 0
  %conv28 = zext i1 %tobool26 to i8
  %arrayidx30 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv88
  store i8 %conv28, i8* %arrayidx30, align 1, !tbaa !11
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond91 = icmp eq i64 %indvars.iv.next89, 32
  br i1 %exitcond91, label %for.body37, label %for.body5

for.body37:                                       ; preds = %for.inc51, %for.body5
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc51 ], [ 0, %for.body5 ]
  %arrayidx39 = getelementptr inbounds i8, i8* %d_mmresult, i64 %indvars.iv85
  store i8 0, i8* %arrayidx39, align 1, !tbaa !11
  br label %for.body43

for.body43:                                       ; preds = %for.body43, %for.body37
  %indvars.iv = phi i64 [ 0, %for.body37 ], [ %indvars.iv.next, %for.body43 ]
  %arrayidx47 = getelementptr inbounds [64 x i8], [64 x i8]* %d_ppresult, i64 %indvars.iv, i64 %indvars.iv85
  store i8 0, i8* %arrayidx47, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond, label %for.inc51, label %for.body43

for.inc51:                                        ; preds = %for.body43
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond87 = icmp eq i64 %indvars.iv.next86, 64
  br i1 %exitcond87, label %for.end53, label %for.body37

for.end53:                                        ; preds = %for.inc51
  %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 0
  %3 = load i32, i32* %encoding, align 4, !tbaa !14
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %for.end53
  %5 = sext i32 %3 to i64
  %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.viterbi_reset, i64 0, i64 %5
  %switch.load = load i32, i32* %switch.gep, align 4
  %6 = sext i32 %3 to i64
  %switch.gep96 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.viterbi_reset.105, i64 0, i64 %6
  %switch.load97 = load i32, i32* %switch.gep96, align 4
  store i32 %switch.load, i32* %d_ntraceback, align 4, !tbaa !17
  store i32 %switch.load97, i32* %d_k, align 4, !tbaa !17
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.end53
  ret void
}

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }

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
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!15, !12, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 12, !16, i64 16}
!16 = !{!"int", !12, i64 0}
!17 = !{!16, !16, i64 0}
