.class Lcom/instagram/android/creation/fragment/FilterFragment$16;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$16;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 497
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftFadeInMaskHighlight()V

    .line 498
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$16;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$16$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$16$1;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment$16;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 504
    return-void
.end method
