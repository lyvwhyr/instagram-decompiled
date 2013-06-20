.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final ACRA_DIRNAME:Ljava/lang/String; = "acra-reports"

.field public static final DEFAULT_MAX_REPORT_SIZE:J = 0xc800L

.field public static final DUMPFILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field public static final DUMP_DIR:Ljava/lang/String; = "minidumps"

.field public static final MAX_REPORT_AGE:J = 0x5265c00L

.field public static final MAX_SEND_REPORTS:I = 0x5

.field private static final MIN_TEMP_REPORT_AGE:J = 0x927c0L

.field public static final NATIVE_MAX_REPORT_SIZE:J = 0x57800L

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field public static final TEMP_REPORTFILE_EXTENSION:Ljava/lang/String; = ".temp_stacktrace"

.field private static TRACE_COUNT_LIMIT:I

.field private static mInstanceSingleton:Lorg/acra/ErrorReporter;

.field private static mInternalException:Ljava/lang/String;


# instance fields
.field private final activityLogger:Lorg/acra/util/SimpleTraceLogger;

.field private forceDump:Z

.field private mAppInstallTime:Landroid/text/format/Time;

.field private mAppUpgradeTime:Landroid/text/format/Time;

.field private mAppVersionCode:Ljava/lang/String;

.field private mAppVersionName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCrashProperties:Lorg/acra/CrashReportData;

.field private mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mInitialConfiguration:Ljava/lang/String;

.field mInstanceCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInstanceLazyCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/acra/CustomReportDataSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private mLogBridge:Lorg/acra/LogBridge;

.field private mMaxReportSize:J

.field private mReportSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private processNameByAms:Ljava/lang/String;

.field private processNameByAmsReady:Z

.field private sendInMemoryReport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat org.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat org.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat org.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

    sput-object v0, Lorg/acra/ErrorReporter;->mInternalException:Ljava/lang/String;

    .line 215
    const/4 v0, 0x5

    sput v0, Lorg/acra/ErrorReporter;->TRACE_COUNT_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/32 v0, 0xc800

    iput-wide v0, p0, Lorg/acra/ErrorReporter;->mMaxReportSize:J

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Lorg/acra/CrashReportData;

    invoke-direct {v0}, Lorg/acra/CrashReportData;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    .line 216
    new-instance v0, Lorg/acra/util/SimpleTraceLogger;

    sget v1, Lorg/acra/ErrorReporter;->TRACE_COUNT_LIMIT:I

    invoke-direct {v0, v1}, Lorg/acra/util/SimpleTraceLogger;-><init>(I)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->activityLogger:Lorg/acra/util/SimpleTraceLogger;

    .line 227
    iput-boolean v2, p0, Lorg/acra/ErrorReporter;->sendInMemoryReport:Z

    .line 232
    iput-boolean v2, p0, Lorg/acra/ErrorReporter;->forceDump:Z

    return-void
.end method

.method static synthetic access$000(Lorg/acra/ErrorReporter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"
    .parameter "fileName"

    .prologue
    .line 1421
    invoke-static {p1, p2, p3}, Lorg/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1422
    if-nez v0, :cond_0

    .line 1423
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete error report : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_0
    return-void
.end method

.method private dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "sb"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 360
    if-eqz p2, :cond_0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 361
    :goto_0
    if-eqz p3, :cond_1

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 362
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    return-void

    :cond_0
    move-object p2, v0

    .line 360
    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 361
    goto :goto_1
.end method

.method private dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    invoke-direct {p0, p1, v1, v0}, Lorg/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method private dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 4
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/acra/CustomReportDataSupplier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/acra/CustomReportDataSupplier;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/CustomReportDataSupplier;

    invoke-interface {v0}, Lorg/acra/CustomReportDataSupplier;->getCustomData()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 346
    invoke-direct {p0, p1, v1, v0}, Lorg/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Caught throwable while getting custom report data"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method private static fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "fileName"

    .prologue
    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1417
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/Writer;Ljava/util/Map;)V
    .locals 2
    .parameter "stackTrace"
    .parameter "e"
    .parameter "w"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/io/Writer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-direct {p0, v0, p1, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 905
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->OOM_REPORT_FIELDS:[Lorg/acra/ReportField;

    .line 908
    :goto_0
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0, p3}, Lorg/acra/ErrorReporter;->retrieveCrashData(Landroid/content/Context;[Lorg/acra/ReportField;Ljava/io/Writer;)V

    .line 910
    sget-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-virtual {p0, p4}, Lorg/acra/ErrorReporter;->dumpCustomDataToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 911
    return-void

    .line 905
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    goto :goto_0
.end method

.method private genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cause"
    .parameter "fileExtension"

    .prologue
    .line 1130
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Generating crash report file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getAvailableInternalMemorySize()J
    .locals 4

    .prologue
    .line 558
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 559
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 561
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 562
    mul-long/2addr v0, v2

    .line 564
    :goto_0
    return-wide v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getDeviceUptime()J
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lorg/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Lorg/acra/ErrorReporter;

    invoke-direct {v0}, Lorg/acra/ErrorReporter;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    .line 510
    :cond_0
    sget-object v0, Lorg/acra/ErrorReporter;->mInstanceSingleton:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method private getJailStatus()Ljava/lang/String;
    .locals 6

    .prologue
    .line 450
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 451
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "yes"

    .line 484
    :goto_0
    return-object v0

    .line 457
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    const-string v0, "yes"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to find Superuser.pak"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    :cond_1
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_3

    .line 468
    const-string v1, "PATH"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 471
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "su"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    const-string v0, "yes"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 478
    :catch_1
    move-exception v0

    .line 479
    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to find su binary in the PATH"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 484
    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 414
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v3

    .line 415
    if-nez v3, :cond_3

    .line 416
    const/4 v1, 0x0

    .line 418
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/self/cmdline"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 419
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x80

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 428
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 430
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 437
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 438
    const-string v0, ""

    .line 440
    :cond_2
    return-object v0

    .line 424
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 425
    :goto_2
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to get process name."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    move-object v2, v1

    goto :goto_0

    .line 431
    :catch_1
    move-exception v1

    .line 432
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to close file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 424
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method private getProcessNameFromAms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 403
    const-string v0, "n/a"

    .line 405
    :cond_0
    return-object v0
.end method

.method private getProcessNameFromAmsOrNull()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->processNameByAmsReady:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 388
    :goto_0
    return-object v0

    .line 377
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 380
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 381
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1

    .line 382
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lorg/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 387
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->processNameByAmsReady:Z

    .line 388
    iget-object v0, p0, Lorg/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    goto :goto_0
.end method

.method private getProcessUptime()J
    .locals 2

    .prologue
    .line 491
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTotalInternalMemorySize()J
    .locals 4

    .prologue
    .line 576
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 577
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 579
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 580
    mul-long/2addr v0, v2

    .line 582
    :goto_0
    return-wide v0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private loadAcraCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;
    .locals 7
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 1312
    const-string v2, "acra-reports"

    sget-object v4, Lorg/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

    iget-wide v5, p0, Lorg/acra/ErrorReporter;->mMaxReportSize:J

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/acra/ErrorReporter$CrashReportType;J)Lorg/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadCrashReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/acra/ErrorReporter$CrashReportType;J)Lorg/acra/CrashReportData;
    .locals 8
    .parameter "context"
    .parameter "path"
    .parameter "fileName"
    .parameter "crashReportType"
    .parameter "maxSize"

    .prologue
    const/4 v0, 0x0

    .line 1331
    new-instance v1, Lorg/acra/CrashReportData;

    invoke-direct {v1}, Lorg/acra/CrashReportData;-><init>()V

    .line 1332
    invoke-static {p1, p2, p3}, Lorg/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 1334
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was too old; deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :cond_0
    :goto_0
    return-object v0

    .line 1340
    :cond_1
    const-string v2, ".temp_stacktrace"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 1344
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v4, p5

    if-lez v2, :cond_3

    .line 1345
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-byte crash report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeded max size of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes; deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1351
    :cond_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1352
    const/4 v2, 0x0

    .line 1355
    :try_start_0
    sget-object v0, Lorg/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

    if-ne p4, v0, :cond_4

    .line 1356
    invoke-virtual {v1, v4}, Lorg/acra/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :goto_2
    move-object v0, v1

    .line 1374
    goto :goto_0

    .line 1358
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    .line 1359
    invoke-direct {p0, v4, v0}, Lorg/acra/ErrorReporter;->loadDump(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 1360
    sget-object v3, Lorg/acra/ReportField;->MINIDUMP:Lorg/acra/ReportField;

    invoke-virtual {v1, v3, v0}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    :try_start_2
    sget-object v3, Lorg/acra/ReportField;->REPORT_LOAD_THROW:Lorg/acra/ReportField;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load crash report:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1366
    const/4 v2, 0x1

    .line 1367
    invoke-virtual {p1, p3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1368
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crash report:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " deleted"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1370
    :catchall_0
    move-exception v0

    move v1, v2

    if-nez v1, :cond_5

    .line 1371
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v0
.end method

.method private loadDump(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 5
    .parameter "in"
    .parameter "nbytes"

    .prologue
    const/4 v0, 0x0

    .line 1384
    .line 1386
    new-array v3, p2, [B

    move v1, v0

    .line 1387
    :goto_0
    sub-int v2, p2, v1

    if-lez v2, :cond_0

    .line 1388
    sub-int v0, p2, v1

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1389
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1395
    :cond_0
    if-nez v0, :cond_3

    .line 1396
    const-string v0, ""

    .line 1409
    :cond_1
    :goto_1
    return-object v0

    .line 1392
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0

    .line 1400
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1401
    const/4 v2, 0x0

    .line 1403
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    const/4 v2, 0x0

    :try_start_1
    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1405
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1406
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1408
    if-eqz v1, :cond_1

    .line 1409
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_1

    .line 1408
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 1409
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_4
    throw v0

    .line 1408
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private loadNativeCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;
    .locals 7
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 1319
    const-string v2, "minidumps"

    sget-object v4, Lorg/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

    const-wide/32 v5, 0x57800

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/acra/ErrorReporter$CrashReportType;J)Lorg/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "writer"

    .prologue
    .line 927
    :try_start_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    iget-boolean v1, p0, Lorg/acra/ErrorReporter;->sendInMemoryReport:Z

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    .end local p3
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/acra/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v0

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->sendInMemoryReport:Z

    goto :goto_0
.end method

.method private reportNativeCrashes(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1236
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "#reportNativeCrashes - start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->NATIVE_CRASH_REPORT_FIELDS:[Lorg/acra/ReportField;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lorg/acra/ErrorReporter;->retrieveCrashData(Landroid/content/Context;[Lorg/acra/ReportField;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :goto_0
    :try_start_1
    const-string v0, "minidumps"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ".dmp"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lorg/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1249
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1251
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    :try_start_2
    invoke-direct {p0, p1, v5}, Lorg/acra/ErrorReporter;->loadNativeCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;

    move-result-object v6

    .line 1254
    const-string v0, "load failed"

    .line 1255
    if-eqz v6, :cond_0

    .line 1256
    sget-object v0, Lorg/acra/ReportField;->MINIDUMP:Lorg/acra/ReportField;

    invoke-virtual {v6, v0}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1258
    :cond_0
    iget-object v6, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v7, Lorg/acra/ReportField;->MINIDUMP:Lorg/acra/ReportField;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lorg/acra/CrashReportData;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->sendCrashReport(Lorg/acra/CrashReportData;)V

    .line 1260
    const-string v0, "minidumps"

    invoke-direct {p0, p1, v0, v5}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1261
    add-int/lit8 v2, v2, 0x1

    .line 1251
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1243
    :catch_0
    move-exception v0

    .line 1245
    :try_start_3
    sget-object v2, Lorg/acra/ReportField;->REPORT_LOAD_THROW:Lorg/acra/ReportField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieve exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1273
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v2, Lorg/acra/ReportField;->REPORT_LOAD_THROW:Lorg/acra/ReportField;

    invoke-virtual {v1, v2}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v2, Lorg/acra/ReportField;->MINIDUMP:Lorg/acra/ReportField;

    invoke-virtual {v1, v2}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    .line 1262
    :catch_1
    move-exception v0

    .line 1264
    :try_start_4
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send native crash report "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1273
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->REPORT_LOAD_THROW:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->MINIDUMP:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#reportNativeCrashes - finish, sent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return v2

    .line 1266
    :catch_2
    move-exception v0

    .line 1267
    :try_start_5
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed on native crash file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1268
    const-string v0, "minidumps"

    invoke-direct {p0, p1, v0, v5}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private resetProcessNameByAmsCache()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->processNameByAmsReady:Z

    .line 394
    return-void
.end method

.method private retrieveCrashData(Landroid/content/Context;[Lorg/acra/ReportField;Ljava/io/Writer;)V
    .locals 5
    .parameter "context"
    .parameter "fields"
    .parameter "writer"

    .prologue
    const/4 v4, 0x0

    .line 599
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 602
    sget-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 607
    :cond_0
    sget-object v0, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    sget-object v0, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 610
    :cond_1
    sget-object v0, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    sget-object v0, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 615
    :cond_2
    sget-object v0, Lorg/acra/ReportField;->APP_INSTALL_TIME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    sget-object v0, Lorg/acra/ReportField;->APP_INSTALL_TIME:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mAppInstallTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 618
    :cond_3
    sget-object v0, Lorg/acra/ReportField;->APP_UPGRADE_TIME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 619
    sget-object v0, Lorg/acra/ReportField;->APP_UPGRADE_TIME:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mAppUpgradeTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 623
    :cond_4
    sget-object v0, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 624
    sget-object v0, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 628
    :cond_5
    sget-object v0, Lorg/acra/ReportField;->PROCESS_NAME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 629
    sget-object v0, Lorg/acra/ReportField;->PROCESS_NAME:Lorg/acra/ReportField;

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 633
    :cond_6
    sget-object v0, Lorg/acra/ReportField;->PROCESS_UPTIME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 634
    sget-object v0, Lorg/acra/ReportField;->PROCESS_UPTIME:Lorg/acra/ReportField;

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->getProcessUptime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 638
    :cond_7
    sget-object v0, Lorg/acra/ReportField;->DEVICE_UPTIME:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 639
    sget-object v0, Lorg/acra/ReportField;->DEVICE_UPTIME:Lorg/acra/ReportField;

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->getDeviceUptime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 643
    :cond_8
    sget-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 644
    sget-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    const-class v2, Landroid/os/Build;

    invoke-static {v2}, Lorg/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 648
    :cond_9
    sget-object v0, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 649
    sget-object v0, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 652
    :cond_a
    sget-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 653
    sget-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 657
    :cond_b
    sget-object v0, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 658
    sget-object v0, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 660
    :cond_c
    sget-object v0, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 661
    sget-object v0, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 665
    :cond_d
    sget-object v0, Lorg/acra/ReportField;->JAIL_BROKEN:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 666
    sget-object v0, Lorg/acra/ReportField;->JAIL_BROKEN:Lorg/acra/ReportField;

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->getJailStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 670
    :cond_e
    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 671
    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 675
    :cond_f
    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 676
    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mInitialConfiguration:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 678
    :cond_10
    sget-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 679
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 680
    sget-object v2, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-static {v0}, Lorg/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 684
    :cond_11
    sget-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 685
    sget-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/ErrorReporter;->getTotalInternalMemorySize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 687
    :cond_12
    sget-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 688
    sget-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/ErrorReporter;->getAvailableInternalMemorySize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 692
    :cond_13
    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 693
    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-static {p1}, Lorg/acra/DumpSysCollector;->collectMemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 697
    :cond_14
    sget-object v0, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 698
    sget-object v0, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 702
    :cond_15
    sget-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 703
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 704
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 705
    sget-object v2, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 709
    :cond_16
    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 710
    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-static {p1}, Lorg/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 714
    :cond_17
    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 715
    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const-class v2, Landroid/os/Environment;

    invoke-static {v2}, Lorg/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 720
    :cond_18
    sget-object v0, Lorg/acra/ReportField;->ACTIVITY_LOG:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 721
    sget-object v0, Lorg/acra/ReportField;->ACTIVITY_LOG:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->activityLogger:Lorg/acra/util/SimpleTraceLogger;

    invoke-virtual {v2}, Lorg/acra/util/SimpleTraceLogger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 725
    :cond_19
    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 726
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 728
    sget-object v2, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-static {v0}, Lorg/acra/ErrorReporter;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 732
    :cond_1a
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 733
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/acra/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 737
    :cond_1b
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 738
    sget-object v0, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/acra/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 742
    :cond_1c
    sget-object v0, Lorg/acra/ReportField;->PROCESS_NAME_BY_AMS:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 743
    sget-object v0, Lorg/acra/ReportField;->PROCESS_NAME_BY_AMS:Lorg/acra/ReportField;

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 745
    :cond_1d
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->resetProcessNameByAmsCache()V

    .line 748
    sget-object v0, Lorg/acra/ReportField;->OPEN_FD_COUNT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 749
    sget-object v0, Lorg/acra/ReportField;->OPEN_FD_COUNT:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/ProcFileReader;->getOpenFDCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 752
    :cond_1e
    sget-object v0, Lorg/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lorg/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lorg/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 753
    :cond_1f
    invoke-static {}, Lorg/acra/util/ProcFileReader;->getOpenFDLimits()Lorg/acra/util/ProcFileReader$OpenFDLimits;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_21

    .line 755
    sget-object v2, Lorg/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 756
    sget-object v2, Lorg/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lorg/acra/ReportField;

    iget-object v3, v0, Lorg/acra/util/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 758
    :cond_20
    sget-object v2, Lorg/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 759
    sget-object v2, Lorg/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lorg/acra/ReportField;

    iget-object v0, v0, Lorg/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    invoke-direct {p0, v2, v0, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 764
    :cond_21
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 767
    if-eqz v0, :cond_26

    .line 768
    iget-boolean v2, p0, Lorg/acra/ErrorReporter;->forceDump:Z

    if-eqz v2, :cond_25

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, v2}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 769
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-object v2, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 771
    sget-object v2, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/4 v3, 0x0

    invoke-static {v3}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 773
    :cond_22
    sget-object v2, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 774
    sget-object v2, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    const-string v3, "events"

    invoke-static {v3}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 776
    :cond_23
    sget-object v2, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 777
    sget-object v2, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    const-string v3, "radio"

    invoke-static {v3}, Lorg/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 779
    :cond_24
    sget-object v2, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 780
    sget-object v2, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/reporter/ReportsCrashes;

    move-result-object v4

    invoke-interface {v4}, Lorg/acra/reporter/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/acra/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 786
    :cond_25
    sget-object v2, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 788
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 789
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_26

    .line 791
    sget-object v1, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-direct {p0, v1, v0, p3}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 795
    :cond_26
    return-void
.end method

.method private sendCrashReport(Lorg/acra/CrashReportData;)V
    .locals 6
    .parameter "errorContent"

    .prologue
    .line 1111
    const/4 v0, 0x0

    .line 1112
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/sender/ReportSender;

    .line 1114
    :try_start_0
    invoke-interface {v0, p1}, Lorg/acra/sender/ReportSender;->send(Lorg/acra/CrashReportData;)V
    :try_end_0
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 1126
    goto :goto_0

    .line 1118
    :catch_0
    move-exception v3

    .line 1119
    if-nez v1, :cond_0

    .line 1120
    throw v3

    .line 1122
    :cond_0
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReportSender of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 1127
    :cond_1
    return-void
.end method

.method private throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter "e"

    .prologue
    .line 884
    if-nez p1, :cond_0

    .line 885
    new-instance p1, Ljava/lang/Exception;

    .end local p1
    const-string v0, "Report requested by developer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 888
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 889
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 890
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 891
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 893
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 5
    .parameter "display"

    .prologue
    const/16 v4, 0xa

    .line 806
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 807
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixelFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refreshRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.density=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.scaledDensity=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.widthPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.heightPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.xdpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.ydpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "t"

    .prologue
    .line 872
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->getLogBridge()Lorg/acra/LogBridge;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_0

    .line 874
    invoke-interface {v0, p1, p2, p3}, Lorg/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 876
    :cond_0
    return-void
.end method


# virtual methods
.method public addReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 1451
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    return-void
.end method

.method declared-synchronized checkAndSendReports(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1181
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "#checkAndSendReports - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-string v1, "acra-reports"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ".stacktrace"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ".temp_stacktrace"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1184
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1188
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 1189
    const/4 v5, 0x5

    if-lt v0, v5, :cond_0

    .line 1197
    const-string v5, "acra-reports"

    invoke-direct {p0, p1, v5, v4}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    :try_start_1
    invoke-direct {p0, p1, v4}, Lorg/acra/ErrorReporter;->loadAcraCrashReport(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;

    move-result-object v5

    .line 1205
    if-eqz v5, :cond_1

    .line 1206
    sget-object v6, Lorg/acra/ReportField;->ACRA_REPORT_FILENAME:Lorg/acra/ReportField;

    invoke-virtual {v5, v6, v4}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    invoke-direct {p0, v5}, Lorg/acra/ErrorReporter;->sendCrashReport(Lorg/acra/CrashReportData;)V

    .line 1209
    const-string v5, "acra-reports"

    invoke-direct {p0, p1, v5, v4}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1223
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    :try_start_2
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to send crash reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    const-string v0, "acra-reports"

    invoke-direct {p0, p1, v0, v4}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_2
    :goto_2
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->reportNativeCrashes(Landroid/content/Context;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    monitor-exit p0

    return-void

    .line 1215
    :catch_1
    move-exception v0

    .line 1216
    :try_start_3
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load crash report for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    const-string v0, "acra-reports"

    invoke-direct {p0, p1, v0, v4}, Lorg/acra/ErrorReporter;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1219
    :catch_2
    move-exception v0

    .line 1220
    :try_start_4
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send crash report for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public checkReportsOnApplicationStart()Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1431
    const-string v0, "acra-reports"

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, ".stacktrace"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lorg/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1432
    const-string v1, "minidumps"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, ".dmp"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1433
    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 1435
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    new-instance v0, Lorg/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lorg/acra/ErrorReporter;)V

    .line 1437
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 1440
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpCustomDataToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lorg/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-direct {p0, v0, p1}, Lorg/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lorg/acra/ErrorReporter;->dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpInstanceCustomParametersToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->dumpCustomDataToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "path"
    .parameter "extensions"

    .prologue
    const/4 v4, 0x0

    .line 1144
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1145
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    new-array v0, v4, [Ljava/lang/String;

    .line 1170
    :cond_0
    :goto_0
    return-object v0

    .line 1149
    :cond_1
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_2

    .line 1151
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for error files in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v1, Lorg/acra/ErrorReporter$1;

    invoke-direct {v1, p0, p2}, Lorg/acra/ErrorReporter$1;-><init>(Lorg/acra/ErrorReporter;[Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 1165
    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0

    .line 1167
    :cond_2
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 302
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLogBridge()Lorg/acra/LogBridge;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mLogBridge:Lorg/acra/LogBridge;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1
    .parameter "e"

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1
    .parameter "e"
    .parameter "stackTrace"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 1097
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;Z)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 2
    .parameter "e"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 967
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;Z)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0

    .line 966
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleException(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;Z)Lorg/acra/ErrorReporter$ReportsSenderWorker;
    .locals 9
    .parameter "e"
    .parameter
    .parameter "overrideStackTrace"
    .parameter "shouldSendImmediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .local p2, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 991
    move-object v0, p1

    .line 992
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 993
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 999
    const-string v0, ".temp_stacktrace"

    invoke-direct {p0, v7, v0}, Lorg/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    const-string v2, ".stacktrace"

    invoke-direct {p0, v7, v2}, Lorg/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1008
    :try_start_0
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v3, "acra-reports"

    invoke-static {v2, v3, v0}, Lorg/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1009
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1010
    :try_start_2
    invoke-static {v3}, Lorg/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v2

    .line 1011
    :try_start_3
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v5, "acra-reports"

    invoke-static {v0, v5, v8}, Lorg/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v0

    move-object v5, v3

    move-object v6, v4

    move-object v3, v0

    move-object v4, v2

    .line 1019
    :goto_1
    :try_start_4
    sget-object v0, Lorg/acra/ReportField;->ACRA_REPORT_FILENAME:Lorg/acra/ReportField;

    invoke-direct {p0, v0, v8, v4}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 1020
    sget-object v0, Lorg/acra/ReportField;->EXCEPTION_CAUSE:Lorg/acra/ReportField;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V

    .line 1026
    if-nez p3, :cond_1

    .line 1027
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 1029
    :cond_1
    invoke-direct {p0, p3, p1, v4, p2}, Lorg/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1051
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1052
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1059
    :goto_2
    if-eqz p4, :cond_2

    .line 1062
    new-instance v0, Lorg/acra/ErrorReporter$ReportsSenderWorker;

    iget-boolean v1, p0, Lorg/acra/ErrorReporter;->sendInMemoryReport:Z

    invoke-direct {v0, p0, v1}, Lorg/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lorg/acra/ErrorReporter;Z)V

    .line 1063
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from #handleException"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 1076
    :goto_3
    return-object v0

    .line 1012
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 1013
    :goto_4
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "An error occurred while creating the report file ..."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->sendInMemoryReport:Z

    move-object v5, v3

    move-object v6, v4

    move-object v3, v1

    move-object v4, v2

    goto :goto_1

    .line 1053
    :catch_1
    move-exception v0

    .line 1054
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while deleting closing the report file ..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1030
    :catch_2
    move-exception v0

    .line 1037
    :try_start_6
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "An error occurred while gathering crash data ..."

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    sget-object v2, Lorg/acra/ReportField;->ACRA_INTERNAL:Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7, v4}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1047
    :try_start_7
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "An error occurred while gathering crash data ..."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1051
    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1052
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 1053
    :catch_3
    move-exception v0

    .line 1054
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while deleting closing the report file ..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1039
    :catch_4
    move-exception v2

    .line 1044
    :try_start_9
    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "An error occurred while gathering internal crash data ..."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    sget-object v2, Lorg/acra/ReportField;->ACRA_INTERNAL:Lorg/acra/ReportField;

    sget-object v7, Lorg/acra/ErrorReporter;->mInternalException:Ljava/lang/String;

    invoke-direct {p0, v2, v7, v4}, Lorg/acra/ErrorReporter;->put(Lorg/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1047
    :try_start_a
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "An error occurred while gathering crash data ..."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 1050
    :catchall_0
    move-exception v0

    .line 1051
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1052
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1056
    :goto_6
    throw v0

    .line 1047
    :catchall_1
    move-exception v1

    :try_start_c
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "An error occurred while gathering crash data ..."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1053
    :catch_5
    move-exception v1

    .line 1054
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while deleting closing the report file ..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1073
    :cond_2
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA caught an OutOfMemoryError. Report upload deferred until next ACRA launch."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1076
    goto :goto_3

    .line 1012
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_8
    move-exception v0

    goto/16 :goto_4
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    .line 524
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 525
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 527
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 528
    iput-object p1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 530
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lorg/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mInitialConfiguration:Ljava/lang/String;

    .line 531
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 532
    invoke-virtual {v0}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_0

    .line 534
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    .line 535
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    .line 537
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mAppInstallTime:Landroid/text/format/Time;

    .line 538
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mAppUpgradeTime:Landroid/text/format/Time;

    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 540
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mAppInstallTime:Landroid/text/format/Time;

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 541
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mAppUpgradeTime:Landroid/text/format/Time;

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 548
    :cond_0
    :goto_1
    return-void

    .line 535
    :cond_1
    const-string v0, "not set"

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mAppInstallTime:Landroid/text/format/Time;

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 544
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mAppUpgradeTime:Landroid/text/format/Time;

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto :goto_1
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 273
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putLazyCustomData(Ljava/lang/String;Lorg/acra/CustomReportDataSupplier;)V
    .locals 1
    .parameter "key"
    .parameter "valueSupplier"

    .prologue
    .line 314
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public registerActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "activityName"

    .prologue
    .line 1498
    if-eqz p1, :cond_0

    .line 1499
    iget-object v0, p0, Lorg/acra/ErrorReporter;->activityLogger:Lorg/acra/util/SimpleTraceLogger;

    invoke-virtual {v0, p1}, Lorg/acra/util/SimpleTraceLogger;->append(Ljava/lang/String;)V

    .line 1501
    :cond_0
    return-void
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1460
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized sendInMemoryReport(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1288
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Sending in-memory report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :try_start_1
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->sendCrashReport(Lorg/acra/CrashReportData;)V

    .line 1297
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->ACRA_REPORT_FILENAME:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1298
    if-eqz v0, :cond_0

    .line 1299
    const-string v1, "acra-reports"

    invoke-static {p1, v1, v0}, Lorg/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1300
    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1307
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    :try_start_2
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to send in-memory crash report: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppStartDate(Landroid/text/format/Time;)V
    .locals 3
    .parameter "appStartDate"

    .prologue
    .line 1488
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    return-void
.end method

.method public setLogBridge(Lorg/acra/LogBridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 249
    iput-object p1, p0, Lorg/acra/ErrorReporter;->mLogBridge:Lorg/acra/LogBridge;

    .line 250
    return-void
.end method

.method public setMaxReportSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1468
    iput-wide p1, p0, Lorg/acra/ErrorReporter;->mMaxReportSize:J

    .line 1469
    return-void
.end method

.method public setReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 1477
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 1478
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    .line 1479
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 826
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Building report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Uncaught Exception"

    invoke-direct {p0, v0, v1, p2}, Lorg/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    instance-of v0, p2, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->forceDump:Z

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mCrashProperties:Lorg/acra/CrashReportData;

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Lorg/acra/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-virtual {p0, p2}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_2

    .line 843
    :goto_0
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    :catch_0
    move-exception v1

    .line 849
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportsSenderWorker;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_2

    .line 855
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ReportsWorkerSender failed with exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v4, v4, v1}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;Z)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    .line 863
    :cond_2
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 864
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 866
    :cond_3
    return-void
.end method

.method public writeReportToStream(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "e"
    .parameter "os"

    .prologue
    .line 939
    :try_start_0
    invoke-static {p2}, Lorg/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 940
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 941
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 942
    :catch_0
    move-exception v0

    .line 943
    const-string v1, "ACRA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crash in writeReportToStream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
