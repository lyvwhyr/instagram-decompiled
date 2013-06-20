.class Lcom/instagram/android/gl/FilterController$4;
.super Ljava/lang/Object;
.source "FilterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/gl/FilterController;

.field final synthetic val$filterId:I


# direct methods
.method constructor <init>(Lcom/instagram/android/gl/FilterController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/gl/FilterController$4;->this$0:Lcom/instagram/android/gl/FilterController;

    iput p2, p0, Lcom/instagram/android/gl/FilterController$4;->val$filterId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/instagram/android/gl/FilterController$4;->val$filterId:I

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->useFilter(I)V

    .line 68
    iget-object v0, p0, Lcom/instagram/android/gl/FilterController$4;->this$0:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterController;->getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->requestRender()V

    .line 69
    return-void
.end method
