.class Lcom/instagram/android/creation/fragment/FilterFragment$2;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$2;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$2;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$200(Lcom/instagram/android/creation/fragment/FilterFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$2;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$300(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/TiltShiftManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/gl/TiltShiftManager;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
