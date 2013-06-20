.class Lcom/instagram/android/creation/fragment/FilterFragment$11;
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
    .line 411
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$11;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$11;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderMode(I)V

    .line 415
    return-void
.end method
