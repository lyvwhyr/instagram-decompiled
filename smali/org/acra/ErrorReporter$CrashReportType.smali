.class final enum Lorg/acra/ErrorReporter$CrashReportType;
.super Ljava/lang/Enum;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/acra/ErrorReporter$CrashReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/ErrorReporter$CrashReportType;

.field public static final enum ACRA_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

.field public static final enum NATIVE_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lorg/acra/ErrorReporter$CrashReportType;

    const-string v1, "ACRA_CRASH_REPORT"

    invoke-direct {v0, v1, v2}, Lorg/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

    .line 116
    new-instance v0, Lorg/acra/ErrorReporter$CrashReportType;

    const-string v1, "NATIVE_CRASH_REPORT"

    invoke-direct {v0, v1, v3}, Lorg/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lorg/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lorg/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/acra/ErrorReporter$CrashReportType;->$VALUES:[Lorg/acra/ErrorReporter$CrashReportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/ErrorReporter$CrashReportType;
    .locals 1
    .parameter "name"

    .prologue
    .line 114
    const-class v0, Lorg/acra/ErrorReporter$CrashReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method

.method public static values()[Lorg/acra/ErrorReporter$CrashReportType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lorg/acra/ErrorReporter$CrashReportType;->$VALUES:[Lorg/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v0}, [Lorg/acra/ErrorReporter$CrashReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method
