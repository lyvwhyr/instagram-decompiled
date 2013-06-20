.class public abstract Lcom/instagram/android/gl/FilterController;
.super Ljava/lang/Object;
.source "FilterController.java"


# static fields
.field public static final RENDER_SIZE_FULL:I = -0x1

.field public static final TAG:Ljava/lang/String; = "FilterController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private queueEventOnFilterView(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/instagram/android/gl/FilterController;->getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method


# virtual methods
.method public abstract getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;
.end method

.method public mirrorMasterTexture()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/instagram/android/gl/FilterController$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/gl/FilterController$6;-><init>(Lcom/instagram/android/gl/FilterController;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/gl/FilterController;->queueEventOnFilterView(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public renderToBitmap(Lcom/instagram/android/gl/FilterController$RenderCallbacks;I)V
    .locals 1
    .parameter "callbacks"
    .parameter "dimen"

    .prologue
    .line 94
    new-instance v0, Lcom/instagram/android/gl/FilterController$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/instagram/android/gl/FilterController$7;-><init>(Lcom/instagram/android/gl/FilterController;ILcom/instagram/android/gl/FilterController$RenderCallbacks;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/gl/FilterController;->queueEventOnFilterView(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/instagram/android/gl/FilterController$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/gl/FilterController$2;-><init>(Lcom/instagram/android/gl/FilterController;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/gl/FilterController;->queueEventOnFilterView(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public requestRenderWithBlurRedraw()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/instagram/android/gl/FilterController$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/gl/FilterController$1;-><init>(Lcom/instagram/android/gl/FilterController;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/gl/FilterController;->queueEventOnFilterView(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public rotateMasterTexture()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/instagram/android/gl/FilterController$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/gl/FilterController$5;-><init>(Lcom/instagram/android/gl/FilterController;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/gl/FilterController;->queueEventOnFilterView(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public setTiltShiftEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 54
    new-instance v0, Lcom/instagram/android/gl/FilterController$3;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/gl/FilterController$3;-><init>(Lcom/instagram/android/gl/FilterController;Z)V

    invoke-direct {p0, v0}, Lcom/instagram/android/gl/FilterController;->queueEventOnFilterView(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public useFilter(I)V
    .locals 1
    .parameter "filterId"

    .prologue
    .line 64
    new-instance v0, Lcom/instagram/android/gl/FilterController$4;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/gl/FilterController$4;-><init>(Lcom/instagram/android/gl/FilterController;I)V

    invoke-direct {p0, v0}, Lcom/instagram/android/gl/FilterController;->queueEventOnFilterView(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
