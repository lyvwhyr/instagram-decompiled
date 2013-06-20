.class public Lcom/instagram/android/creation/util/RotateUtil;
.super Ljava/lang/Object;
.source "RotateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExifRotationPhotoCrop(IIIZIII)Landroid/graphics/Rect;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "exifOrientation"
    .parameter "mirrored"
    .parameter "smallestDimension"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    const/4 v1, 0x0

    .line 17
    if-eqz p3, :cond_0

    .line 18
    sparse-switch p2, :sswitch_data_0

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    :goto_0
    return-object v0

    .line 21
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, p6, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 28
    :cond_0
    sparse-switch p2, :sswitch_data_1

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 31
    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, p6, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 18
    nop

    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 28
    :sswitch_data_1
    .sparse-switch
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static getNormalizedPhotoCrop(IIIZIII)Landroid/graphics/Rect;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "cameraRotatation"
    .parameter "mirrored"
    .parameter "smallestDimension"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    const/4 v1, 0x0

    .line 43
    if-eqz p3, :cond_0

    .line 44
    sparse-switch p2, :sswitch_data_0

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    :goto_0
    return-object v0

    .line 46
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, p6, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 49
    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 55
    :cond_0
    sparse-switch p2, :sswitch_data_1

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 57
    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, v1, p0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 59
    :sswitch_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, p6, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 55
    :sswitch_data_1
    .sparse-switch
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
