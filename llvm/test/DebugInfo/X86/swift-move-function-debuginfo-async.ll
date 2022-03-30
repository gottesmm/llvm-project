;; RUN: llc -O0 -mtriple=x86_64-apple-darwin %s -o %t -filetype=obj
;; RUN: llvm-dwarfdump --show-children %t | FileCheck --check-prefix=DWARF %s

source_filename = "move_function_dbginfo_async.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%swift.async_func_pointer = type <{ i32, i32 }>
%swift.type = type { i64 }
%swift.full_type = type { i8**, %swift.type }
%objc_class = type { %objc_class*, %objc_class*, %swift.opaque*, %swift.opaque*, i64 }
%swift.opaque = type opaque
%swift.method_descriptor = type { i32, i32 }
%T27move_function_dbginfo_async5KlassC = type <{ %swift.refcounted }>
%swift.refcounted = type { %swift.type*, i64 }
%swift.protocol_requirement = type { i32, i32 }
%swift.protocolref = type { i32 }
%swift.type_metadata_record = type { i32 }
%swift.context = type { %swift.context*, void (%swift.context*)* }
%"$s27move_function_dbginfo_async10forceSplityyYaF.Frame" = type {}
%"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame" = type { %swift.context*, %swift.opaque*, %swift.opaque*, %swift.type*, i8**, i8*, i8*, i8* }
%swift.vwtable = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i32, i32 }
%"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame" = type { %swift.context*, %swift.opaque*, %swift.opaque*, %swift.opaque*, %swift.opaque*, %swift.type*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame" = type { %swift.context*, %T27move_function_dbginfo_async5KlassC*, %T27move_function_dbginfo_async5KlassC*, %swift.type*, i8*, %T27move_function_dbginfo_async5KlassC*, i8* }
%swift.metadata_response = type { %swift.type*, i64 }
%swift.bridge = type opaque
%Any = type { [24 x i8], %swift.type* }
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, %swift.bridge* }>
%Ts6UInt64V = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ %swift.bridge* }>

@"$s27move_function_dbginfo_async10forceSplityyYaFTu" = global %swift.async_func_pointer <{ i32 trunc (i64 sub (i64 ptrtoint (void (%swift.context*)* @"$s27move_function_dbginfo_async10forceSplityyYaF" to i64), i64 ptrtoint (%swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu" to i64)) to i32), i32 16 }>, align 8
@"$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTu" = global %swift.async_func_pointer <{ i32 trunc (i64 sub (i64 ptrtoint (void (%swift.context*, %swift.opaque*, %swift.type*)* @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF" to i64), i64 ptrtoint (%swift.async_func_pointer* @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTu" to i64)) to i32), i32 80 }>, align 8
@"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTu" = global %swift.async_func_pointer <{ i32 trunc (i64 sub (i64 ptrtoint (void (%swift.context*, %swift.opaque*, %swift.opaque*, %swift.type*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF" to i64), i64 ptrtoint (%swift.async_func_pointer* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTu" to i64)) to i32), i32 144 }>, align 8
@"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTu" = global %swift.async_func_pointer <{ i32 trunc (i64 sub (i64 ptrtoint (void (%swift.context*)* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF" to i64), i64 ptrtoint (%swift.async_func_pointer* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTu" to i64)) to i32), i32 80 }>, align 8
@.str = private unnamed_addr constant [10 x i8] c"stop here\00"
@"$sSSN" = external global %swift.type, align 8
@"$sypN" = external global %swift.full_type
@"\01l_entry_point" = private constant { i32 } { i32 trunc (i64 sub (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 ptrtoint ({ i32 }* @"\01l_entry_point" to i64)) to i32) }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"$sBoWV" = external global i8*, align 8
@"$s27move_function_dbginfo_async5KlassCMm" = global %objc_class { %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %objc_class* @"OBJC_METACLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, i64 ptrtoint ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }* @_METACLASS_DATA__TtC27move_function_dbginfo_async5Klass to i64) }, align 8
@"OBJC_CLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@_objc_empty_cache = external global %swift.opaque
@"OBJC_METACLASS_$__TtCs12_SwiftObject" = external global %objc_class, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"_TtC27move_function_dbginfo_async5Klass\00"
@_METACLASS_DATA__TtC27move_function_dbginfo_async5Klass = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* } { i32 129, i32 40, i32 40, i32 0, i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* null, i8* null, i8* null, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@_DATA__TtC27move_function_dbginfo_async5Klass = internal constant { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* } { i32 128, i32 16, i32 16, i32 0, i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* null, i8* null, i8* null, i8* null, i8* null }, section "__DATA, __objc_const", align 8
@.str.8 = private constant [28 x i8] c"move_function_dbginfo_async\00"
@"$s27move_function_dbginfo_asyncMXM" = linkonce_odr hidden constant <{ i32, i32, i32 }> <{ i32 0, i32 0, i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.8 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32 }>, <{ i32, i32, i32 }>* @"$s27move_function_dbginfo_asyncMXM", i32 0, i32 2) to i64)) to i32) }>, section "__TEXT,__const", align 4
@.str.9 = private constant [6 x i8] c"Klass\00"
@"$s27move_function_dbginfo_async5KlassCMn" = constant <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }> <{ i32 -2147483568, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32 }>* @"$s27move_function_dbginfo_asyncMXM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 1) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([6 x i8]* @.str.9 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 2) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (%swift.metadata_response (i64)* @"$s27move_function_dbginfo_async5KlassCMa" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 3) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s27move_function_dbginfo_async5KlassCMF" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 4) to i64)) to i32), i32 0, i32 2, i32 12, i32 2, i32 0, i32 10, i32 10, i32 2, %swift.method_descriptor { i32 16, i32 trunc (i64 sub (i64 ptrtoint (void (%T27move_function_dbginfo_async5KlassC*)* @"$s27move_function_dbginfo_async5KlassC11doSomethingyyF" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 13, i32 1) to i64)) to i32) }, %swift.method_descriptor { i32 1, i32 trunc (i64 sub (i64 ptrtoint (%T27move_function_dbginfo_async5KlassC* (%swift.type*)* @"$s27move_function_dbginfo_async5KlassCACycfC" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 14, i32 1) to i64)) to i32) } }>, section "__TEXT,__const", align 4
@"$s27move_function_dbginfo_async5KlassCMf" = internal global <{ void (%T27move_function_dbginfo_async5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T27move_function_dbginfo_async5KlassC*)*, %T27move_function_dbginfo_async5KlassC* (%swift.type*)* }> <{ void (%T27move_function_dbginfo_async5KlassC*)* @"$s27move_function_dbginfo_async5KlassCfD", i8** @"$sBoWV", i64 ptrtoint (%objc_class* @"$s27move_function_dbginfo_async5KlassCMm" to i64), %objc_class* @"OBJC_CLASS_$__TtCs12_SwiftObject", %swift.opaque* @_objc_empty_cache, %swift.opaque* null, i64 add (i64 ptrtoint ({ i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }* @_DATA__TtC27move_function_dbginfo_async5Klass to i64), i64 2), i32 2, i32 0, i32 16, i16 7, i16 0, i32 112, i32 16, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i8* null, void (%T27move_function_dbginfo_async5KlassC*)* @"$s27move_function_dbginfo_async5KlassC11doSomethingyyF", %T27move_function_dbginfo_async5KlassC* (%swift.type*)* @"$s27move_function_dbginfo_async5KlassCACycfC" }>, align 8
@"symbolic _____ 27move_function_dbginfo_async5KlassC" = linkonce_odr hidden constant <{ i8, i32, i8 }> <{ i8 1, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i8, i32, i8 }>, <{ i8, i32, i8 }>* @"symbolic _____ 27move_function_dbginfo_async5KlassC", i32 0, i32 1) to i64)) to i32), i8 0 }>, section "__TEXT,__swift5_typeref, regular", align 2
@"$s27move_function_dbginfo_async5KlassCMF" = internal constant { i32, i32, i16, i16, i32 } { i32 trunc (i64 sub (i64 ptrtoint (<{ i8, i32, i8 }>* @"symbolic _____ 27move_function_dbginfo_async5KlassC" to i64), i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s27move_function_dbginfo_async5KlassCMF" to i64)) to i32), i32 0, i16 1, i16 12, i32 0 }, section "__TEXT,__swift5_fieldmd, regular", align 4
@"symbolic $s27move_function_dbginfo_async1PP" = linkonce_odr hidden constant <{ [34 x i8], i8 }> <{ [34 x i8] c"$s27move_function_dbginfo_async1PP", i8 0 }>, section "__TEXT,__swift5_typeref, regular", align 2
@"$s27move_function_dbginfo_async1P_pMF" = internal constant { i32, i32, i16, i16, i32 } { i32 trunc (i64 sub (i64 ptrtoint (<{ [34 x i8], i8 }>* @"symbolic $s27move_function_dbginfo_async1PP" to i64), i64 ptrtoint ({ i32, i32, i16, i16, i32 }* @"$s27move_function_dbginfo_async1P_pMF" to i64)) to i32), i32 0, i16 4, i16 12, i32 0 }, section "__TEXT,__swift5_fieldmd, regular", align 4
@.str.10 = private constant [2 x i8] c"P\00"
@"$s27move_function_dbginfo_async1PMp" = constant <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }> <{ i32 65603, i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32 }>* @"$s27move_function_dbginfo_asyncMXM" to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>, <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s27move_function_dbginfo_async1PMp", i32 0, i32 1) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([2 x i8]* @.str.10 to i64), i64 ptrtoint (i32* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>, <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s27move_function_dbginfo_async1PMp", i32 0, i32 2) to i64)) to i32), i32 0, i32 2, i32 0, %swift.protocol_requirement { i32 3, i32 0 }, %swift.protocol_requirement { i32 17, i32 0 } }>, section "__TEXT,__const", align 4
@"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency_$_move_function_dbginfo_async" = weak_odr hidden constant void ()* @"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency"
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00"
@.str.12 = private unnamed_addr constant [2 x i8] c" \00"
@.str.13 = private unnamed_addr constant [26 x i8] c"Swift/BridgeStorage.swift\00"
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer
@.str.15 = private unnamed_addr constant [12 x i8] c"Fatal error\00"
@"$s27move_function_dbginfo_async1PHr" = private constant %swift.protocolref { i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s27move_function_dbginfo_async1PMp" to i64), i64 ptrtoint (%swift.protocolref* @"$s27move_function_dbginfo_async1PHr" to i64)) to i32) }, section "__TEXT, __swift5_protos, regular", align 4
@"$s27move_function_dbginfo_async5KlassCHn" = private constant %swift.type_metadata_record { i32 trunc (i64 sub (i64 ptrtoint (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn" to i64), i64 ptrtoint (%swift.type_metadata_record* @"$s27move_function_dbginfo_async5KlassCHn" to i64)) to i32) }, section "__TEXT, __swift5_types, regular", align 4
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@swift_async_extendedFramePointerFlags = extern_weak global i8*
@_swift_async_extendedFramePointerFlagsUser = linkonce_odr hidden global i8** @swift_async_extendedFramePointerFlags
@"objc_classes_$s27move_function_dbginfo_async5KlassCN" = internal global i8* bitcast (%swift.type* @"$s27move_function_dbginfo_async5KlassCN" to i8*), section "__DATA,__objc_classlist,regular,no_dead_strip", align 8
@llvm.used = appending global [31 x i8*] [i8* bitcast (i32 (i32, i8**)* @main to i8*), i8* bitcast (void (%T27move_function_dbginfo_async5KlassC*)* @"$s27move_function_dbginfo_async5KlassC11doSomethingyyF" to i8*), i8* bitcast (%swift.refcounted* (%T27move_function_dbginfo_async5KlassC*)* @"$s27move_function_dbginfo_async5KlassCfd" to i8*), i8* bitcast (void (%T27move_function_dbginfo_async5KlassC*)* @"$s27move_function_dbginfo_async5KlassCfD" to i8*), i8* bitcast (i1 ()* @"$s27move_function_dbginfo_async9trueValueSbvg" to i8*), i8* bitcast (i1 ()* @"$s27move_function_dbginfo_async10falseValueSbvg" to i8*), i8* bitcast (void (%swift.opaque*, %swift.type*)* @"$s27move_function_dbginfo_async3useyyxlF" to i8*), i8* bitcast (void (%swift.context*)* @"$s27move_function_dbginfo_async10forceSplityyYaF" to i8*), i8* bitcast (%swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu" to i8*), i8* bitcast (void (%swift.context*, %swift.opaque*, %swift.type*)* @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF" to i8*), i8* bitcast (%swift.async_func_pointer* @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTu" to i8*), i8* bitcast (void (%swift.context*, %swift.opaque*, %swift.opaque*, %swift.type*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF" to i8*), i8* bitcast (%swift.async_func_pointer* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTu" to i8*), i8* bitcast (void (%swift.context*)* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF" to i8*), i8* bitcast (%swift.async_func_pointer* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTu" to i8*), i8* bitcast ({ i32 }* @"\01l_entry_point" to i8*), i8* bitcast (%objc_class* @"$s27move_function_dbginfo_async5KlassCMm" to i8*), i8* bitcast (%swift.method_descriptor* @"$s27move_function_dbginfo_async5KlassC11doSomethingyyFTq" to i8*), i8* bitcast (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn" to i8*), i8* bitcast (%swift.metadata_response (i64)* @"$s27move_function_dbginfo_async5KlassCMa" to i8*), i8* bitcast (%swift.type* @"$s27move_function_dbginfo_async5KlassCN" to i8*), i8* bitcast ({ i32, i32, i16, i16, i32 }* @"$s27move_function_dbginfo_async5KlassCMF" to i8*), i8* bitcast ({ i32, i32, i16, i16, i32 }* @"$s27move_function_dbginfo_async1P_pMF" to i8*), i8* bitcast (%swift.protocol_requirement* @"$s27move_function_dbginfo_async1PTL" to i8*), i8* bitcast (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s27move_function_dbginfo_async1PMp" to i8*), i8* bitcast (void ()** @"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency_$_move_function_dbginfo_async" to i8*), i8* bitcast (%swift.protocolref* @"$s27move_function_dbginfo_async1PHr" to i8*), i8* bitcast (%swift.type_metadata_record* @"$s27move_function_dbginfo_async5KlassCHn" to i8*), i8* bitcast (i16* @__swift_reflection_version to i8*), i8* bitcast (i8*** @_swift_async_extendedFramePointerFlagsUser to i8*), i8* bitcast (i8** @"objc_classes_$s27move_function_dbginfo_async5KlassCN" to i8*)], section "llvm.metadata"

@"$s27move_function_dbginfo_async5KlassC11doSomethingyyFTq" = alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 13)
@"$s27move_function_dbginfo_async5KlassCACycfCTq" = hidden alias %swift.method_descriptor, getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", i32 0, i32 14)
@"$s27move_function_dbginfo_async5KlassCN" = alias %swift.type, bitcast (i64* getelementptr inbounds (<{ void (%T27move_function_dbginfo_async5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T27move_function_dbginfo_async5KlassC*)*, %T27move_function_dbginfo_async5KlassC* (%swift.type*)* }>, <{ void (%T27move_function_dbginfo_async5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T27move_function_dbginfo_async5KlassC*)*, %T27move_function_dbginfo_async5KlassC* (%swift.type*)* }>* @"$s27move_function_dbginfo_async5KlassCMf", i32 0, i32 2) to %swift.type*)
@"$s27move_function_dbginfo_async1PTL" = alias %swift.protocol_requirement, getelementptr (%swift.protocol_requirement, %swift.protocol_requirement* getelementptr inbounds (<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>, <{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s27move_function_dbginfo_async1PMp", i32 0, i32 6), i32 -1)

define i32 @main(i32 %0, i8** %1) #0 !dbg !41 {
entry:
  %2 = bitcast i8** %1 to i8*
  ret i32 0, !dbg !54
}

define swiftcc void @"$s27move_function_dbginfo_async5KlassC11doSomethingyyF"(%T27move_function_dbginfo_async5KlassC* swiftself %0) #0 !dbg !58 {
entry:
  %self.debug = alloca %T27move_function_dbginfo_async5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T27move_function_dbginfo_async5KlassC** %self.debug, metadata !64, metadata !DIExpression()), !dbg !66
  %1 = bitcast %T27move_function_dbginfo_async5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T27move_function_dbginfo_async5KlassC* %0, %T27move_function_dbginfo_async5KlassC** %self.debug, align 8, !dbg !67
  ret void, !dbg !68
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

define swiftcc %swift.refcounted* @"$s27move_function_dbginfo_async5KlassCfd"(%T27move_function_dbginfo_async5KlassC* swiftself %0) #0 !dbg !70 {
entry:
  %self.debug = alloca %T27move_function_dbginfo_async5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T27move_function_dbginfo_async5KlassC** %self.debug, metadata !75, metadata !DIExpression()), !dbg !76
  %1 = bitcast %T27move_function_dbginfo_async5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T27move_function_dbginfo_async5KlassC* %0, %T27move_function_dbginfo_async5KlassC** %self.debug, align 8, !dbg !77
  %2 = bitcast %T27move_function_dbginfo_async5KlassC* %0 to %swift.refcounted*, !dbg !78
  ret %swift.refcounted* %2, !dbg !78
}

define swiftcc void @"$s27move_function_dbginfo_async5KlassCfD"(%T27move_function_dbginfo_async5KlassC* swiftself %0) #0 !dbg !80 {
entry:
  %self.debug = alloca %T27move_function_dbginfo_async5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T27move_function_dbginfo_async5KlassC** %self.debug, metadata !82, metadata !DIExpression()), !dbg !83
  %1 = bitcast %T27move_function_dbginfo_async5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T27move_function_dbginfo_async5KlassC* %0, %T27move_function_dbginfo_async5KlassC** %self.debug, align 8, !dbg !84
  %2 = call swiftcc %swift.refcounted* @"$s27move_function_dbginfo_async5KlassCfd"(%T27move_function_dbginfo_async5KlassC* swiftself %0), !dbg !84
  %3 = bitcast %swift.refcounted* %2 to %T27move_function_dbginfo_async5KlassC*, !dbg !84
  %4 = bitcast %T27move_function_dbginfo_async5KlassC* %3 to %swift.refcounted*, !dbg !84
  call void @swift_deallocClassInstance(%swift.refcounted* %4, i64 16, i64 7), !dbg !84
  ret void, !dbg !84
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: nounwind
declare void @swift_deallocClassInstance(%swift.refcounted*, i64, i64) #4

define hidden swiftcc %T27move_function_dbginfo_async5KlassC* @"$s27move_function_dbginfo_async5KlassCACycfC"(%swift.type* swiftself %0) #0 !dbg !85 {
entry:
  %1 = call noalias %swift.refcounted* @swift_allocObject(%swift.type* %0, i64 16, i64 7) #4, !dbg !89
  %2 = bitcast %swift.refcounted* %1 to %T27move_function_dbginfo_async5KlassC*, !dbg !89
  %3 = call swiftcc %T27move_function_dbginfo_async5KlassC* @"$s27move_function_dbginfo_async5KlassCACycfc"(%T27move_function_dbginfo_async5KlassC* swiftself %2), !dbg !89
  ret %T27move_function_dbginfo_async5KlassC* %3, !dbg !89
}

; Function Attrs: nounwind
declare %swift.refcounted* @swift_allocObject(%swift.type*, i64, i64) #4

define hidden swiftcc %T27move_function_dbginfo_async5KlassC* @"$s27move_function_dbginfo_async5KlassCACycfc"(%T27move_function_dbginfo_async5KlassC* swiftself %0) #0 !dbg !90 {
entry:
  %self.debug = alloca %T27move_function_dbginfo_async5KlassC*, align 8
  call void @llvm.dbg.declare(metadata %T27move_function_dbginfo_async5KlassC** %self.debug, metadata !94, metadata !DIExpression()), !dbg !95
  %1 = bitcast %T27move_function_dbginfo_async5KlassC** %self.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %T27move_function_dbginfo_async5KlassC* %0, %T27move_function_dbginfo_async5KlassC** %self.debug, align 8, !dbg !96
  ret %T27move_function_dbginfo_async5KlassC* %0, !dbg !97
}

define swiftcc i1 @"$s27move_function_dbginfo_async9trueValueSbvg"() #0 !dbg !99 {
entry:
  ret i1 true, !dbg !103
}

define swiftcc i1 @"$s27move_function_dbginfo_async10falseValueSbvg"() #0 !dbg !105 {
entry:
  ret i1 false, !dbg !106
}

define swiftcc void @"$s27move_function_dbginfo_async3useyyxlF"(%swift.opaque* noalias nocapture %0, %swift.type* %T) #0 !dbg !108 {
entry:
  %T1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T1, metadata !113, metadata !DIExpression()), !dbg !119
  %t.debug = alloca %swift.opaque*, align 8
  call void @llvm.dbg.declare(metadata %swift.opaque** %t.debug, metadata !117, metadata !DIExpression(DW_OP_deref)), !dbg !120
  %1 = bitcast %swift.opaque** %t.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  store %swift.type* %T, %swift.type** %T1, align 8
  store %swift.opaque* %0, %swift.opaque** %t.debug, align 8, !dbg !119
  ret void, !dbg !121
}

define swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF"(%swift.context* swiftasync %0) #0 !dbg !123 {
entry:
  call void @coro.devirt.trigger(i8* null)
  %1 = alloca %swift.context*, align 8
  %2 = bitcast %swift.context* %0 to <{ %swift.context*, void (%swift.context*)* }>*
  %FramePtr = bitcast i8* undef to %"$s27move_function_dbginfo_async10forceSplityyYaF.Frame"*
  store %swift.context* %0, %swift.context** %1, align 8
  %3 = load %swift.context*, %swift.context** %1, align 8, !dbg !126
  %4 = bitcast %swift.context* %3 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !126
  %5 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %4, i32 0, i32 1, !dbg !126
  %6 = load void (%swift.context*)*, void (%swift.context*)** %5, align 8, !dbg !126
  %7 = load %swift.context*, %swift.context** %1, align 8, !dbg !126
  %8 = bitcast void (%swift.context*)* %6 to i8*, !dbg !126
  musttail call swifttailcc void %6(%swift.context* swiftasync %7) #4, !dbg !128
  ret void, !dbg !128
}

; Function Attrs: nounwind
declare token @llvm.coro.id.async(i32, i32, i32, i8*) #4

; Function Attrs: nounwind
declare i8* @llvm.coro.begin(token, i8* writeonly) #4

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF.0"(i8* %0, %swift.context* %1) #4 !dbg !129 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !132
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !132
  ret void, !dbg !132
}

; Function Attrs: nounwind
declare i1 @llvm.coro.end.async(i8*, i1, ...) #4

;; DWARF:  DW_AT_linkage_name	("$s27move_function_dbginfo_async13letSimpleTestyyxnYalF")
;; DWARF:  DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x8, DW_OP_deref)
;; DWARF-NEXT:  DW_AT_name ("msg")
;;
;; DWARF:  DW_AT_linkage_name	("$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTQ0_")
;; DWARF:  DW_AT_name	("letSimpleTest")
;; DWARF:  DW_TAG_formal_parameter
;; DWARF-NEXT:  DW_AT_location	(DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_deref, DW_OP_plus_uconst 0x[[MSG_LOC:[a-f0-9]+]], DW_OP_plus_uconst 0x8, DW_OP_deref)
;; DWARF-NEXT:  DW_AT_name	("msg")
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTY1_")
;; DWARF: DW_AT_name	("letSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF: DW_AT_location	(0x{{[a-f0-9]+}}:
;; DWARF-NEXT:            [0x{{[a-f0-9]+}}, 0x{{[a-f0-9]+}}): DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x[[MSG_LOC]], DW_OP_plus_uconst 0x8, DW_OP_deref)
;; DWARF-NEXT:            DW_AT_name	("msg")
define swifttailcc void @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF"(%swift.context* swiftasync %0, %swift.opaque* noalias %1, %swift.type* %T) #0 !dbg !133 {
entry:
  call void @llvm.dbg.declare(metadata %swift.context* %0, metadata !135, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 24)), !dbg !137
  call void @coro.devirt.trigger(i8* null)
  %T.debug = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T.debug, metadata !135, metadata !DIExpression()), !dbg !137
  store %swift.type* %T, %swift.type** %T.debug, align 8
  %2 = bitcast %swift.context* %0 to <{ %swift.context*, void (%swift.context*)* }>*
  %3 = bitcast %swift.context* %0 to i8*
  %async.ctx.frameptr = getelementptr inbounds i8, i8* %3, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr to %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"*
  %4 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 1
  %T.spill.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 3
  store %swift.type* %T, %swift.type** %T.spill.addr, align 8
  %.spill.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 2
  store %swift.opaque* %1, %swift.opaque** %.spill.addr, align 8
  store %swift.context* %0, %swift.context** %4, align 8
  %5 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %7 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast %swift.type* %T to i8***, !dbg !138
  %9 = getelementptr inbounds i8**, i8*** %8, i64 -1, !dbg !138
  %T.valueWitnesses = load i8**, i8*** %9, align 8, !dbg !138, !invariant.load !46, !dereferenceable !141
  %T.valueWitnesses.spill.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 4, !dbg !138
  store i8** %T.valueWitnesses, i8*** %T.valueWitnesses.spill.addr, align 8, !dbg !138
  %10 = bitcast i8** %T.valueWitnesses to %swift.vwtable*, !dbg !138
  %11 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %10, i32 0, i32 8, !dbg !138
  %size = load i64, i64* %11, align 8, !dbg !138, !invariant.load !46
  %12 = add i64 %size, 15, !dbg !138
  %13 = and i64 %12, -16, !dbg !138
  %14 = call swiftcc i8* @swift_task_alloc(i64 %13) #4, !dbg !138
  %.spill.addr5 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 5, !dbg !138
  store i8* %14, i8** %.spill.addr5, align 8, !dbg !138
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %14), !dbg !138
  %15 = bitcast i8* %14 to %swift.opaque*, !dbg !138
  %16 = add i64 %size, 15, !dbg !138
  %17 = and i64 %16, -16, !dbg !138
  %18 = call swiftcc i8* @swift_task_alloc(i64 %17) #4, !dbg !138
  %.spill.addr8 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 6, !dbg !138
  store i8* %18, i8** %.spill.addr8, align 8, !dbg !138
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %18), !dbg !138
  %19 = bitcast i8* %18 to %swift.opaque*, !dbg !138
  store %swift.opaque* %1, %swift.opaque** %msg.debug, align 8, !dbg !137
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !142
  call void @llvm.dbg.addr(metadata %swift.context* %0, metadata !136, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !144
  br label %entry.split, !dbg !145

entry.split:                                      ; preds = %entry
  %20 = load i32, i32* getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu", i32 0, i32 1), align 8, !dbg !145
  %21 = zext i32 %20 to i64, !dbg !145
  %22 = call swiftcc i8* @swift_task_alloc(i64 %21) #4, !dbg !145
  %.spill.addr11 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 7, !dbg !145
  store i8* %22, i8** %.spill.addr11, align 8, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %22), !dbg !145
  %23 = bitcast i8* %22 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !145
  %24 = load %swift.context*, %swift.context** %4, align 8, !dbg !145
  %25 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %23, i32 0, i32 0, !dbg !145
  store %swift.context* %24, %swift.context** %25, align 8, !dbg !145
  %26 = bitcast i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTQ0_" to i8*) to void (%swift.context*)*, !dbg !145
  %27 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %23, i32 0, i32 1, !dbg !145
  store void (%swift.context*)* %26, void (%swift.context*)** %27, align 8, !dbg !145
  %28 = bitcast i8* %22 to %swift.context*, !dbg !145
  musttail call swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF"(%swift.context* swiftasync %28) #4, !dbg !146
  ret void, !dbg !146
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTQ0_"(i8* swiftasync %0) #0 !dbg !149 {
entryresume.0:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !151, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 24)), !dbg !153
  %1 = bitcast i8* %0 to i8**, !dbg !154
  %2 = load i8*, i8** %1, align 8, !dbg !154
  %3 = call i8** @llvm.swift.async.context.addr() #4, !dbg !154
  store i8* %2, i8** %3, align 8, !dbg !154
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %2, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %4 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 1
  %.reload.addr12 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 7, !dbg !158
  %.reload13 = load i8*, i8** %.reload.addr12, align 8, !dbg !158
  %.reload.addr3 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 2, !dbg !158
  %.reload4 = load %swift.opaque*, %swift.opaque** %.reload.addr3, align 8, !dbg !158
  %5 = bitcast i8* %0 to i8**, !dbg !159
  %6 = load i8*, i8** %5, align 8, !dbg !159
  %7 = call i8** @llvm.swift.async.context.addr() #4, !dbg !159
  store i8* %6, i8** %7, align 8, !dbg !159
  %8 = bitcast i8* %6 to %swift.context*, !dbg !158
  store %swift.context* %8, %swift.context** %4, align 8, !dbg !158
  call swiftcc void @swift_task_dealloc(i8* %.reload13) #4, !dbg !158
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %.reload13), !dbg !158
  store %swift.opaque* %.reload4, %swift.opaque** %msg.debug, align 8, !dbg !153
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !161
  call void @llvm.dbg.addr(metadata i8* %0, metadata !152, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !163
  br label %entryresume.0.split, !dbg !164

entryresume.0.split:                              ; preds = %entryresume.0
  %9 = load %swift.context*, %swift.context** %4, align 8, !dbg !164
  %10 = load %swift.context*, %swift.context** %4, align 8, !dbg !164
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %10, i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTY1_" to i8*), i64 0, i64 0) #4, !dbg !165
  ret void, !dbg !165
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTY1_"(i8* swiftasync %0) #0 !dbg !168 {
entryresume.1:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !170, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 24)), !dbg !172
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %0, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %1 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 1
  %.reload.addr9 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 6, !dbg !173
  %.reload10 = load i8*, i8** %.reload.addr9, align 8, !dbg !173
  %.reload.addr6 = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 5, !dbg !173
  %.reload7 = load i8*, i8** %.reload.addr6, align 8, !dbg !173
  %T.valueWitnesses.reload.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 4, !dbg !173
  %T.valueWitnesses.reload = load i8**, i8*** %T.valueWitnesses.reload.addr, align 8, !dbg !173
  %T.reload.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 3, !dbg !173
  %T.reload = load %swift.type*, %swift.type** %T.reload.addr, align 8, !dbg !173
  %.reload.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame", %"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.Frame"* %FramePtr, i32 0, i32 2, !dbg !173
  %.reload = load %swift.opaque*, %swift.opaque** %.reload.addr, align 8, !dbg !173
  %2 = bitcast i8* %.reload10 to %swift.opaque*, !dbg !173
  %3 = bitcast i8* %.reload7 to %swift.opaque*, !dbg !173
  %4 = call i8* @__swift_async_resume_get_context(i8* %0), !dbg !176
  %5 = bitcast i8* %4 to %swift.context*, !dbg !176
  store %swift.context* %5, %swift.context** %1, align 8, !dbg !176
  store %swift.opaque* %.reload, %swift.opaque** %msg.debug, align 8, !dbg !172
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !177
  call void @llvm.dbg.addr(metadata i8* %0, metadata !171, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !179
  br label %entryresume.1.split, !dbg !180

entryresume.1.split:                              ; preds = %entryresume.1
  %6 = getelementptr inbounds i8*, i8** %T.valueWitnesses.reload, i32 2, !dbg !180
  %7 = load i8*, i8** %6, align 8, !dbg !180, !invariant.load !46
  %initializeWithCopy = bitcast i8* %7 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !180
  %8 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %3, %swift.opaque* noalias %.reload, %swift.type* %T.reload) #4, !dbg !180
  %9 = getelementptr inbounds i8*, i8** %T.valueWitnesses.reload, i32 4, !dbg !181
  %10 = load i8*, i8** %9, align 8, !dbg !181, !invariant.load !46
  %initializeWithTake = bitcast i8* %10 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !181
  %11 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %2, %swift.opaque* noalias %.reload, %swift.type* %T.reload) #4, !dbg !181
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !171, metadata !DIExpression(DW_OP_deref)), !dbg !179
  %12 = getelementptr inbounds i8*, i8** %T.valueWitnesses.reload, i32 1, !dbg !181
  %13 = load i8*, i8** %12, align 8, !dbg !181, !invariant.load !46
  %destroy = bitcast i8* %13 to void (%swift.opaque*, %swift.type*)*, !dbg !181
  call void %destroy(%swift.opaque* noalias %3, %swift.type* %T.reload) #4, !dbg !181
  call swiftcc void @"$s27move_function_dbginfo_async3useyyxlF"(%swift.opaque* noalias nocapture %2, %swift.type* %T.reload), !dbg !182
  call void %destroy(%swift.opaque* noalias %2, %swift.type* %T.reload) #4, !dbg !183
  %14 = bitcast %swift.opaque* %2 to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %14), !dbg !183
  call swiftcc void @swift_task_dealloc(i8* %.reload10) #4, !dbg !183
  %15 = bitcast %swift.opaque* %3 to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %15), !dbg !183
  call swiftcc void @swift_task_dealloc(i8* %.reload7) #4, !dbg !183
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !183
  %16 = load %swift.context*, %swift.context** %1, align 8, !dbg !183
  %17 = bitcast %swift.context* %16 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !183
  %18 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %17, i32 0, i32 1, !dbg !183
  %19 = load void (%swift.context*)*, void (%swift.context*)** %18, align 8, !dbg !183
  %20 = load %swift.context*, %swift.context** %1, align 8, !dbg !183
  %21 = bitcast void (%swift.context*)* %19 to i8*, !dbg !183
  musttail call swifttailcc void %19(%swift.context* swiftasync %20) #4, !dbg !184
  ret void, !dbg !184
}

; Function Attrs: argmemonly nounwind
declare extern_weak swiftcc i8* @swift_task_alloc(i64) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.addr(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.coro.async.resume() #4

; Function Attrs: alwaysinline nounwind
define linkonce_odr hidden i8* @__swift_async_resume_project_context(i8* %0) #7 !dbg !155 {
entry:
  %1 = bitcast i8* %0 to i8**, !dbg !187
  %2 = load i8*, i8** %1, align 8, !dbg !187
  %3 = call i8** @llvm.swift.async.context.addr(), !dbg !187
  store i8* %2, i8** %3, align 8, !dbg !187
  ret i8* %2, !dbg !187
}

; Function Attrs: nounwind readnone
declare i8** @llvm.swift.async.context.addr() #8

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.0"(i8* %0, %swift.context* %1) #4 !dbg !147 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !188
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !188
  ret void, !dbg !188
}

; Function Attrs: nounwind
declare { i8* } @llvm.coro.suspend.async.sl_p0i8s(i32, i8*, i8*, ...) #4

; Function Attrs: argmemonly nounwind
declare extern_weak swiftcc void @swift_task_dealloc(i8*) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nounwind
define linkonce_odr hidden i8* @__swift_async_resume_get_context(i8* %0) #9 !dbg !189 {
entry:
  ret i8* %0, !dbg !190
}

; Function Attrs: nounwind
define internal swifttailcc void @__swift_suspend_point(i8* %0, i64 %1, i64 %2, %swift.context* %3) #4 !dbg !166 {
entry:
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %3, i8* %0, i64 %1, i64 %2) #4, !dbg !191
  ret void, !dbg !191
}

; Function Attrs: nounwind
declare extern_weak swifttailcc void @swift_task_switch(%swift.context*, i8*, i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async13letSimpleTestyyxnYalF.0.1"(i8* %0, %swift.context* %1) #4 !dbg !185 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !192
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !192
  ret void, !dbg !192
}

;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF")
;; DWARF: DW_AT_name	("varSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x8, DW_OP_deref)
;; DWARF-NEXT: DW_AT_name ("msg")
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ0_")
;; DWARF: DW_AT_name	("varSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_deref, DW_OP_plus_uconst 0x[[MSG_LOC:[a-f0-9]+]], DW_OP_plus_uconst 0x8, DW_OP_deref)
;; DWARF-NEXT: DW_AT_name	("msg")
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY1_")
;; DWARF: DW_AT_name	("varSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(0x{{[a-f0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-f0-9]+}}, 0x{{[a-f0-9]+}}): DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x[[MSG_LOC]], DW_OP_plus_uconst 0x8, DW_OP_deref)
;; DWARF-NEXT: DW_AT_name	("msg")
;;
;; We were just moved and are not reinit yet. This is caused by us hopping twice
;; when we return from an async function. Once for the async function and then
;; for the hop to executor.
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ2_")
;; DWARF: DW_AT_name	("varSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_name ("msg")
;;
;; We reinitialize our value in this funclet and then move it and then
;; reinitialize it again. So we have two different live ranges. Sadly, we don't
;; validate that the first live range doesn't start at the beginning of the
;; function. But we have lldb tests to validate that.
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY3_")
;; DWARF: DW_AT_name	("varSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF: DW_AT_location	(0x{{[a-f0-9]+}}:
;; DWARF-NEXT:    [0x{{[a-f0-9]+}}, 0x{{[a-f0-9]+}}):
;; DWARF-SAME:        DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x[[MSG_LOC]], DW_OP_plus_uconst 0x8, DW_OP_deref
;; DWARF-NEXT:    [0x{{[a-f0-9]+}}, 0x{{[a-f0-9]+}}):
;; DWARF-SAME:        DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x[[MSG_LOC]], DW_OP_plus_uconst 0x8, DW_OP_deref
;; DWARF-NEXT: DW_AT_name	("msg")
;;
;; We did not move the value again here, so we just get a normal entry value for
;; the entire function.
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ4_")
;; DWARF: DW_AT_name	("varSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_deref, DW_OP_plus_uconst 0x[[MSG_LOC]], DW_OP_plus_uconst 0x8, DW_OP_deref)
;; DWARF-NEXT: DW_AT_name	("msg")
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY5_")
;; DWARF: DW_AT_name	("varSimpleTest")
;; DWARF: DW_TAG_formal_parameter
;; DWARF-NEXT: DW_AT_location	(DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x8, DW_OP_deref
;; DWARF-NEXT: DW_AT_name	("msg")
define swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF"(%swift.context* swiftasync %0, %swift.opaque* %1, %swift.opaque* noalias %2, %swift.type* %T) #0 !dbg !193 {
entry:
  call void @llvm.dbg.declare(metadata %swift.context* %0, metadata !199, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16, DW_OP_deref)), !dbg !200
  call void @llvm.dbg.declare(metadata %swift.context* %0, metadata !197, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 40)), !dbg !201
  call void @coro.devirt.trigger(i8* null)
  %T.debug = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %T.debug, metadata !197, metadata !DIExpression()), !dbg !201
  store %swift.type* %T, %swift.type** %T.debug, align 8
  %3 = bitcast %swift.context* %0 to <{ %swift.context*, void (%swift.context*)* }>*
  %4 = bitcast %swift.context* %0 to i8*
  %async.ctx.frameptr = getelementptr inbounds i8, i8* %4, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr to %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"*
  %5 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 1
  %msg2.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 2
  %T.spill.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 5
  store %swift.type* %T, %swift.type** %T.spill.addr, align 8
  %.spill.addr23 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 4
  store %swift.opaque* %2, %swift.opaque** %.spill.addr23, align 8
  %.spill.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 3
  store %swift.opaque* %1, %swift.opaque** %.spill.addr, align 8
  store %swift.context* %0, %swift.context** %5, align 8
  %6 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %7 = bitcast %swift.opaque** %msg2.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  %11 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = bitcast %swift.opaque** %msg.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %swift.type* %T to i8***, !dbg !202
  %15 = getelementptr inbounds i8**, i8*** %14, i64 -1, !dbg !202
  %T.valueWitnesses = load i8**, i8*** %15, align 8, !dbg !202, !invariant.load !46, !dereferenceable !141
  %T.valueWitnesses.spill.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 6, !dbg !202
  store i8** %T.valueWitnesses, i8*** %T.valueWitnesses.spill.addr, align 8, !dbg !202
  %16 = bitcast i8** %T.valueWitnesses to %swift.vwtable*, !dbg !202
  %17 = getelementptr inbounds %swift.vwtable, %swift.vwtable* %16, i32 0, i32 8, !dbg !202
  %size = load i64, i64* %17, align 8, !dbg !202, !invariant.load !46
  %18 = add i64 %size, 15, !dbg !202
  %19 = and i64 %18, -16, !dbg !202
  %20 = call swiftcc i8* @swift_task_alloc(i64 %19) #4, !dbg !202
  %.spill.addr30 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 7, !dbg !202
  store i8* %20, i8** %.spill.addr30, align 8, !dbg !202
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %20), !dbg !202
  %21 = bitcast i8* %20 to %swift.opaque*, !dbg !202
  %22 = add i64 %size, 15, !dbg !202
  %23 = and i64 %22, -16, !dbg !202
  %24 = call swiftcc i8* @swift_task_alloc(i64 %23) #4, !dbg !202
  %.spill.addr37 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 8, !dbg !202
  store i8* %24, i8** %.spill.addr37, align 8, !dbg !202
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %24), !dbg !202
  %25 = bitcast i8* %24 to %swift.opaque*, !dbg !202
  store %swift.opaque* %1, %swift.opaque** %msg.debug, align 8, !dbg !201
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !205
  call void @llvm.dbg.addr(metadata %swift.context* %0, metadata !198, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !207
  br label %entry.split, !dbg !201

entry.split:                                      ; preds = %entry
  store %swift.opaque* %2, %swift.opaque** %msg2.debug, align 8, !dbg !201
  call void asm sideeffect "", "r"(%swift.opaque** %msg2.debug), !dbg !205
  %26 = load i32, i32* getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu", i32 0, i32 1), align 8, !dbg !208
  %27 = zext i32 %26 to i64, !dbg !208
  %28 = call swiftcc i8* @swift_task_alloc(i64 %27) #4, !dbg !208
  %.spill.addr44 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 9, !dbg !208
  store i8* %28, i8** %.spill.addr44, align 8, !dbg !208
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %28), !dbg !208
  %29 = bitcast i8* %28 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !208
  %30 = load %swift.context*, %swift.context** %5, align 8, !dbg !208
  %31 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %29, i32 0, i32 0, !dbg !208
  store %swift.context* %30, %swift.context** %31, align 8, !dbg !208
  %32 = bitcast i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ0_" to i8*) to void (%swift.context*)*, !dbg !208
  %33 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %29, i32 0, i32 1, !dbg !208
  store void (%swift.context*)* %32, void (%swift.context*)** %33, align 8, !dbg !208
  %34 = bitcast i8* %28 to %swift.context*, !dbg !208
  musttail call swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF"(%swift.context* swiftasync %34) #4, !dbg !209
  ret void, !dbg !209
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ0_"(i8* swiftasync %0) #0 !dbg !212 {
entryresume.0:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !216, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16, DW_OP_deref)), !dbg !217
  call void @llvm.dbg.declare(metadata i8* %0, metadata !214, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 40)), !dbg !218
  %1 = bitcast i8* %0 to i8**, !dbg !219
  %2 = load i8*, i8** %1, align 8, !dbg !219
  %3 = call i8** @llvm.swift.async.context.addr() #4, !dbg !219
  store i8* %2, i8** %3, align 8, !dbg !219
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %2, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %4 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 1
  %msg2.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr45 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 9, !dbg !222
  %.reload46 = load i8*, i8** %.reload.addr45, align 8, !dbg !222
  %.reload.addr21 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 3, !dbg !222
  %.reload22 = load %swift.opaque*, %swift.opaque** %.reload.addr21, align 8, !dbg !222
  %5 = bitcast i8* %0 to i8**, !dbg !223
  %6 = load i8*, i8** %5, align 8, !dbg !223
  %7 = call i8** @llvm.swift.async.context.addr() #4, !dbg !223
  store i8* %6, i8** %7, align 8, !dbg !223
  %8 = bitcast i8* %6 to %swift.context*, !dbg !222
  store %swift.context* %8, %swift.context** %4, align 8, !dbg !222
  call swiftcc void @swift_task_dealloc(i8* %.reload46) #4, !dbg !222
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %.reload46), !dbg !222
  store %swift.opaque* %.reload22, %swift.opaque** %msg.debug, align 8, !dbg !218
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !225
  call void @llvm.dbg.addr(metadata i8* %0, metadata !215, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !227
  br label %entryresume.0.split, !dbg !228

entryresume.0.split:                              ; preds = %entryresume.0
  %9 = load %swift.context*, %swift.context** %4, align 8, !dbg !228
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %9, i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY1_" to i8*), i64 0, i64 0) #4, !dbg !229
  ret void, !dbg !229
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY1_"(i8* swiftasync %0) #0 !dbg !231 {
entryresume.1:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !235, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16, DW_OP_deref)), !dbg !236
  call void @llvm.dbg.declare(metadata i8* %0, metadata !233, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 40)), !dbg !237
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %0, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %1 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 1
  %msg2.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr38 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 8, !dbg !238
  %.reload39 = load i8*, i8** %.reload.addr38, align 8, !dbg !238
  %.reload.addr31 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 7, !dbg !238
  %.reload32 = load i8*, i8** %.reload.addr31, align 8, !dbg !238
  %T.valueWitnesses.reload.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 6, !dbg !238
  %T.valueWitnesses.reload = load i8**, i8*** %T.valueWitnesses.reload.addr, align 8, !dbg !238
  %T.reload.addr28 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 5, !dbg !238
  %T.reload29 = load %swift.type*, %swift.type** %T.reload.addr28, align 8, !dbg !238
  %.reload.addr19 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 3, !dbg !238
  %.reload20 = load %swift.opaque*, %swift.opaque** %.reload.addr19, align 8, !dbg !238
  %2 = bitcast i8* %.reload39 to %swift.opaque*, !dbg !238
  %3 = bitcast i8* %.reload32 to %swift.opaque*, !dbg !238
  %4 = call i8* @__swift_async_resume_get_context(i8* %0), !dbg !241
  %5 = bitcast i8* %4 to %swift.context*, !dbg !241
  store %swift.context* %5, %swift.context** %1, align 8, !dbg !241
  store %swift.opaque* %.reload20, %swift.opaque** %msg.debug, align 8, !dbg !237
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !242
  call void @llvm.dbg.addr(metadata i8* %0, metadata !234, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !244
  br label %entryresume.1.split, !dbg !245

entryresume.1.split:                              ; preds = %entryresume.1
  %6 = getelementptr inbounds i8*, i8** %T.valueWitnesses.reload, i32 2, !dbg !245
  %7 = load i8*, i8** %6, align 8, !dbg !245, !invariant.load !46
  %.spill.addr47 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 10, !dbg !245
  store i8* %7, i8** %.spill.addr47, align 8, !dbg !245
  %initializeWithCopy = bitcast i8* %7 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !245
  %8 = call %swift.opaque* %initializeWithCopy(%swift.opaque* noalias %3, %swift.opaque* noalias %.reload20, %swift.type* %T.reload29) #4, !dbg !245
  %9 = getelementptr inbounds i8*, i8** %T.valueWitnesses.reload, i32 4, !dbg !246
  %10 = load i8*, i8** %9, align 8, !dbg !246, !invariant.load !46
  %.spill.addr50 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 11, !dbg !246
  store i8* %10, i8** %.spill.addr50, align 8, !dbg !246
  %initializeWithTake = bitcast i8* %10 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !246
  %11 = call %swift.opaque* %initializeWithTake(%swift.opaque* noalias %2, %swift.opaque* noalias %.reload20, %swift.type* %T.reload29) #4, !dbg !246
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !234, metadata !DIExpression(DW_OP_deref)), !dbg !244
  %12 = getelementptr inbounds i8*, i8** %T.valueWitnesses.reload, i32 1, !dbg !246
  %13 = load i8*, i8** %12, align 8, !dbg !246, !invariant.load !46
  %.spill.addr53 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 12, !dbg !246
  store i8* %13, i8** %.spill.addr53, align 8, !dbg !246
  %destroy = bitcast i8* %13 to void (%swift.opaque*, %swift.type*)*, !dbg !246
  call void %destroy(%swift.opaque* noalias %3, %swift.type* %T.reload29) #4, !dbg !246
  call swiftcc void @"$s27move_function_dbginfo_async3useyyxlF"(%swift.opaque* noalias nocapture %2, %swift.type* %T.reload29), !dbg !247
  call void %destroy(%swift.opaque* noalias %2, %swift.type* %T.reload29) #4, !dbg !247
  %14 = load i32, i32* getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu", i32 0, i32 1), align 8, !dbg !248
  %15 = zext i32 %14 to i64, !dbg !248
  %16 = call swiftcc i8* @swift_task_alloc(i64 %15) #4, !dbg !248
  %.spill.addr58 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 13, !dbg !248
  store i8* %16, i8** %.spill.addr58, align 8, !dbg !248
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %16), !dbg !248
  %17 = bitcast i8* %16 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !248
  %18 = load %swift.context*, %swift.context** %1, align 8, !dbg !248
  %19 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %17, i32 0, i32 0, !dbg !248
  store %swift.context* %18, %swift.context** %19, align 8, !dbg !248
  %20 = bitcast i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ2_" to i8*) to void (%swift.context*)*, !dbg !248
  %21 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %17, i32 0, i32 1, !dbg !248
  store void (%swift.context*)* %20, void (%swift.context*)** %21, align 8, !dbg !248
  %22 = bitcast i8* %16 to %swift.context*, !dbg !248
  musttail call swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF"(%swift.context* swiftasync %22) #4, !dbg !249
  ret void, !dbg !249
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ2_"(i8* swiftasync %0) #0 !dbg !252 {
entryresume.2:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !256, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16, DW_OP_deref)), !dbg !257
  call void @llvm.dbg.declare(metadata i8* %0, metadata !254, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 40)), !dbg !258
  %1 = bitcast i8* %0 to i8**, !dbg !259
  %2 = load i8*, i8** %1, align 8, !dbg !259
  %3 = call i8** @llvm.swift.async.context.addr() #4, !dbg !259
  store i8* %2, i8** %3, align 8, !dbg !259
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %2, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %4 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 1
  %msg2.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr59 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 13, !dbg !262
  %.reload60 = load i8*, i8** %.reload.addr59, align 8, !dbg !262
  %5 = bitcast i8* %0 to i8**, !dbg !263
  %6 = load i8*, i8** %5, align 8, !dbg !263
  %7 = call i8** @llvm.swift.async.context.addr() #4, !dbg !263
  store i8* %6, i8** %7, align 8, !dbg !263
  %8 = bitcast i8* %6 to %swift.context*, !dbg !262
  store %swift.context* %8, %swift.context** %4, align 8, !dbg !262
  call swiftcc void @swift_task_dealloc(i8* %.reload60) #4, !dbg !262
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %.reload60), !dbg !262
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !255, metadata !DIExpression(DW_OP_deref)), !dbg !265
  %9 = load %swift.context*, %swift.context** %4, align 8, !dbg !266
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %9, i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY3_" to i8*), i64 0, i64 0) #4, !dbg !267
  ret void, !dbg !267
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY3_"(i8* swiftasync %0) #0 !dbg !269 {
entryresume.3:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !273, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16, DW_OP_deref)), !dbg !274
  call void @llvm.dbg.declare(metadata i8* %0, metadata !271, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 40)), !dbg !275
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %0, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %1 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 1
  %msg2.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr54 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 12, !dbg !276
  %.reload55 = load i8*, i8** %.reload.addr54, align 8, !dbg !276
  %.reload.addr51 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 11, !dbg !276
  %.reload52 = load i8*, i8** %.reload.addr51, align 8, !dbg !276
  %.reload.addr48 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 10, !dbg !276
  %.reload49 = load i8*, i8** %.reload.addr48, align 8, !dbg !276
  %.reload.addr40 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 8, !dbg !276
  %.reload41 = load i8*, i8** %.reload.addr40, align 8, !dbg !276
  %.reload.addr33 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 7, !dbg !276
  %.reload34 = load i8*, i8** %.reload.addr33, align 8, !dbg !276
  %T.reload.addr26 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 5, !dbg !276
  %T.reload27 = load %swift.type*, %swift.type** %T.reload.addr26, align 8, !dbg !276
  %.reload.addr24 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 4, !dbg !276
  %.reload25 = load %swift.opaque*, %swift.opaque** %.reload.addr24, align 8, !dbg !276
  %.reload.addr17 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 3, !dbg !276
  %.reload18 = load %swift.opaque*, %swift.opaque** %.reload.addr17, align 8, !dbg !276
  %destroy14 = bitcast i8* %.reload55 to void (%swift.opaque*, %swift.type*)*, !dbg !276
  %initializeWithTake12 = bitcast i8* %.reload52 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !276
  %initializeWithCopy11 = bitcast i8* %.reload49 to %swift.opaque* (%swift.opaque*, %swift.opaque*, %swift.type*)*, !dbg !278
  %2 = bitcast i8* %.reload41 to %swift.opaque*, !dbg !279
  %3 = bitcast i8* %.reload34 to %swift.opaque*, !dbg !279
  %4 = call i8* @__swift_async_resume_get_context(i8* %0), !dbg !281
  %5 = bitcast i8* %4 to %swift.context*, !dbg !281
  store %swift.context* %5, %swift.context** %1, align 8, !dbg !281
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !272, metadata !DIExpression(DW_OP_deref)), !dbg !282
  %6 = call %swift.opaque* %initializeWithCopy11(%swift.opaque* noalias %2, %swift.opaque* noalias %.reload25, %swift.type* %T.reload27) #4, !dbg !283
  %7 = call %swift.opaque* %initializeWithTake12(%swift.opaque* noalias %.reload18, %swift.opaque* noalias %2, %swift.type* %T.reload27) #4, !dbg !284
  store %swift.opaque* %.reload18, %swift.opaque** %msg.debug, align 8, !dbg !275
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !285
  call void @llvm.dbg.addr(metadata i8* %0, metadata !272, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !282
  br label %entryresume.3.split2, !dbg !287

entryresume.3.split2:                             ; preds = %entryresume.3
  %8 = call %swift.opaque* %initializeWithCopy11(%swift.opaque* noalias %3, %swift.opaque* noalias %.reload18, %swift.type* %T.reload27) #4, !dbg !287
  %9 = call %swift.opaque* %initializeWithTake12(%swift.opaque* noalias %2, %swift.opaque* noalias %.reload18, %swift.type* %T.reload27) #4, !dbg !288
  call void @llvm.dbg.value(metadata %swift.opaque* undef, metadata !272, metadata !DIExpression(DW_OP_deref)), !dbg !282
  call void %destroy14(%swift.opaque* noalias %3, %swift.type* %T.reload27) #4, !dbg !288
  %10 = call %swift.opaque* %initializeWithCopy11(%swift.opaque* noalias %3, %swift.opaque* noalias %2, %swift.type* %T.reload27) #4, !dbg !289
  call void %destroy14(%swift.opaque* noalias %3, %swift.type* %T.reload27) #4, !dbg !289
  %11 = call %swift.opaque* %initializeWithCopy11(%swift.opaque* noalias %3, %swift.opaque* noalias %.reload25, %swift.type* %T.reload27) #4, !dbg !290
  %12 = call %swift.opaque* %initializeWithTake12(%swift.opaque* noalias %.reload18, %swift.opaque* noalias %3, %swift.type* %T.reload27) #4, !dbg !291
  store %swift.opaque* %.reload18, %swift.opaque** %msg.debug, align 8, !dbg !275
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !285
  call void @llvm.dbg.addr(metadata i8* %0, metadata !272, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !282
  br label %entryresume.3.split, !dbg !292

entryresume.3.split:                              ; preds = %entryresume.3.split2
  %13 = load i32, i32* getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu", i32 0, i32 1), align 8, !dbg !292
  %14 = zext i32 %13 to i64, !dbg !292
  %15 = call swiftcc i8* @swift_task_alloc(i64 %14) #4, !dbg !292
  %.spill.addr61 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 14, !dbg !292
  store i8* %15, i8** %.spill.addr61, align 8, !dbg !292
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %15), !dbg !292
  %16 = bitcast i8* %15 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !292
  %17 = load %swift.context*, %swift.context** %1, align 8, !dbg !292
  %18 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %16, i32 0, i32 0, !dbg !292
  store %swift.context* %17, %swift.context** %18, align 8, !dbg !292
  %19 = bitcast i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ4_" to i8*) to void (%swift.context*)*, !dbg !292
  %20 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %16, i32 0, i32 1, !dbg !292
  store void (%swift.context*)* %19, void (%swift.context*)** %20, align 8, !dbg !292
  %21 = bitcast i8* %15 to %swift.context*, !dbg !292
  musttail call swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF"(%swift.context* swiftasync %21) #4, !dbg !293
  ret void, !dbg !293
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ4_"(i8* swiftasync %0) #0 !dbg !296 {
entryresume.4:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !300, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16, DW_OP_deref)), !dbg !301
  call void @llvm.dbg.declare(metadata i8* %0, metadata !298, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 40)), !dbg !302
  %1 = bitcast i8* %0 to i8**, !dbg !303
  %2 = load i8*, i8** %1, align 8, !dbg !303
  %3 = call i8** @llvm.swift.async.context.addr() #4, !dbg !303
  store i8* %2, i8** %3, align 8, !dbg !303
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %2, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %4 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 1
  %msg2.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr62 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 14, !dbg !306
  %.reload63 = load i8*, i8** %.reload.addr62, align 8, !dbg !306
  %.reload.addr15 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 3, !dbg !306
  %.reload16 = load %swift.opaque*, %swift.opaque** %.reload.addr15, align 8, !dbg !306
  %5 = bitcast i8* %0 to i8**, !dbg !307
  %6 = load i8*, i8** %5, align 8, !dbg !307
  %7 = call i8** @llvm.swift.async.context.addr() #4, !dbg !307
  store i8* %6, i8** %7, align 8, !dbg !307
  %8 = bitcast i8* %6 to %swift.context*, !dbg !306
  store %swift.context* %8, %swift.context** %4, align 8, !dbg !306
  call swiftcc void @swift_task_dealloc(i8* %.reload63) #4, !dbg !306
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %.reload63), !dbg !306
  store %swift.opaque* %.reload16, %swift.opaque** %msg.debug, align 8, !dbg !302
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !309
  call void @llvm.dbg.addr(metadata i8* %0, metadata !299, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !311
  br label %entryresume.4.split, !dbg !312

entryresume.4.split:                              ; preds = %entryresume.4
  %9 = load %swift.context*, %swift.context** %4, align 8, !dbg !312
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %9, i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY5_" to i8*), i64 0, i64 0) #4, !dbg !313
  ret void, !dbg !313
}

define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY5_"(i8* swiftasync %0) #0 !dbg !315 {
entryresume.5:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !319, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16, DW_OP_deref)), !dbg !320
  call void @llvm.dbg.declare(metadata i8* %0, metadata !317, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 40)), !dbg !321
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %0, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr to i8*
  %T.debug = alloca %swift.type*, align 8
  %1 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 0
  %msg.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 1
  %msg2.debug = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr56 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 12, !dbg !322
  %.reload57 = load i8*, i8** %.reload.addr56, align 8, !dbg !322
  %.reload.addr42 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 8, !dbg !322
  %.reload43 = load i8*, i8** %.reload.addr42, align 8, !dbg !322
  %.reload.addr35 = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 7, !dbg !322
  %.reload36 = load i8*, i8** %.reload.addr35, align 8, !dbg !322
  %T.reload.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 5, !dbg !322
  %T.reload = load %swift.type*, %swift.type** %T.reload.addr, align 8, !dbg !322
  %.reload.addr = getelementptr inbounds %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame", %"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.Frame"* %FramePtr, i32 0, i32 3, !dbg !322
  %.reload = load %swift.opaque*, %swift.opaque** %.reload.addr, align 8, !dbg !322
  %destroy13 = bitcast i8* %.reload57 to void (%swift.opaque*, %swift.type*)*, !dbg !322
  %2 = bitcast i8* %.reload43 to %swift.opaque*, !dbg !324
  %3 = bitcast i8* %.reload36 to %swift.opaque*, !dbg !324
  %4 = call i8* @__swift_async_resume_get_context(i8* %0), !dbg !326
  %5 = bitcast i8* %4 to %swift.context*, !dbg !326
  store %swift.context* %5, %swift.context** %1, align 8, !dbg !326
  store %swift.opaque* %.reload, %swift.opaque** %msg.debug, align 8, !dbg !321
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !327
  call void @llvm.dbg.addr(metadata i8* %0, metadata !318, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8, DW_OP_deref)), !dbg !329
  br label %entryresume.5.split, !dbg !330

entryresume.5.split:                              ; preds = %entryresume.5
  call void %destroy13(%swift.opaque* noalias %2, %swift.type* %T.reload) #4, !dbg !330
  %6 = bitcast %swift.opaque* %2 to i8*, !dbg !330
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %6), !dbg !330
  call swiftcc void @swift_task_dealloc(i8* %.reload43) #4, !dbg !330
  %7 = bitcast %swift.opaque* %3 to i8*, !dbg !330
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %7), !dbg !330
  call swiftcc void @swift_task_dealloc(i8* %.reload36) #4, !dbg !330
  call void asm sideeffect "", "r"(%swift.opaque** %msg.debug), !dbg !330
  call void asm sideeffect "", "r"(%swift.opaque** %msg2.debug), !dbg !330
  %8 = load %swift.context*, %swift.context** %1, align 8, !dbg !330
  %9 = bitcast %swift.context* %8 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !330
  %10 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %9, i32 0, i32 1, !dbg !330
  %11 = load void (%swift.context*)*, void (%swift.context*)** %10, align 8, !dbg !330
  %12 = load %swift.context*, %swift.context** %1, align 8, !dbg !330
  %13 = bitcast void (%swift.context*)* %11 to i8*, !dbg !330
  musttail call swifttailcc void %11(%swift.context* swiftasync %12) #4, !dbg !331
  ret void, !dbg !331
}

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.0"(i8* %0, %swift.context* %1) #4 !dbg !210 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !334
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !334
  ret void, !dbg !334
}

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.0.2"(i8* %0, %swift.context* %1) #4 !dbg !250 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !335
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !335
  ret void, !dbg !335
}

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.0.3"(i8* %0, %swift.context* %1) #4 !dbg !294 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !336
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !336
  ret void, !dbg !336
}

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF.0.4"(i8* %0, %swift.context* %1) #4 !dbg !332 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !337
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !337
  ret void, !dbg !337
}

;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async16varSimpleTestVaryyYaF")
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY0_")
;;
;; DWARF:    DW_TAG_variable
;; DWARF-NEXT: DW_AT_location   (DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x8)
;; DWARF-NEXT: DW_AT_name       ("k")
;;
;; DWARF:    DW_TAG_variable
;; DWARF-NEXT: DW_AT_location
;; DWARF-NEXT: DW_AT_name ("m")
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ1_")
;;
;; DWARF:    DW_TAG_variable
;; DWARF-NEXT: DW_AT_location   (DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_deref, DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x8)
;; DWARF-NEXT: DW_AT_name       ("k")
;;
;; DWARF:    DW_TAG_variable
;; DWARF-NEXT: DW_AT_location	(DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_deref, DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x10)
;; DWARF-NEXT: DW_AT_name ("m")
;;
;; DWARF: DW_AT_linkage_name	("$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY2_")
;; DWARF:    DW_TAG_variable
;; DWARF-NEXT: DW_AT_location   (0x{{[0-9a-f]+}}:
;; DWARF-NEXT:    [0x{{[0-9a-f]+}}, 0x{{[0-9a-f]+}}): DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x8)
;; DWARF-NEXT: DW_AT_name       ("k")
;; DWARF:    DW_TAG_variable
;; DWARF-NEXT: DW_AT_location
;; DWARF-NEXT: DW_AT_name ("m")
;;
;; DWARF: DW_AT_linkage_name  ("$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ3_")
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_deref, DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x10)
;; DWARF-NEXT: DW_AT_name  ("m")
;; K is dead here.
;; DWARF: DW_TAG_variable
;; DWARF-NEXT:    DW_AT_name  ("k")
;;
;; We reinitialize k in 4.
;; DWARF: DW_AT_linkage_name  ("$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY4_")
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (0x{{[0-9a-f]+}}:
;; DWARF-NEXT: [0x{{[0-9a-f]+}}, 0x{{[0-9a-f]+}}): DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x8)
;; DWARF-NEXT: DW_AT_name ("k")
;; DWARF: DW_TAG_variable
;; DWARF-NEXT: DW_AT_location  (DW_OP_entry_value(DW_OP_reg14 R14), DW_OP_plus_uconst 0x10, DW_OP_plus_uconst 0x10)
;; DWARF-NEXT: DW_AT_name  ("m")
define swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF"(%swift.context* swiftasync %0) #0 !dbg !338 {
entry:
  call void @llvm.dbg.declare(metadata %swift.context* %0, metadata !342, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16)), !dbg !343
  call void @coro.devirt.trigger(i8* null)
  %1 = bitcast %swift.context* %0 to <{ %swift.context*, void (%swift.context*)* }>*
  %2 = bitcast %swift.context* %0 to i8*
  %async.ctx.frameptr = getelementptr inbounds i8, i8* %2, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr to %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"*
  %3 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 0
  %k = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 1
  %m.debug = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 2
  %4 = load %T27move_function_dbginfo_async5KlassC*, %T27move_function_dbginfo_async5KlassC** %k, align 8
  store %swift.context* %0, %swift.context** %3, align 8
  %5 = bitcast %T27move_function_dbginfo_async5KlassC** %k to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast %T27move_function_dbginfo_async5KlassC** %m.debug to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %7 = load %swift.context*, %swift.context** %3, align 8, !dbg !344
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %7, i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY0_" to i8*), i64 0, i64 0) #4, !dbg !345
  ret void, !dbg !345
}

define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY0_"(i8* swiftasync %0) #0 !dbg !347 {
entryresume.0:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !351, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16)), !dbg !352
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %0, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr to i8*
  %1 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 0
  %k = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 1
  %m.debug = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 2
  %2 = call i8* @__swift_async_resume_get_context(i8* %0), !dbg !353
  %3 = bitcast i8* %2 to %swift.context*, !dbg !353
  store %swift.context* %3, %swift.context** %1, align 8, !dbg !353
  %4 = bitcast %T27move_function_dbginfo_async5KlassC** %k to i8*, !dbg !354
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4), !dbg !354
  call void asm sideeffect "", "r"(%T27move_function_dbginfo_async5KlassC** %k), !dbg !354
  call void @llvm.dbg.addr(metadata i8* %0, metadata !349, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8)), !dbg !356
  br label %entryresume.0.split, !dbg !357

entryresume.0.split:                              ; preds = %entryresume.0
  %5 = call swiftcc %swift.metadata_response @"$s27move_function_dbginfo_async5KlassCMa"(i64 0) #8, !dbg !357
  %6 = extractvalue %swift.metadata_response %5, 0, !dbg !357
  %.spill.addr = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 3, !dbg !357
  store %swift.type* %6, %swift.type** %.spill.addr, align 8, !dbg !357
  %7 = call swiftcc %T27move_function_dbginfo_async5KlassC* @"$s27move_function_dbginfo_async5KlassCACycfC"(%swift.type* swiftself %6), !dbg !357
  %8 = bitcast %T27move_function_dbginfo_async5KlassC* %7 to %swift.refcounted*, !dbg !357
  %9 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %8) #4, !dbg !357
  store %T27move_function_dbginfo_async5KlassC* %7, %T27move_function_dbginfo_async5KlassC** %k, align 8, !dbg !357
  %10 = getelementptr inbounds %T27move_function_dbginfo_async5KlassC, %T27move_function_dbginfo_async5KlassC* %7, i32 0, i32 0, i32 0, !dbg !358
  %11 = load %swift.type*, %swift.type** %10, align 8, !dbg !358
  %12 = bitcast %swift.type* %11 to void (%T27move_function_dbginfo_async5KlassC*)**, !dbg !358
  %13 = getelementptr inbounds void (%T27move_function_dbginfo_async5KlassC*)*, void (%T27move_function_dbginfo_async5KlassC*)** %12, i64 10, !dbg !358
  %14 = load void (%T27move_function_dbginfo_async5KlassC*)*, void (%T27move_function_dbginfo_async5KlassC*)** %13, align 8, !dbg !358, !invariant.load !46
  call swiftcc void %14(%T27move_function_dbginfo_async5KlassC* swiftself %7), !dbg !358
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T27move_function_dbginfo_async5KlassC*)*)(%T27move_function_dbginfo_async5KlassC* %7) #4, !dbg !358
  %15 = load i32, i32* getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu", i32 0, i32 1), align 8, !dbg !359
  %16 = zext i32 %15 to i64, !dbg !359
  %17 = call swiftcc i8* @swift_task_alloc(i64 %16) #4, !dbg !359
  %.spill.addr9 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 4, !dbg !359
  store i8* %17, i8** %.spill.addr9, align 8, !dbg !359
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %17), !dbg !359
  %18 = bitcast i8* %17 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !359
  %19 = load %swift.context*, %swift.context** %1, align 8, !dbg !359
  %20 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %18, i32 0, i32 0, !dbg !359
  store %swift.context* %19, %swift.context** %20, align 8, !dbg !359
  %21 = bitcast i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ1_" to i8*) to void (%swift.context*)*, !dbg !359
  %22 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %18, i32 0, i32 1, !dbg !359
  store void (%swift.context*)* %21, void (%swift.context*)** %22, align 8, !dbg !359
  %23 = bitcast i8* %17 to %swift.context*, !dbg !359
  musttail call swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF"(%swift.context* swiftasync %23) #4, !dbg !360
  ret void, !dbg !360
}

define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ1_"(i8* swiftasync %0) #0 !dbg !363 {
entryresume.1:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !367, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16)), !dbg !368
  %1 = bitcast i8* %0 to i8**, !dbg !369
  %2 = load i8*, i8** %1, align 8, !dbg !369
  %3 = call i8** @llvm.swift.async.context.addr() #4, !dbg !369
  store i8* %2, i8** %3, align 8, !dbg !369
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %2, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr to i8*
  %4 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 0
  %k = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 1
  %m.debug = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr10 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 4, !dbg !371
  %.reload11 = load i8*, i8** %.reload.addr10, align 8, !dbg !371
  %5 = bitcast i8* %0 to i8**, !dbg !372
  %6 = load i8*, i8** %5, align 8, !dbg !372
  %7 = call i8** @llvm.swift.async.context.addr() #4, !dbg !372
  store i8* %6, i8** %7, align 8, !dbg !372
  %8 = bitcast i8* %6 to %swift.context*, !dbg !371
  store %swift.context* %8, %swift.context** %4, align 8, !dbg !371
  call swiftcc void @swift_task_dealloc(i8* %.reload11) #4, !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %.reload11), !dbg !371
  call void asm sideeffect "", "r"(%T27move_function_dbginfo_async5KlassC** %k), !dbg !374
  call void @llvm.dbg.addr(metadata i8* %0, metadata !365, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8)), !dbg !376
  br label %entryresume.1.split, !dbg !374

entryresume.1.split:                              ; preds = %entryresume.1
  %9 = load %swift.context*, %swift.context** %4, align 8, !dbg !374
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %9, i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY2_" to i8*), i64 0, i64 0) #4, !dbg !377
  ret void, !dbg !377
}

define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY2_"(i8* swiftasync %0) #0 !dbg !379 {
entryresume.2:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !383, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16)), !dbg !384
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %0, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr to i8*
  %1 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 0
  %k = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 1
  %m.debug = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 2
  %2 = call i8* @__swift_async_resume_get_context(i8* %0), !dbg !385
  %3 = bitcast i8* %2 to %swift.context*, !dbg !385
  store %swift.context* %3, %swift.context** %1, align 8, !dbg !385
  call void asm sideeffect "", "r"(%T27move_function_dbginfo_async5KlassC** %k), !dbg !385
  call void @llvm.dbg.addr(metadata i8* %0, metadata !381, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8)), !dbg !387
  br label %entryresume.2.split, !dbg !388

entryresume.2.split:                              ; preds = %entryresume.2
  %4 = load %T27move_function_dbginfo_async5KlassC*, %T27move_function_dbginfo_async5KlassC** %k, align 8, !dbg !388
  %.spill.addr12 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 5, !dbg !387
  store %T27move_function_dbginfo_async5KlassC* %4, %T27move_function_dbginfo_async5KlassC** %.spill.addr12, align 8, !dbg !387
  call void @llvm.dbg.value(metadata %T27move_function_dbginfo_async5KlassC** undef, metadata !381, metadata !DIExpression()), !dbg !387
  store %T27move_function_dbginfo_async5KlassC* %4, %T27move_function_dbginfo_async5KlassC** %m.debug, align 8, !dbg !389
  call void asm sideeffect "", "r"(%T27move_function_dbginfo_async5KlassC** %m.debug), !dbg !385
  %5 = getelementptr inbounds %T27move_function_dbginfo_async5KlassC, %T27move_function_dbginfo_async5KlassC* %4, i32 0, i32 0, i32 0, !dbg !390
  %6 = load %swift.type*, %swift.type** %5, align 8, !dbg !390
  %7 = bitcast %swift.type* %6 to void (%T27move_function_dbginfo_async5KlassC*)**, !dbg !390
  %8 = getelementptr inbounds void (%T27move_function_dbginfo_async5KlassC*)*, void (%T27move_function_dbginfo_async5KlassC*)** %7, i64 10, !dbg !390
  %9 = load void (%T27move_function_dbginfo_async5KlassC*)*, void (%T27move_function_dbginfo_async5KlassC*)** %8, align 8, !dbg !390, !invariant.load !46
  call swiftcc void %9(%T27move_function_dbginfo_async5KlassC* swiftself %4), !dbg !390
  %10 = load i32, i32* getelementptr inbounds (%swift.async_func_pointer, %swift.async_func_pointer* @"$s27move_function_dbginfo_async10forceSplityyYaFTu", i32 0, i32 1), align 8, !dbg !391
  %11 = zext i32 %10 to i64, !dbg !391
  %12 = call swiftcc i8* @swift_task_alloc(i64 %11) #4, !dbg !391
  %.spill.addr15 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 6, !dbg !391
  store i8* %12, i8** %.spill.addr15, align 8, !dbg !391
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %12), !dbg !391
  %13 = bitcast i8* %12 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !391
  %14 = load %swift.context*, %swift.context** %1, align 8, !dbg !391
  %15 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %13, i32 0, i32 0, !dbg !391
  store %swift.context* %14, %swift.context** %15, align 8, !dbg !391
  %16 = bitcast i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ3_" to i8*) to void (%swift.context*)*, !dbg !391
  %17 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %13, i32 0, i32 1, !dbg !391
  store void (%swift.context*)* %16, void (%swift.context*)** %17, align 8, !dbg !391
  %18 = bitcast i8* %12 to %swift.context*, !dbg !391
  musttail call swifttailcc void @"$s27move_function_dbginfo_async10forceSplityyYaF"(%swift.context* swiftasync %18) #4, !dbg !392
  ret void, !dbg !392
}

define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ3_"(i8* swiftasync %0) #0 !dbg !395 {
entryresume.3:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !399, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16)), !dbg !400
  %1 = bitcast i8* %0 to i8**, !dbg !401
  %2 = load i8*, i8** %1, align 8, !dbg !401
  %3 = call i8** @llvm.swift.async.context.addr() #4, !dbg !401
  store i8* %2, i8** %3, align 8, !dbg !401
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %2, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr to i8*
  %4 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 0
  %k = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 1
  %m.debug = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr16 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 6, !dbg !403
  %.reload17 = load i8*, i8** %.reload.addr16, align 8, !dbg !403
  %5 = bitcast i8* %0 to i8**, !dbg !404
  %6 = load i8*, i8** %5, align 8, !dbg !404
  %7 = call i8** @llvm.swift.async.context.addr() #4, !dbg !404
  store i8* %6, i8** %7, align 8, !dbg !404
  %8 = bitcast i8* %6 to %swift.context*, !dbg !403
  store %swift.context* %8, %swift.context** %4, align 8, !dbg !403
  call swiftcc void @swift_task_dealloc(i8* %.reload17) #4, !dbg !403
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %.reload17), !dbg !403
  call void @llvm.dbg.value(metadata %T27move_function_dbginfo_async5KlassC** undef, metadata !397, metadata !DIExpression()), !dbg !406
  %9 = load %swift.context*, %swift.context** %4, align 8, !dbg !407
  musttail call swifttailcc void @swift_task_switch(%swift.context* swiftasync %9, i8* bitcast (void (i8*)* @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY4_" to i8*), i64 0, i64 0) #4, !dbg !409
  ret void, !dbg !409
}

define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY4_"(i8* swiftasync %0) #0 !dbg !411 {
entryresume.4:
  call void @llvm.dbg.declare(metadata i8* %0, metadata !415, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 16)), !dbg !416
  %async.ctx.frameptr1 = getelementptr inbounds i8, i8* %0, i32 16
  %FramePtr = bitcast i8* %async.ctx.frameptr1 to %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"*
  %vFrame = bitcast %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr to i8*
  %1 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 0
  %k = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 1
  %m.debug = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 2
  %.reload.addr13 = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 5, !dbg !417
  %.reload14 = load %T27move_function_dbginfo_async5KlassC*, %T27move_function_dbginfo_async5KlassC** %.reload.addr13, align 8, !dbg !417
  %.reload.addr = getelementptr inbounds %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame", %"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.Frame"* %FramePtr, i32 0, i32 3, !dbg !417
  %.reload = load %swift.type*, %swift.type** %.reload.addr, align 8, !dbg !417
  %2 = call i8* @__swift_async_resume_get_context(i8* %0), !dbg !417
  %3 = bitcast i8* %2 to %swift.context*, !dbg !417
  store %swift.context* %3, %swift.context** %1, align 8, !dbg !417
  call void @llvm.dbg.value(metadata %T27move_function_dbginfo_async5KlassC** undef, metadata !413, metadata !DIExpression()), !dbg !419
  %4 = call swiftcc %T27move_function_dbginfo_async5KlassC* @"$s27move_function_dbginfo_async5KlassCACycfC"(%swift.type* swiftself %.reload), !dbg !420
  %5 = bitcast %T27move_function_dbginfo_async5KlassC* %4 to %swift.refcounted*, !dbg !421
  %6 = call %swift.refcounted* @swift_retain(%swift.refcounted* returned %5) #4, !dbg !421
  store %T27move_function_dbginfo_async5KlassC* %4, %T27move_function_dbginfo_async5KlassC** %k, align 8, !dbg !421
  call void asm sideeffect "", "r"(%T27move_function_dbginfo_async5KlassC** %k), !dbg !417
  call void @llvm.dbg.addr(metadata i8* %0, metadata !413, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_plus_uconst, 8)), !dbg !419
  br label %entryresume.4.split, !dbg !422

entryresume.4.split:                              ; preds = %entryresume.4
  %7 = getelementptr inbounds %T27move_function_dbginfo_async5KlassC, %T27move_function_dbginfo_async5KlassC* %4, i32 0, i32 0, i32 0, !dbg !422
  %8 = load %swift.type*, %swift.type** %7, align 8, !dbg !422
  %9 = bitcast %swift.type* %8 to void (%T27move_function_dbginfo_async5KlassC*)**, !dbg !422
  %10 = getelementptr inbounds void (%T27move_function_dbginfo_async5KlassC*)*, void (%T27move_function_dbginfo_async5KlassC*)** %9, i64 10, !dbg !422
  %11 = load void (%T27move_function_dbginfo_async5KlassC*)*, void (%T27move_function_dbginfo_async5KlassC*)** %10, align 8, !dbg !422, !invariant.load !46
  call swiftcc void %11(%T27move_function_dbginfo_async5KlassC* swiftself %4), !dbg !422
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T27move_function_dbginfo_async5KlassC*)*)(%T27move_function_dbginfo_async5KlassC* %4) #4, !dbg !422
  %12 = call swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlFyp_Tg5"(i64 1), !dbg !423
  %13 = extractvalue { %swift.bridge*, i8* } %12, 0, !dbg !423
  %14 = extractvalue { %swift.bridge*, i8* } %12, 1, !dbg !423
  %15 = bitcast i8* %14 to %Any*, !dbg !423
  %16 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i1 true), !dbg !423
  %17 = extractvalue { i64, %swift.bridge* } %16, 0, !dbg !423
  %18 = extractvalue { i64, %swift.bridge* } %16, 1, !dbg !423
  %19 = getelementptr inbounds %Any, %Any* %15, i32 0, i32 1, !dbg !423
  store %swift.type* @"$sSSN", %swift.type** %19, align 8, !dbg !423
  %20 = getelementptr inbounds %Any, %Any* %15, i32 0, i32 0, !dbg !423
  %21 = getelementptr inbounds %Any, %Any* %15, i32 0, i32 0, !dbg !423
  %22 = bitcast [24 x i8]* %21 to %TSS*, !dbg !423
  %._guts = getelementptr inbounds %TSS, %TSS* %22, i32 0, i32 0, !dbg !423
  %._guts._object = getelementptr inbounds %Ts11_StringGutsV, %Ts11_StringGutsV* %._guts, i32 0, i32 0, !dbg !423
  %._guts._object._countAndFlagsBits = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 0, !dbg !423
  %._guts._object._countAndFlagsBits._value = getelementptr inbounds %Ts6UInt64V, %Ts6UInt64V* %._guts._object._countAndFlagsBits, i32 0, i32 0, !dbg !423
  store i64 %17, i64* %._guts._object._countAndFlagsBits._value, align 8, !dbg !423
  %._guts._object._object = getelementptr inbounds %Ts13_StringObjectV, %Ts13_StringObjectV* %._guts._object, i32 0, i32 1, !dbg !423
  store %swift.bridge* %18, %swift.bridge** %._guts._object._object, align 8, !dbg !423
  %23 = call swiftcc %swift.bridge* @"$ss27_finalizeUninitializedArrayySayxGABnlF"(%swift.bridge* %13, %swift.type* getelementptr inbounds (%swift.full_type, %swift.full_type* @"$sypN", i32 0, i32 1)), !dbg !423
  %24 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"(), !dbg !424
  %25 = extractvalue { i64, %swift.bridge* } %24, 0, !dbg !424
  %26 = extractvalue { i64, %swift.bridge* } %24, 1, !dbg !424
  %27 = call swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"(), !dbg !424
  %28 = extractvalue { i64, %swift.bridge* } %27, 0, !dbg !424
  %29 = extractvalue { i64, %swift.bridge* } %27, 1, !dbg !424
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge* %23, i64 %25, %swift.bridge* %26, i64 %28, %swift.bridge* %29), !dbg !425
  call void @swift_bridgeObjectRelease(%swift.bridge* %29) #4, !dbg !426
  call void @swift_bridgeObjectRelease(%swift.bridge* %26) #4, !dbg !426
  call void @swift_bridgeObjectRelease(%swift.bridge* %23) #4, !dbg !426
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T27move_function_dbginfo_async5KlassC*)*)(%T27move_function_dbginfo_async5KlassC* %.reload14) #4, !dbg !426
  %toDestroy = load %T27move_function_dbginfo_async5KlassC*, %T27move_function_dbginfo_async5KlassC** %k, align 8, !dbg !426
  call void bitcast (void (%swift.refcounted*)* @swift_release to void (%T27move_function_dbginfo_async5KlassC*)*)(%T27move_function_dbginfo_async5KlassC* %toDestroy) #4, !dbg !426
  %30 = bitcast %T27move_function_dbginfo_async5KlassC** %k to i8*, !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30), !dbg !426
  call void asm sideeffect "", "r"(%T27move_function_dbginfo_async5KlassC** %k), !dbg !426
  call void asm sideeffect "", "r"(%T27move_function_dbginfo_async5KlassC** %m.debug), !dbg !426
  %31 = load %swift.context*, %swift.context** %1, align 8, !dbg !426
  %32 = bitcast %swift.context* %31 to <{ %swift.context*, void (%swift.context*)* }>*, !dbg !426
  %33 = getelementptr inbounds <{ %swift.context*, void (%swift.context*)* }>, <{ %swift.context*, void (%swift.context*)* }>* %32, i32 0, i32 1, !dbg !426
  %34 = load void (%swift.context*)*, void (%swift.context*)** %33, align 8, !dbg !426
  %35 = load %swift.context*, %swift.context** %1, align 8, !dbg !426
  %36 = bitcast void (%swift.context*)* %34 to i8*, !dbg !426
  musttail call swifttailcc void %34(%swift.context* swiftasync %35) #4, !dbg !427
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind readnone
define swiftcc %swift.metadata_response @"$s27move_function_dbginfo_async5KlassCMa"(i64 %0) #10 !dbg !430 {
entry:
  %1 = call %objc_class* @objc_opt_self(%objc_class* bitcast (i64* getelementptr inbounds (<{ void (%T27move_function_dbginfo_async5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T27move_function_dbginfo_async5KlassC*)*, %T27move_function_dbginfo_async5KlassC* (%swift.type*)* }>, <{ void (%T27move_function_dbginfo_async5KlassC*)*, i8**, i64, %objc_class*, %swift.opaque*, %swift.opaque*, i64, i32, i32, i32, i16, i16, i32, i32, <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>*, i8*, void (%T27move_function_dbginfo_async5KlassC*)*, %T27move_function_dbginfo_async5KlassC* (%swift.type*)* }>* @"$s27move_function_dbginfo_async5KlassCMf", i32 0, i32 2) to %objc_class*)), !dbg !431
  %2 = bitcast %objc_class* %1 to %swift.type*, !dbg !431
  %3 = insertvalue %swift.metadata_response undef, %swift.type* %2, 0, !dbg !431
  %4 = insertvalue %swift.metadata_response %3, i64 0, 1, !dbg !431
  ret %swift.metadata_response %4, !dbg !431
}

; Function Attrs: nounwind willreturn
declare %swift.refcounted* @swift_retain(%swift.refcounted* returned) #11

; Function Attrs: nounwind
declare void @swift_release(%swift.refcounted*) #4

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.0"(i8* %0, %swift.context* %1) #4 !dbg !361 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !432
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !432
  ret void, !dbg !432
}

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.0.5"(i8* %0, %swift.context* %1) #4 !dbg !393 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !433
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !433
  ret void, !dbg !433
}

declare swiftcc { %swift.bridge*, i8* } @"$ss27_allocateUninitializedArrayySayxG_BptBwlFyp_Tg5"(i64) #0

declare swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8*, i64, i1) #0

define linkonce_odr hidden swiftcc %swift.bridge* @"$ss27_finalizeUninitializedArrayySayxGABnlF"(%swift.bridge* %0, %swift.type* %Element) #0 !dbg !434 {
entry:
  %Element1 = alloca %swift.type*, align 8
  call void @llvm.dbg.declare(metadata %swift.type** %Element1, metadata !444, metadata !DIExpression()), !dbg !446
  %1 = alloca %TSa, align 8
  store %swift.type* %Element, %swift.type** %Element1, align 8
  %2 = bitcast %TSa* %1 to i8*, !dbg !446
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2), !dbg !446
  %3 = call %swift.bridge* @swift_bridgeObjectRetain(%swift.bridge* returned %0) #4, !dbg !446
  %._buffer = getelementptr inbounds %TSa, %TSa* %1, i32 0, i32 0, !dbg !446
  %._buffer._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer, i32 0, i32 0, !dbg !446
  %._buffer._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer._storage, i32 0, i32 0, !dbg !446
  store %swift.bridge* %0, %swift.bridge** %._buffer._storage.rawValue, align 8, !dbg !446
  %4 = call swiftcc %swift.metadata_response @"$sSaMa"(i64 0, %swift.type* %Element) #8, !dbg !446
  %5 = extractvalue %swift.metadata_response %4, 0, !dbg !446
  call swiftcc void @"$sSa12_endMutationyyF"(%swift.type* %5, %TSa* nocapture swiftself dereferenceable(8) %1), !dbg !446
  call void @swift_bridgeObjectRelease(%swift.bridge* %0) #4, !dbg !446
  %._buffer2 = getelementptr inbounds %TSa, %TSa* %1, i32 0, i32 0, !dbg !446
  %._buffer2._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer2, i32 0, i32 0, !dbg !446
  %._buffer2._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer2._storage, i32 0, i32 0, !dbg !446
  %6 = load %swift.bridge*, %swift.bridge** %._buffer2._storage.rawValue, align 8, !dbg !446
  %7 = bitcast %TSa* %1 to i8*, !dbg !446
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7), !dbg !446
  ret %swift.bridge* %6, !dbg !446
}

define linkonce_odr hidden swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA0_"() #0 !dbg !447 {
entry:
  %0 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1, i1 true), !dbg !451
  %1 = extractvalue { i64, %swift.bridge* } %0, 0, !dbg !451
  %2 = extractvalue { i64, %swift.bridge* } %0, 1, !dbg !451
  %3 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0, !dbg !451
  %4 = insertvalue { i64, %swift.bridge* } %3, %swift.bridge* %2, 1, !dbg !451
  ret { i64, %swift.bridge* } %4, !dbg !451
}

define linkonce_odr hidden swiftcc { i64, %swift.bridge* } @"$ss5print_9separator10terminatoryypd_S2StFfA1_"() #0 !dbg !452 {
entry:
  %0 = call swiftcc { i64, %swift.bridge* } @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1, i1 true), !dbg !453
  %1 = extractvalue { i64, %swift.bridge* } %0, 0, !dbg !453
  %2 = extractvalue { i64, %swift.bridge* } %0, 1, !dbg !453
  %3 = insertvalue { i64, %swift.bridge* } undef, i64 %1, 0, !dbg !453
  %4 = insertvalue { i64, %swift.bridge* } %3, %swift.bridge* %2, 1, !dbg !453
  ret { i64, %swift.bridge* } %4, !dbg !453
}

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(%swift.bridge*, i64, %swift.bridge*, i64, %swift.bridge*) #0

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(%swift.bridge*) #4

; Function Attrs: nounwind
define internal swifttailcc void @"$s27move_function_dbginfo_async16varSimpleTestVaryyYaF.0.6"(i8* %0, %swift.context* %1) #4 !dbg !428 {
entry:
  %2 = bitcast i8* %0 to void (%swift.context*)*, !dbg !454
  musttail call swifttailcc void %2(%swift.context* swiftasync %1), !dbg !454
  ret void, !dbg !454
}

; Function Attrs: nounwind
declare %objc_class* @objc_opt_self(%objc_class*) #4

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCompatibilityConcurrency"()

; Function Attrs: nounwind
declare %swift.bridge* @swift_bridgeObjectRetain(%swift.bridge* returned) #4

define linkonce_odr hidden swiftcc void @"$sSa12_endMutationyyF"(%swift.type* %"Array<Element>", %TSa* nocapture swiftself dereferenceable(8) %0) #0 !dbg !455 {
entry:
  %._buffer = getelementptr inbounds %TSa, %TSa* %0, i32 0, i32 0, !dbg !458
  %._buffer._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer, i32 0, i32 0, !dbg !458
  %._buffer._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer._storage, i32 0, i32 0, !dbg !458
  %1 = load %swift.bridge*, %swift.bridge** %._buffer._storage.rawValue, align 8, !dbg !458
  %2 = ptrtoint %swift.bridge* %1 to i64, !dbg !458
  %3 = and i64 %2, 4611686018427387904, !dbg !458
  %4 = icmp ne i64 %3, 0, !dbg !458
  %5 = and i64 %2, 1, !dbg !458
  %6 = icmp ne i64 %5, 0, !dbg !458
  %7 = or i1 %4, %6, !dbg !458
  %8 = call i1 @llvm.expect.i1(i1 %7, i1 false), !dbg !458
  br i1 %8, label %11, label %9, !dbg !458

9:                                                ; preds = %entry
  %10 = load %swift.bridge*, %swift.bridge** %._buffer._storage.rawValue, align 8, !dbg !458
  %._buffer1 = getelementptr inbounds %TSa, %TSa* %0, i32 0, i32 0, !dbg !458
  %._buffer1._storage = getelementptr inbounds %Ts12_ArrayBufferV, %Ts12_ArrayBufferV* %._buffer1, i32 0, i32 0, !dbg !458
  %._buffer1._storage.rawValue = getelementptr inbounds %Ts14_BridgeStorageV, %Ts14_BridgeStorageV* %._buffer1._storage, i32 0, i32 0, !dbg !458
  store %swift.bridge* %10, %swift.bridge** %._buffer1._storage.rawValue, align 8, !dbg !458
  ret void, !dbg !458

11:                                               ; preds = %entry
  br label %12, !dbg !458

12:                                               ; preds = %11
  br label %13, !dbg !458

13:                                               ; preds = %12
  call swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64 ptrtoint ([12 x i8]* @.str.15 to i64), i64 11, i8 2, i64 ptrtoint ([1 x i8]* @.str.14 to i64), i64 0, i8 2, i64 ptrtoint ([26 x i8]* @.str.13 to i64), i64 25, i8 2, i64 150, i32 1), !dbg !458
  unreachable, !dbg !458
}

declare swiftcc %swift.metadata_response @"$sSaMa"(i64, %swift.type*) #0

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #12

; Function Attrs: noinline
declare swiftcc void @"$ss18_fatalErrorMessage__4file4line5flagss5NeverOs12StaticStringV_A2HSus6UInt32VtF"(i64, i64, i8, i64, i64, i8, i64, i64, i8, i64, i32) #13

; Function Attrs: alwaysinline
define private void @coro.devirt.trigger(i8* %0) #14 {
entry:
  ret void
}

; Function Attrs: argmemonly nounwind readonly
declare i8* @llvm.coro.subfn.addr(i8* nocapture readonly, i8) #15

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { alwaysinline nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline nounwind readnone "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn }
attributes #12 = { nofree nosync nounwind readnone willreturn }
attributes #13 = { noinline "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { alwaysinline }
attributes #15 = { argmemonly nounwind readonly }

!llvm.dbg.cu = !{!0, !11}
!swift.module.flags = !{!13}
!llvm.asan.globals = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!llvm.linker.options = !{!36, !37, !38, !39, !40}

!0 = distinct !DICompileUnit(language: DW_LANG_Swift, file: !1, producer: "Swift version 5.7-dev (LLVM 8021856c74d1a44, Swift ea09951570b69b9)", isOptimized: false, runtimeVersion: 5, emissionKind: FullDebug, imports: !2)
!1 = !DIFile(filename: "move_function_dbginfo_async.swift", directory: "/Volumes/Data/work/solon/swift/test/DebugInfo")
!2 = !{!3, !5, !7, !9}
!3 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !4, file: !1)
!4 = !DIModule(scope: null, name: "move_function_dbginfo_async")
!5 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !6, file: !1)
!6 = !DIModule(scope: null, name: "Swift", includePath: "/Volumes/Data/work/solon/build/Ninja-RelWithDebInfoAssert/swift-macosx-x86_64/lib/swift/macosx/Swift.swiftmodule/x86_64-apple-macos.swiftmodule")
!7 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !8, file: !1)
!8 = !DIModule(scope: null, name: "_Concurrency", includePath: "/Volumes/Data/work/solon/build/Ninja-RelWithDebInfoAssert/swift-macosx-x86_64/lib/swift/macosx/_Concurrency.swiftmodule/x86_64-apple-macos.swiftmodule")
!9 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1, entity: !10, file: !1)
!10 = !DIModule(scope: null, name: "SwiftOnoneSupport", includePath: "/Volumes/Data/work/solon/build/Ninja-RelWithDebInfoAssert/swift-macosx-x86_64/lib/swift/macosx/SwiftOnoneSupport.swiftmodule/x86_64-apple-macos.swiftmodule")
!11 = distinct !DICompileUnit(language: DW_LANG_ObjC, file: !12, producer: "clang version 13.0.0 (git@github.com:apple/llvm-project.git 8021856c74d1a44ff79388015a0fa0607d529bd6)", isOptimized: false, runtimeVersion: 2, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!12 = !DIFile(filename: "<swift-imported-modules>", directory: "/Volumes/Data/work/solon/swift/test/DebugInfo")
!13 = !{!"standard-library", i1 false}
!14 = !{<{ i32, i32, i32 }>* @"$s27move_function_dbginfo_asyncMXM", null, null, i1 false, i1 true}
!15 = !{<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %swift.method_descriptor, %swift.method_descriptor }>* @"$s27move_function_dbginfo_async5KlassCMn", null, null, i1 false, i1 true}
!16 = !{<{ i8, i32, i8 }>* @"symbolic _____ 27move_function_dbginfo_async5KlassC", null, null, i1 false, i1 true}
!17 = !{{ i32, i32, i16, i16, i32 }* @"$s27move_function_dbginfo_async5KlassCMF", null, null, i1 false, i1 true}
!18 = !{<{ [34 x i8], i8 }>* @"symbolic $s27move_function_dbginfo_async1PP", null, null, i1 false, i1 true}
!19 = !{{ i32, i32, i16, i16, i32 }* @"$s27move_function_dbginfo_async1P_pMF", null, null, i1 false, i1 true}
!20 = !{<{ i32, i32, i32, i32, i32, i32, %swift.protocol_requirement, %swift.protocol_requirement }>* @"$s27move_function_dbginfo_async1PMp", null, null, i1 false, i1 true}
!21 = !{%swift.protocolref* @"$s27move_function_dbginfo_async1PHr", null, null, i1 false, i1 true}
!22 = !{%swift.type_metadata_record* @"$s27move_function_dbginfo_async5KlassCHn", null, null, i1 false, i1 true}
!23 = !{i8** @"objc_classes_$s27move_function_dbginfo_async5KlassCN", null, null, i1 false, i1 true}
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
!58 = distinct !DISubprogram(name: "doSomething", linkageName: "$s27move_function_dbginfo_async5KlassC11doSomethingyyF", scope: !59, file: !1, line: 24, type: !60, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !63)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "Klass", scope: !4, file: !1, size: 64, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$s27move_function_dbginfo_async5KlassCD")
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
!70 = distinct !DISubprogram(name: "deinit", linkageName: "$s27move_function_dbginfo_async5KlassCfd", scope: !59, file: !1, line: 23, type: !71, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !59}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "$sBoD", baseType: null, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!74 = !{!75}
!75 = !DILocalVariable(name: "self", arg: 1, scope: !70, file: !1, line: 23, type: !65, flags: DIFlagArtificial)
!76 = !DILocation(line: 23, column: 14, scope: !70)
!77 = !DILocation(line: 0, scope: !70)
!78 = !DILocation(line: 0, scope: !79)
!79 = distinct !DILexicalBlock(scope: !70, file: !1, line: 23, column: 14)
!80 = distinct !DISubprogram(name: "deinit", linkageName: "$s27move_function_dbginfo_async5KlassCfD", scope: !59, file: !1, line: 23, type: !60, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!81 = !{!82}
!82 = !DILocalVariable(name: "self", arg: 1, scope: !80, file: !1, line: 23, type: !65, flags: DIFlagArtificial)
!83 = !DILocation(line: 23, column: 14, scope: !80)
!84 = !DILocation(line: 0, scope: !80)
!85 = distinct !DISubprogram(name: "init", linkageName: "$s27move_function_dbginfo_async5KlassCACycfC", scope: !59, file: !1, line: 23, type: !86, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!86 = !DISubroutineType(types: !87)
!87 = !{!59, !88}
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "$s27move_function_dbginfo_async5KlassCXMTD", file: !56, size: 64, flags: DIFlagArtificial, runtimeLang: DW_LANG_Swift, identifier: "$s27move_function_dbginfo_async5KlassCXMTD")
!89 = !DILocation(line: 0, scope: !85)
!90 = distinct !DISubprogram(name: "init", linkageName: "$s27move_function_dbginfo_async5KlassCACycfc", scope: !59, file: !1, line: 23, type: !91, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!59, !59}
!93 = !{!94}
!94 = !DILocalVariable(name: "self", arg: 1, scope: !90, file: !1, line: 23, type: !65, flags: DIFlagArtificial)
!95 = !DILocation(line: 23, column: 14, scope: !90)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 23, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 23, column: 14)
!99 = distinct !DISubprogram(name: "trueValue.get", linkageName: "$s27move_function_dbginfo_async9trueValueSbvg", scope: !4, file: !1, line: 32, type: !100, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!100 = !DISubroutineType(types: !101)
!101 = !{!102}
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "Bool", scope: !6, file: !45, size: 8, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$sSbD")
!103 = !DILocation(line: 32, column: 35, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 32, column: 28)
!105 = distinct !DISubprogram(name: "falseValue.get", linkageName: "$s27move_function_dbginfo_async10falseValueSbvg", scope: !4, file: !1, line: 33, type: !100, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!106 = !DILocation(line: 33, column: 37, scope: !107)
!107 = distinct !DILexicalBlock(scope: !105, file: !1, line: 33, column: 29)
!108 = distinct !DISubprogram(name: "use", linkageName: "$s27move_function_dbginfo_async3useyyxlF", scope: !4, file: !1, line: 35, type: !109, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!109 = !DISubroutineType(types: !110)
!110 = !{!62, !111}
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "$sxD", file: !1, runtimeLang: DW_LANG_Swift, identifier: "$sxD")
!112 = !{!113, !117}
!113 = !DILocalVariable(name: "$\CF\84_0_0", scope: !108, file: !1, type: !114, flags: DIFlagArtificial)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !115, file: !56, baseType: !116)
!115 = !DIModule(scope: null, name: "Builtin")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "$sBpD", baseType: null, size: 64)
!117 = !DILocalVariable(name: "t", arg: 1, scope: !108, file: !1, line: 35, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!119 = !DILocation(line: 0, scope: !108)
!120 = !DILocation(line: 35, column: 20, scope: !108)
!121 = !DILocation(line: 35, column: 29, scope: !122)
!122 = distinct !DILexicalBlock(scope: !108, file: !1, line: 35, column: 28)
!123 = distinct !DISubprogram(name: "forceSplit", linkageName: "$s27move_function_dbginfo_async10forceSplityyYaF", scope: !4, file: !1, line: 36, type: !124, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!124 = !DISubroutineType(types: !125)
!125 = !{!62}
!126 = !DILocation(line: 36, column: 33, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 36, column: 32)
!128 = !DILocation(line: 0, scope: !129, inlinedAt: !131)
!129 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async10forceSplityyYaF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!130 = !DISubroutineType(types: null)
!131 = distinct !DILocation(line: 36, column: 33, scope: !127)
!132 = !DILocation(line: 0, scope: !129)
!133 = distinct !DISubprogram(name: "letSimpleTest", linkageName: "$s27move_function_dbginfo_async13letSimpleTestyyxnYalF", scope: !4, file: !1, line: 78, type: !109, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!134 = !{!135, !136}
!135 = !DILocalVariable(name: "$\CF\84_0_0", scope: !133, file: !1, type: !114, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "msg", arg: 1, scope: !133, file: !1, line: 78, type: !118)
!137 = !DILocation(line: 0, scope: !133)
!138 = !DILocation(line: 0, scope: !139)
!139 = !DILexicalBlockFile(scope: !140, file: !56, discriminator: 0)
!140 = distinct !DILexicalBlock(scope: !133, file: !1, line: 78, column: 54)
!141 = !{i64 96}
!142 = !DILocation(line: 0, scope: !143)
!143 = !DILexicalBlockFile(scope: !133, file: !56, discriminator: 0)
!144 = !DILocation(line: 78, column: 30, scope: !133)
!145 = !DILocation(line: 79, column: 11, scope: !140)
!146 = !DILocation(line: 0, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async13letSimpleTestyyxnYalF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!148 = distinct !DILocation(line: 79, column: 11, scope: !140)
!149 = distinct !DISubprogram(name: "letSimpleTest", linkageName: "$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTQ0_", scope: !4, file: !1, line: 78, type: !109, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !150)
!150 = !{!151, !152}
!151 = !DILocalVariable(name: "$\CF\84_0_0", scope: !149, file: !1, type: !114, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "msg", arg: 1, scope: !149, file: !1, line: 78, type: !118)
!153 = !DILocation(line: 0, scope: !149)
!154 = !DILocation(line: 0, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(linkageName: "__swift_async_resume_project_context", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!156 = distinct !DILocation(line: 79, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !149, file: !1, line: 78, column: 54)
!158 = !DILocation(line: 79, column: 11, scope: !157)
!159 = !DILocation(line: 0, scope: !155, inlinedAt: !160)
!160 = distinct !DILocation(line: 79, column: 11, scope: !157)
!161 = !DILocation(line: 0, scope: !162)
!162 = !DILexicalBlockFile(scope: !149, file: !56, discriminator: 0)
!163 = !DILocation(line: 78, column: 30, scope: !149)
!164 = !DILocation(line: 0, scope: !157)
!165 = !DILocation(line: 0, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(linkageName: "__swift_suspend_point", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!167 = distinct !DILocation(line: 0, scope: !157)
!168 = distinct !DISubprogram(name: "letSimpleTest", linkageName: "$s27move_function_dbginfo_async13letSimpleTestyyxnYalFTY1_", scope: !4, file: !1, line: 78, type: !109, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !169)
!169 = !{!170, !171}
!170 = !DILocalVariable(name: "$\CF\84_0_0", scope: !168, file: !1, type: !114, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: "msg", arg: 1, scope: !168, file: !1, line: 78, type: !118)
!172 = !DILocation(line: 0, scope: !168)
!173 = !DILocation(line: 0, scope: !174)
!174 = !DILexicalBlockFile(scope: !175, file: !56, discriminator: 0)
!175 = distinct !DILexicalBlock(scope: !168, file: !1, line: 78, column: 54)
!176 = !DILocation(line: 0, scope: !175)
!177 = !DILocation(line: 0, scope: !178)
!178 = !DILexicalBlockFile(scope: !168, file: !56, discriminator: 0)
!179 = !DILocation(line: 78, column: 30, scope: !168)
!180 = !DILocation(line: 80, column: 15, scope: !175)
!181 = !DILocation(line: 80, column: 9, scope: !175)
!182 = !DILocation(line: 80, column: 5, scope: !175)
!183 = !DILocation(line: 81, column: 1, scope: !175)
!184 = !DILocation(line: 0, scope: !185, inlinedAt: !186)
!185 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async13letSimpleTestyyxnYalF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!186 = distinct !DILocation(line: 81, column: 1, scope: !175)
!187 = !DILocation(line: 0, scope: !155)
!188 = !DILocation(line: 0, scope: !147)
!189 = distinct !DISubprogram(linkageName: "__swift_async_resume_get_context", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!190 = !DILocation(line: 0, scope: !189)
!191 = !DILocation(line: 0, scope: !166)
!192 = !DILocation(line: 0, scope: !185)
!193 = distinct !DISubprogram(name: "varSimpleTest", linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF", scope: !4, file: !1, line: 175, type: !194, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !196)
!194 = !DISubroutineType(types: !195)
!195 = !{!62, !111, !111}
!196 = !{!197, !198, !199}
!197 = !DILocalVariable(name: "$\CF\84_0_0", scope: !193, file: !1, type: !114, flags: DIFlagArtificial)
!198 = !DILocalVariable(name: "msg", arg: 1, scope: !193, file: !1, line: 175, type: !111)
!199 = !DILocalVariable(name: "msg2", arg: 2, scope: !193, file: !1, line: 175, type: !118)
!200 = !DILocation(line: 175, column: 46, scope: !193)
!201 = !DILocation(line: 0, scope: !193)
!202 = !DILocation(line: 0, scope: !203)
!203 = !DILexicalBlockFile(scope: !204, file: !56, discriminator: 0)
!204 = distinct !DILexicalBlock(scope: !193, file: !1, line: 175, column: 63)
!205 = !DILocation(line: 0, scope: !206)
!206 = !DILexicalBlockFile(scope: !193, file: !56, discriminator: 0)
!207 = !DILocation(line: 175, column: 30, scope: !193)
!208 = !DILocation(line: 176, column: 11, scope: !204)
!209 = !DILocation(line: 0, scope: !210, inlinedAt: !211)
!210 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!211 = distinct !DILocation(line: 176, column: 11, scope: !204)
!212 = distinct !DISubprogram(name: "varSimpleTest", linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ0_", scope: !4, file: !1, line: 175, type: !194, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !213)
!213 = !{!214, !215, !216}
!214 = !DILocalVariable(name: "$\CF\84_0_0", scope: !212, file: !1, type: !114, flags: DIFlagArtificial)
!215 = !DILocalVariable(name: "msg", arg: 1, scope: !212, file: !1, line: 175, type: !111)
!216 = !DILocalVariable(name: "msg2", arg: 2, scope: !212, file: !1, line: 175, type: !118)
!217 = !DILocation(line: 175, column: 46, scope: !212)
!218 = !DILocation(line: 0, scope: !212)
!219 = !DILocation(line: 0, scope: !155, inlinedAt: !220)
!220 = distinct !DILocation(line: 176, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !212, file: !1, line: 175, column: 63)
!222 = !DILocation(line: 176, column: 11, scope: !221)
!223 = !DILocation(line: 0, scope: !155, inlinedAt: !224)
!224 = distinct !DILocation(line: 176, column: 11, scope: !221)
!225 = !DILocation(line: 0, scope: !226)
!226 = !DILexicalBlockFile(scope: !212, file: !56, discriminator: 0)
!227 = !DILocation(line: 175, column: 30, scope: !212)
!228 = !DILocation(line: 0, scope: !221)
!229 = !DILocation(line: 0, scope: !166, inlinedAt: !230)
!230 = distinct !DILocation(line: 0, scope: !221)
!231 = distinct !DISubprogram(name: "varSimpleTest", linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY1_", scope: !4, file: !1, line: 175, type: !194, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !232)
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(name: "$\CF\84_0_0", scope: !231, file: !1, type: !114, flags: DIFlagArtificial)
!234 = !DILocalVariable(name: "msg", arg: 1, scope: !231, file: !1, line: 175, type: !111)
!235 = !DILocalVariable(name: "msg2", arg: 2, scope: !231, file: !1, line: 175, type: !118)
!236 = !DILocation(line: 175, column: 46, scope: !231)
!237 = !DILocation(line: 0, scope: !231)
!238 = !DILocation(line: 0, scope: !239)
!239 = !DILexicalBlockFile(scope: !240, file: !56, discriminator: 0)
!240 = distinct !DILexicalBlock(scope: !231, file: !1, line: 175, column: 63)
!241 = !DILocation(line: 0, scope: !240)
!242 = !DILocation(line: 0, scope: !243)
!243 = !DILexicalBlockFile(scope: !231, file: !56, discriminator: 0)
!244 = !DILocation(line: 175, column: 30, scope: !231)
!245 = !DILocation(line: 177, column: 15, scope: !240)
!246 = !DILocation(line: 177, column: 9, scope: !240)
!247 = !DILocation(line: 177, column: 5, scope: !240)
!248 = !DILocation(line: 178, column: 11, scope: !240)
!249 = !DILocation(line: 0, scope: !250, inlinedAt: !251)
!250 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!251 = distinct !DILocation(line: 178, column: 11, scope: !240)
!252 = distinct !DISubprogram(name: "varSimpleTest", linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ2_", scope: !4, file: !1, line: 175, type: !194, scopeLine: 178, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !253)
!253 = !{!254, !255, !256}
!254 = !DILocalVariable(name: "$\CF\84_0_0", scope: !252, file: !1, type: !114, flags: DIFlagArtificial)
!255 = !DILocalVariable(name: "msg", arg: 1, scope: !252, file: !1, line: 175, type: !111)
!256 = !DILocalVariable(name: "msg2", arg: 2, scope: !252, file: !1, line: 175, type: !118)
!257 = !DILocation(line: 175, column: 46, scope: !252)
!258 = !DILocation(line: 0, scope: !252)
!259 = !DILocation(line: 0, scope: !155, inlinedAt: !260)
!260 = distinct !DILocation(line: 178, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !252, file: !1, line: 175, column: 63)
!262 = !DILocation(line: 178, column: 11, scope: !261)
!263 = !DILocation(line: 0, scope: !155, inlinedAt: !264)
!264 = distinct !DILocation(line: 178, column: 11, scope: !261)
!265 = !DILocation(line: 175, column: 30, scope: !252)
!266 = !DILocation(line: 0, scope: !261)
!267 = !DILocation(line: 0, scope: !166, inlinedAt: !268)
!268 = distinct !DILocation(line: 0, scope: !261)
!269 = distinct !DISubprogram(name: "varSimpleTest", linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY3_", scope: !4, file: !1, line: 175, type: !194, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !270)
!270 = !{!271, !272, !273}
!271 = !DILocalVariable(name: "$\CF\84_0_0", scope: !269, file: !1, type: !114, flags: DIFlagArtificial)
!272 = !DILocalVariable(name: "msg", arg: 1, scope: !269, file: !1, line: 175, type: !111)
!273 = !DILocalVariable(name: "msg2", arg: 2, scope: !269, file: !1, line: 175, type: !118)
!274 = !DILocation(line: 175, column: 46, scope: !269)
!275 = !DILocation(line: 0, scope: !269)
!276 = !DILocation(line: 177, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !269, file: !1, line: 175, column: 63)
!278 = !DILocation(line: 177, column: 15, scope: !277)
!279 = !DILocation(line: 0, scope: !280)
!280 = !DILexicalBlockFile(scope: !277, file: !56, discriminator: 0)
!281 = !DILocation(line: 0, scope: !277)
!282 = !DILocation(line: 175, column: 30, scope: !269)
!283 = !DILocation(line: 179, column: 11, scope: !277)
!284 = !DILocation(line: 179, column: 9, scope: !277)
!285 = !DILocation(line: 0, scope: !286)
!286 = !DILexicalBlockFile(scope: !269, file: !56, discriminator: 0)
!287 = !DILocation(line: 180, column: 22, scope: !277)
!288 = !DILocation(line: 180, column: 16, scope: !277)
!289 = !DILocation(line: 181, column: 13, scope: !277)
!290 = !DILocation(line: 182, column: 11, scope: !277)
!291 = !DILocation(line: 182, column: 9, scope: !277)
!292 = !DILocation(line: 183, column: 11, scope: !277)
!293 = !DILocation(line: 0, scope: !294, inlinedAt: !295)
!294 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!295 = distinct !DILocation(line: 183, column: 11, scope: !277)
!296 = distinct !DISubprogram(name: "varSimpleTest", linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTQ4_", scope: !4, file: !1, line: 175, type: !194, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !297)
!297 = !{!298, !299, !300}
!298 = !DILocalVariable(name: "$\CF\84_0_0", scope: !296, file: !1, type: !114, flags: DIFlagArtificial)
!299 = !DILocalVariable(name: "msg", arg: 1, scope: !296, file: !1, line: 175, type: !111)
!300 = !DILocalVariable(name: "msg2", arg: 2, scope: !296, file: !1, line: 175, type: !118)
!301 = !DILocation(line: 175, column: 46, scope: !296)
!302 = !DILocation(line: 0, scope: !296)
!303 = !DILocation(line: 0, scope: !155, inlinedAt: !304)
!304 = distinct !DILocation(line: 183, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !296, file: !1, line: 175, column: 63)
!306 = !DILocation(line: 183, column: 11, scope: !305)
!307 = !DILocation(line: 0, scope: !155, inlinedAt: !308)
!308 = distinct !DILocation(line: 183, column: 11, scope: !305)
!309 = !DILocation(line: 0, scope: !310)
!310 = !DILexicalBlockFile(scope: !296, file: !56, discriminator: 0)
!311 = !DILocation(line: 175, column: 30, scope: !296)
!312 = !DILocation(line: 0, scope: !305)
!313 = !DILocation(line: 0, scope: !166, inlinedAt: !314)
!314 = distinct !DILocation(line: 0, scope: !305)
!315 = distinct !DISubprogram(name: "varSimpleTest", linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalFTY5_", scope: !4, file: !1, line: 175, type: !194, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !316)
!316 = !{!317, !318, !319}
!317 = !DILocalVariable(name: "$\CF\84_0_0", scope: !315, file: !1, type: !114, flags: DIFlagArtificial)
!318 = !DILocalVariable(name: "msg", arg: 1, scope: !315, file: !1, line: 175, type: !111)
!319 = !DILocalVariable(name: "msg2", arg: 2, scope: !315, file: !1, line: 175, type: !118)
!320 = !DILocation(line: 175, column: 46, scope: !315)
!321 = !DILocation(line: 0, scope: !315)
!322 = !DILocation(line: 177, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !1, line: 175, column: 63)
!324 = !DILocation(line: 0, scope: !325)
!325 = !DILexicalBlockFile(scope: !323, file: !56, discriminator: 0)
!326 = !DILocation(line: 0, scope: !323)
!327 = !DILocation(line: 0, scope: !328)
!328 = !DILexicalBlockFile(scope: !315, file: !56, discriminator: 0)
!329 = !DILocation(line: 175, column: 30, scope: !315)
!330 = !DILocation(line: 184, column: 1, scope: !323)
!331 = !DILocation(line: 0, scope: !332, inlinedAt: !333)
!332 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async13varSimpleTestyyxz_xtYalF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!333 = distinct !DILocation(line: 184, column: 1, scope: !323)
!334 = !DILocation(line: 0, scope: !210)
!335 = !DILocation(line: 0, scope: !250)
!336 = !DILocation(line: 0, scope: !294)
!337 = !DILocation(line: 0, scope: !332)
!338 = distinct !DISubprogram(name: "varSimpleTestVar", linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaF", scope: !4, file: !1, line: 265, type: !124, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !339)
!339 = !{!340, !342}
!340 = !DILocalVariable(name: "k", scope: !341, file: !1, line: 266, type: !59)
!341 = distinct !DILexicalBlock(scope: !338, file: !1, line: 265, column: 38)
!342 = !DILocalVariable(name: "m", scope: !341, file: !1, line: 269, type: !65)
!343 = !DILocation(line: 269, column: 9, scope: !341)
!344 = !DILocation(line: 0, scope: !338)
!345 = !DILocation(line: 0, scope: !166, inlinedAt: !346)
!346 = distinct !DILocation(line: 0, scope: !338)
!347 = distinct !DISubprogram(name: "varSimpleTestVar", linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY0_", scope: !4, file: !1, line: 265, type: !124, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !348)
!348 = !{!349, !351}
!349 = !DILocalVariable(name: "k", scope: !350, file: !1, line: 266, type: !59)
!350 = distinct !DILexicalBlock(scope: !347, file: !1, line: 265, column: 38)
!351 = !DILocalVariable(name: "m", scope: !350, file: !1, line: 269, type: !65)
!352 = !DILocation(line: 269, column: 9, scope: !350)
!353 = !DILocation(line: 0, scope: !347)
!354 = !DILocation(line: 0, scope: !355)
!355 = !DILexicalBlockFile(scope: !350, file: !56, discriminator: 0)
!356 = !DILocation(line: 266, column: 9, scope: !350)
!357 = !DILocation(line: 266, column: 13, scope: !350)
!358 = !DILocation(line: 267, column: 7, scope: !350)
!359 = !DILocation(line: 268, column: 11, scope: !350)
!360 = !DILocation(line: 0, scope: !361, inlinedAt: !362)
!361 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!362 = distinct !DILocation(line: 268, column: 11, scope: !350)
!363 = distinct !DISubprogram(name: "varSimpleTestVar", linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ1_", scope: !4, file: !1, line: 265, type: !124, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !364)
!364 = !{!365, !367}
!365 = !DILocalVariable(name: "k", scope: !366, file: !1, line: 266, type: !59)
!366 = distinct !DILexicalBlock(scope: !363, file: !1, line: 265, column: 38)
!367 = !DILocalVariable(name: "m", scope: !366, file: !1, line: 269, type: !65)
!368 = !DILocation(line: 269, column: 9, scope: !366)
!369 = !DILocation(line: 0, scope: !155, inlinedAt: !370)
!370 = distinct !DILocation(line: 268, column: 11, scope: !366)
!371 = !DILocation(line: 268, column: 11, scope: !366)
!372 = !DILocation(line: 0, scope: !155, inlinedAt: !373)
!373 = distinct !DILocation(line: 268, column: 11, scope: !366)
!374 = !DILocation(line: 0, scope: !375)
!375 = !DILexicalBlockFile(scope: !366, file: !56, discriminator: 0)
!376 = !DILocation(line: 266, column: 9, scope: !366)
!377 = !DILocation(line: 0, scope: !166, inlinedAt: !378)
!378 = distinct !DILocation(line: 0, scope: !375)
!379 = distinct !DISubprogram(name: "varSimpleTestVar", linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY2_", scope: !4, file: !1, line: 265, type: !124, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !380)
!380 = !{!381, !383}
!381 = !DILocalVariable(name: "k", scope: !382, file: !1, line: 266, type: !59)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 265, column: 38)
!383 = !DILocalVariable(name: "m", scope: !382, file: !1, line: 269, type: !65)
!384 = !DILocation(line: 269, column: 9, scope: !382)
!385 = !DILocation(line: 0, scope: !386)
!386 = !DILexicalBlockFile(scope: !382, file: !56, discriminator: 0)
!387 = !DILocation(line: 266, column: 9, scope: !382)
!388 = !DILocation(line: 269, column: 13, scope: !382)
!389 = !DILocation(line: 0, scope: !382)
!390 = !DILocation(line: 270, column: 7, scope: !382)
!391 = !DILocation(line: 271, column: 11, scope: !382)
!392 = !DILocation(line: 0, scope: !393, inlinedAt: !394)
!393 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!394 = distinct !DILocation(line: 271, column: 11, scope: !382)
!395 = distinct !DISubprogram(name: "varSimpleTestVar", linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTQ3_", scope: !4, file: !1, line: 265, type: !124, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !396)
!396 = !{!397, !399}
!397 = !DILocalVariable(name: "k", scope: !398, file: !1, line: 266, type: !59)
!398 = distinct !DILexicalBlock(scope: !395, file: !1, line: 265, column: 38)
!399 = !DILocalVariable(name: "m", scope: !398, file: !1, line: 269, type: !65)
!400 = !DILocation(line: 269, column: 9, scope: !398)
!401 = !DILocation(line: 0, scope: !155, inlinedAt: !402)
!402 = distinct !DILocation(line: 271, column: 11, scope: !398)
!403 = !DILocation(line: 271, column: 11, scope: !398)
!404 = !DILocation(line: 0, scope: !155, inlinedAt: !405)
!405 = distinct !DILocation(line: 271, column: 11, scope: !398)
!406 = !DILocation(line: 266, column: 9, scope: !398)
!407 = !DILocation(line: 0, scope: !408)
!408 = !DILexicalBlockFile(scope: !398, file: !56, discriminator: 0)
!409 = !DILocation(line: 0, scope: !166, inlinedAt: !410)
!410 = distinct !DILocation(line: 0, scope: !408)
!411 = distinct !DISubprogram(name: "varSimpleTestVar", linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaFTY4_", scope: !4, file: !1, line: 265, type: !124, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !412)
!412 = !{!413, !415}
!413 = !DILocalVariable(name: "k", scope: !414, file: !1, line: 266, type: !59)
!414 = distinct !DILexicalBlock(scope: !411, file: !1, line: 265, column: 38)
!415 = !DILocalVariable(name: "m", scope: !414, file: !1, line: 269, type: !65)
!416 = !DILocation(line: 269, column: 9, scope: !414)
!417 = !DILocation(line: 0, scope: !418)
!418 = !DILexicalBlockFile(scope: !414, file: !56, discriminator: 0)
!419 = !DILocation(line: 266, column: 9, scope: !414)
!420 = !DILocation(line: 272, column: 9, scope: !414)
!421 = !DILocation(line: 272, column: 7, scope: !414)
!422 = !DILocation(line: 273, column: 7, scope: !414)
!423 = !DILocation(line: 274, column: 11, scope: !414)
!424 = !DILocation(line: 274, column: 10, scope: !414)
!425 = !DILocation(line: 274, column: 5, scope: !414)
!426 = !DILocation(line: 275, column: 1, scope: !414)
!427 = !DILocation(line: 0, scope: !428, inlinedAt: !429)
!428 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async16varSimpleTestVaryyYaF", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!429 = distinct !DILocation(line: 275, column: 1, scope: !414)
!430 = distinct !DISubprogram(linkageName: "$s27move_function_dbginfo_async5KlassCMa", scope: !4, file: !56, type: !130, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!431 = !DILocation(line: 0, scope: !430)
!432 = !DILocation(line: 0, scope: !361)
!433 = !DILocation(line: 0, scope: !393)
!434 = distinct !DISubprogram(name: "_finalizeUninitializedArray", linkageName: "$ss27_finalizeUninitializedArrayySayxGABnlF", scope: !6, file: !56, type: !435, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !443)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !437}
!437 = !DICompositeType(tag: DW_TAG_structure_type, scope: !6, file: !45, size: 64, elements: !438, runtimeLang: DW_LANG_Swift)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !6, file: !45, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "Array", scope: !6, file: !45, flags: DIFlagFwdDecl, runtimeLang: DW_LANG_Swift, templateParams: !441, identifier: "$sSayxGD")
!441 = !{!442}
!442 = !DITemplateTypeParameter(type: !111)
!443 = !{!444}
!444 = !DILocalVariable(name: "$\CF\84_0_0", scope: !434, file: !1, type: !445, flags: DIFlagArtificial)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", scope: !115, file: !56, baseType: !116)
!446 = !DILocation(line: 0, scope: !434)
!447 = distinct !DISubprogram(name: "print", linkageName: "$ss5print_9separator10terminatoryypd_S2StFfA0_", scope: !6, file: !56, type: !448, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{!450}
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "String", scope: !6, file: !45, size: 128, elements: !46, runtimeLang: DW_LANG_Swift, identifier: "$sSSD")
!451 = !DILocation(line: 0, scope: !447)
!452 = distinct !DISubprogram(name: "print", linkageName: "$ss5print_9separator10terminatoryypd_S2StFfA1_", scope: !6, file: !56, type: !448, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!453 = !DILocation(line: 0, scope: !452)
!454 = !DILocation(line: 0, scope: !428)
!455 = distinct !DISubprogram(linkageName: "$sSa12_endMutationyyF", scope: !4, file: !56, type: !456, flags: DIFlagArtificial, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{!62, !437}
!458 = !DILocation(line: 0, scope: !455)
