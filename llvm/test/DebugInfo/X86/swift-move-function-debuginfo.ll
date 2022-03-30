;; RUN: llc -O0 -mtriple=x86_64-apple-darwin %s -o %t -filetype=obj
;; RUN: llvm-dwarfdump --show-children %t | FileCheck --check-prefix=DWARF %s

source_filename = "swift-move-function-dbginfo.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%objc_class = type { %objc_class*, %objc_class*, %swift.opaque*, %swift.opaque*, i64 }
%swift.opaque = type opaque
%swift.method_descriptor = type { i32, i32 }
%T4main5KlassC = type <{ %swift.refcounted }>
%swift.refcounted = type { %swift.type*, i64 }
%swift.type = type { i64 }
%swift.protocol_requirement = type { i32, i32 }
%swift.protocolref = type { i32 }
%swift.type_metadata_record = type { i32 }
%swift.metadata_response = type { %swift.type*, i64 }
%swift.vwtable = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i32, i32 }
%T4main1PP = type { [24 x i8], %swift.type*, i8** }
%__opaque_existential_type_1 = type { [24 x i8], %swift.type*, i8** }

@"\01l_entry_point" = private constant { i32 } { i32 trunc (i64 sub (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 ptrtoint ({ i32 }* @"\01l_entry_point" to i64)) to i32) }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"$sBoWV" = external global i8*, align 8
@"$s4main5KlassCMm" = global %objc_class { %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, i64 ptrtoint ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }* @_METACLASS_DATA__TtC4main5Klass to i64) }, align 8
@"OBJC_CLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@_objc_empty_cache = external global %swift.opaque
@"OBJC_METACLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@.str = private unnamed_addr constant [16 x i8] c"_TtC4main5Klass\00"
@_METACLASS_DATA__TtC4main5Klass = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* } { i32 129, i32 40, i32 40, i32 0, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* null, i8* null, i8* null, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@_DATA__TtC4main5Klass = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* } { i32 128, i32 16, i32 16, i32 0, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* null, i8* null, i8* null, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@.str.1 = private constant [5 x i8] c"main\00"
@"$s4mainMXM" = linkonce_odr hidden constant <{ i32, i32, i32 }> <{ i32 0, i32 0, i32 trunc (i64 sub (i64 ptrtoint ([5 x i8]* @.str.1 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32 }>, <{ i32, i32, i32 }>* @"$s4mainMXM", i32 0, i32 2) to i64)) to i32) }>, section "__TEXT,__const", align 4
@.str.2 = private constant [6 x i8] c"Klass\00"
@"$s4main5KlassCMn" = constant <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }> <{ i32 -2147483568, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32 }>* @"$s4mainMXM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 1) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.2 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 2) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (%swift.metadata_response (i64)* @"$s4main5KlassCMa" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 3) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s4main5KlassCMF" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 4) to i64)) to i32), i32 0, i32 2, i32 12, i32 2, i32 0, i32 10, i32 10, i32 2, %swift.method_descriptor { i32 16, i32 trunc (i64 sub (i64 ptrtoint (void (%T4main5KlassC*)* @"$s4main5KlassC11doSomethingyyF" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 13, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 1, i32 trunc (i64 sub (i64 ptrtoint (%T4main5KlassC* (%swift.type*)* @"$s4main5KlassCACycfC" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 14, i32 1) to i64)) to i32) } }>, section "__TEXT,__const", align 4
@"$s4main5KlassCMf" = internal global <{ void (%T4main5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T4main5KlassC*)*, %T4main5KlassC* (%swift.type*)* }> <{ void (%T4main5KlassC*)* @"$s4main5KlassCfD", i8** @"$sBoWV", i64 ptrtoint (%objc_class* @"$s4main5KlassCMm" to i64), %objc_class* @"OBJC_CLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, i64 add (i64 ptrtoint ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }* @_DATA__TtC4main5Klass to i64), i64 2), i32 2, i32 0, i32 16, i16 7, i16 0, i32 112, i32 16, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i8* null, void (%T4main5KlassC*)* @"$s4main5KlassC11doSomethingyyF", %T4main5KlassC* (%swift.type*)* @"$s4main5KlassCACycfC" }>, align 8
@"symbolic _____ 4main5KlassC" = linkonce_odr hidden constant <{ i8, i32, i8 }> <{ i8 1, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i8, i32, i8 }>, <{ i8, i32, i8 }>* @"symbolic _____ 4main5KlassC", i32 0, i32 1) to i64)) to i32), i8 0 }>, section "__TEXT,__swift5_typeref, regular", align 2
@"$s4main5KlassCMF" = internal constant { i32, i32, i16, i16, i32 } { i32 trunc (i64 sub (i64 ptrtoint (<{ i8, i32, i8 }>* @"symbolic _____ 4main5KlassC" to i64), i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s4main5KlassCMF" to i64)) to i32), i32 0, i16 1, i16 12, i32 0 }, section "__TEXT,__swift5_fieldmd, regular", align 4
@"symbolic $s4main1PP" = linkonce_odr hidden constant <{ [10 x i8], i8 }> <{ [10 x i8] c"$s4main1PP", i8 0 }>, section "__TEXT,__swift5_typeref, regular", align 2
@"$s4main1P_pMF" = internal constant { i32, i32, i16, i16, i32 } { i32 trunc (i64 sub (i64 ptrtoint (<{ [10 x i8], i8 }>* @"symbolic $s4main1PP" to i64), i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s4main1P_pMF" to i64)) to i32), i32 0, i16 4, i16 12, i32 0 }, section "__TEXT,__swift5_fieldmd, regular", align 4
@.str.3 = private constant [2 x i8] c"P\00"
@"$s4main1PMp" = constant <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }> <{ i32 65603, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32 }>* @"$s4mainMXM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>, <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s4main1PMp", i32 0, i32 1) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([2 x i8]* @.str.3 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>, <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s4main1PMp", i32 0, i32 2) to i64)) to i32), i32 0, i32 2, i32 0, %swift.protocol_requirement { i32 3, i32 0 }, %swift.protocol_requirement { i32 17, i32 0 } }>, section "__TEXT,__const", align 4
@"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency_$_main" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency"
@"$s4main1PHr" = private constant %swift.protocolref { i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s4main1PMp" to i64), i64 ptrtoint (%swift.protocolref* @"$s4main1PHr" to i64)) to i32) }, section "__TEXT, __swift5_protos, regular", align 4
@"$s4main5KlassCHn" = private constant %swift.type_metadata_record { i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn" to i64), i64 ptrtoint (%swift.type_metadata_record* @"$s4main5KlassCHn" to i64)) to i32) }, section "__TEXT, __swift5_types, regular", align 4
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@"objc_classes_$s4main5KlassCN" = internal global i8* bitcast (%swift.type* @"$s4main5KlassCN" to i8*), section "__DATA,__objc_classlist,regular,no_dead_strip", align 8
@llvm.used = appending global [39 x i8*] [i8* bitcast (i32 (i32, i8**)* @main to i8*), i8* bitcast (void (%T4main5KlassC*)* @"$s4main5KlassC11doSomethingyyF" to i8*), i8* bitcast (%swift.refcounted* (%T4main5KlassC*)* @"$s4main5KlassCfd" to i8*), i8* bitcast (void (%T4main5KlassC*)* @"$s4main5KlassCfD" to i8*), i8* bitcast (i1 ()* @"$s4main9trueValueSbvg" to i8*), i8* bitcast (i1 ()* @"$s4main10falseValueSbvg" to i8*), i8* bitcast (void ()* @"$s4main17copyableValueTestyyF" to i8*), i8* bitcast (void (%T4main5KlassC*)* @"$s4main15copyableArgTestyyAA5KlassCnF" to i8*), i8* bitcast (void ()* @"$s4main15copyableVarTestyyF" to i8*), i8* bitcast (void (%T4main5KlassC**)* @"$s4main18copyableVarArgTestyyAA5KlassCzF" to i8*), i8* bitcast (void (%swift.opaque*, %swift.type*, i8**)* @"$s4main20addressOnlyValueTestyyxAA1PRzlF" to i8*), i8* bitcast (void (%swift.opaque*, %swift.type*, i8**)* @"$s4main23addressOnlyValueArgTestyyxnAA1PRzlF" to i8*), i8* bitcast (void (%swift.opaque*, %swift.type*, i8**)* @"$s4main18addressOnlyVarTestyyxAA1PRzlF" to i8*), i8* bitcast (void (%swift.opaque*, %swift.opaque*, %swift.type*, i8**)* @"$s4main21addressOnlyVarArgTestyyxz_xtAA1PRzlF" to i8*), i8* bitcast (void ()* @"$s4main23copyableValueCCFlowTestyyF" to i8*), i8* bitcast (void (%T4main5KlassC*)* @"$s4main26copyableValueArgCCFlowTestyyAA5KlassCnF" to i8*), i8* bitcast (void ()* @"$s4main037copyableVarTestCCFlowReinitOutOfBlockD0yyF" to i8*), i8* bitcast (void (%T4main5KlassC**)* @"$s4main040copyableVarArgTestCCFlowReinitOutOfBlockE0yyAA5KlassCzF" to i8*), i8* bitcast (void ()* @"$s4main034copyableVarTestCCFlowReinitInBlockD0yyF" to i8*), i8* bitcast (void (%T4main5KlassC**)* @"$s4main037copyableVarArgTestCCFlowReinitInBlockE0yyAA5KlassCzF" to i8*), i8* bitcast (void (%swift.type*, %swift.type*, i8**)* @"$s4main040addressOnlyVarTestCCFlowReinitOutOfBlockE0yyxmAA1PRzlF" to i8*), i8* bitcast (void (%T4main1PP*, %swift.type*, %swift.type*, i8**)* @"$s4main043addressOnlyVarArgTestCCFlowReinitOutOfBlockF0yyAA1P_pz_xmtAaCRzlF" to i8*), i8* bitcast (void (%swift.type*, %swift.type*, i8**)* @"$s4main037addressOnlyVarTestCCFlowReinitInBlockE0yyxmAA1PRzlF" to i8*), i8* bitcast (void (%T4main1PP*, %swift.type*, %swift.type*, i8**)* @"$s4main040addressOnlyVarArgTestCCFlowReinitInBlockF0yyAA1P_pz_xmtAaCRzlF" to i8*), i8* bitcast ({ i32 }* @"\01l_entry_point" to i8*), i8* bitcast (%objc_class* @"$s4main5KlassCMm" to i8*), i8* bitcast (%swift.method_descriptor* @"$s4main5KlassC11doSomethingyyFTq" to i8*), i8* bitcast (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn" to i8*), i8* bitcast (%swift.metadata_response (i64)* @"$s4main5KlassCMa" to i8*), i8* bitcast (%swift.type* @"$s4main5KlassCN" to i8*), i8* bitcast ({ i32, i32, i16, i16, i32 }* @"$s4main5KlassCMF" to i8*), i8* bitcast ({ i32, i32, i16, i16, i32 }* @"$s4main1P_pMF" to i8*), i8* bitcast (%swift.protocol_requirement* @"$s4main1PTL" to i8*), i8* bitcast (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s4main1PMp" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency_$_main" to i8*), i8* bitcast (%swift.protocolref* @"$s4main1PHr" to i8*), i8* bitcast (%swift.type_metadata_record* @"$s4main5KlassCHn" to i8*), i8* bitcast (i16* @__swift_reflection_version to i8*), i8* bitcast (i8** @"objc_classes_$s4main5KlassCN" to i8*)], section "llvm.metadata"

@"$s4main5KlassC11doSomethingyyFTq" = alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 13)
@"$s4main5KlassCACycfCTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", i32 0, i32 14)
@"$s4main5KlassCN" = alias %swift.type, bitcast (i64* getelementptr inbounds (<{ void (%T4main5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T4main5KlassC*)*, %T4main5KlassC* (%swift.type*)* }>, <{ void (%T4main5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T4main5KlassC*)*, %T4main5KlassC* (%swift.type*)* }>* @"$s4main5KlassCMf", i32 0, i32 2) to %swift.type*)
@"$s4main1PTL" = alias %swift.protocol_requirement, getelementptr (%swift.protocol_requirement, %swift.protocol_requirement* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>, <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s4main1PMp", i32 0, i32 6), i32 -1)

define i32 @main(i32 %0, i8** %1) #0 !dbg !41 {
entry:
  %2 = bitcast i8** %1 to i8*
  ret i32 0, !dbg !54
}

define swiftcc void @"$s4main5KlassC11doSomethingyyF"(%T4main5KlassC* swiftself %0) #0 !dbg !58 {
entry:
  %self.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %self.debug, metadata !64, metadata !DIExpression()), !dbg !66
  %1 = bitcast %T4main5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main5KlassC* %0, %T4main5KlassC** %self.debug, align 8, !dbg !67
  ret void, !dbg !68
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

define swiftcc %swift.refcounted* @"$s4main5KlassCfd"(%T4main5KlassC* swiftself %0) #0 !dbg !70 {
entry:
  %self.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %self.debug, metadata !75, metadata !DIExpression()), !dbg !76
  %1 = bitcast %T4main5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main5KlassC* %0, %T4main5KlassC** %self.debug, align 8, !dbg !77
  %2 = bitcast %T4main5KlassC* %0 to %swift.refcounted*, !dbg !78
  ret %swift.refcounted* %2, !dbg !78
}

define swiftcc void @"$s4main5KlassCfD"(%T4main5KlassC* swiftself %0) #0 !dbg !80 {
entry:
  %self.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %self.debug, metadata !82, metadata !DIExpression()), !dbg !83
  %1 = bitcast %T4main5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main5KlassC* %0, %T4main5KlassC** %self.debug, align 8, !dbg !84
  %2 = call swiftcc %swift.refcounted* @"$s4main5KlassCfd"(%T4main5KlassC* swiftself %0), !dbg !84
  %3 = bitcast %swift.refcounted* %2 to %T4main5KlassC*, !dbg !84
  %4 = bitcast %T4main5KlassC* %3 to %swift.refcounted*, !dbg !84
  call void @swift_deallocClassInstance(%swift.refcounted* %4, i64 16, i64 7), !dbg !84
  ret void, !dbg !84
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: nounwind
declare void @swift_deallocClassInstance(%swift.refcounted*, i64, i64) #4

define hidden swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %0) #0 !dbg !85 {
entry:
  %1 = call noalias %swift.refcounted* @swift_allocObject(%swift.type* %0, i64 16, i64 7) #4, !dbg !89
  %2 = bitcast %swift.refcounted* %1 to %T4main5KlassC*, !dbg !89
  %3 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfc"(%T4main5KlassC* swiftself %2), !dbg !89
  ret %T4main5KlassC* %3, !dbg !89
}

; Function Attrs: nounwind
declare %swift.refcounted* @swift_allocObject(%swift.type*, i64, i64) #4

define hidden swiftcc %T4main5KlassC* @"$s4main5KlassCACycfc"(%T4main5KlassC* swiftself %0) #0 !dbg !90 {
entry:
  %self.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %self.debug, metadata !94, metadata !DIExpression()), !dbg !95
  %1 = bitcast %T4main5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T4main5KlassC* %0, %T4main5KlassC** %self.debug, align 8, !dbg !96
  ret %T4main5KlassC* %0, !dbg !97
}

define swiftcc i1 @"$s4main9trueValueSbvg"() #0 !dbg !99 {
entry:
  ret i1 true, !dbg !103
}

define swiftcc i1 @"$s4main10falseValueSbvg"() #0 !dbg !105 {
entry:
  ret i1 false, !dbg !106
}

;; DWARF: DW_AT_linkage_name{{.*}}("$s4main17copyableValueTestyyF")
;; DWARF-NEXT: DW_AT_name ("copyableValueTest")
;; DWARF-NEXT: DW_AT_decl_file
;; DWARF-NEXT: DW_AT_decl_line
;; DWARF-NEXT: DW_AT_type
;; DWARF-NEXT: DW_AT_external	(true)
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location	(DW_OP_fbreg
;; DWARF-NEXT: DW_AT_name	("m")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location	(0x{{[a-z0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name	("k")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
define swiftcc void @"$s4main17copyableValueTestyyF"() #0 !dbg !108 {
entry:
  %k.debug = alloca %T4main5KlassC*, align 8
  %0 = bitcast %T4main5KlassC** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !114, metadata !DIExpression()), !dbg !115
  %1 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !116
  %3 = extractvalue %swift.metadata_response %2, 0, !dbg !116
  %4 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %3), !dbg !116
  store %T4main5KlassC* %4, %T4main5KlassC** %k.debug, align 8, !dbg !117
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k.debug, metadata !112, metadata !DIExpression()), !dbg !118
  br label %entry.split, !dbg !119

entry.split:                                      ; preds = %entry
  %5 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %4, i32 0, i32 0, i32 0, !dbg !119
  %6 = load %swift.type*, %swift.type** %5, align 8, !dbg !119
  %7 = bitcast %swift.type* %6 to void (%T4main5KlassC*)**, !dbg !119
  %8 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %7, i64 10, !dbg !119
  %9 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %8, align 8, !dbg !119, !invariant.load !46
  call swiftcc void %9(%T4main5KlassC* swiftself %4), !dbg !119
  %10 = bitcast %T4main5KlassC* %4 to %swift.refcounted*, !dbg !120
  %11 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %10) #4, !dbg !120
  call void @llvm.dbg.value(metadata %T4main5KlassC* undef, metadata !112, metadata !DIExpression()), !dbg !118
  store %T4main5KlassC* %4, %T4main5KlassC** %m.debug, align 8, !dbg !117
  %12 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %4, i32 0, i32 0, i32 0, !dbg !121
  %13 = load %swift.type*, %swift.type** %12, align 8, !dbg !121
  %14 = bitcast %swift.type* %13 to void (%T4main5KlassC*)**, !dbg !121
  %15 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %14, i64 10, !dbg !121
  %16 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %15, align 8, !dbg !121, !invariant.load !46
  call swiftcc void %16(%T4main5KlassC* swiftself %4), !dbg !121
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %4) #4, !dbg !122
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %4) #4, !dbg !122
  ret void, !dbg !122
}

; Function Attrs: noinline nounwind readnone
define swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 %0) #5 !dbg !123 {
entry:
  %1 = call %objc_class* @objc_opt_self(%objc_class* bitcast (i64* getelementptr inbounds (<{ void (%T4main5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T4main5KlassC*)*, %T4main5KlassC* (%swift.type*)* }>, <{ void (%T4main5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T4main5KlassC*)*, %T4main5KlassC* (%swift.type*)* }>* @"$s4main5KlassCMf", i32 0, i32 2) to %objc_class*)), !dbg !125
  %2 = bitcast %objc_class* %1 to %swift.type*, !dbg !125
  %3 = insertvalue %swift.metadata_response undef, %swift.type* %2, 0, !dbg !125
  %4 = insertvalue %swift.metadata_response %3, i64 0, 1, !dbg !125
  ret %swift.metadata_response %4, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.addr(metadata, metadata, metadata) #2

; Function Attrs: nounwind willreturn
declare %swift.refcounted* @swift_retain(%swift.refcounted* returned) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @swift_release(%swift.refcounted*) #4

;; DWARF: DW_AT_linkage_name{{.*}}("$s4main15copyableArgTestyyAA5KlassCnF")
;; DWARF-NEXT: DW_AT_name ("copyableArgTest")
;; DWARF-NEXT: DW_AT_decl_file
;; DWARF-NEXT: DW_AT_decl_line
;; DWARF-NEXT: DW_AT_type
;; DWARF-NEXT: DW_AT_external	(true)
;;
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(0x{{[a-z0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name	("k")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location	(DW_OP_fbreg
;; DWARF-NEXT: DW_AT_name	("m")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
define swiftcc void @"$s4main15copyableArgTestyyAA5KlassCnF"(%T4main5KlassC* %0) #0 !dbg !126 {
entry:
  %k.debug = alloca %T4main5KlassC*, align 8
  %1 = bitcast %T4main5KlassC** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !129, metadata !DIExpression()), !dbg !131
  %2 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  store %T4main5KlassC* %0, %T4main5KlassC** %k.debug, align 8, !dbg !132
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k.debug, metadata !128, metadata !DIExpression()), !dbg !133
  br label %entry.split, !dbg !134

entry.split:                                      ; preds = %entry
  %3 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %0, i32 0, i32 0, i32 0, !dbg !134
  %4 = load %swift.type*, %swift.type** %3, align 8, !dbg !134
  %5 = bitcast %swift.type* %4 to void (%T4main5KlassC*)**, !dbg !134
  %6 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %5, i64 10, !dbg !134
  %7 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %6, align 8, !dbg !134, !invariant.load !46
  call swiftcc void %7(%T4main5KlassC* swiftself %0), !dbg !134
  %8 = bitcast %T4main5KlassC* %0 to %swift.refcounted*, !dbg !135
  %9 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %8) #4, !dbg !135
  call void @llvm.dbg.value(metadata %T4main5KlassC* undef, metadata !128, metadata !DIExpression()), !dbg !133
  store %T4main5KlassC* %0, %T4main5KlassC** %m.debug, align 8, !dbg !136
  %10 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %0, i32 0, i32 0, i32 0, !dbg !137
  %11 = load %swift.type*, %swift.type** %10, align 8, !dbg !137
  %12 = bitcast %swift.type* %11 to void (%T4main5KlassC*)**, !dbg !137
  %13 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %12, i64 10, !dbg !137
  %14 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %13, align 8, !dbg !137, !invariant.load !46
  call swiftcc void %14(%T4main5KlassC* swiftself %0), !dbg !137
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %0) #4, !dbg !138
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %0) #4, !dbg !138
  ret void, !dbg !138
}

;; DWARF: DW_AT_linkage_name	("$s4main15copyableVarTestyyF")
;; DWARF-NEXT: DW_AT_name	("copyableVarTest")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
;; DWARF-NEXT: DW_AT_external	(
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location	(DW_OP_fbreg -24)
;; DWARF-NEXT: DW_AT_name	("m")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location	(0x{{[a-z0-9]+}}:
;; We check that we get two separate locations for the different lifetimes of
;; the values.
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name	("k")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
define swiftcc void @"$s4main15copyableVarTestyyF"() #0 !dbg !139 {
entry:
  %k = alloca %T4main5KlassC*, align 8
  %0 = bitcast %T4main5KlassC** %k to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !143, metadata !DIExpression()), !dbg !144
  %1 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast %T4main5KlassC** %k to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2), !dbg !145
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k, metadata !141, metadata !DIExpression()), !dbg !147
  br label %entry.split1, !dbg !148

entry.split1:                                     ; preds = %entry
  %3 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !148
  %4 = extractvalue %swift.metadata_response %3, 0, !dbg !148
  %5 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %4), !dbg !148
  %6 = bitcast %T4main5KlassC* %5 to %swift.refcounted*, !dbg !148
  %7 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %6) #4, !dbg !148
  store %T4main5KlassC* %5, %T4main5KlassC** %k, align 8, !dbg !148
  %8 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %5, i32 0, i32 0, i32 0, !dbg !149
  %9 = load %swift.type*, %swift.type** %8, align 8, !dbg !149
  %10 = bitcast %swift.type* %9 to void (%T4main5KlassC*)**, !dbg !149
  %11 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %10, i64 10, !dbg !149
  %12 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %11, align 8, !dbg !149, !invariant.load !46
  call swiftcc void %12(%T4main5KlassC* swiftself %5), !dbg !149
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %5) #4, !dbg !149
  %13 = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !150
  call void @llvm.dbg.value(metadata %T4main5KlassC** undef, metadata !141, metadata !DIExpression()), !dbg !147
  store %T4main5KlassC* %13, %T4main5KlassC** %m.debug, align 8, !dbg !151
  %14 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %13, i32 0, i32 0, i32 0, !dbg !152
  %15 = load %swift.type*, %swift.type** %14, align 8, !dbg !152
  %16 = bitcast %swift.type* %15 to void (%T4main5KlassC*)**, !dbg !152
  %17 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %16, i64 10, !dbg !152
  %18 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %17, align 8, !dbg !152, !invariant.load !46
  call swiftcc void %18(%T4main5KlassC* swiftself %13), !dbg !152
  %19 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %4), !dbg !153
  %20 = bitcast %T4main5KlassC* %19 to %swift.refcounted*, !dbg !154
  %21 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %20) #4, !dbg !154
  store %T4main5KlassC* %19, %T4main5KlassC** %k, align 8, !dbg !154
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k, metadata !141, metadata !DIExpression()), !dbg !147
  br label %entry.split, !dbg !155

entry.split:                                      ; preds = %entry.split1
  %22 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %19, i32 0, i32 0, i32 0, !dbg !155
  %23 = load %swift.type*, %swift.type** %22, align 8, !dbg !155
  %24 = bitcast %swift.type* %23 to void (%T4main5KlassC*)**, !dbg !155
  %25 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %24, i64 10, !dbg !155
  %26 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %25, align 8, !dbg !155, !invariant.load !46
  call swiftcc void %26(%T4main5KlassC* swiftself %19), !dbg !155
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %19) #4, !dbg !156
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %13) #4, !dbg !156
  %toDestroy = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !156
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %toDestroy) #4, !dbg !156
  %27 = bitcast %T4main5KlassC** %k to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27), !dbg !156
  ret void, !dbg !156
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

;; DWARF: DW_AT_linkage_name	("$s4main18copyableVarArgTestyyAA5KlassCzF")
;; DWARF-NEXT: DW_AT_name	("copyableVarArgTest")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
;; DWARF-NEXT: DW_AT_external	(
;;
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(0x{{[a-z0-9]+}}:
;; We check that we get two separate locations for the different lifetimes of
;; the values.
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name	("k")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location	(DW_OP_fbreg -24)
;; DWARF-NEXT: DW_AT_name	("m")
;; DWARF-NEXT: DW_AT_decl_file	(
;; DWARF-NEXT: DW_AT_decl_line	(
;; DWARF-NEXT: DW_AT_type	(
define swiftcc void @"$s4main18copyableVarArgTestyyAA5KlassCzF"(%T4main5KlassC** nocapture dereferenceable(8) %0) #0 !dbg !157 {
entry:
  %k.debug = alloca %T4main5KlassC**, align 8
  %1 = bitcast %T4main5KlassC*** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !160, metadata !DIExpression()), !dbg !162
  %2 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast %T4main5KlassC*** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  store %T4main5KlassC** %0, %T4main5KlassC*** %k.debug, align 8, !dbg !163
  call void @llvm.dbg.addr(metadata %T4main5KlassC*** %k.debug, metadata !159, metadata !DIExpression(DW_OP_deref)), !dbg !164
  br label %entry.split1, !dbg !165

entry.split1:                                     ; preds = %entry
  %4 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !165
  %5 = bitcast %T4main5KlassC* %4 to %swift.refcounted*, !dbg !165
  %6 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %5) #4, !dbg !165
  %7 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %4, i32 0, i32 0, i32 0, !dbg !166
  %8 = load %swift.type*, %swift.type** %7, align 8, !dbg !166
  %9 = bitcast %swift.type* %8 to void (%T4main5KlassC*)**, !dbg !166
  %10 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %9, i64 10, !dbg !166
  %11 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %10, align 8, !dbg !166, !invariant.load !46
  call swiftcc void %11(%T4main5KlassC* swiftself %4), !dbg !166
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %4) #4, !dbg !166
  %12 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !167
  call void @llvm.dbg.value(metadata %T4main5KlassC** undef, metadata !159, metadata !DIExpression(DW_OP_deref)), !dbg !164
  store %T4main5KlassC* %12, %T4main5KlassC** %m.debug, align 8, !dbg !168
  %13 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %12, i32 0, i32 0, i32 0, !dbg !169
  %14 = load %swift.type*, %swift.type** %13, align 8, !dbg !169
  %15 = bitcast %swift.type* %14 to void (%T4main5KlassC*)**, !dbg !169
  %16 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %15, i64 10, !dbg !169
  %17 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %16, align 8, !dbg !169, !invariant.load !46
  call swiftcc void %17(%T4main5KlassC* swiftself %12), !dbg !169
  %18 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !170
  %19 = extractvalue %swift.metadata_response %18, 0, !dbg !170
  %20 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %19), !dbg !170
  store %T4main5KlassC* %20, %T4main5KlassC** %0, align 8, !dbg !171
  store %T4main5KlassC** %0, %T4main5KlassC*** %k.debug, align 8, !dbg !163
  call void @llvm.dbg.addr(metadata %T4main5KlassC*** %k.debug, metadata !159, metadata !DIExpression(DW_OP_deref)), !dbg !164
  br label %entry.split, !dbg !172

entry.split:                                      ; preds = %entry.split1
  %21 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !172
  %22 = bitcast %T4main5KlassC* %21 to %swift.refcounted*, !dbg !172
  %23 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %22) #4, !dbg !172
  %24 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %21, i32 0, i32 0, i32 0, !dbg !173
  %25 = load %swift.type*, %swift.type** %24, align 8, !dbg !173
  %26 = bitcast %swift.type* %25 to void (%T4main5KlassC*)**, !dbg !173
  %27 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %26, i64 10, !dbg !173
  %28 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %27, align 8, !dbg !173, !invariant.load !46
  call swiftcc void %28(%T4main5KlassC* swiftself %21), !dbg !173
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %21) #4, !dbg !174
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %12) #4, !dbg !174
  ret void, !dbg !174
}

;; DWARF: DW_AT_linkage_name   ("$s4main20addressOnlyValueTestyyxAA1PRzlF")
;; DWARF-NEXT: DW_AT_name      ("addressOnlyValueTest")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;; DWARF-NEXT: DW_AT_external  (
;;
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location  (
;; DWARF-NEXT: DW_AT_name      ("x")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (
;; DWARF-NEXT: DW_AT_name      ("$\317\204_0_0")
;; DWARF-NEXT: DW_AT_type      (
;; DWARF-NEXT: DW_AT_artificial        (true)
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (
;; DWARF-NEXT: DW_AT_name      ("m")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (0x{{[a-z0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name      ("k")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
define swiftcc void @"$s4main20addressOnlyValueTestyyxAA1PRzlF"(%swift.opaque* noalias nocapture %0, %swift.type* %T, i8** %T.P) #0 !dbg !175 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !180, metadata !DIExpression()), !dbg !189
  %m.debug = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m.debug, metadata !184, metadata !DIExpression(DW_OP_deref)), !dbg !190
  %1 = bitcast i8** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %x.debug = alloca %swift.opaque*, align 8
  call void @llvm.dbg.declare(metadata %swift.opaque** %x.debug, metadata !187, metadata !DIExpression(DW_OP_deref)), !dbg !191
  %2 = bitcast %swift.opaque** %x.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %k.debug = alloca %swift.opaque*, align 8
  %3 = bitcast %swift.opaque** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  store %swift.type* %T, %swift.type** %T1, align 8
  %4 = bitcast %swift.type* %T to i8***, !dbg !192
  %5 = getelementptr inbounds i8**, i8*** %4, i64 -1, !dbg !192
  %T.valueWitnesses = load i8**, i8*** %5, align 8, !dbg !192, !invariant.load !46, !dereferenceable !194
  %6 = bitcast i8** %T.valueWitnesses to %swift.vwtable*, !dbg !192
  %7 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %6, i32 0, i32 8, !dbg !192
  %size = load i64, i64* %7, align 8, !dbg !192, !invariant.load !46
  %8 = alloca i8, i64 %size, align 16, !dbg !192
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %8), !dbg !192
  %9 = bitcast i8* %8 to %swift.opaque*, !dbg !192
  %m = alloca i8, i64 %size, align 16, !dbg !192
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %m), !dbg !192
  %10 = bitcast i8* %m to %swift.opaque*, !dbg !192
  store i8* %m, i8** %m.debug, align 8, !dbg !195
  %11 = alloca i8, i64 %size, align 16, !dbg !192
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %11), !dbg !192
  %12 = bitcast i8* %11 to %swift.opaque*, !dbg !192
  store %swift.opaque* %0, %swift.opaque** %x.debug, align 8, !dbg !189
  store %swift.opaque* %12, %swift.opaque** %k.debug, align 8, !dbg !195
  call void @llvm.dbg.addr(metadata %swift.opaque** %k.debug, metadata !188, metadata !DIExpression()), !dbg !196
  br label %13, !dbg !197

13:                                               ; preds = %entry
  %14 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 2, !dbg !197
  %15 = load i8*, i8** %14, align 8, !dbg !197, !invariant.load !46
  %initializeWithCopy = bitcast i8* %15 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !197
  %16 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %12, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !197
  %17 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !198
  %18 = load i8*, i8** %17, align 8, !dbg !198, !invariant.load !46
  %19 = bitcast i8* %18 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !198
  call swiftcc void %19(%swift.opaque* noalias nocapture swiftself %12, %swift.type* %T, i8** %T.P), !dbg !198
  %20 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %9, %swift.opaque* noalias %12, %swift.type* %T) #4, !dbg !199
  %21 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 4, !dbg !200
  %22 = load i8*, i8** %21, align 8, !dbg !200, !invariant.load !46
  %initializeWithTake = bitcast i8* %22 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !200
  %23 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %10, %swift.opaque* noalias %12, %swift.type* %T) #4, !dbg !200
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !188, metadata !DIExpression()), !dbg !196
  %24 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 1, !dbg !200
  %25 = load i8*, i8** %24, align 8, !dbg !200, !invariant.load !46
  %destroy = bitcast i8* %25 to void (%swift.opaque*, %swift.type*)*, !dbg !200
  call void %destroy(%swift.opaque* noalias %9, %swift.type* %T) #4, !dbg !200
  %26 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !201
  %27 = load i8*, i8** %26, align 8, !dbg !201, !invariant.load !46
  %28 = bitcast i8* %27 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !201
  call swiftcc void %28(%swift.opaque* noalias nocapture swiftself %10, %swift.type* %T, i8** %T.P), !dbg !201
  call void %destroy(%swift.opaque* noalias %10, %swift.type* %T) #4, !dbg !202
  %29 = bitcast %swift.opaque* %12 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %29), !dbg !202
  %30 = bitcast %swift.opaque* %10 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %30), !dbg !202
  %31 = bitcast %swift.opaque* %9 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %31), !dbg !202
  ret void, !dbg !202
}

;; DWARF: DW_AT_linkage_name   ("$s4main23addressOnlyValueArgTestyyxnAA1PRzlF")
;; DWARF-NEXT: DW_AT_name      ("addressOnlyValueArgTest")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;; DWARF-NEXT: DW_AT_external  (
;;
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location  (0x{{[a-z0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name      ("k")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (
;; DWARF-NEXT: DW_AT_name      ("$\317\204_0_0")
;; DWARF-NEXT: DW_AT_type      (
;; DWARF-NEXT: DW_AT_artificial        (true)
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (
;; DWARF-NEXT: DW_AT_name      ("m")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
define swiftcc void @"$s4main23addressOnlyValueArgTestyyxnAA1PRzlF"(%swift.opaque* noalias nocapture %0, %swift.type* %T, i8** %T.P) #0 !dbg !203 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !205, metadata !DIExpression()), !dbg !209
  %m.debug = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m.debug, metadata !206, metadata !DIExpression(DW_OP_deref)), !dbg !210
  %1 = bitcast i8** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %k.debug = alloca %swift.opaque*, align 8
  %2 = bitcast %swift.opaque** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  store %swift.type* %T, %swift.type** %T1, align 8
  %3 = bitcast %swift.type* %T to i8***, !dbg !211
  %4 = getelementptr inbounds i8**, i8*** %3, i64 -1, !dbg !211
  %T.valueWitnesses = load i8**, i8*** %4, align 8, !dbg !211, !invariant.load !46, !dereferenceable !194
  %5 = bitcast i8** %T.valueWitnesses to %swift.vwtable*, !dbg !211
  %6 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %5, i32 0, i32 8, !dbg !211
  %size = load i64, i64* %6, align 8, !dbg !211, !invariant.load !46
  %7 = alloca i8, i64 %size, align 16, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %7), !dbg !211
  %8 = bitcast i8* %7 to %swift.opaque*, !dbg !211
  %m = alloca i8, i64 %size, align 16, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %m), !dbg !211
  %9 = bitcast i8* %m to %swift.opaque*, !dbg !211
  store i8* %m, i8** %m.debug, align 8, !dbg !213
  store %swift.opaque* %0, %swift.opaque** %k.debug, align 8, !dbg !209
  call void @llvm.dbg.addr(metadata %swift.opaque** %k.debug, metadata !208, metadata !DIExpression(DW_OP_deref)), !dbg !214
  br label %entry.split, !dbg !215

entry.split:                                      ; preds = %entry
  %10 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !215
  %11 = load i8*, i8** %10, align 8, !dbg !215, !invariant.load !46
  %12 = bitcast i8* %11 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !215
  call swiftcc void %12(%swift.opaque* noalias nocapture swiftself %0, %swift.type* %T, i8** %T.P), !dbg !215
  %13 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 2, !dbg !216
  %14 = load i8*, i8** %13, align 8, !dbg !216, !invariant.load !46
  %initializeWithCopy = bitcast i8* %14 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !216
  %15 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %8, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !216
  %16 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 4, !dbg !217
  %17 = load i8*, i8** %16, align 8, !dbg !217, !invariant.load !46
  %initializeWithTake = bitcast i8* %17 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !217
  %18 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %9, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !217
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !208, metadata !DIExpression(DW_OP_deref)), !dbg !214
  %19 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 1, !dbg !217
  %20 = load i8*, i8** %19, align 8, !dbg !217, !invariant.load !46
  %destroy = bitcast i8* %20 to void (%swift.opaque*, %swift.type*)*, !dbg !217
  call void %destroy(%swift.opaque* noalias %8, %swift.type* %T) #4, !dbg !217
  %21 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !218
  %22 = load i8*, i8** %21, align 8, !dbg !218, !invariant.load !46
  %23 = bitcast i8* %22 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !218
  call swiftcc void %23(%swift.opaque* noalias nocapture swiftself %9, %swift.type* %T, i8** %T.P), !dbg !218
  call void %destroy(%swift.opaque* noalias %9, %swift.type* %T) #4, !dbg !219
  %24 = bitcast %swift.opaque* %9 to i8*, !dbg !219
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %24), !dbg !219
  %25 = bitcast %swift.opaque* %8 to i8*, !dbg !219
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %25), !dbg !219
  ret void, !dbg !219
}

;; DWARF: DW_AT_linkage_name   ("$s4main18addressOnlyVarTestyyxAA1PRzlF")
;; DWARF-NEXT: DW_AT_name      ("addressOnlyVarTest")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;; DWARF-NEXT: DW_AT_external  (
;;
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location  (
;; DWARF-NEXT: DW_AT_name      ("x")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (
;; DWARF-NEXT: DW_AT_name      ("$\317\204_0_0")
;; DWARF-NEXT: DW_AT_type      (
;; DWARF-NEXT: DW_AT_artificial        (true)
;;
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (0x{{[a-z0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name      ("k")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
define swiftcc void @"$s4main18addressOnlyVarTestyyxAA1PRzlF"(%swift.opaque* noalias nocapture %0, %swift.type* %T, i8** %T.P) #0 !dbg !220 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !222, metadata !DIExpression()), !dbg !226
  %x.debug = alloca %swift.opaque*, align 8
  call void @llvm.dbg.declare(metadata %swift.opaque** %x.debug, metadata !223, metadata !DIExpression(DW_OP_deref)), !dbg !227
  %1 = bitcast %swift.opaque** %x.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %k.debug = alloca %swift.opaque*, align 8
  %2 = bitcast %swift.opaque** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast %swift.opaque** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  store %swift.type* %T, %swift.type** %T1, align 8
  %4 = bitcast %swift.type* %T to i8***, !dbg !228
  %5 = getelementptr inbounds i8**, i8*** %4, i64 -1, !dbg !228
  %T.valueWitnesses = load i8**, i8*** %5, align 8, !dbg !228, !invariant.load !46, !dereferenceable !194
  %6 = bitcast i8** %T.valueWitnesses to %swift.vwtable*, !dbg !228
  %7 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %6, i32 0, i32 8, !dbg !228
  %size = load i64, i64* %7, align 8, !dbg !228, !invariant.load !46
  %8 = alloca i8, i64 %size, align 16, !dbg !228
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %8), !dbg !228
  %9 = bitcast i8* %8 to %swift.opaque*, !dbg !228
  %10 = alloca i8, i64 %size, align 16, !dbg !228
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %10), !dbg !228
  %11 = bitcast i8* %10 to %swift.opaque*, !dbg !228
  %12 = alloca i8, i64 %size, align 16, !dbg !228
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %12), !dbg !228
  %13 = bitcast i8* %12 to %swift.opaque*, !dbg !228
  store %swift.opaque* %0, %swift.opaque** %x.debug, align 8, !dbg !226
  store %swift.opaque* %13, %swift.opaque** %k.debug, align 8, !dbg !230
  call void @llvm.dbg.addr(metadata %swift.opaque** %k.debug, metadata !224, metadata !DIExpression()), !dbg !231
  br label %14, !dbg !232

14:                                               ; preds = %entry
  %15 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 2, !dbg !232
  %16 = load i8*, i8** %15, align 8, !dbg !232, !invariant.load !46
  %initializeWithCopy = bitcast i8* %16 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !232
  %17 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %13, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !232
  %18 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %11, %swift.opaque* noalias %13, %swift.type* %T) #4, !dbg !233
  %19 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !234
  %20 = load i8*, i8** %19, align 8, !dbg !234, !invariant.load !46
  %21 = bitcast i8* %20 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !234
  call swiftcc void %21(%swift.opaque* noalias nocapture swiftself %11, %swift.type* %T, i8** %T.P), !dbg !234
  %22 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 1, !dbg !234
  %23 = load i8*, i8** %22, align 8, !dbg !234, !invariant.load !46
  %destroy = bitcast i8* %23 to void (%swift.opaque*, %swift.type*)*, !dbg !234
  call void %destroy(%swift.opaque* noalias %11, %swift.type* %T) #4, !dbg !234
  %24 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %9, %swift.opaque* noalias %13, %swift.type* %T) #4, !dbg !235
  %25 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 4, !dbg !236
  %26 = load i8*, i8** %25, align 8, !dbg !236, !invariant.load !46
  %initializeWithTake = bitcast i8* %26 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !236
  %27 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %11, %swift.opaque* noalias %13, %swift.type* %T) #4, !dbg !236
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !224, metadata !DIExpression()), !dbg !231
  call void %destroy(%swift.opaque* noalias %9, %swift.type* %T) #4, !dbg !236
  %28 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !237
  %29 = load i8*, i8** %28, align 8, !dbg !237, !invariant.load !46
  %30 = bitcast i8* %29 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !237
  call swiftcc void %30(%swift.opaque* noalias nocapture swiftself %11, %swift.type* %T, i8** %T.P), !dbg !237
  %31 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %9, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !238
  %32 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %13, %swift.opaque* noalias %9, %swift.type* %T) #4, !dbg !239
  store %swift.opaque* %13, %swift.opaque** %k.debug, align 8, !dbg !230
  call void @llvm.dbg.addr(metadata %swift.opaque** %k.debug, metadata !224, metadata !DIExpression()), !dbg !231
  br label %.split, !dbg !240

.split:                                           ; preds = %14
  %33 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %9, %swift.opaque* noalias %13, %swift.type* %T) #4, !dbg !240
  %34 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !241
  %35 = load i8*, i8** %34, align 8, !dbg !241, !invariant.load !46
  %36 = bitcast i8* %35 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !241
  call swiftcc void %36(%swift.opaque* noalias nocapture swiftself %9, %swift.type* %T, i8** %T.P), !dbg !241
  call void %destroy(%swift.opaque* noalias %9, %swift.type* %T) #4, !dbg !242
  call void %destroy(%swift.opaque* noalias %11, %swift.type* %T) #4, !dbg !242
  call void %destroy(%swift.opaque* noalias %13, %swift.type* %T) #4, !dbg !242
  %37 = bitcast %swift.opaque* %13 to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %37), !dbg !242
  %38 = bitcast %swift.opaque* %11 to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %38), !dbg !242
  %39 = bitcast %swift.opaque* %9 to i8*, !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %39), !dbg !242
  ret void, !dbg !242
}

;; DWARF: DW_AT_linkage_name   ("$s4main21addressOnlyVarArgTestyyxz_xtAA1PRzlF")
;; DWARF-NEXT: DW_AT_name      ("addressOnlyVarArgTest")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
;; DWARF-NEXT: DW_AT_external  (
;;
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location  (0x{{[a-z0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT:    [0x{{[a-z0-9]+}}, 0x{{[a-z0-9]+}}):
;; DWARF-NEXT: DW_AT_name      ("k")
;; DWARF-NEXT: DW_AT_decl_file (
;; DWARF-NEXT: DW_AT_decl_line (
;; DWARF-NEXT: DW_AT_type      (
define swiftcc void @"$s4main21addressOnlyVarArgTestyyxz_xtAA1PRzlF"(%swift.opaque* nocapture %0, %swift.opaque* noalias nocapture %1, %swift.type* %T, i8** %T.P) #0 !dbg !243 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !247, metadata !DIExpression()), !dbg !250
  %k.debug = alloca %swift.opaque*, align 8
  %2 = bitcast %swift.opaque** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %x.debug = alloca %swift.opaque*, align 8
  call void @llvm.dbg.declare(metadata %swift.opaque** %x.debug, metadata !249, metadata !DIExpression(DW_OP_deref)), !dbg !251
  %3 = bitcast %swift.opaque** %x.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  %4 = bitcast %swift.opaque** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 8, i1 false)
  store %swift.type* %T, %swift.type** %T1, align 8
  %5 = bitcast %swift.type* %T to i8***, !dbg !252
  %6 = getelementptr inbounds i8**, i8*** %5, i64 -1, !dbg !252
  %T.valueWitnesses = load i8**, i8*** %6, align 8, !dbg !252, !invariant.load !46, !dereferenceable !194
  %7 = bitcast i8** %T.valueWitnesses to %swift.vwtable*, !dbg !252
  %8 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %7, i32 0, i32 8, !dbg !252
  %size = load i64, i64* %8, align 8, !dbg !252, !invariant.load !46
  %9 = alloca i8, i64 %size, align 16, !dbg !252
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %9), !dbg !252
  %10 = bitcast i8* %9 to %swift.opaque*, !dbg !252
  %11 = alloca i8, i64 %size, align 16, !dbg !252
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %11), !dbg !252
  %12 = bitcast i8* %11 to %swift.opaque*, !dbg !252
  store %swift.opaque* %0, %swift.opaque** %k.debug, align 8, !dbg !250
  call void @llvm.dbg.addr(metadata %swift.opaque** %k.debug, metadata !248, metadata !DIExpression(DW_OP_deref)), !dbg !255
  br label %entry.split2, !dbg !250

entry.split2:                                     ; preds = %entry
  store %swift.opaque* %1, %swift.opaque** %x.debug, align 8, !dbg !250
  %13 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 2, !dbg !256
  %14 = load i8*, i8** %13, align 8, !dbg !256, !invariant.load !46
  %initializeWithCopy = bitcast i8* %14 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !256
  %15 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %12, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !256
  %16 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !257
  %17 = load i8*, i8** %16, align 8, !dbg !257, !invariant.load !46
  %18 = bitcast i8* %17 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !257
  call swiftcc void %18(%swift.opaque* noalias nocapture swiftself %12, %swift.type* %T, i8** %T.P), !dbg !257
  %19 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 1, !dbg !257
  %20 = load i8*, i8** %19, align 8, !dbg !257, !invariant.load !46
  %destroy = bitcast i8* %20 to void (%swift.opaque*, %swift.type*)*, !dbg !257
  call void %destroy(%swift.opaque* noalias %12, %swift.type* %T) #4, !dbg !257
  %21 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %10, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !258
  %22 = getelementptr inbounds i8*, i8** %T.valueWitnesses, i32 4, !dbg !259
  %23 = load i8*, i8** %22, align 8, !dbg !259, !invariant.load !46
  %initializeWithTake = bitcast i8* %23 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !259
  %24 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %12, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !259
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !248, metadata !DIExpression(DW_OP_deref)), !dbg !255
  call void %destroy(%swift.opaque* noalias %10, %swift.type* %T) #4, !dbg !259
  %25 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !260
  %26 = load i8*, i8** %25, align 8, !dbg !260, !invariant.load !46
  %27 = bitcast i8* %26 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !260
  call swiftcc void %27(%swift.opaque* noalias nocapture swiftself %12, %swift.type* %T, i8** %T.P), !dbg !260
  %28 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %10, %swift.opaque* noalias %1, %swift.type* %T) #4, !dbg !261
  %29 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %0, %swift.opaque* noalias %10, %swift.type* %T) #4, !dbg !262
  store %swift.opaque* %0, %swift.opaque** %k.debug, align 8, !dbg !250
  call void @llvm.dbg.addr(metadata %swift.opaque** %k.debug, metadata !248, metadata !DIExpression(DW_OP_deref)), !dbg !255
  br label %entry.split, !dbg !263

entry.split:                                      ; preds = %entry.split2
  %30 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %10, %swift.opaque* noalias %0, %swift.type* %T) #4, !dbg !263
  %31 = getelementptr inbounds i8*, i8** %T.P, i32 2, !dbg !264
  %32 = load i8*, i8** %31, align 8, !dbg !264, !invariant.load !46
  %33 = bitcast i8* %32 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !264
  call swiftcc void %33(%swift.opaque* noalias nocapture swiftself %10, %swift.type* %T, i8** %T.P), !dbg !264
  call void %destroy(%swift.opaque* noalias %10, %swift.type* %T) #4, !dbg !265
  call void %destroy(%swift.opaque* noalias %12, %swift.type* %T) #4, !dbg !265
  %34 = bitcast %swift.opaque* %12 to i8*, !dbg !265
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %34), !dbg !265
  %35 = bitcast %swift.opaque* %10 to i8*, !dbg !265
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %35), !dbg !265
  ret void, !dbg !265
}

define swiftcc void @"$s4main23copyableValueCCFlowTestyyF"() #0 !dbg !266 {
entry:
  %k.debug = alloca %T4main5KlassC*, align 8
  %0 = bitcast %T4main5KlassC** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !270, metadata !DIExpression()), !dbg !273
  %1 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !274
  %3 = extractvalue %swift.metadata_response %2, 0, !dbg !274
  %4 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %3), !dbg !274
  store %T4main5KlassC* %4, %T4main5KlassC** %k.debug, align 8, !dbg !275
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k.debug, metadata !268, metadata !DIExpression()), !dbg !276
  br label %entry.split, !dbg !277

entry.split:                                      ; preds = %entry
  %5 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %4, i32 0, i32 0, i32 0, !dbg !277
  %6 = load %swift.type*, %swift.type** %5, align 8, !dbg !277
  %7 = bitcast %swift.type* %6 to void (%T4main5KlassC*)**, !dbg !277
  %8 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %7, i64 10, !dbg !277
  %9 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %8, align 8, !dbg !277, !invariant.load !46
  call swiftcc void %9(%T4main5KlassC* swiftself %4), !dbg !277
  %10 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !278
  br i1 %10, label %11, label %19, !dbg !278

11:                                               ; preds = %entry.split
  %12 = bitcast %T4main5KlassC* %4 to %swift.refcounted*, !dbg !279
  %13 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %12) #4, !dbg !279
  call void @llvm.dbg.value(metadata %T4main5KlassC* undef, metadata !268, metadata !DIExpression()), !dbg !276
  store %T4main5KlassC* %4, %T4main5KlassC** %m.debug, align 8, !dbg !280
  %14 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %4, i32 0, i32 0, i32 0, !dbg !281
  %15 = load %swift.type*, %swift.type** %14, align 8, !dbg !281
  %16 = bitcast %swift.type* %15 to void (%T4main5KlassC*)**, !dbg !281
  %17 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %16, i64 10, !dbg !281
  %18 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %17, align 8, !dbg !281, !invariant.load !46
  call swiftcc void %18(%T4main5KlassC* swiftself %4), !dbg !281
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %4) #4, !dbg !282
  br label %20, !dbg !282

19:                                               ; preds = %entry.split
  br label %20, !dbg !283

20:                                               ; preds = %11, %19
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %4) #4, !dbg !284
  ret void, !dbg !284
}

define swiftcc void @"$s4main26copyableValueArgCCFlowTestyyAA5KlassCnF"(%T4main5KlassC* %0) #0 !dbg !285 {
entry:
  %k.debug = alloca %T4main5KlassC*, align 8
  %1 = bitcast %T4main5KlassC** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !288, metadata !DIExpression()), !dbg !292
  %2 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  store %T4main5KlassC* %0, %T4main5KlassC** %k.debug, align 8, !dbg !293
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k.debug, metadata !287, metadata !DIExpression()), !dbg !294
  br label %entry.split, !dbg !295

entry.split:                                      ; preds = %entry
  %3 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %0, i32 0, i32 0, i32 0, !dbg !295
  %4 = load %swift.type*, %swift.type** %3, align 8, !dbg !295
  %5 = bitcast %swift.type* %4 to void (%T4main5KlassC*)**, !dbg !295
  %6 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %5, i64 10, !dbg !295
  %7 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %6, align 8, !dbg !295, !invariant.load !46
  call swiftcc void %7(%T4main5KlassC* swiftself %0), !dbg !295
  %8 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !296
  br i1 %8, label %9, label %17, !dbg !296

9:                                                ; preds = %entry.split
  %10 = bitcast %T4main5KlassC* %0 to %swift.refcounted*, !dbg !297
  %11 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %10) #4, !dbg !297
  call void @llvm.dbg.value(metadata %T4main5KlassC* undef, metadata !287, metadata !DIExpression()), !dbg !294
  store %T4main5KlassC* %0, %T4main5KlassC** %m.debug, align 8, !dbg !298
  %12 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %0, i32 0, i32 0, i32 0, !dbg !299
  %13 = load %swift.type*, %swift.type** %12, align 8, !dbg !299
  %14 = bitcast %swift.type* %13 to void (%T4main5KlassC*)**, !dbg !299
  %15 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %14, i64 10, !dbg !299
  %16 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %15, align 8, !dbg !299, !invariant.load !46
  call swiftcc void %16(%T4main5KlassC* swiftself %0), !dbg !299
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %0) #4, !dbg !300
  br label %18, !dbg !300

17:                                               ; preds = %entry.split
  br label %18, !dbg !301

18:                                               ; preds = %9, %17
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %0) #4, !dbg !302
  ret void, !dbg !302
}

define swiftcc void @"$s4main037copyableVarTestCCFlowReinitOutOfBlockD0yyF"() #0 !dbg !303 {
entry:
  %k = alloca %T4main5KlassC*, align 8
  %0 = bitcast %T4main5KlassC** %k to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !307, metadata !DIExpression()), !dbg !310
  %1 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast %T4main5KlassC** %k to i8*, !dbg !311
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2), !dbg !311
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k, metadata !305, metadata !DIExpression()), !dbg !313
  br label %entry.split, !dbg !314

entry.split:                                      ; preds = %entry
  %3 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !314
  %4 = extractvalue %swift.metadata_response %3, 0, !dbg !314
  %5 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %4), !dbg !314
  %6 = bitcast %T4main5KlassC* %5 to %swift.refcounted*, !dbg !314
  %7 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %6) #4, !dbg !314
  store %T4main5KlassC* %5, %T4main5KlassC** %k, align 8, !dbg !314
  %8 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %5, i32 0, i32 0, i32 0, !dbg !315
  %9 = load %swift.type*, %swift.type** %8, align 8, !dbg !315
  %10 = bitcast %swift.type* %9 to void (%T4main5KlassC*)**, !dbg !315
  %11 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %10, i64 10, !dbg !315
  %12 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %11, align 8, !dbg !315, !invariant.load !46
  call swiftcc void %12(%T4main5KlassC* swiftself %5), !dbg !315
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %5) #4, !dbg !315
  %13 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !316
  br i1 %13, label %14, label %21, !dbg !316

14:                                               ; preds = %entry.split
  %15 = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !317
  call void @llvm.dbg.value(metadata %T4main5KlassC** undef, metadata !305, metadata !DIExpression()), !dbg !313
  store %T4main5KlassC* %15, %T4main5KlassC** %m.debug, align 8, !dbg !318
  %16 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %15, i32 0, i32 0, i32 0, !dbg !319
  %17 = load %swift.type*, %swift.type** %16, align 8, !dbg !319
  %18 = bitcast %swift.type* %17 to void (%T4main5KlassC*)**, !dbg !319
  %19 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %18, i64 10, !dbg !319
  %20 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %19, align 8, !dbg !319, !invariant.load !46
  call swiftcc void %20(%T4main5KlassC* swiftself %15), !dbg !319
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %15) #4, !dbg !320
  br label %22, !dbg !320

21:                                               ; preds = %entry.split
  %toDestroy = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !316
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %toDestroy) #4, !dbg !316
  br label %22, !dbg !321

22:                                               ; preds = %14, %21
  %23 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %4), !dbg !322
  %24 = bitcast %T4main5KlassC* %23 to %swift.refcounted*, !dbg !323
  %25 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %24) #4, !dbg !323
  store %T4main5KlassC* %23, %T4main5KlassC** %k, align 8, !dbg !323
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k, metadata !305, metadata !DIExpression()), !dbg !313
  br label %.split, !dbg !324

.split:                                           ; preds = %22
  %26 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %23, i32 0, i32 0, i32 0, !dbg !324
  %27 = load %swift.type*, %swift.type** %26, align 8, !dbg !324
  %28 = bitcast %swift.type* %27 to void (%T4main5KlassC*)**, !dbg !324
  %29 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %28, i64 10, !dbg !324
  %30 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %29, align 8, !dbg !324, !invariant.load !46
  call swiftcc void %30(%T4main5KlassC* swiftself %23), !dbg !324
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %23) #4, !dbg !325
  %toDestroy1 = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !325
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %toDestroy1) #4, !dbg !325
  %31 = bitcast %T4main5KlassC** %k to i8*, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31), !dbg !325
  ret void, !dbg !325
}

define swiftcc void @"$s4main040copyableVarArgTestCCFlowReinitOutOfBlockE0yyAA5KlassCzF"(%T4main5KlassC** nocapture dereferenceable(8) %0) #0 !dbg !326 {
entry:
  %k.debug = alloca %T4main5KlassC**, align 8
  %1 = bitcast %T4main5KlassC*** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast %T4main5KlassC*** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !329, metadata !DIExpression()), !dbg !333
  %3 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  store %T4main5KlassC** %0, %T4main5KlassC*** %k.debug, align 8, !dbg !334
  call void @llvm.dbg.addr(metadata %T4main5KlassC*** %k.debug, metadata !328, metadata !DIExpression(DW_OP_deref)), !dbg !335
  br label %entry.split, !dbg !336

entry.split:                                      ; preds = %entry
  %4 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !336
  %5 = bitcast %T4main5KlassC* %4 to %swift.refcounted*, !dbg !336
  %6 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %5) #4, !dbg !336
  %7 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %4, i32 0, i32 0, i32 0, !dbg !337
  %8 = load %swift.type*, %swift.type** %7, align 8, !dbg !337
  %9 = bitcast %swift.type* %8 to void (%T4main5KlassC*)**, !dbg !337
  %10 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %9, i64 10, !dbg !337
  %11 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %10, align 8, !dbg !337, !invariant.load !46
  call swiftcc void %11(%T4main5KlassC* swiftself %4), !dbg !337
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %4) #4, !dbg !337
  %12 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !338
  br i1 %12, label %13, label %20, !dbg !338

13:                                               ; preds = %entry.split
  %14 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !339
  call void @llvm.dbg.value(metadata %T4main5KlassC** undef, metadata !328, metadata !DIExpression(DW_OP_deref)), !dbg !335
  store %T4main5KlassC* %14, %T4main5KlassC** %m.debug, align 8, !dbg !340
  %15 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %14, i32 0, i32 0, i32 0, !dbg !341
  %16 = load %swift.type*, %swift.type** %15, align 8, !dbg !341
  %17 = bitcast %swift.type* %16 to void (%T4main5KlassC*)**, !dbg !341
  %18 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %17, i64 10, !dbg !341
  %19 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %18, align 8, !dbg !341, !invariant.load !46
  call swiftcc void %19(%T4main5KlassC* swiftself %14), !dbg !341
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %14) #4, !dbg !342
  br label %21, !dbg !342

20:                                               ; preds = %entry.split
  %toDestroy = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !338
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %toDestroy) #4, !dbg !338
  br label %21, !dbg !343

21:                                               ; preds = %13, %20
  %22 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !344
  %23 = extractvalue %swift.metadata_response %22, 0, !dbg !344
  %24 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %23), !dbg !344
  store %T4main5KlassC* %24, %T4main5KlassC** %0, align 8, !dbg !345
  store %T4main5KlassC** %0, %T4main5KlassC*** %k.debug, align 8, !dbg !334
  call void @llvm.dbg.addr(metadata %T4main5KlassC*** %k.debug, metadata !328, metadata !DIExpression(DW_OP_deref)), !dbg !335
  br label %.split, !dbg !346

.split:                                           ; preds = %21
  %25 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !346
  %26 = bitcast %T4main5KlassC* %25 to %swift.refcounted*, !dbg !346
  %27 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %26) #4, !dbg !346
  %28 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %25, i32 0, i32 0, i32 0, !dbg !347
  %29 = load %swift.type*, %swift.type** %28, align 8, !dbg !347
  %30 = bitcast %swift.type* %29 to void (%T4main5KlassC*)**, !dbg !347
  %31 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %30, i64 10, !dbg !347
  %32 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %31, align 8, !dbg !347, !invariant.load !46
  call swiftcc void %32(%T4main5KlassC* swiftself %25), !dbg !347
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %25) #4, !dbg !348
  ret void, !dbg !348
}

define swiftcc void @"$s4main034copyableVarTestCCFlowReinitInBlockD0yyF"() #0 !dbg !349 {
entry:
  %k = alloca %T4main5KlassC*, align 8
  %0 = bitcast %T4main5KlassC** %k to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !353, metadata !DIExpression()), !dbg !356
  %1 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast %T4main5KlassC** %k to i8*, !dbg !357
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2), !dbg !357
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k, metadata !351, metadata !DIExpression()), !dbg !359
  br label %entry.split, !dbg !360

entry.split:                                      ; preds = %entry
  %3 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !360
  %4 = extractvalue %swift.metadata_response %3, 0, !dbg !360
  %5 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %4), !dbg !360
  %6 = bitcast %T4main5KlassC* %5 to %swift.refcounted*, !dbg !360
  %7 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %6) #4, !dbg !360
  store %T4main5KlassC* %5, %T4main5KlassC** %k, align 8, !dbg !360
  %8 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %5, i32 0, i32 0, i32 0, !dbg !361
  %9 = load %swift.type*, %swift.type** %8, align 8, !dbg !361
  %10 = bitcast %swift.type* %9 to void (%T4main5KlassC*)**, !dbg !361
  %11 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %10, i64 10, !dbg !361
  %12 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %11, align 8, !dbg !361, !invariant.load !46
  call swiftcc void %12(%T4main5KlassC* swiftself %5), !dbg !361
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %5) #4, !dbg !361
  %13 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !362
  br i1 %13, label %14, label %22, !dbg !362

14:                                               ; preds = %entry.split
  %15 = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !363
  call void @llvm.dbg.value(metadata %T4main5KlassC** undef, metadata !351, metadata !DIExpression()), !dbg !359
  store %T4main5KlassC* %15, %T4main5KlassC** %m.debug, align 8, !dbg !364
  %16 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %15, i32 0, i32 0, i32 0, !dbg !365
  %17 = load %swift.type*, %swift.type** %16, align 8, !dbg !365
  %18 = bitcast %swift.type* %17 to void (%T4main5KlassC*)**, !dbg !365
  %19 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %18, i64 10, !dbg !365
  %20 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %19, align 8, !dbg !365, !invariant.load !46
  call swiftcc void %20(%T4main5KlassC* swiftself %15), !dbg !365
  %21 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %4), !dbg !366
  store %T4main5KlassC* %21, %T4main5KlassC** %k, align 8, !dbg !367
  call void @llvm.dbg.addr(metadata %T4main5KlassC** %k, metadata !351, metadata !DIExpression()), !dbg !359
  br label %.split, !dbg !368

.split:                                           ; preds = %14
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %15) #4, !dbg !368
  br label %23, !dbg !368

22:                                               ; preds = %entry.split
  br label %23, !dbg !369

23:                                               ; preds = %.split, %22
  %24 = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !370
  %25 = bitcast %T4main5KlassC* %24 to %swift.refcounted*, !dbg !370
  %26 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %25) #4, !dbg !370
  %27 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %24, i32 0, i32 0, i32 0, !dbg !371
  %28 = load %swift.type*, %swift.type** %27, align 8, !dbg !371
  %29 = bitcast %swift.type* %28 to void (%T4main5KlassC*)**, !dbg !371
  %30 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %29, i64 10, !dbg !371
  %31 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %30, align 8, !dbg !371, !invariant.load !46
  call swiftcc void %31(%T4main5KlassC* swiftself %24), !dbg !371
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %24) #4, !dbg !372
  %toDestroy = load %T4main5KlassC*, %T4main5KlassC** %k, align 8, !dbg !372
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %toDestroy) #4, !dbg !372
  %32 = bitcast %T4main5KlassC** %k to i8*, !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32), !dbg !372
  ret void, !dbg !372
}

define swiftcc void @"$s4main037copyableVarArgTestCCFlowReinitInBlockE0yyAA5KlassCzF"(%T4main5KlassC** nocapture dereferenceable(8) %0) #0 !dbg !373 {
entry:
  %k.debug = alloca %T4main5KlassC**, align 8
  %1 = bitcast %T4main5KlassC*** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %m.debug = alloca %T4main5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T4main5KlassC** %m.debug, metadata !376, metadata !DIExpression()), !dbg !380
  %2 = bitcast %T4main5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = bitcast %T4main5KlassC*** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  store %T4main5KlassC** %0, %T4main5KlassC*** %k.debug, align 8, !dbg !381
  call void @llvm.dbg.addr(metadata %T4main5KlassC*** %k.debug, metadata !375, metadata !DIExpression(DW_OP_deref)), !dbg !382
  br label %entry.split, !dbg !383

entry.split:                                      ; preds = %entry
  %4 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !383
  %5 = bitcast %T4main5KlassC* %4 to %swift.refcounted*, !dbg !383
  %6 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %5) #4, !dbg !383
  %7 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %4, i32 0, i32 0, i32 0, !dbg !384
  %8 = load %swift.type*, %swift.type** %7, align 8, !dbg !384
  %9 = bitcast %swift.type* %8 to void (%T4main5KlassC*)**, !dbg !384
  %10 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %9, i64 10, !dbg !384
  %11 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %10, align 8, !dbg !384, !invariant.load !46
  call swiftcc void %11(%T4main5KlassC* swiftself %4), !dbg !384
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %4) #4, !dbg !384
  %12 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !385
  br i1 %12, label %13, label %23, !dbg !385

13:                                               ; preds = %entry.split
  %14 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !386
  call void @llvm.dbg.value(metadata %T4main5KlassC** undef, metadata !375, metadata !DIExpression(DW_OP_deref)), !dbg !382
  store %T4main5KlassC* %14, %T4main5KlassC** %m.debug, align 8, !dbg !387
  %15 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %14, i32 0, i32 0, i32 0, !dbg !388
  %16 = load %swift.type*, %swift.type** %15, align 8, !dbg !388
  %17 = bitcast %swift.type* %16 to void (%T4main5KlassC*)**, !dbg !388
  %18 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %17, i64 10, !dbg !388
  %19 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %18, align 8, !dbg !388, !invariant.load !46
  call swiftcc void %19(%T4main5KlassC* swiftself %14), !dbg !388
  %20 = call swiftcc %swift.metadata_response @"$s4main5KlassCMa"(i64 0) #10, !dbg !389
  %21 = extractvalue %swift.metadata_response %20, 0, !dbg !389
  %22 = call swiftcc %T4main5KlassC* @"$s4main5KlassCACycfC"(%swift.type* swiftself %21), !dbg !389
  store %T4main5KlassC* %22, %T4main5KlassC** %0, align 8, !dbg !390
  store %T4main5KlassC** %0, %T4main5KlassC*** %k.debug, align 8, !dbg !381
  call void @llvm.dbg.addr(metadata %T4main5KlassC*** %k.debug, metadata !375, metadata !DIExpression(DW_OP_deref)), !dbg !382
  br label %.split, !dbg !391

.split:                                           ; preds = %13
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %14) #4, !dbg !391
  br label %24, !dbg !391

23:                                               ; preds = %entry.split
  br label %24, !dbg !392

24:                                               ; preds = %.split, %23
  %25 = load %T4main5KlassC*, %T4main5KlassC** %0, align 8, !dbg !393
  %26 = bitcast %T4main5KlassC* %25 to %swift.refcounted*, !dbg !393
  %27 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %26) #4, !dbg !393
  %28 = getelementptr inbounds %T4main5KlassC, %T4main5KlassC* %25, i32 0, i32 0, i32 0, !dbg !394
  %29 = load %swift.type*, %swift.type** %28, align 8, !dbg !394
  %30 = bitcast %swift.type* %29 to void (%T4main5KlassC*)**, !dbg !394
  %31 = getelementptr inbounds void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %30, i64 10, !dbg !394
  %32 = load void (%T4main5KlassC*)*, void (%T4main5KlassC*)** %31, align 8, !dbg !394, !invariant.load !46
  call swiftcc void %32(%T4main5KlassC* swiftself %25), !dbg !394
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T4main5KlassC*)*)(%T4main5KlassC* %25) #4, !dbg !395
  ret void, !dbg !395
}

define swiftcc void @"$s4main040addressOnlyVarTestCCFlowReinitOutOfBlockE0yyxmAA1PRzlF"(%swift.type* %0, %swift.type* %T, i8** %T.P) #0 !dbg !396 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !401, metadata !DIExpression()), !dbg !411
  %x.debug = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %x.debug, metadata !402, metadata !DIExpression()), !dbg !412
  %1 = bitcast %swift.type** %x.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %k = alloca %T4main1PP, align 8
  %2 = alloca %T4main1PP, align 8
  %3 = alloca %T4main1PP, align 8
  %4 = alloca %T4main1PP, align 8
  %m = alloca %T4main1PP, align 8
  call void @llvm.dbg.declare(metadata %T4main1PP* %m, metadata !407, metadata !DIExpression()), !dbg !413
  %5 = alloca %T4main1PP, align 8
  store %swift.type* %T, %swift.type** %T1, align 8
  store %swift.type* %0, %swift.type** %x.debug, align 8, !dbg !411
  %6 = bitcast %T4main1PP* %k to i8*, !dbg !414
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %6), !dbg !414
  call void @llvm.dbg.addr(metadata %T4main1PP* %k, metadata !404, metadata !DIExpression()), !dbg !416
  br label %entry.split, !dbg !417

entry.split:                                      ; preds = %entry
  %7 = getelementptr inbounds i8*, i8** %T.P, i32 1, !dbg !417
  %8 = load i8*, i8** %7, align 8, !dbg !417, !invariant.load !46
  %9 = bitcast i8* %8 to void (%T4main1PP*, %swift.type*, %swift.type*, i8**)*, !dbg !417
  call swiftcc void %9(%T4main1PP* noalias nocapture sret(%T4main1PP) %k, %swift.type* swiftself %T, %swift.type* %T, i8** %T.P), !dbg !417
  %10 = bitcast %T4main1PP* %2 to i8*, !dbg !414
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %10), !dbg !414
  %11 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %k, %T4main1PP* %2), !dbg !418
  %12 = getelementptr inbounds %T4main1PP, %T4main1PP* %2, i32 0, i32 1, !dbg !419
  %13 = load %swift.type*, %swift.type** %12, align 8, !dbg !419
  %14 = getelementptr inbounds %T4main1PP, %T4main1PP* %2, i32 0, i32 2, !dbg !419
  %15 = load i8**, i8*** %14, align 8, !dbg !419
  %16 = bitcast %T4main1PP* %2 to %__opaque_existential_type_1*, !dbg !419
  %17 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %16, %swift.type* %13) #4, !dbg !419
  %18 = getelementptr inbounds i8*, i8** %15, i32 2, !dbg !419
  %19 = load i8*, i8** %18, align 8, !dbg !419, !invariant.load !46
  %20 = bitcast i8* %19 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !419
  call swiftcc void %20(%swift.opaque* noalias nocapture swiftself %17, %swift.type* %13, i8** %15), !dbg !419
  %21 = bitcast %T4main1PP* %2 to %__opaque_existential_type_1*, !dbg !419
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %21) #4, !dbg !419
  %22 = bitcast %T4main1PP* %2 to i8*, !dbg !419
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %22), !dbg !419
  %23 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !420
  br i1 %23, label %24, label %42, !dbg !420

24:                                               ; preds = %entry.split
  %25 = bitcast %T4main1PP* %m to i8*, !dbg !421
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %25), !dbg !421
  %26 = bitcast %T4main1PP* %5 to i8*, !dbg !421
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %26), !dbg !421
  %27 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %k, %T4main1PP* %5), !dbg !423
  %28 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %k, %T4main1PP* %m), !dbg !424
  call void @llvm.dbg.value(metadata %T4main1PP* undef, metadata !404, metadata !DIExpression()), !dbg !416
  %29 = bitcast %T4main1PP* %5 to %__opaque_existential_type_1*, !dbg !424
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %29) #4, !dbg !424
  %30 = bitcast %T4main1PP* %5 to i8*, !dbg !424
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %30), !dbg !424
  %31 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 1, !dbg !425
  %32 = load %swift.type*, %swift.type** %31, align 8, !dbg !425
  %33 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 2, !dbg !425
  %34 = load i8**, i8*** %33, align 8, !dbg !425
  %35 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !425
  %36 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %35, %swift.type* %32) #4, !dbg !425
  %37 = getelementptr inbounds i8*, i8** %34, i32 2, !dbg !425
  %38 = load i8*, i8** %37, align 8, !dbg !425, !invariant.load !46
  %39 = bitcast i8* %38 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !425
  call swiftcc void %39(%swift.opaque* noalias nocapture swiftself %36, %swift.type* %32, i8** %34), !dbg !425
  %40 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !426
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %40) #4, !dbg !426
  %41 = bitcast %T4main1PP* %m to i8*, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %41), !dbg !426
  br label %44, !dbg !426

42:                                               ; preds = %entry.split
  %43 = bitcast %T4main1PP* %k to %__opaque_existential_type_1*, !dbg !420
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %43) #4, !dbg !420
  br label %44, !dbg !427

44:                                               ; preds = %24, %42
  %45 = bitcast %T4main1PP* %3 to i8*, !dbg !414
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %45), !dbg !414
  %46 = getelementptr inbounds i8*, i8** %T.P, i32 1, !dbg !428
  %47 = load i8*, i8** %46, align 8, !dbg !428, !invariant.load !46
  %48 = bitcast i8* %47 to void (%T4main1PP*, %swift.type*, %swift.type*, i8**)*, !dbg !428
  call swiftcc void %48(%T4main1PP* noalias nocapture sret(%T4main1PP) %3, %swift.type* swiftself %T, %swift.type* %T, i8** %T.P), !dbg !428
  %49 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %3, %T4main1PP* %k), !dbg !429
  call void @llvm.dbg.addr(metadata %T4main1PP* %k, metadata !404, metadata !DIExpression()), !dbg !416
  br label %.split, !dbg !414

.split:                                           ; preds = %44
  %50 = bitcast %T4main1PP* %3 to i8*, !dbg !414
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %50), !dbg !414
  %51 = bitcast %T4main1PP* %4 to i8*, !dbg !414
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %51), !dbg !414
  %52 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %k, %T4main1PP* %4), !dbg !430
  %53 = getelementptr inbounds %T4main1PP, %T4main1PP* %4, i32 0, i32 1, !dbg !431
  %54 = load %swift.type*, %swift.type** %53, align 8, !dbg !431
  %55 = getelementptr inbounds %T4main1PP, %T4main1PP* %4, i32 0, i32 2, !dbg !431
  %56 = load i8**, i8*** %55, align 8, !dbg !431
  %57 = bitcast %T4main1PP* %4 to %__opaque_existential_type_1*, !dbg !431
  %58 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %57, %swift.type* %54) #4, !dbg !431
  %59 = getelementptr inbounds i8*, i8** %56, i32 2, !dbg !431
  %60 = load i8*, i8** %59, align 8, !dbg !431, !invariant.load !46
  %61 = bitcast i8* %60 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !431
  call swiftcc void %61(%swift.opaque* noalias nocapture swiftself %58, %swift.type* %54, i8** %56), !dbg !431
  %62 = bitcast %T4main1PP* %4 to %__opaque_existential_type_1*, !dbg !432
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %62) #4, !dbg !432
  %63 = bitcast %T4main1PP* %4 to i8*, !dbg !432
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %63), !dbg !432
  %64 = bitcast %T4main1PP* %k to %__opaque_existential_type_1*, !dbg !432
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %64) #4, !dbg !432
  %65 = bitcast %T4main1PP* %k to i8*, !dbg !432
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %65), !dbg !432
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %0, %T4main1PP* %1) #8 !dbg !433 {
entry:
  %2 = getelementptr inbounds %T4main1PP, %T4main1PP* %0, i32 0, i32 1, !dbg !434
  %3 = load %swift.type*, %swift.type** %2, align 8, !dbg !434
  %4 = getelementptr inbounds %T4main1PP, %T4main1PP* %1, i32 0, i32 1, !dbg !434
  store %swift.type* %3, %swift.type** %4, align 8, !dbg !434
  %5 = getelementptr inbounds %T4main1PP, %T4main1PP* %0, i32 0, i32 2, !dbg !434
  %6 = load i8**, i8*** %5, align 8, !dbg !434
  %7 = getelementptr inbounds %T4main1PP, %T4main1PP* %1, i32 0, i32 2, !dbg !434
  store i8** %6, i8*** %7, align 8, !dbg !434
  %8 = getelementptr inbounds %T4main1PP, %T4main1PP* %0, i32 0, i32 0, !dbg !434
  %9 = getelementptr inbounds %T4main1PP, %T4main1PP* %1, i32 0, i32 0, !dbg !434
  %10 = bitcast %swift.type* %3 to i8***, !dbg !434
  %11 = getelementptr inbounds i8**, i8*** %10, i64 -1, !dbg !434
  %.valueWitnesses = load i8**, i8*** %11, align 8, !dbg !434, !invariant.load !46, !dereferenceable !194
  %12 = load i8*, i8** %.valueWitnesses, align 8, !dbg !434, !invariant.load !46
  %initializeBufferWithCopyOfBuffer = bitcast i8* %12 to %swift.opaque* ([24 x i8]*, [24 x i8]*, %swift.type*)*, !dbg !434
  %13 = call %swift.opaque* %initializeBufferWithCopyOfBuffer([24 x i8]* noalias %9, [24 x i8]* noalias %8, %swift.type* %3) #4, !dbg !434
  ret %T4main1PP* %1, !dbg !434
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %0, %swift.type* %1) #8 !dbg !435 {
entry:
  %2 = bitcast %swift.type* %1 to i8***, !dbg !436
  %3 = getelementptr inbounds i8**, i8*** %2, i64 -1, !dbg !436
  %.valueWitnesses = load i8**, i8*** %3, align 8, !dbg !436, !invariant.load !46, !dereferenceable !194
  %4 = bitcast i8** %.valueWitnesses to %swift.vwtable*, !dbg !436
  %5 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %4, i32 0, i32 10, !dbg !436
  %flags = load i32, i32* %5, align 8, !dbg !436, !invariant.load !46
  %6 = and i32 %flags, 131072, !dbg !436
  %flags.isInline = icmp eq i32 %6, 0, !dbg !436
  %7 = bitcast %__opaque_existential_type_1* %0 to %swift.opaque*, !dbg !436
  br i1 %flags.isInline, label %done, label %boxed, !dbg !436

done:                                             ; preds = %entry
  ret %swift.opaque* %7, !dbg !436

boxed:                                            ; preds = %entry
  %8 = bitcast %__opaque_existential_type_1* %0 to %swift.refcounted**, !dbg !436
  %9 = load %swift.refcounted*, %swift.refcounted** %8, align 8, !dbg !436
  %10 = zext i32 %flags to i64, !dbg !436
  %flags.alignmentMask = and i64 %10, 255, !dbg !436
  %11 = add i64 16, %flags.alignmentMask, !dbg !436
  %12 = xor i64 %flags.alignmentMask, -1, !dbg !436
  %13 = and i64 %11, %12, !dbg !436
  %14 = bitcast %swift.refcounted* %9 to i8*, !dbg !436
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !436
  %16 = bitcast i8* %15 to %swift.opaque*, !dbg !436
  ret %swift.opaque* %16, !dbg !436
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %0) #8 !dbg !437 {
entry:
  %1 = getelementptr inbounds %__opaque_existential_type_1, %__opaque_existential_type_1* %0, i32 0, i32 1, !dbg !438
  %2 = load %swift.type*, %swift.type** %1, align 8, !dbg !438
  %3 = getelementptr inbounds %__opaque_existential_type_1, %__opaque_existential_type_1* %0, i32 0, i32 0, !dbg !438
  %4 = bitcast %swift.type* %2 to i8***, !dbg !438
  %5 = getelementptr inbounds i8**, i8*** %4, i64 -1, !dbg !438
  %.valueWitnesses = load i8**, i8*** %5, align 8, !dbg !438, !invariant.load !46, !dereferenceable !194
  %6 = bitcast i8** %.valueWitnesses to %swift.vwtable*, !dbg !438
  %7 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %6, i32 0, i32 10, !dbg !438
  %flags = load i32, i32* %7, align 8, !dbg !438, !invariant.load !46
  %8 = and i32 %flags, 131072, !dbg !438
  %flags.isInline = icmp eq i32 %8, 0, !dbg !438
  br i1 %flags.isInline, label %inline, label %outline, !dbg !438

inline:                                           ; preds = %entry
  %9 = bitcast [24 x i8]* %3 to %swift.opaque*, !dbg !438
  %10 = bitcast %swift.type* %2 to i8***, !dbg !438
  %11 = getelementptr inbounds i8**, i8*** %10, i64 -1, !dbg !438
  %.valueWitnesses1 = load i8**, i8*** %11, align 8, !dbg !438, !invariant.load !46, !dereferenceable !194
  %12 = getelementptr inbounds i8*, i8** %.valueWitnesses1, i32 1, !dbg !438
  %13 = load i8*, i8** %12, align 8, !dbg !438, !invariant.load !46
  %destroy = bitcast i8* %13 to void (%swift.opaque*, %swift.type*)*, !dbg !438
  call void %destroy(%swift.opaque* noalias %9, %swift.type* %2) #4, !dbg !438
  ret void, !dbg !438

outline:                                          ; preds = %entry
  %14 = bitcast [24 x i8]* %3 to %swift.refcounted**, !dbg !438
  %15 = load %swift.refcounted*, %swift.refcounted** %14, align 8, !dbg !438
  call void @swift_release(%swift.refcounted* %15) #4, !dbg !438
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %0, %T4main1PP* %1) #8 !dbg !439 {
entry:
  %2 = bitcast %T4main1PP* %1 to i8*, !dbg !440
  %3 = bitcast %T4main1PP* %0 to i8*, !dbg !440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 40, i1 false), !dbg !440
  ret %T4main1PP* %1, !dbg !440
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

define swiftcc void @"$s4main043addressOnlyVarArgTestCCFlowReinitOutOfBlockF0yyAA1P_pz_xmtAaCRzlF"(%T4main1PP* nocapture dereferenceable(40) %0, %swift.type* %1, %swift.type* %T, i8** %T.P) #0 !dbg !441 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !445, metadata !DIExpression()), !dbg !452
  %k.debug = alloca %T4main1PP*, align 8
  %2 = bitcast %T4main1PP** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %x.debug = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %x.debug, metadata !447, metadata !DIExpression()), !dbg !453
  %3 = bitcast %swift.type** %x.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  %4 = alloca %T4main1PP, align 8
  %5 = alloca %T4main1PP, align 8
  %6 = bitcast %T4main1PP** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %7 = alloca %T4main1PP, align 8
  %m = alloca %T4main1PP, align 8
  call void @llvm.dbg.declare(metadata %T4main1PP* %m, metadata !448, metadata !DIExpression()), !dbg !454
  %8 = alloca %T4main1PP, align 8
  store %swift.type* %T, %swift.type** %T1, align 8
  store %T4main1PP* %0, %T4main1PP** %k.debug, align 8, !dbg !452
  call void @llvm.dbg.addr(metadata %T4main1PP** %k.debug, metadata !446, metadata !DIExpression(DW_OP_deref)), !dbg !455
  br label %entry.split, !dbg !452

entry.split:                                      ; preds = %entry
  store %swift.type* %1, %swift.type** %x.debug, align 8, !dbg !452
  %9 = bitcast %T4main1PP* %4 to i8*, !dbg !456
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %9), !dbg !456
  %10 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %0, %T4main1PP* %4), !dbg !458
  %11 = getelementptr inbounds %T4main1PP, %T4main1PP* %4, i32 0, i32 1, !dbg !459
  %12 = load %swift.type*, %swift.type** %11, align 8, !dbg !459
  %13 = getelementptr inbounds %T4main1PP, %T4main1PP* %4, i32 0, i32 2, !dbg !459
  %14 = load i8**, i8*** %13, align 8, !dbg !459
  %15 = bitcast %T4main1PP* %4 to %__opaque_existential_type_1*, !dbg !459
  %16 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %15, %swift.type* %12) #4, !dbg !459
  %17 = getelementptr inbounds i8*, i8** %14, i32 2, !dbg !459
  %18 = load i8*, i8** %17, align 8, !dbg !459, !invariant.load !46
  %19 = bitcast i8* %18 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !459
  call swiftcc void %19(%swift.opaque* noalias nocapture swiftself %16, %swift.type* %12, i8** %14), !dbg !459
  %20 = bitcast %T4main1PP* %4 to %__opaque_existential_type_1*, !dbg !459
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %20) #4, !dbg !459
  %21 = bitcast %T4main1PP* %4 to i8*, !dbg !459
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %21), !dbg !459
  %22 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !460
  br i1 %22, label %23, label %41, !dbg !460

23:                                               ; preds = %entry.split
  %24 = bitcast %T4main1PP* %m to i8*, !dbg !461
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %24), !dbg !461
  %25 = bitcast %T4main1PP* %8 to i8*, !dbg !461
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %25), !dbg !461
  %26 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %0, %T4main1PP* %8), !dbg !463
  %27 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %0, %T4main1PP* %m), !dbg !464
  call void @llvm.dbg.value(metadata %T4main1PP* undef, metadata !446, metadata !DIExpression(DW_OP_deref)), !dbg !455
  %28 = bitcast %T4main1PP* %8 to %__opaque_existential_type_1*, !dbg !464
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %28) #4, !dbg !464
  %29 = bitcast %T4main1PP* %8 to i8*, !dbg !464
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %29), !dbg !464
  %30 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 1, !dbg !465
  %31 = load %swift.type*, %swift.type** %30, align 8, !dbg !465
  %32 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 2, !dbg !465
  %33 = load i8**, i8*** %32, align 8, !dbg !465
  %34 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !465
  %35 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %34, %swift.type* %31) #4, !dbg !465
  %36 = getelementptr inbounds i8*, i8** %33, i32 2, !dbg !465
  %37 = load i8*, i8** %36, align 8, !dbg !465, !invariant.load !46
  %38 = bitcast i8* %37 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !465
  call swiftcc void %38(%swift.opaque* noalias nocapture swiftself %35, %swift.type* %31, i8** %33), !dbg !465
  %39 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !466
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %39) #4, !dbg !466
  %40 = bitcast %T4main1PP* %m to i8*, !dbg !466
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %40), !dbg !466
  br label %43, !dbg !466

41:                                               ; preds = %entry.split
  %42 = bitcast %T4main1PP* %0 to %__opaque_existential_type_1*, !dbg !460
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %42) #4, !dbg !460
  br label %43, !dbg !467

43:                                               ; preds = %23, %41
  %44 = bitcast %T4main1PP* %5 to i8*, !dbg !456
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %44), !dbg !456
  %45 = getelementptr inbounds i8*, i8** %T.P, i32 1, !dbg !468
  %46 = load i8*, i8** %45, align 8, !dbg !468, !invariant.load !46
  %47 = bitcast i8* %46 to void (%T4main1PP*, %swift.type*, %swift.type*, i8**)*, !dbg !468
  call swiftcc void %47(%T4main1PP* noalias nocapture sret(%T4main1PP) %5, %swift.type* swiftself %T, %swift.type* %T, i8** %T.P), !dbg !468
  %48 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %5, %T4main1PP* %0), !dbg !469
  store %T4main1PP* %0, %T4main1PP** %k.debug, align 8, !dbg !452
  call void @llvm.dbg.addr(metadata %T4main1PP** %k.debug, metadata !446, metadata !DIExpression(DW_OP_deref)), !dbg !455
  br label %.split, !dbg !470

.split:                                           ; preds = %43
  %49 = bitcast %T4main1PP* %5 to i8*, !dbg !470
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %49), !dbg !470
  %50 = bitcast %T4main1PP* %7 to i8*, !dbg !456
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %50), !dbg !456
  %51 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %0, %T4main1PP* %7), !dbg !471
  %52 = getelementptr inbounds %T4main1PP, %T4main1PP* %7, i32 0, i32 1, !dbg !472
  %53 = load %swift.type*, %swift.type** %52, align 8, !dbg !472
  %54 = getelementptr inbounds %T4main1PP, %T4main1PP* %7, i32 0, i32 2, !dbg !472
  %55 = load i8**, i8*** %54, align 8, !dbg !472
  %56 = bitcast %T4main1PP* %7 to %__opaque_existential_type_1*, !dbg !472
  %57 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %56, %swift.type* %53) #4, !dbg !472
  %58 = getelementptr inbounds i8*, i8** %55, i32 2, !dbg !472
  %59 = load i8*, i8** %58, align 8, !dbg !472, !invariant.load !46
  %60 = bitcast i8* %59 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !472
  call swiftcc void %60(%swift.opaque* noalias nocapture swiftself %57, %swift.type* %53, i8** %55), !dbg !472
  %61 = bitcast %T4main1PP* %7 to %__opaque_existential_type_1*, !dbg !473
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %61) #4, !dbg !473
  %62 = bitcast %T4main1PP* %7 to i8*, !dbg !473
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %62), !dbg !473
  ret void, !dbg !473
}

define swiftcc void @"$s4main037addressOnlyVarTestCCFlowReinitInBlockE0yyxmAA1PRzlF"(%swift.type* %0, %swift.type* %T, i8** %T.P) #0 !dbg !474 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !476, metadata !DIExpression()), !dbg !483
  %x.debug = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %x.debug, metadata !477, metadata !DIExpression()), !dbg !484
  %1 = bitcast %swift.type** %x.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %k = alloca %T4main1PP, align 8
  %2 = alloca %T4main1PP, align 8
  %3 = alloca %T4main1PP, align 8
  %m = alloca %T4main1PP, align 8
  call void @llvm.dbg.declare(metadata %T4main1PP* %m, metadata !480, metadata !DIExpression()), !dbg !485
  %4 = alloca %T4main1PP, align 8
  %5 = alloca %T4main1PP, align 8
  store %swift.type* %T, %swift.type** %T1, align 8
  store %swift.type* %0, %swift.type** %x.debug, align 8, !dbg !483
  %6 = bitcast %T4main1PP* %k to i8*, !dbg !486
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %6), !dbg !486
  call void @llvm.dbg.addr(metadata %T4main1PP* %k, metadata !478, metadata !DIExpression()), !dbg !488
  br label %entry.split, !dbg !489

entry.split:                                      ; preds = %entry
  %7 = getelementptr inbounds i8*, i8** %T.P, i32 1, !dbg !489
  %8 = load i8*, i8** %7, align 8, !dbg !489, !invariant.load !46
  %9 = bitcast i8* %8 to void (%T4main1PP*, %swift.type*, %swift.type*, i8**)*, !dbg !489
  call swiftcc void %9(%T4main1PP* noalias nocapture sret(%T4main1PP) %k, %swift.type* swiftself %T, %swift.type* %T, i8** %T.P), !dbg !489
  %10 = bitcast %T4main1PP* %2 to i8*, !dbg !486
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %10), !dbg !486
  %11 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %k, %T4main1PP* %2), !dbg !490
  %12 = getelementptr inbounds %T4main1PP, %T4main1PP* %2, i32 0, i32 1, !dbg !491
  %13 = load %swift.type*, %swift.type** %12, align 8, !dbg !491
  %14 = getelementptr inbounds %T4main1PP, %T4main1PP* %2, i32 0, i32 2, !dbg !491
  %15 = load i8**, i8*** %14, align 8, !dbg !491
  %16 = bitcast %T4main1PP* %2 to %__opaque_existential_type_1*, !dbg !491
  %17 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %16, %swift.type* %13) #4, !dbg !491
  %18 = getelementptr inbounds i8*, i8** %15, i32 2, !dbg !491
  %19 = load i8*, i8** %18, align 8, !dbg !491, !invariant.load !46
  %20 = bitcast i8* %19 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !491
  call swiftcc void %20(%swift.opaque* noalias nocapture swiftself %17, %swift.type* %13, i8** %15), !dbg !491
  %21 = bitcast %T4main1PP* %2 to %__opaque_existential_type_1*, !dbg !491
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %21) #4, !dbg !491
  %22 = bitcast %T4main1PP* %2 to i8*, !dbg !491
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %22), !dbg !491
  %23 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !492
  br i1 %23, label %24, label %48, !dbg !492

24:                                               ; preds = %entry.split
  %25 = bitcast %T4main1PP* %m to i8*, !dbg !493
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %25), !dbg !493
  %26 = bitcast %T4main1PP* %4 to i8*, !dbg !493
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %26), !dbg !493
  %27 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %k, %T4main1PP* %4), !dbg !495
  %28 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %k, %T4main1PP* %m), !dbg !496
  call void @llvm.dbg.value(metadata %T4main1PP* undef, metadata !478, metadata !DIExpression()), !dbg !488
  %29 = bitcast %T4main1PP* %4 to %__opaque_existential_type_1*, !dbg !496
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %29) #4, !dbg !496
  %30 = bitcast %T4main1PP* %4 to i8*, !dbg !496
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %30), !dbg !496
  %31 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 1, !dbg !497
  %32 = load %swift.type*, %swift.type** %31, align 8, !dbg !497
  %33 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 2, !dbg !497
  %34 = load i8**, i8*** %33, align 8, !dbg !497
  %35 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !497
  %36 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %35, %swift.type* %32) #4, !dbg !497
  %37 = getelementptr inbounds i8*, i8** %34, i32 2, !dbg !497
  %38 = load i8*, i8** %37, align 8, !dbg !497, !invariant.load !46
  %39 = bitcast i8* %38 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !497
  call swiftcc void %39(%swift.opaque* noalias nocapture swiftself %36, %swift.type* %32, i8** %34), !dbg !497
  %40 = bitcast %T4main1PP* %5 to i8*, !dbg !493
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %40), !dbg !493
  %41 = getelementptr inbounds i8*, i8** %T.P, i32 1, !dbg !498
  %42 = load i8*, i8** %41, align 8, !dbg !498, !invariant.load !46
  %43 = bitcast i8* %42 to void (%T4main1PP*, %swift.type*, %swift.type*, i8**)*, !dbg !498
  call swiftcc void %43(%T4main1PP* noalias nocapture sret(%T4main1PP) %5, %swift.type* swiftself %T, %swift.type* %T, i8** %T.P), !dbg !498
  %44 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %5, %T4main1PP* %k), !dbg !499
  call void @llvm.dbg.addr(metadata %T4main1PP* %k, metadata !478, metadata !DIExpression()), !dbg !488
  br label %.split, !dbg !500

.split:                                           ; preds = %24
  %45 = bitcast %T4main1PP* %5 to i8*, !dbg !500
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %45), !dbg !500
  %46 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !500
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %46) #4, !dbg !500
  %47 = bitcast %T4main1PP* %m to i8*, !dbg !500
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %47), !dbg !500
  br label %49, !dbg !500

48:                                               ; preds = %entry.split
  br label %49, !dbg !501

49:                                               ; preds = %.split, %48
  %50 = bitcast %T4main1PP* %3 to i8*, !dbg !486
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %50), !dbg !486
  %51 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %k, %T4main1PP* %3), !dbg !502
  %52 = getelementptr inbounds %T4main1PP, %T4main1PP* %3, i32 0, i32 1, !dbg !503
  %53 = load %swift.type*, %swift.type** %52, align 8, !dbg !503
  %54 = getelementptr inbounds %T4main1PP, %T4main1PP* %3, i32 0, i32 2, !dbg !503
  %55 = load i8**, i8*** %54, align 8, !dbg !503
  %56 = bitcast %T4main1PP* %3 to %__opaque_existential_type_1*, !dbg !503
  %57 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %56, %swift.type* %53) #4, !dbg !503
  %58 = getelementptr inbounds i8*, i8** %55, i32 2, !dbg !503
  %59 = load i8*, i8** %58, align 8, !dbg !503, !invariant.load !46
  %60 = bitcast i8* %59 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !503
  call swiftcc void %60(%swift.opaque* noalias nocapture swiftself %57, %swift.type* %53, i8** %55), !dbg !503
  %61 = bitcast %T4main1PP* %3 to %__opaque_existential_type_1*, !dbg !504
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %61) #4, !dbg !504
  %62 = bitcast %T4main1PP* %3 to i8*, !dbg !504
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %62), !dbg !504
  %63 = bitcast %T4main1PP* %k to %__opaque_existential_type_1*, !dbg !504
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %63) #4, !dbg !504
  %64 = bitcast %T4main1PP* %k to i8*, !dbg !504
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %64), !dbg !504
  ret void, !dbg !504
}

define swiftcc void @"$s4main040addressOnlyVarArgTestCCFlowReinitInBlockF0yyAA1P_pz_xmtAaCRzlF"(%T4main1PP* nocapture dereferenceable(40) %0, %swift.type* %1, %swift.type* %T, i8** %T.P) #0 !dbg !505 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !507, metadata !DIExpression()), !dbg !514
  %k.debug = alloca %T4main1PP*, align 8
  %2 = bitcast %T4main1PP** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %x.debug = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %x.debug, metadata !509, metadata !DIExpression()), !dbg !515
  %3 = bitcast %swift.type** %x.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 8, i1 false)
  %4 = alloca %T4main1PP, align 8
  %5 = alloca %T4main1PP, align 8
  %m = alloca %T4main1PP, align 8
  call void @llvm.dbg.declare(metadata %T4main1PP* %m, metadata !510, metadata !DIExpression()), !dbg !516
  %6 = alloca %T4main1PP, align 8
  %7 = alloca %T4main1PP, align 8
  %8 = bitcast %T4main1PP** %k.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  store %swift.type* %T, %swift.type** %T1, align 8
  store %T4main1PP* %0, %T4main1PP** %k.debug, align 8, !dbg !514
  call void @llvm.dbg.addr(metadata %T4main1PP** %k.debug, metadata !508, metadata !DIExpression(DW_OP_deref)), !dbg !517
  br label %entry.split, !dbg !514

entry.split:                                      ; preds = %entry
  store %swift.type* %1, %swift.type** %x.debug, align 8, !dbg !514
  %9 = bitcast %T4main1PP* %4 to i8*, !dbg !518
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %9), !dbg !518
  %10 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %0, %T4main1PP* %4), !dbg !520
  %11 = getelementptr inbounds %T4main1PP, %T4main1PP* %4, i32 0, i32 1, !dbg !521
  %12 = load %swift.type*, %swift.type** %11, align 8, !dbg !521
  %13 = getelementptr inbounds %T4main1PP, %T4main1PP* %4, i32 0, i32 2, !dbg !521
  %14 = load i8**, i8*** %13, align 8, !dbg !521
  %15 = bitcast %T4main1PP* %4 to %__opaque_existential_type_1*, !dbg !521
  %16 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %15, %swift.type* %12) #4, !dbg !521
  %17 = getelementptr inbounds i8*, i8** %14, i32 2, !dbg !521
  %18 = load i8*, i8** %17, align 8, !dbg !521, !invariant.load !46
  %19 = bitcast i8* %18 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !521
  call swiftcc void %19(%swift.opaque* noalias nocapture swiftself %16, %swift.type* %12, i8** %14), !dbg !521
  %20 = bitcast %T4main1PP* %4 to %__opaque_existential_type_1*, !dbg !521
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %20) #4, !dbg !521
  %21 = bitcast %T4main1PP* %4 to i8*, !dbg !521
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %21), !dbg !521
  %22 = call swiftcc i1 @"$s4main9trueValueSbvg"(), !dbg !522
  br i1 %22, label %23, label %47, !dbg !522

23:                                               ; preds = %entry.split
  %24 = bitcast %T4main1PP* %m to i8*, !dbg !523
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %24), !dbg !523
  %25 = bitcast %T4main1PP* %6 to i8*, !dbg !523
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %25), !dbg !523
  %26 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %0, %T4main1PP* %6), !dbg !525
  %27 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %0, %T4main1PP* %m), !dbg !526
  call void @llvm.dbg.value(metadata %T4main1PP* undef, metadata !508, metadata !DIExpression(DW_OP_deref)), !dbg !517
  %28 = bitcast %T4main1PP* %6 to %__opaque_existential_type_1*, !dbg !526
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %28) #4, !dbg !526
  %29 = bitcast %T4main1PP* %6 to i8*, !dbg !526
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %29), !dbg !526
  %30 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 1, !dbg !527
  %31 = load %swift.type*, %swift.type** %30, align 8, !dbg !527
  %32 = getelementptr inbounds %T4main1PP, %T4main1PP* %m, i32 0, i32 2, !dbg !527
  %33 = load i8**, i8*** %32, align 8, !dbg !527
  %34 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !527
  %35 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %34, %swift.type* %31) #4, !dbg !527
  %36 = getelementptr inbounds i8*, i8** %33, i32 2, !dbg !527
  %37 = load i8*, i8** %36, align 8, !dbg !527, !invariant.load !46
  %38 = bitcast i8* %37 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !527
  call swiftcc void %38(%swift.opaque* noalias nocapture swiftself %35, %swift.type* %31, i8** %33), !dbg !527
  %39 = bitcast %T4main1PP* %7 to i8*, !dbg !523
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %39), !dbg !523
  %40 = getelementptr inbounds i8*, i8** %T.P, i32 1, !dbg !528
  %41 = load i8*, i8** %40, align 8, !dbg !528, !invariant.load !46
  %42 = bitcast i8* %41 to void (%T4main1PP*, %swift.type*, %swift.type*, i8**)*, !dbg !528
  call swiftcc void %42(%T4main1PP* noalias nocapture sret(%T4main1PP) %7, %swift.type* swiftself %T, %swift.type* %T, i8** %T.P), !dbg !528
  %43 = call %T4main1PP* @"$s4main1P_pWOb"(%T4main1PP* %7, %T4main1PP* %0), !dbg !529
  store %T4main1PP* %0, %T4main1PP** %k.debug, align 8, !dbg !514
  call void @llvm.dbg.addr(metadata %T4main1PP** %k.debug, metadata !508, metadata !DIExpression(DW_OP_deref)), !dbg !517
  br label %.split, !dbg !530

.split:                                           ; preds = %23
  %44 = bitcast %T4main1PP* %7 to i8*, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %44), !dbg !530
  %45 = bitcast %T4main1PP* %m to %__opaque_existential_type_1*, !dbg !530
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %45) #4, !dbg !530
  %46 = bitcast %T4main1PP* %m to i8*, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %46), !dbg !530
  br label %48, !dbg !530

47:                                               ; preds = %entry.split
  br label %48, !dbg !531

48:                                               ; preds = %.split, %47
  %49 = bitcast %T4main1PP* %5 to i8*, !dbg !518
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %49), !dbg !518
  %50 = call %T4main1PP* @"$s4main1P_pWOc"(%T4main1PP* %0, %T4main1PP* %5), !dbg !532
  %51 = getelementptr inbounds %T4main1PP, %T4main1PP* %5, i32 0, i32 1, !dbg !533
  %52 = load %swift.type*, %swift.type** %51, align 8, !dbg !533
  %53 = getelementptr inbounds %T4main1PP, %T4main1PP* %5, i32 0, i32 2, !dbg !533
  %54 = load i8**, i8*** %53, align 8, !dbg !533
  %55 = bitcast %T4main1PP* %5 to %__opaque_existential_type_1*, !dbg !533
  %56 = call %swift.opaque* @__swift_project_boxed_opaque_existential_1(%__opaque_existential_type_1* %55, %swift.type* %52) #4, !dbg !533
  %57 = getelementptr inbounds i8*, i8** %54, i32 2, !dbg !533
  %58 = load i8*, i8** %57, align 8, !dbg !533, !invariant.load !46
  %59 = bitcast i8* %58 to void (%swift.opaque*, %swift.type*, i8**)*, !dbg !533
  call swiftcc void %59(%swift.opaque* noalias nocapture swiftself %56, %swift.type* %52, i8** %54), !dbg !533
  %60 = bitcast %T4main1PP* %5 to %__opaque_existential_type_1*, !dbg !534
  call void @__swift_destroy_boxed_opaque_existential_1(%__opaque_existential_type_1* %60) #4, !dbg !534
  %61 = bitcast %T4main1PP* %5 to i8*, !dbg !534
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %61), !dbg !534
  ret void, !dbg !534
}

; Function Attrs: nounwind
declare %objc_class* @objc_opt_self(%objc_class*) #4

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency"()

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { nounwind }
attributes #5 = { noinline nounwind readnone "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { noinline nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind readnone }

!llvm.dbg.cu = !{!0, !11}
!swift.module.flags = !{!13}
!llvm.asan.globals = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!llvm.linker.options = !{!36, !37, !38, !39, !40}

!0 = distinct !DICompileUnit(language: DW_LANG_Swift, file: !1, producer: "Swift version 5.7-dev (LLVM 7abf5772a7e9e08, Swift c57bc03b341eaae)", isOptimized: false, runtimeVersion: 5, emissionKind: FullDebug, imports: !2)
!1 = !DIFile(filename: "move_function_dbginfo.swift", directory: "/Volumes/Data/work/solon/swift/test/DebugInfo")
!2 = !{!3, !5, !7, !9}
!3 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !4, file: !1)
!4 = !DIModule(scope: null, name: "main")
!5 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !6, file: !1)
!6 = !DIModule(scope: null, name: "Swift", includePath: "/Volumes/Data/work/solon/build/Ninja-RelWithDebInfoAssert/swift-macosx-x86_64/lib/swift/macosx/Swift.swiftmodule/x86_64-apple-macos.swiftmodule")
!7 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !8, file: !1)
!8 = !DIModule(scope: null, name: "_Concurrency", includePath: "/Volumes/Data/work/solon/build/Ninja-RelWithDebInfoAssert/swift-macosx-x86_64/lib/swift/macosx/_Concurrency.swiftmodule/x86_64-apple-macos.swiftmodule")
!9 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !10, file: !1)
!10 = !DIModule(scope: null, name: "SwiftOnoneSupport", includePath: "/Volumes/Data/work/solon/build/Ninja-RelWithDebInfoAssert/swift-macosx-x86_64/lib/swift/macosx/SwiftOnoneSupport.swiftmodule/x86_64-apple-macos.swiftmodule")
!11 = distinct !DICompileUnit(language: DW_LANG_ObjC, file: !12, producer: "clang version 13.0.0 (git@github.com:apple/llvm-project.git 7abf5772a7e9e08b5c6a367a370ca1cb09a12d08)", isOptimized: false, runtimeVersion: 2, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!12 = !DIFile(filename: "<swift-imported-modules>", directory: "/Volumes/Data/work/solon/swift/test/DebugInfo")
!13 = !{!"standard-library", i1 false}
!14 = !{<{ i32, i32, i32 }>* @"$s4mainMXM", null, null, i1 false, i1 true}
!15 = !{<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s4main5KlassCMn", null, null, i1 false, i1 true}
!16 = !{<{ i8, i32, i8 }>* @"symbolic _____ 4main5KlassC", null, null, i1 false, i1 true}
!17 = !{{ i32, i32, i16, i16, i32 }* @"$s4main5KlassCMF", null, null, i1 false, i1 true}
!18 = !{<{ [10 x i8], i8 }>* @"symbolic $s4main1PP", null, null, i1 false, i1 true}
!19 = !{{ i32, i32, i16, i16, i32 }* @"$s4main1P_pMF", null, null, i1 false, i1 true}
!20 = !{<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s4main1PMp", null, null, i1 false, i1 true}
!21 = !{%swift.protocolref* @"$s4main1PHr", null, null, i1 false, i1 true}
!22 = !{%swift.type_metadata_record* @"$s4main5KlassCHn", null, null, i1 false, i1 true}
!23 = !{i8** @"objc_classes_$s4main5KlassCN", null, null, i1 false, i1 true}
!24 = !{i32 1, !"Objective-C Version", i32 2}
!25 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!26 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!27 = !{i32 4, !"Objective-C Garbage Collection", i32 84346624}
!28 = !{i32 1, !"Objective-C Class Properties", i32 64}
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"PIC Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{i32 1, !"Swift Version", i32 7}
!36 = !{!"-lswiftSwiftOnoneSupport"}
!37 = !{!"-lswiftCore"}
!38 = !{!"-lswift_Concurrency"}
!39 = !{!"-lobjc"}
!40 = !{!"-lswiftCompatibilityConcurrency"}
!41 = distinct !DISubprogram(name: "main", linkageName: "main", scope: !4, file: !1, line: 1, type: !42, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !44, !47}
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "Int32", scope: !6, file: !45, size: 32, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$ss5Int32VD")
!45 = !DIFile(filename: "build/Ninja-RelWithDebInfoAssert/swift-macosx-x86_64/lib/swift/macosx/Swift.swiftmodule/x86_64-apple-macos.swiftmodule", directory: "/Volumes/Data/work/solon")
!46 = !{}
!47 = !DICompositeType(tag: DW_TAG_structure_type, scope: !6, file: !45, size: 64, elements: !48, runtimeLang: DW_LANG_Swift)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, scope: !6, file: !45, baseType: !50, size: 64)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeMutablePointer", scope: !6, file: !45, flags: DIFlagFwdDecl, runtimeLang: DW_LANG_Swift, templateParams: !51, identifier: "$sSpySpys4Int8VGSgGD")
!51 = !{!52}
!52 = !DITemplateTypeParameter(type: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "$sSpys4Int8VGSgD", scope: !6, flags: DIFlagFwdDecl, runtimeLang: DW_LANG_Swift, identifier: "$sSpys4Int8VGSgD")
!54 = !DILocation(line: 0, scope: !55)
!55 = !DILexicalBlockFile(scope: !57, file: !56, discriminator: 0)
!56 = !DIFile(filename: "<compiler-generated>", directory: "")
!57 = distinct !DILexicalBlock(scope: !41, file: !1, line: 33, column: 1)
!58 = distinct !DISubprogram(name: "doSomething", linkageName: "$s4main5KlassC11doSomethingyyF", scope: !59, file: !1, line: 24, type: !60, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !63)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "Klass", scope: !4, file: !1, size: 64, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$s4main5KlassCD")
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !59}
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "$sytD", file: !1, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$sytD")
!63 = !{!64}
!64 = !DILocalVariable(name: "self", arg: 1, scope: !58, file: !1, line: 24, type: !65, flags: DIFlagArtificial)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!66 = !DILocation(line: 24, column: 17, scope: !58)
!67 = !DILocation(line: 0, scope: !58)
!68 = !DILocation(line: 24, column: 32, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !1, line: 24, column: 31)
!70 = distinct !DISubprogram(name: "deinit", linkageName: "$s4main5KlassCfd", scope: !59, file: !1, line: 23, type: !71, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !59}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "$sBoD", baseType: null, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!74 = !{!75}
!75 = !DILocalVariable(name: "self", arg: 1, scope: !70, file: !1, line: 23, type: !65, flags: DIFlagArtificial)
!76 = !DILocation(line: 23, column: 14, scope: !70)
!77 = !DILocation(line: 0, scope: !70)
!78 = !DILocation(line: 0, scope: !79)
!79 = distinct !DILexicalBlock(scope: !70, file: !1, line: 23, column: 14)
!80 = distinct !DISubprogram(name: "deinit", linkageName: "$s4main5KlassCfD", scope: !59, file: !1, line: 23, type: !60, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!81 = !{!82}
!82 = !DILocalVariable(name: "self", arg: 1, scope: !80, file: !1, line: 23, type: !65, flags: DIFlagArtificial)
!83 = !DILocation(line: 23, column: 14, scope: !80)
!84 = !DILocation(line: 0, scope: !80)
!85 = distinct !DISubprogram(name: "init", linkageName: "$s4main5KlassCACycfC", scope: !59, file: !1, line: 23, type: !86, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!86 = !DISubroutineType(types: !87)
!87 = !{!59, !88}
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "$s4main5KlassCXMTD", file: !56, size: 64, flags: DIFlagArtificial, runtimeLang: DW_LANG_Swift, identifier: "$s4main5KlassCXMTD")
!89 = !DILocation(line: 0, scope: !85)
!90 = distinct !DISubprogram(name: "init", linkageName: "$s4main5KlassCACycfc", scope: !59, file: !1, line: 23, type: !91, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!59, !59}
!93 = !{!94}
!94 = !DILocalVariable(name: "self", arg: 1, scope: !90, file: !1, line: 23, type: !65, flags: DIFlagArtificial)
!95 = !DILocation(line: 23, column: 14, scope: !90)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 23, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 23, column: 14)
!99 = distinct !DISubprogram(name: "trueValue.get", linkageName: "$s4main9trueValueSbvg", scope: !4, file: !1, line: 32, type: !100, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!100 = !DISubroutineType(types: !101)
!101 = !{!102}
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "Bool", scope: !6, file: !45, size: 8, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$sSbD")
!103 = !DILocation(line: 32, column: 35, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 32, column: 28)
!105 = distinct !DISubprogram(name: "falseValue.get", linkageName: "$s4main10falseValueSbvg", scope: !4, file: !1, line: 33, type: !100, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!106 = !DILocation(line: 33, column: 37, scope: !107)
!107 = distinct !DILexicalBlock(scope: !105, file: !1, line: 33, column: 29)
!108 = distinct !DISubprogram(name: "copyableValueTest", linkageName: "$s4main17copyableValueTestyyF", scope: !4, file: !1, line: 81, type: !109, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!62}
!111 = !{!112, !114}
!112 = !DILocalVariable(name: "k", scope: !113, file: !1, line: 82, type: !65)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 81, column: 33)
!114 = !DILocalVariable(name: "m", scope: !113, file: !1, line: 84, type: !65)
!115 = !DILocation(line: 84, column: 9, scope: !113)
!116 = !DILocation(line: 82, column: 13, scope: !113)
!117 = !DILocation(line: 0, scope: !113)
!118 = !DILocation(line: 82, column: 9, scope: !113)
!119 = !DILocation(line: 83, column: 7, scope: !113)
!120 = !DILocation(line: 84, column: 19, scope: !113)
!121 = !DILocation(line: 85, column: 7, scope: !113)
!122 = !DILocation(line: 86, column: 1, scope: !113)
!123 = distinct !DISubprogram(linkageName: "$s4main5KlassCMa", scope: !4, file: !56, type: !124, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!124 = !DISubroutineType(types: null)
!125 = !DILocation(line: 0, scope: !123)
!126 = distinct !DISubprogram(name: "copyableArgTest", linkageName: "$s4main15copyableArgTestyyAA5KlassCnF", scope: !4, file: !1, line: 128, type: !60, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !127)
!127 = !{!128, !129}
!128 = !DILocalVariable(name: "k", arg: 1, scope: !126, file: !1, line: 128, type: !65)
!129 = !DILocalVariable(name: "m", scope: !130, file: !1, line: 130, type: !65)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 128, column: 49)
!131 = !DILocation(line: 130, column: 9, scope: !130)
!132 = !DILocation(line: 0, scope: !126)
!133 = !DILocation(line: 128, column: 29, scope: !126)
!134 = !DILocation(line: 129, column: 7, scope: !130)
!135 = !DILocation(line: 130, column: 19, scope: !130)
!136 = !DILocation(line: 0, scope: !130)
!137 = !DILocation(line: 131, column: 7, scope: !130)
!138 = !DILocation(line: 132, column: 1, scope: !130)
!139 = distinct !DISubprogram(name: "copyableVarTest", linkageName: "$s4main15copyableVarTestyyF", scope: !4, file: !1, line: 169, type: !109, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !140)
!140 = !{!141, !143}
!141 = !DILocalVariable(name: "k", scope: !142, file: !1, line: 170, type: !59)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 169, column: 31)
!143 = !DILocalVariable(name: "m", scope: !142, file: !1, line: 172, type: !65)
!144 = !DILocation(line: 172, column: 9, scope: !142)
!145 = !DILocation(line: 0, scope: !146)
!146 = !DILexicalBlockFile(scope: !142, file: !56, discriminator: 0)
!147 = !DILocation(line: 170, column: 9, scope: !142)
!148 = !DILocation(line: 170, column: 13, scope: !142)
!149 = !DILocation(line: 171, column: 7, scope: !142)
!150 = !DILocation(line: 172, column: 13, scope: !142)
!151 = !DILocation(line: 0, scope: !142)
!152 = !DILocation(line: 173, column: 7, scope: !142)
!153 = !DILocation(line: 174, column: 9, scope: !142)
!154 = !DILocation(line: 174, column: 7, scope: !142)
!155 = !DILocation(line: 175, column: 7, scope: !142)
!156 = !DILocation(line: 176, column: 1, scope: !142)
!157 = distinct !DISubprogram(name: "copyableVarArgTest", linkageName: "$s4main18copyableVarArgTestyyAA5KlassCzF", scope: !4, file: !1, line: 213, type: !60, scopeLine: 213, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !158)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "k", arg: 1, scope: !157, file: !1, line: 213, type: !59)
!160 = !DILocalVariable(name: "m", scope: !161, file: !1, line: 215, type: !65)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 213, column: 50)
!162 = !DILocation(line: 215, column: 9, scope: !161)
!163 = !DILocation(line: 0, scope: !157)
!164 = !DILocation(line: 213, column: 32, scope: !157)
!165 = !DILocation(line: 214, column: 5, scope: !161)
!166 = !DILocation(line: 214, column: 7, scope: !161)
!167 = !DILocation(line: 215, column: 13, scope: !161)
!168 = !DILocation(line: 0, scope: !161)
!169 = !DILocation(line: 216, column: 7, scope: !161)
!170 = !DILocation(line: 217, column: 9, scope: !161)
!171 = !DILocation(line: 217, column: 7, scope: !161)
!172 = !DILocation(line: 218, column: 5, scope: !161)
!173 = !DILocation(line: 218, column: 7, scope: !161)
!174 = !DILocation(line: 219, column: 1, scope: !161)
!175 = distinct !DISubprogram(name: "addressOnlyValueTest", linkageName: "$s4main20addressOnlyValueTestyyxAA1PRzlF", scope: !4, file: !1, line: 265, type: !176, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !179)
!176 = !DISubroutineType(types: !177)
!177 = !{!62, !178}
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "$sxD", file: !1, runtimeLang: DW_LANG_Swift, identifier: "$sxD")
!179 = !{!180, !184, !187, !188}
!180 = !DILocalVariable(name: "$\CF\84_0_0", scope: !175, file: !1, type: !181, flags: DIFlagArtificial)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !182, file: !56, baseType: !183)
!182 = !DIModule(scope: null, name: "Builtin")
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "$sBpD", baseType: null, size: 64)
!184 = !DILocalVariable(name: "m", scope: !185, file: !1, line: 268, type: !186)
!185 = distinct !DILexicalBlock(scope: !175, file: !1, line: 265, column: 49)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!187 = !DILocalVariable(name: "x", arg: 1, scope: !175, file: !1, line: 265, type: !186)
!188 = !DILocalVariable(name: "k", scope: !185, file: !1, line: 266, type: !186)
!189 = !DILocation(line: 0, scope: !175)
!190 = !DILocation(line: 268, column: 9, scope: !185)
!191 = !DILocation(line: 265, column: 41, scope: !175)
!192 = !DILocation(line: 0, scope: !193)
!193 = !DILexicalBlockFile(scope: !185, file: !56, discriminator: 0)
!194 = !{i64 96}
!195 = !DILocation(line: 0, scope: !185)
!196 = !DILocation(line: 266, column: 9, scope: !185)
!197 = !DILocation(line: 266, column: 13, scope: !185)
!198 = !DILocation(line: 267, column: 7, scope: !185)
!199 = !DILocation(line: 268, column: 19, scope: !185)
!200 = !DILocation(line: 268, column: 13, scope: !185)
!201 = !DILocation(line: 269, column: 7, scope: !185)
!202 = !DILocation(line: 270, column: 1, scope: !185)
!203 = distinct !DISubprogram(name: "addressOnlyValueArgTest", linkageName: "$s4main23addressOnlyValueArgTestyyxnAA1PRzlF", scope: !4, file: !1, line: 308, type: !176, scopeLine: 308, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !204)
!204 = !{!205, !206, !208}
!205 = !DILocalVariable(name: "$\CF\84_0_0", scope: !203, file: !1, type: !181, flags: DIFlagArtificial)
!206 = !DILocalVariable(name: "m", scope: !207, file: !1, line: 310, type: !186)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 308, column: 60)
!208 = !DILocalVariable(name: "k", arg: 1, scope: !203, file: !1, line: 308, type: !186)
!209 = !DILocation(line: 0, scope: !203)
!210 = !DILocation(line: 310, column: 9, scope: !207)
!211 = !DILocation(line: 0, scope: !212)
!212 = !DILexicalBlockFile(scope: !207, file: !56, discriminator: 0)
!213 = !DILocation(line: 0, scope: !207)
!214 = !DILocation(line: 308, column: 44, scope: !203)
!215 = !DILocation(line: 309, column: 7, scope: !207)
!216 = !DILocation(line: 310, column: 19, scope: !207)
!217 = !DILocation(line: 310, column: 13, scope: !207)
!218 = !DILocation(line: 311, column: 7, scope: !207)
!219 = !DILocation(line: 312, column: 1, scope: !207)
!220 = distinct !DISubprogram(name: "addressOnlyVarTest", linkageName: "$s4main18addressOnlyVarTestyyxAA1PRzlF", scope: !4, file: !1, line: 362, type: !176, scopeLine: 362, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !221)
!221 = !{!222, !223, !224}
!222 = !DILocalVariable(name: "$\CF\84_0_0", scope: !220, file: !1, type: !181, flags: DIFlagArtificial)
!223 = !DILocalVariable(name: "x", arg: 1, scope: !220, file: !1, line: 362, type: !186)
!224 = !DILocalVariable(name: "k", scope: !225, file: !1, line: 363, type: !178)
!225 = distinct !DILexicalBlock(scope: !220, file: !1, line: 362, column: 47)
!226 = !DILocation(line: 0, scope: !220)
!227 = !DILocation(line: 362, column: 39, scope: !220)
!228 = !DILocation(line: 0, scope: !229)
!229 = !DILexicalBlockFile(scope: !225, file: !56, discriminator: 0)
!230 = !DILocation(line: 0, scope: !225)
!231 = !DILocation(line: 363, column: 9, scope: !225)
!232 = !DILocation(line: 363, column: 13, scope: !225)
!233 = !DILocation(line: 364, column: 5, scope: !225)
!234 = !DILocation(line: 364, column: 7, scope: !225)
!235 = !DILocation(line: 365, column: 19, scope: !225)
!236 = !DILocation(line: 365, column: 13, scope: !225)
!237 = !DILocation(line: 366, column: 7, scope: !225)
!238 = !DILocation(line: 367, column: 9, scope: !225)
!239 = !DILocation(line: 367, column: 7, scope: !225)
!240 = !DILocation(line: 368, column: 5, scope: !225)
!241 = !DILocation(line: 368, column: 7, scope: !225)
!242 = !DILocation(line: 369, column: 1, scope: !225)
!243 = distinct !DISubprogram(name: "addressOnlyVarArgTest", linkageName: "$s4main21addressOnlyVarArgTestyyxz_xtAA1PRzlF", scope: !4, file: !1, line: 418, type: !244, scopeLine: 418, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!62, !178, !178}
!246 = !{!247, !248, !249}
!247 = !DILocalVariable(name: "$\CF\84_0_0", scope: !243, file: !1, type: !181, flags: DIFlagArtificial)
!248 = !DILocalVariable(name: "k", arg: 1, scope: !243, file: !1, line: 418, type: !178)
!249 = !DILocalVariable(name: "x", arg: 2, scope: !243, file: !1, line: 418, type: !186)
!250 = !DILocation(line: 0, scope: !243)
!251 = !DILocation(line: 418, column: 56, scope: !243)
!252 = !DILocation(line: 0, scope: !253)
!253 = !DILexicalBlockFile(scope: !254, file: !56, discriminator: 0)
!254 = distinct !DILexicalBlock(scope: !243, file: !1, line: 418, column: 64)
!255 = !DILocation(line: 418, column: 42, scope: !243)
!256 = !DILocation(line: 419, column: 5, scope: !254)
!257 = !DILocation(line: 419, column: 7, scope: !254)
!258 = !DILocation(line: 420, column: 19, scope: !254)
!259 = !DILocation(line: 420, column: 13, scope: !254)
!260 = !DILocation(line: 421, column: 7, scope: !254)
!261 = !DILocation(line: 422, column: 9, scope: !254)
!262 = !DILocation(line: 422, column: 7, scope: !254)
!263 = !DILocation(line: 423, column: 5, scope: !254)
!264 = !DILocation(line: 423, column: 7, scope: !254)
!265 = !DILocation(line: 424, column: 1, scope: !254)
!266 = distinct !DISubprogram(name: "copyableValueCCFlowTest", linkageName: "$s4main23copyableValueCCFlowTestyyF", scope: !4, file: !1, line: 439, type: !109, scopeLine: 439, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !267)
!267 = !{!268, !270}
!268 = !DILocalVariable(name: "k", scope: !269, file: !1, line: 440, type: !65)
!269 = distinct !DILexicalBlock(scope: !266, file: !1, line: 439, column: 39)
!270 = !DILocalVariable(name: "m", scope: !271, file: !1, line: 443, type: !65)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 442, column: 18)
!272 = distinct !DILexicalBlock(scope: !269, file: !1, line: 442, column: 5)
!273 = !DILocation(line: 443, column: 13, scope: !271)
!274 = !DILocation(line: 440, column: 13, scope: !269)
!275 = !DILocation(line: 0, scope: !269)
!276 = !DILocation(line: 440, column: 9, scope: !269)
!277 = !DILocation(line: 441, column: 7, scope: !269)
!278 = !DILocation(line: 442, column: 8, scope: !272)
!279 = !DILocation(line: 443, column: 23, scope: !271)
!280 = !DILocation(line: 0, scope: !271)
!281 = !DILocation(line: 444, column: 11, scope: !271)
!282 = !DILocation(line: 445, column: 5, scope: !272)
!283 = !DILocation(line: 442, column: 5, scope: !272)
!284 = !DILocation(line: 446, column: 1, scope: !269)
!285 = distinct !DISubprogram(name: "copyableValueArgCCFlowTest", linkageName: "$s4main26copyableValueArgCCFlowTestyyAA5KlassCnF", scope: !4, file: !1, line: 457, type: !60, scopeLine: 457, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !286)
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "k", arg: 1, scope: !285, file: !1, line: 457, type: !65)
!288 = !DILocalVariable(name: "m", scope: !289, file: !1, line: 460, type: !65)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 459, column: 18)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 459, column: 5)
!291 = distinct !DILexicalBlock(scope: !285, file: !1, line: 457, column: 60)
!292 = !DILocation(line: 460, column: 13, scope: !289)
!293 = !DILocation(line: 0, scope: !285)
!294 = !DILocation(line: 457, column: 40, scope: !285)
!295 = !DILocation(line: 458, column: 7, scope: !291)
!296 = !DILocation(line: 459, column: 8, scope: !290)
!297 = !DILocation(line: 460, column: 23, scope: !289)
!298 = !DILocation(line: 0, scope: !289)
!299 = !DILocation(line: 461, column: 11, scope: !289)
!300 = !DILocation(line: 462, column: 5, scope: !290)
!301 = !DILocation(line: 459, column: 5, scope: !290)
!302 = !DILocation(line: 463, column: 1, scope: !291)
!303 = distinct !DISubprogram(name: "copyableVarTestCCFlowReinitOutOfBlockTest", linkageName: "$s4main037copyableVarTestCCFlowReinitOutOfBlockD0yyF", scope: !4, file: !1, line: 486, type: !109, scopeLine: 486, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !304)
!304 = !{!305, !307}
!305 = !DILocalVariable(name: "k", scope: !306, file: !1, line: 487, type: !59)
!306 = distinct !DILexicalBlock(scope: !303, file: !1, line: 486, column: 57)
!307 = !DILocalVariable(name: "m", scope: !308, file: !1, line: 490, type: !65)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 489, column: 18)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 489, column: 5)
!310 = !DILocation(line: 490, column: 13, scope: !308)
!311 = !DILocation(line: 0, scope: !312)
!312 = !DILexicalBlockFile(scope: !306, file: !56, discriminator: 0)
!313 = !DILocation(line: 487, column: 9, scope: !306)
!314 = !DILocation(line: 487, column: 13, scope: !306)
!315 = !DILocation(line: 488, column: 7, scope: !306)
!316 = !DILocation(line: 489, column: 8, scope: !309)
!317 = !DILocation(line: 490, column: 17, scope: !308)
!318 = !DILocation(line: 0, scope: !308)
!319 = !DILocation(line: 491, column: 11, scope: !308)
!320 = !DILocation(line: 492, column: 5, scope: !309)
!321 = !DILocation(line: 489, column: 5, scope: !309)
!322 = !DILocation(line: 493, column: 9, scope: !306)
!323 = !DILocation(line: 493, column: 7, scope: !306)
!324 = !DILocation(line: 494, column: 7, scope: !306)
!325 = !DILocation(line: 495, column: 1, scope: !306)
!326 = distinct !DISubprogram(name: "copyableVarArgTestCCFlowReinitOutOfBlockTest", linkageName: "$s4main040copyableVarArgTestCCFlowReinitOutOfBlockE0yyAA5KlassCzF", scope: !4, file: !1, line: 517, type: !60, scopeLine: 517, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !327)
!327 = !{!328, !329}
!328 = !DILocalVariable(name: "k", arg: 1, scope: !326, file: !1, line: 517, type: !59)
!329 = !DILocalVariable(name: "m", scope: !330, file: !1, line: 520, type: !65)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 519, column: 18)
!331 = distinct !DILexicalBlock(scope: !332, file: !1, line: 519, column: 5)
!332 = distinct !DILexicalBlock(scope: !326, file: !1, line: 517, column: 76)
!333 = !DILocation(line: 520, column: 13, scope: !330)
!334 = !DILocation(line: 0, scope: !326)
!335 = !DILocation(line: 517, column: 58, scope: !326)
!336 = !DILocation(line: 518, column: 5, scope: !332)
!337 = !DILocation(line: 518, column: 7, scope: !332)
!338 = !DILocation(line: 519, column: 8, scope: !331)
!339 = !DILocation(line: 520, column: 17, scope: !330)
!340 = !DILocation(line: 0, scope: !330)
!341 = !DILocation(line: 521, column: 11, scope: !330)
!342 = !DILocation(line: 522, column: 5, scope: !331)
!343 = !DILocation(line: 519, column: 5, scope: !331)
!344 = !DILocation(line: 523, column: 9, scope: !332)
!345 = !DILocation(line: 523, column: 7, scope: !332)
!346 = !DILocation(line: 524, column: 5, scope: !332)
!347 = !DILocation(line: 524, column: 7, scope: !332)
!348 = !DILocation(line: 525, column: 1, scope: !332)
!349 = distinct !DISubprogram(name: "copyableVarTestCCFlowReinitInBlockTest", linkageName: "$s4main034copyableVarTestCCFlowReinitInBlockD0yyF", scope: !4, file: !1, line: 551, type: !109, scopeLine: 551, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !350)
!350 = !{!351, !353}
!351 = !DILocalVariable(name: "k", scope: !352, file: !1, line: 552, type: !59)
!352 = distinct !DILexicalBlock(scope: !349, file: !1, line: 551, column: 54)
!353 = !DILocalVariable(name: "m", scope: !354, file: !1, line: 555, type: !65)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 554, column: 18)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 554, column: 5)
!356 = !DILocation(line: 555, column: 13, scope: !354)
!357 = !DILocation(line: 0, scope: !358)
!358 = !DILexicalBlockFile(scope: !352, file: !56, discriminator: 0)
!359 = !DILocation(line: 552, column: 9, scope: !352)
!360 = !DILocation(line: 552, column: 13, scope: !352)
!361 = !DILocation(line: 553, column: 7, scope: !352)
!362 = !DILocation(line: 554, column: 8, scope: !355)
!363 = !DILocation(line: 555, column: 17, scope: !354)
!364 = !DILocation(line: 0, scope: !354)
!365 = !DILocation(line: 556, column: 11, scope: !354)
!366 = !DILocation(line: 557, column: 13, scope: !354)
!367 = !DILocation(line: 557, column: 11, scope: !354)
!368 = !DILocation(line: 558, column: 5, scope: !355)
!369 = !DILocation(line: 554, column: 5, scope: !355)
!370 = !DILocation(line: 559, column: 5, scope: !352)
!371 = !DILocation(line: 559, column: 7, scope: !352)
!372 = !DILocation(line: 560, column: 1, scope: !352)
!373 = distinct !DISubprogram(name: "copyableVarArgTestCCFlowReinitInBlockTest", linkageName: "$s4main037copyableVarArgTestCCFlowReinitInBlockE0yyAA5KlassCzF", scope: !4, file: !1, line: 586, type: !60, scopeLine: 586, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !374)
!374 = !{!375, !376}
!375 = !DILocalVariable(name: "k", arg: 1, scope: !373, file: !1, line: 586, type: !59)
!376 = !DILocalVariable(name: "m", scope: !377, file: !1, line: 589, type: !65)
!377 = distinct !DILexicalBlock(scope: !378, file: !1, line: 588, column: 18)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 588, column: 5)
!379 = distinct !DILexicalBlock(scope: !373, file: !1, line: 586, column: 73)
!380 = !DILocation(line: 589, column: 13, scope: !377)
!381 = !DILocation(line: 0, scope: !373)
!382 = !DILocation(line: 586, column: 55, scope: !373)
!383 = !DILocation(line: 587, column: 5, scope: !379)
!384 = !DILocation(line: 587, column: 7, scope: !379)
!385 = !DILocation(line: 588, column: 8, scope: !378)
!386 = !DILocation(line: 589, column: 17, scope: !377)
!387 = !DILocation(line: 0, scope: !377)
!388 = !DILocation(line: 590, column: 11, scope: !377)
!389 = !DILocation(line: 591, column: 13, scope: !377)
!390 = !DILocation(line: 591, column: 11, scope: !377)
!391 = !DILocation(line: 592, column: 5, scope: !378)
!392 = !DILocation(line: 588, column: 5, scope: !378)
!393 = !DILocation(line: 593, column: 5, scope: !379)
!394 = !DILocation(line: 593, column: 7, scope: !379)
!395 = !DILocation(line: 594, column: 1, scope: !379)
!396 = distinct !DISubprogram(name: "addressOnlyVarTestCCFlowReinitOutOfBlockTest", linkageName: "$s4main040addressOnlyVarTestCCFlowReinitOutOfBlockE0yyxmAA1PRzlF", scope: !4, file: !1, line: 617, type: !397, scopeLine: 617, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!397 = !DISubroutineType(types: !398)
!398 = !{!62, !399}
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "$sxXMTD", file: !56, size: 64, flags: DIFlagArtificial, runtimeLang: DW_LANG_Swift, identifier: "$sxXMTD")
!400 = !{!401, !402, !404, !407}
!401 = !DILocalVariable(name: "$\CF\84_0_0", scope: !396, file: !1, type: !181, flags: DIFlagArtificial)
!402 = !DILocalVariable(name: "x", arg: 1, scope: !396, file: !1, line: 617, type: !403)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!404 = !DILocalVariable(name: "k", scope: !405, file: !1, line: 618, type: !406)
!405 = distinct !DILexicalBlock(scope: !396, file: !1, line: 617, column: 78)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "P", scope: !4, file: !1, size: 320, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$s4main1P_pD")
!407 = !DILocalVariable(name: "m", scope: !408, file: !1, line: 621, type: !410)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 620, column: 18)
!409 = distinct !DILexicalBlock(scope: !405, file: !1, line: 620, column: 5)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!411 = !DILocation(line: 0, scope: !396)
!412 = !DILocation(line: 617, column: 65, scope: !396)
!413 = !DILocation(line: 621, column: 13, scope: !408)
!414 = !DILocation(line: 0, scope: !415)
!415 = !DILexicalBlockFile(scope: !405, file: !56, discriminator: 0)
!416 = !DILocation(line: 618, column: 9, scope: !405)
!417 = !DILocation(line: 618, column: 15, scope: !405)
!418 = !DILocation(line: 619, column: 5, scope: !405)
!419 = !DILocation(line: 619, column: 7, scope: !405)
!420 = !DILocation(line: 620, column: 8, scope: !409)
!421 = !DILocation(line: 0, scope: !422)
!422 = !DILexicalBlockFile(scope: !408, file: !56, discriminator: 0)
!423 = !DILocation(line: 621, column: 23, scope: !408)
!424 = !DILocation(line: 621, column: 17, scope: !408)
!425 = !DILocation(line: 622, column: 11, scope: !408)
!426 = !DILocation(line: 623, column: 5, scope: !409)
!427 = !DILocation(line: 620, column: 5, scope: !409)
!428 = !DILocation(line: 624, column: 11, scope: !405)
!429 = !DILocation(line: 624, column: 7, scope: !405)
!430 = !DILocation(line: 625, column: 5, scope: !405)
!431 = !DILocation(line: 625, column: 7, scope: !405)
!432 = !DILocation(line: 626, column: 1, scope: !405)
!433 = distinct !DISubprogram(linkageName: "$s4main1P_pWOc", scope: !4, file: !56, type: !124, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!434 = !DILocation(line: 0, scope: !433)
!435 = distinct !DISubprogram(linkageName: "__swift_project_boxed_opaque_existential_1", scope: !4, file: !56, type: !124, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!436 = !DILocation(line: 0, scope: !435)
!437 = distinct !DISubprogram(linkageName: "__swift_destroy_boxed_opaque_existential_1", scope: !4, file: !56, type: !124, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!438 = !DILocation(line: 0, scope: !437)
!439 = distinct !DISubprogram(linkageName: "$s4main1P_pWOb", scope: !4, file: !56, type: !124, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!440 = !DILocation(line: 0, scope: !439)
!441 = distinct !DISubprogram(name: "addressOnlyVarArgTestCCFlowReinitOutOfBlockTest", linkageName: "$s4main043addressOnlyVarArgTestCCFlowReinitOutOfBlockF0yyAA1P_pz_xmtAaCRzlF", scope: !4, file: !1, line: 649, type: !442, scopeLine: 649, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!62, !406, !399}
!444 = !{!445, !446, !447, !448}
!445 = !DILocalVariable(name: "$\CF\84_0_0", scope: !441, file: !1, type: !181, flags: DIFlagArtificial)
!446 = !DILocalVariable(name: "k", arg: 1, scope: !441, file: !1, line: 649, type: !406)
!447 = !DILocalVariable(name: "x", arg: 2, scope: !441, file: !1, line: 649, type: !403)
!448 = !DILocalVariable(name: "m", scope: !449, file: !1, line: 652, type: !410)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 651, column: 18)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 651, column: 5)
!451 = distinct !DILexicalBlock(scope: !441, file: !1, line: 649, column: 101)
!452 = !DILocation(line: 0, scope: !441)
!453 = !DILocation(line: 649, column: 88, scope: !441)
!454 = !DILocation(line: 652, column: 13, scope: !449)
!455 = !DILocation(line: 649, column: 68, scope: !441)
!456 = !DILocation(line: 0, scope: !457)
!457 = !DILexicalBlockFile(scope: !451, file: !56, discriminator: 0)
!458 = !DILocation(line: 650, column: 5, scope: !451)
!459 = !DILocation(line: 650, column: 7, scope: !451)
!460 = !DILocation(line: 651, column: 8, scope: !450)
!461 = !DILocation(line: 0, scope: !462)
!462 = !DILexicalBlockFile(scope: !449, file: !56, discriminator: 0)
!463 = !DILocation(line: 652, column: 23, scope: !449)
!464 = !DILocation(line: 652, column: 17, scope: !449)
!465 = !DILocation(line: 653, column: 11, scope: !449)
!466 = !DILocation(line: 654, column: 5, scope: !450)
!467 = !DILocation(line: 651, column: 5, scope: !450)
!468 = !DILocation(line: 655, column: 11, scope: !451)
!469 = !DILocation(line: 655, column: 7, scope: !451)
!470 = !DILocation(line: 0, scope: !451)
!471 = !DILocation(line: 656, column: 5, scope: !451)
!472 = !DILocation(line: 656, column: 7, scope: !451)
!473 = !DILocation(line: 657, column: 1, scope: !451)
!474 = distinct !DISubprogram(name: "addressOnlyVarTestCCFlowReinitInBlockTest", linkageName: "$s4main037addressOnlyVarTestCCFlowReinitInBlockE0yyxmAA1PRzlF", scope: !4, file: !1, line: 682, type: !397, scopeLine: 682, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !475)
!475 = !{!476, !477, !478, !480}
!476 = !DILocalVariable(name: "$\CF\84_0_0", scope: !474, file: !1, type: !181, flags: DIFlagArtificial)
!477 = !DILocalVariable(name: "x", arg: 1, scope: !474, file: !1, line: 682, type: !403)
!478 = !DILocalVariable(name: "k", scope: !479, file: !1, line: 683, type: !406)
!479 = distinct !DILexicalBlock(scope: !474, file: !1, line: 682, column: 75)
!480 = !DILocalVariable(name: "m", scope: !481, file: !1, line: 686, type: !410)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 685, column: 18)
!482 = distinct !DILexicalBlock(scope: !479, file: !1, line: 685, column: 5)
!483 = !DILocation(line: 0, scope: !474)
!484 = !DILocation(line: 682, column: 62, scope: !474)
!485 = !DILocation(line: 686, column: 13, scope: !481)
!486 = !DILocation(line: 0, scope: !487)
!487 = !DILexicalBlockFile(scope: !479, file: !56, discriminator: 0)
!488 = !DILocation(line: 683, column: 9, scope: !479)
!489 = !DILocation(line: 683, column: 15, scope: !479)
!490 = !DILocation(line: 684, column: 5, scope: !479)
!491 = !DILocation(line: 684, column: 7, scope: !479)
!492 = !DILocation(line: 685, column: 8, scope: !482)
!493 = !DILocation(line: 0, scope: !494)
!494 = !DILexicalBlockFile(scope: !481, file: !56, discriminator: 0)
!495 = !DILocation(line: 686, column: 23, scope: !481)
!496 = !DILocation(line: 686, column: 17, scope: !481)
!497 = !DILocation(line: 687, column: 11, scope: !481)
!498 = !DILocation(line: 688, column: 15, scope: !481)
!499 = !DILocation(line: 688, column: 11, scope: !481)
!500 = !DILocation(line: 689, column: 5, scope: !482)
!501 = !DILocation(line: 685, column: 5, scope: !482)
!502 = !DILocation(line: 690, column: 5, scope: !479)
!503 = !DILocation(line: 690, column: 7, scope: !479)
!504 = !DILocation(line: 691, column: 1, scope: !479)
!505 = distinct !DISubprogram(name: "addressOnlyVarArgTestCCFlowReinitInBlockTest", linkageName: "$s4main040addressOnlyVarArgTestCCFlowReinitInBlockF0yyAA1P_pz_xmtAaCRzlF", scope: !4, file: !1, line: 716, type: !442, scopeLine: 716, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DILocalVariable(name: "$\CF\84_0_0", scope: !505, file: !1, type: !181, flags: DIFlagArtificial)
!508 = !DILocalVariable(name: "k", arg: 1, scope: !505, file: !1, line: 716, type: !406)
!509 = !DILocalVariable(name: "x", arg: 2, scope: !505, file: !1, line: 716, type: !403)
!510 = !DILocalVariable(name: "m", scope: !511, file: !1, line: 719, type: !410)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 718, column: 18)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 718, column: 5)
!513 = distinct !DILexicalBlock(scope: !505, file: !1, line: 716, column: 98)
!514 = !DILocation(line: 0, scope: !505)
!515 = !DILocation(line: 716, column: 85, scope: !505)
!516 = !DILocation(line: 719, column: 13, scope: !511)
!517 = !DILocation(line: 716, column: 65, scope: !505)
!518 = !DILocation(line: 0, scope: !519)
!519 = !DILexicalBlockFile(scope: !513, file: !56, discriminator: 0)
!520 = !DILocation(line: 717, column: 5, scope: !513)
!521 = !DILocation(line: 717, column: 7, scope: !513)
!522 = !DILocation(line: 718, column: 8, scope: !512)
!523 = !DILocation(line: 0, scope: !524)
!524 = !DILexicalBlockFile(scope: !511, file: !56, discriminator: 0)
!525 = !DILocation(line: 719, column: 23, scope: !511)
!526 = !DILocation(line: 719, column: 17, scope: !511)
!527 = !DILocation(line: 720, column: 11, scope: !511)
!528 = !DILocation(line: 721, column: 15, scope: !511)
!529 = !DILocation(line: 721, column: 11, scope: !511)
!530 = !DILocation(line: 722, column: 5, scope: !512)
!531 = !DILocation(line: 718, column: 5, scope: !512)
!532 = !DILocation(line: 723, column: 5, scope: !513)
!533 = !DILocation(line: 723, column: 7, scope: !513)
!534 = !DILocation(line: 724, column: 1, scope: !513)
