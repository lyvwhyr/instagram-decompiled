.class final enum Lcom/instagram/util/AutoUpdateHelper$ReportType;
.super Ljava/lang/Enum;
.source "AutoUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/util/AutoUpdateHelper$ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/util/AutoUpdateHelper$ReportType;

.field public static final enum REPORT_NEW_VERSION_ONLY:Lcom/instagram/util/AutoUpdateHelper$ReportType;

.field public static final enum REPORT_UP_TO_DATE:Lcom/instagram/util/AutoUpdateHelper$ReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;

    const-string v1, "REPORT_NEW_VERSION_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/instagram/util/AutoUpdateHelper$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;->REPORT_NEW_VERSION_ONLY:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    new-instance v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;

    const-string v1, "REPORT_UP_TO_DATE"

    invoke-direct {v0, v1, v3}, Lcom/instagram/util/AutoUpdateHelper$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;->REPORT_UP_TO_DATE:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/util/AutoUpdateHelper$ReportType;

    sget-object v1, Lcom/instagram/util/AutoUpdateHelper$ReportType;->REPORT_NEW_VERSION_ONLY:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/util/AutoUpdateHelper$ReportType;->REPORT_UP_TO_DATE:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;->$VALUES:[Lcom/instagram/util/AutoUpdateHelper$ReportType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/util/AutoUpdateHelper$ReportType;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/util/AutoUpdateHelper$ReportType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;->$VALUES:[Lcom/instagram/util/AutoUpdateHelper$ReportType;

    invoke-virtual {v0}, [Lcom/instagram/util/AutoUpdateHelper$ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/util/AutoUpdateHelper$ReportType;

    return-object v0
.end method
