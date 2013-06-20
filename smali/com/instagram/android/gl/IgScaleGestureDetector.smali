.class public Lcom/instagram/android/gl/IgScaleGestureDetector;
.super Ljava/lang/Object;
.source "IgScaleGestureDetector.java"


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private final mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 176
    iput-object p1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mEdgeSlop:F

    .line 179
    return-void
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 10
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "oldIndex"

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 481
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 482
    const/4 v1, -0x1

    .line 485
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 486
    if-eq v0, p3, :cond_0

    if-eq v0, v3, :cond_0

    .line 487
    iget v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mEdgeSlop:F

    .line 488
    iget v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mRightSlopEdge:F

    .line 489
    iget v6, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mBottomSlopEdge:F

    .line 490
    invoke-static {p1, v0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 491
    invoke-static {p1, v0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 492
    cmpl-float v9, v7, v4

    if-ltz v9, :cond_0

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_0

    cmpg-float v4, v7, v5

    if-gtz v4, :cond_0

    cmpg-float v4, v8, v6

    if-gtz v4, :cond_0

    .line 499
    :goto_1
    return v0

    .line 485
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 506
    if-gez p1, :cond_0

    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    .line 507
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 509
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 516
    if-gez p1, :cond_0

    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    .line 517
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 519
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 585
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 587
    iput-object v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 591
    iput-object v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 593
    :cond_1
    iput-boolean v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    .line 594
    iput-boolean v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    .line 595
    iput v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 596
    iput v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 597
    iput-boolean v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mInvalidGesture:Z

    .line 598
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "curr"

    .prologue
    const/high16 v13, 0x3f00

    const/high16 v1, -0x4080

    .line 523
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 526
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 528
    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrLen:F

    .line 529
    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevLen:F

    .line 530
    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mScaleFactor:F

    .line 532
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 534
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 535
    iget v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 536
    iget v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 537
    iget v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 539
    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 540
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mInvalidGesture:Z

    .line 541
    const-string v0, "ScaleGestureDetector"

    const-string v1, "Invalid MotionEvent stream detected."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    iget-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V

    .line 571
    :cond_2
    :goto_0
    return-void

    .line 548
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 549
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 550
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 551
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 552
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 553
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 554
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 555
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 557
    sub-float v5, v7, v5

    .line 558
    sub-float v6, v8, v6

    .line 559
    sub-float v7, v11, v9

    .line 560
    sub-float v8, v12, v10

    .line 561
    iput v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffX:F

    .line 562
    iput v6, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffY:F

    .line 563
    iput v7, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffX:F

    .line 564
    iput v8, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffY:F

    .line 566
    mul-float v5, v7, v13

    add-float/2addr v5, v9

    iput v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 567
    mul-float v5, v8, v13

    add-float/2addr v5, v10

    iput v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mTimeDelta:J

    .line 569
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrPressure:F

    .line 570
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevPressure:F

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 2

    .prologue
    .line 646
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 647
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffX:F

    .line 648
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffY:F

    .line 649
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrLen:F

    .line 651
    :cond_0
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrLen:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    .prologue
    .line 681
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 682
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffX:F

    .line 683
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffY:F

    .line 684
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevLen:F

    .line 686
    :cond_0
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevLen:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 717
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mScaleFactor:F

    .line 720
    :cond_0
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public hardReset()V
    .locals 2

    .prologue
    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 574
    invoke-direct {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->reset()V

    .line 575
    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffX:F

    .line 576
    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevFingerDiffY:F

    .line 577
    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffX:F

    .line 578
    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrFingerDiffY:F

    .line 579
    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrLen:F

    .line 580
    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevLen:F

    .line 581
    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mScaleFactor:F

    .line 582
    return-void
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v0, -0x1

    const/high16 v12, -0x4080

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 184
    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->reset()V

    .line 189
    :cond_0
    iget-boolean v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mInvalidGesture:Z

    if-eqz v2, :cond_3

    move v4, v3

    :cond_1
    :goto_0
    move v3, v4

    .line 474
    :cond_2
    :goto_1
    return v3

    .line 191
    :cond_3
    iget-boolean v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    if-nez v2, :cond_19

    .line 192
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 194
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 195
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-direct {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->reset()V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 208
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mEdgeSlop:F

    sub-float/2addr v2, v5

    iput v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mRightSlopEdge:F

    .line 209
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mEdgeSlop:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mBottomSlopEdge:F

    .line 211
    iget-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 212
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 213
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mTimeDelta:J

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 216
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 217
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 218
    if-ltz v1, :cond_5

    if-ne v1, v5, :cond_26

    .line 220
    :cond_5
    if-ne v1, v5, :cond_8

    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 223
    :goto_3
    iput-boolean v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    .line 225
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 231
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mEdgeSlop:F

    .line 232
    iget v6, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mRightSlopEdge:F

    .line 233
    iget v7, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mBottomSlopEdge:F

    .line 234
    invoke-static {p1, v0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 235
    invoke-static {p1, v0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 236
    invoke-static {p1, v5}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 237
    invoke-static {p1, v5}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 239
    cmpg-float v11, v2, v1

    if-ltz v11, :cond_6

    cmpg-float v11, v8, v1

    if-ltz v11, :cond_6

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_6

    cmpl-float v2, v8, v7

    if-lez v2, :cond_9

    :cond_6
    move v2, v4

    .line 241
    :goto_4
    cmpg-float v8, v9, v1

    if-ltz v8, :cond_7

    cmpg-float v1, v10, v1

    if-ltz v1, :cond_7

    cmpl-float v1, v9, v6

    if-gtz v1, :cond_7

    cmpl-float v1, v10, v7

    if-lez v1, :cond_a

    :cond_7
    move v1, v4

    .line 244
    :goto_5
    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 245
    iput v12, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 246
    iput v12, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    .line 247
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 220
    :cond_8
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    goto :goto_2

    :cond_9
    move v2, v3

    .line 239
    goto :goto_4

    :cond_a
    move v1, v3

    .line 241
    goto :goto_5

    .line 248
    :cond_b
    if-eqz v2, :cond_c

    .line 249
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 250
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    .line 251
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 252
    :cond_c
    if-eqz v1, :cond_d

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    .line 255
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 257
    :cond_d
    iput-boolean v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    .line 258
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 264
    :pswitch_4
    iget-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    if-eqz v0, :cond_1

    .line 266
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mEdgeSlop:F

    .line 267
    iget v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mRightSlopEdge:F

    .line 268
    iget v7, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mBottomSlopEdge:F

    .line 269
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 270
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 272
    invoke-static {p1, v6}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 273
    invoke-static {p1, v6}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 274
    invoke-static {p1, v2}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 275
    invoke-static {p1, v2}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 277
    cmpg-float v11, v1, v0

    if-ltz v11, :cond_e

    cmpg-float v11, v8, v0

    if-ltz v11, :cond_e

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_e

    cmpl-float v1, v8, v7

    if-lez v1, :cond_10

    :cond_e
    move v1, v4

    .line 279
    :goto_6
    cmpg-float v8, v9, v0

    if-ltz v8, :cond_f

    cmpg-float v0, v10, v0

    if-ltz v0, :cond_f

    cmpl-float v0, v9, v5

    if-gtz v0, :cond_f

    cmpl-float v0, v10, v7

    if-lez v0, :cond_11

    :cond_f
    move v0, v4

    .line 282
    :goto_7
    if-eqz v1, :cond_25

    .line 284
    iget v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p1, v5, v6}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v5

    .line 285
    if-ltz v5, :cond_25

    .line 287
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 288
    invoke-static {p1, v5}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    .line 289
    invoke-static {p1, v5}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move v6, v5

    move v5, v3

    .line 294
    :goto_8
    if-eqz v0, :cond_24

    .line 296
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-direct {p0, p1, v1, v2}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v1

    .line 297
    if-ltz v1, :cond_24

    .line 299
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 300
    invoke-static {p1, v1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    .line 301
    invoke-static {p1, v1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move v0, v3

    .line 306
    :goto_9
    if-eqz v5, :cond_12

    if-eqz v0, :cond_12

    .line 307
    iput v12, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 308
    iput v12, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    :cond_10
    move v1, v3

    .line 277
    goto :goto_6

    :cond_11
    move v0, v3

    .line 279
    goto :goto_7

    .line 309
    :cond_12
    if-eqz v5, :cond_13

    .line 310
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 311
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 312
    :cond_13
    if-eqz v0, :cond_14

    .line 313
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 314
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 316
    :cond_14
    iput-boolean v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    .line 317
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 323
    :pswitch_5
    iget-boolean v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mSloppyGesture:Z

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 326
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 328
    if-le v1, v6, :cond_16

    .line 329
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    if-ne v5, v0, :cond_15

    .line 330
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p1, v0, v2}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 331
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_0

    .line 332
    :cond_15
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    if-ne v5, v0, :cond_1

    .line 333
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-direct {p0, p1, v0, v2}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 334
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_0

    .line 338
    :cond_16
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    if-ne v5, v1, :cond_17

    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    :goto_a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 340
    if-gez v1, :cond_18

    .line 341
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mInvalidGesture:Z

    .line 342
    const-string v0, "ScaleGestureDetector"

    const-string v1, "Invalid MotionEvent stream detected."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    iget-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v0, :cond_2

    .line 344
    const-string v0, "IgScaleGestureDetector"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V

    goto/16 :goto_1

    .line 338
    :cond_17
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    goto :goto_a

    .line 350
    :cond_18
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 352
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    .line 353
    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 354
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 355
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 362
    :cond_19
    packed-switch v1, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 452
    :pswitch_7
    invoke-direct {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 365
    :pswitch_8
    iget-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V

    .line 366
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 367
    iget v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 368
    invoke-direct {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->reset()V

    .line 370
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 371
    iget-boolean v5, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    if-eqz v5, :cond_1c

    :goto_b
    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 373
    iput-boolean v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    .line 375
    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 376
    if-ltz v1, :cond_1a

    iget v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    iget v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    if-ne v2, v3, :cond_1b

    .line 378
    :cond_1a
    iget v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    iget v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    if-ne v2, v3, :cond_1d

    :goto_c
    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 383
    :cond_1b
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 385
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    :cond_1c
    move v1, v2

    .line 371
    goto :goto_b

    .line 378
    :cond_1d
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    goto :goto_c

    .line 390
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 392
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 395
    if-le v0, v6, :cond_22

    .line 396
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    if-ne v2, v0, :cond_20

    .line 397
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 398
    if-ltz v0, :cond_1f

    .line 399
    iget-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 401
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    .line 402
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 403
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 404
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    move v0, v3

    :goto_d
    move v3, v0

    .line 421
    :cond_1e
    :goto_e
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 422
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 423
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 428
    :goto_f
    if-eqz v3, :cond_1

    .line 430
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 433
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    if-ne v2, v0, :cond_23

    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 434
    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 435
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusX:F

    .line 436
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mFocusY:F

    .line 438
    iget-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V

    .line 439
    invoke-direct {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->reset()V

    .line 440
    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    .line 441
    iput-boolean v4, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_0

    :cond_1f
    move v0, v4

    .line 406
    goto :goto_d

    .line 408
    :cond_20
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    if-ne v2, v0, :cond_1e

    .line 409
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 410
    if-ltz v0, :cond_21

    .line 411
    iget-object v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V

    .line 412
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId1:I

    .line 413
    iput-boolean v3, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActive0MostRecent:Z

    .line 414
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 415
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 416
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mGestureInProgress:Z

    goto :goto_e

    :cond_21
    move v3, v4

    .line 418
    goto :goto_e

    :cond_22
    move v3, v4

    .line 425
    goto :goto_f

    .line 433
    :cond_23
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mActiveId0:I

    goto :goto_10

    .line 447
    :pswitch_a
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V

    .line 448
    invoke-direct {p0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 456
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 461
    iget v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mListener:Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z

    move-result v0

    .line 464
    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 466
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/gl/IgScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_24
    move v1, v2

    goto/16 :goto_9

    :cond_25
    move v5, v1

    goto/16 :goto_8

    :cond_26
    move v0, v1

    goto/16 :goto_3

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 362
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
