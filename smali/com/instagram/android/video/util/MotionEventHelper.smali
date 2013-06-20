.class public final Lcom/instagram/android/video/util/MotionEventHelper;
.super Ljava/lang/Object;
.source "MotionEventHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4
    .parameter "e"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 99
    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 100
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 101
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v0

    .line 102
    aget-object v3, v2, v0

    invoke-virtual {p0, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v2
.end method

.method private static getPointerIds(Landroid/view/MotionEvent;)[I
    .locals 4
    .parameter "e"

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 90
    new-array v2, v1, [I

    .line 91
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v2
.end method

.method private static transformAngle(Landroid/graphics/Matrix;F)F
    .locals 7
    .parameter "m"
    .parameter "angleRadians"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide v5, 0x400921fb54442d18L

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 112
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    aput v1, v0, v2

    .line 113
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    neg-float v1, v1

    aput v1, v0, v3

    .line 114
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 117
    aget v1, v0, v2

    float-to-double v1, v1

    aget v0, v0, v3

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 118
    float-to-double v1, v0

    const-wide v3, -0x4006de04abbbd2e8L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 119
    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-float v0, v0

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    float-to-double v1, v0

    const-wide v3, 0x3ff921fb54442d18L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 121
    float-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "e"
    .parameter "m"

    .prologue
    .line 37
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/instagram/android/video/util/MotionEventHelper;->transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/instagram/android/video/util/MotionEventHelper;->transformEventOld(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0
.end method

.method private static transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "e"
    .parameter "m"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 48
    return-object v0
.end method

.method private static transformEventOld(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
    .locals 21
    .parameter "e"
    .parameter "m"

    .prologue
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 57
    invoke-static/range {p0 .. p0}, Lcom/instagram/android/video/util/MotionEventHelper;->getPointerIds(Landroid/view/MotionEvent;)[I

    move-result-object v8

    .line 58
    invoke-static/range {p0 .. p0}, Lcom/instagram/android/video/util/MotionEventHelper;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    .line 68
    array-length v0, v9

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 69
    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v0, v7, :cond_0

    .line 70
    mul-int/lit8 v19, v17, 0x2

    aget-object v20, v9, v17

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 71
    mul-int/lit8 v19, v17, 0x2

    add-int/lit8 v19, v19, 0x1

    aget-object v20, v9, v17

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v20, v0

    aput v20, v18, v19

    .line 69
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 73
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 74
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v0, v7, :cond_1

    .line 75
    aget-object v19, v9, v17

    mul-int/lit8 v20, v17, 0x2

    aget v20, v18, v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 76
    aget-object v19, v9, v17

    mul-int/lit8 v20, v17, 0x2

    add-int/lit8 v20, v20, 0x1

    aget v20, v18, v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 77
    aget-object v19, v9, v17

    aget-object v20, v9, v17

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/instagram/android/video/util/MotionEventHelper;->transformAngle(Landroid/graphics/Matrix;F)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 74
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 81
    :cond_1
    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 85
    return-object v2
.end method
