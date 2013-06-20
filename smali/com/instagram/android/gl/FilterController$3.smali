.class Lcom/instagram/android/gl/FilterController$3;
.super Ljava/lang/Object;
.source "FilterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/gl/FilterController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/gl/FilterController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/android/gl/FilterController$3;->this$0:Lcom/instagram/android/gl/FilterController;

    iput-boolean p2, p0, Lcom/instagram/android/gl/FilterController$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/instagram/android/gl/FilterController$3;->val$enabled:Z

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->setTiltShiftEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/gl/FilterController$3;->this$0:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterController;->getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->requestRender()V

    .line 59
    return-void
.end method
