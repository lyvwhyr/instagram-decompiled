.class Lcom/instagram/android/gl/FilterController$7;
.super Ljava/lang/Object;
.source "FilterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/gl/FilterController;

.field final synthetic val$callbacks:Lcom/instagram/android/gl/FilterController$RenderCallbacks;

.field final synthetic val$dimen:I


# direct methods
.method constructor <init>(Lcom/instagram/android/gl/FilterController;ILcom/instagram/android/gl/FilterController$RenderCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/instagram/android/gl/FilterController$7;->this$0:Lcom/instagram/android/gl/FilterController;

    iput p2, p0, Lcom/instagram/android/gl/FilterController$7;->val$dimen:I

    iput-object p3, p0, Lcom/instagram/android/gl/FilterController$7;->val$callbacks:Lcom/instagram/android/gl/FilterController$RenderCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    .line 100
    iget-object v0, p0, Lcom/instagram/android/gl/FilterController$7;->this$0:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterController;->getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getHasAdvancedResizeEnabled()Z

    move-result v0

    .line 102
    iget v1, p0, Lcom/instagram/android/gl/FilterController$7;->val$dimen:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 103
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getIsLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/16 v1, 0x400

    invoke-static {v1, v0}, Lcom/instagram/android/gl/NativeBridge;->renderBuffer(IZ)I

    move-result v0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/gl/FilterController$7;->this$0:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v1}, Lcom/instagram/android/gl/FilterController;->getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/gl/FilterController$7$1;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/gl/FilterController$7$1;-><init>(Lcom/instagram/android/gl/FilterController$7;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->renderFullSizeBuffer()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    iget v1, p0, Lcom/instagram/android/gl/FilterController$7;->val$dimen:I

    invoke-static {v1, v0}, Lcom/instagram/android/gl/NativeBridge;->renderBuffer(IZ)I

    move-result v0

    goto :goto_0
.end method
