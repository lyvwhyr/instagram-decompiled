.class final enum Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;
.super Ljava/lang/Enum;
.source "TimespanUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

.field public static final enum TimePeriodDays:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

.field public static final enum TimePeriodHours:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

.field public static final enum TimePeriodMinutes:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

.field public static final enum TimePeriodSeconds:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

.field public static final enum TimePeriodWeeks:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    const-string v1, "TimePeriodSeconds"

    invoke-direct {v0, v1, v2}, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodSeconds:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    .line 15
    new-instance v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    const-string v1, "TimePeriodMinutes"

    invoke-direct {v0, v1, v3}, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodMinutes:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    .line 16
    new-instance v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    const-string v1, "TimePeriodHours"

    invoke-direct {v0, v1, v4}, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodHours:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    .line 17
    new-instance v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    const-string v1, "TimePeriodDays"

    invoke-direct {v0, v1, v5}, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodDays:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    .line 18
    new-instance v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    const-string v1, "TimePeriodWeeks"

    invoke-direct {v0, v1, v6}, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodWeeks:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    sget-object v1, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodSeconds:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodMinutes:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodHours:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodDays:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodWeeks:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->$VALUES:[Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    return-object v0
.end method

.method public static values()[Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->$VALUES:[Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    invoke-virtual {v0}, [Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    return-object v0
.end method
