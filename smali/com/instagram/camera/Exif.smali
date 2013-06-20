.class public Lcom/instagram/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([B)I
    .locals 10
    .parameter "jpeg"

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 105
    :goto_0
    :pswitch_0
    return v1

    :cond_0
    move v0, v1

    .line 20
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, 0x3

    array-length v4, p0

    if-ge v2, v4, :cond_d

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xff

    if-ne v0, v4, :cond_e

    .line 21
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 24
    const/16 v0, 0xff

    if-ne v4, v0, :cond_2

    move v0, v2

    .line 25
    goto :goto_1

    .line 27
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 30
    const/16 v2, 0xd8

    if-eq v4, v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 34
    const/16 v2, 0xd9

    if-eq v4, v2, :cond_d

    const/16 v2, 0xda

    if-ne v4, v2, :cond_3

    move v2, v1

    move v4, v0

    .line 60
    :goto_2
    if-le v2, v9, :cond_c

    .line 62
    invoke-static {p0, v4, v8, v1}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v0

    .line 63
    const v5, 0x49492a00

    if-eq v0, v5, :cond_7

    const v5, 0x4d4d002a

    if-eq v0, v5, :cond_7

    .line 64
    const-string v0, "CameraExif"

    const-string v2, "Invalid byte order"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {p0, v0, v7, v1}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v5

    .line 40
    if-lt v5, v7, :cond_4

    add-int v2, v0, v5

    array-length v6, p0

    if-le v2, v6, :cond_5

    .line 41
    :cond_4
    const-string v0, "CameraExif"

    const-string v2, "Invalid length"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_5
    const/16 v2, 0xe1

    if-ne v4, v2, :cond_6

    if-lt v5, v9, :cond_6

    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2, v8, v1}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v2

    const v4, 0x45786966

    if-ne v2, v4, :cond_6

    add-int/lit8 v2, v0, 0x6

    invoke-static {p0, v2, v7, v1}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v2

    if-nez v2, :cond_6

    .line 49
    add-int/lit8 v2, v0, 0x8

    .line 50
    add-int/lit8 v0, v5, -0x8

    move v4, v2

    move v2, v0

    .line 51
    goto :goto_2

    .line 55
    :cond_6
    add-int/2addr v0, v5

    .line 57
    goto :goto_1

    .line 67
    :cond_7
    const v5, 0x49492a00

    if-ne v0, v5, :cond_9

    move v0, v3

    .line 70
    :goto_3
    add-int/lit8 v3, v4, 0x4

    invoke-static {p0, v3, v8, v0}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 71
    const/16 v5, 0xa

    if-lt v3, v5, :cond_8

    if-le v3, v2, :cond_a

    .line 72
    :cond_8
    const-string v0, "CameraExif"

    const-string v2, "Invalid offset"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 67
    goto :goto_3

    .line 75
    :cond_a
    add-int/2addr v4, v3

    .line 76
    sub-int v3, v2, v3

    .line 79
    add-int/lit8 v2, v4, -0x2

    invoke-static {p0, v2, v7, v0}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v2

    move v5, v4

    move v4, v3

    .line 80
    :goto_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_c

    const/16 v2, 0xc

    if-lt v4, v2, :cond_c

    .line 82
    invoke-static {p0, v5, v7, v0}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v2

    .line 83
    const/16 v6, 0x112

    if-ne v2, v6, :cond_b

    .line 85
    add-int/lit8 v2, v5, 0x8

    invoke-static {p0, v2, v7, v0}, Lcom/instagram/camera/Exif;->pack([BIIZ)I

    move-result v0

    .line 86
    packed-switch v0, :pswitch_data_0

    .line 96
    :pswitch_1
    const-string v0, "CameraExif"

    const-string v2, "Unsupported orientation"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :pswitch_2
    const/16 v1, 0xb4

    goto/16 :goto_0

    .line 92
    :pswitch_3
    const/16 v1, 0x5a

    goto/16 :goto_0

    .line 94
    :pswitch_4
    const/16 v1, 0x10e

    goto/16 :goto_0

    .line 99
    :cond_b
    add-int/lit8 v5, v5, 0xc

    .line 100
    add-int/lit8 v2, v4, -0xc

    move v4, v2

    move v2, v3

    goto :goto_4

    .line 104
    :cond_c
    const-string v0, "CameraExif"

    const-string v2, "Orientation not found"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move v2, v1

    move v4, v0

    goto/16 :goto_2

    :cond_e
    move v4, v2

    move v2, v1

    goto/16 :goto_2

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 110
    const/4 v1, 0x1

    .line 111
    if-eqz p3, :cond_0

    .line 112
    add-int/lit8 v1, p2, -0x1

    add-int/2addr p1, v1

    .line 113
    const/4 v1, -0x1

    .line 116
    :cond_0
    const/4 v2, 0x0

    move v0, p2

    .line 117
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_1

    .line 118
    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 119
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0

    .line 121
    .end local v0           #length:I
    .restart local p2
    :cond_1
    return v2
.end method
