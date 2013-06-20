.class public Lcom/instagram/util/TimespanUtils;
.super Ljava/lang/Object;
.source "TimespanUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getCurrentTimeInSeconds()J
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getFormattedDateRelativeToNow(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 118
    long-to-double v0, p1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/instagram/util/TimespanUtils;->getFormattedDateRelativeToNowShortened(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFormattedDateRelativeToNowShortened(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "time"
    .parameter "shortened"

    .prologue
    const-wide/high16 v10, 0x4038

    const-wide/high16 v8, 0x401c

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v6, 0x404e

    .line 74
    invoke-static {}, Lcom/instagram/util/TimespanUtils;->getCurrentTimeInSeconds()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, p1

    .line 76
    const-wide/high16 v4, -0x3fb2

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 77
    const-string v0, ""

    .line 106
    :goto_0
    return-object v0

    .line 80
    :cond_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_5

    .line 84
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 86
    cmpg-double v2, v0, v6

    if-gez v2, :cond_1

    .line 87
    sget-object v2, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodSeconds:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v2, v0, p3}, Lcom/instagram/util/TimespanUtils;->getStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    div-double/2addr v0, v6

    .line 91
    cmpg-double v2, v0, v6

    if-gez v2, :cond_2

    .line 92
    sget-object v2, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodMinutes:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v2, v0, p3}, Lcom/instagram/util/TimespanUtils;->getStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    div-double/2addr v0, v6

    .line 96
    cmpg-double v2, v0, v10

    if-gez v2, :cond_3

    .line 97
    sget-object v2, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodHours:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v2, v0, p3}, Lcom/instagram/util/TimespanUtils;->getStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_3
    div-double/2addr v0, v10

    .line 101
    cmpg-double v2, v0, v8

    if-gez v2, :cond_4

    .line 102
    sget-object v2, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodDays:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v2, v0, p3}, Lcom/instagram/util/TimespanUtils;->getStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_4
    div-double/2addr v0, v8

    .line 106
    sget-object v2, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->TimePeriodWeeks:Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v2, v0, p3}, Lcom/instagram/util/TimespanUtils;->getStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_1
.end method

.method private static getFullStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "timePeriod"
    .parameter "delta"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 40
    .line 41
    sget-object v0, Lcom/instagram/util/TimespanUtils$1;->$SwitchMap$com$instagram$util$TimespanUtils$RelativeTimePeriod:[I

    invoke-virtual {p1}, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/i;->x_weeks_ago:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/i;->x_seconds_ago:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/i;->x_minutes_ago:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/i;->x_hours_ago:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/i;->x_days_ago:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getShortenedFormattedDateRelativeToNow(Landroid/content/Context;D)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "time"

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/instagram/util/TimespanUtils;->getFormattedDateRelativeToNowShortened(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getShortenedStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "timePeriod"
    .parameter "delta"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 23
    sget-object v0, Lcom/instagram/util/TimespanUtils$1;->$SwitchMap$com$instagram$util$TimespanUtils$RelativeTimePeriod:[I

    invoke-virtual {p1}, Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    sget v0, Lcom/facebook/k;->weeks_abbreviation_with_placeholder:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    sget v0, Lcom/facebook/k;->seconds_abbreviation_with_placeholder:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_1
    sget v0, Lcom/facebook/k;->minutes_abbreviation_with_placeholder:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_2
    sget v0, Lcom/facebook/k;->hours_abbreviation_with_placeholder:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_3
    sget v0, Lcom/facebook/k;->days_abbreviation_with_placeholder:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;IZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "period"
    .parameter "delta"
    .parameter "shortened"

    .prologue
    .line 64
    if-eqz p3, :cond_0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/instagram/util/TimespanUtils;->getShortenedStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/instagram/util/TimespanUtils;->getFullStringForTimePeriod(Landroid/content/Context;Lcom/instagram/util/TimespanUtils$RelativeTimePeriod;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
