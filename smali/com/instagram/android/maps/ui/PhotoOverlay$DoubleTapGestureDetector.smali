.class Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoOverlay.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;


# direct methods
.method private constructor <init>(Lcom/instagram/android/maps/ui/PhotoOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/maps/ui/PhotoOverlay;Lcom/instagram/android/maps/ui/PhotoOverlay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;-><init>(Lcom/instagram/android/maps/ui/PhotoOverlay;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 382
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #calls: Lcom/instagram/android/maps/ui/PhotoOverlay;->checkLock()Z
    invoke-static {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$300(Lcom/instagram/android/maps/ui/PhotoOverlay;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #getter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnDoubleTapListener:Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;
    invoke-static {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$600(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #getter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnDoubleTapListener:Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;
    invoke-static {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$600(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #getter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;
    invoke-static {v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$500(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/android/maps/ui/events/OnDoubleTapListener;->onDoubleTap(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    :cond_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 364
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #calls: Lcom/instagram/android/maps/ui/PhotoOverlay;->checkLock()Z
    invoke-static {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$300(Lcom/instagram/android/maps/ui/PhotoOverlay;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #getter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnTapListener:Lcom/instagram/android/maps/ui/events/OnTapListener;
    invoke-static {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$400(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/events/OnTapListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #getter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mOnTapListener:Lcom/instagram/android/maps/ui/events/OnTapListener;
    invoke-static {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$400(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/events/OnTapListener;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$DoubleTapGestureDetector;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #getter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mCluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;
    invoke-static {v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$500(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/android/maps/ui/events/OnTapListener;->onTap(Lcom/instagram/android/maps/clustering/QuadtreeCluster;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    :cond_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
