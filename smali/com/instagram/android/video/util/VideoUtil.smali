.class public Lcom/instagram/android/video/util/VideoUtil;
.super Ljava/lang/Object;
.source "VideoUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    return-void
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 67
    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return v0

    .line 71
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 73
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 75
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isOpaque(I)Z
    .locals 2
    .parameter "color"

    .prologue
    .line 46
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static meetsVideoCaptureRequirements()Z
    .locals 2

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needsLegacyVideoPlayer()Z
    .locals 2

    .prologue
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 54
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 56
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 57
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 58
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 59
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 60
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 61
    add-int/lit8 v0, p0, 0x1

    return v0
.end method
