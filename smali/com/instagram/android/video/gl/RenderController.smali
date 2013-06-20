.class public abstract Lcom/instagram/android/video/gl/RenderController;
.super Ljava/lang/Object;
.source "RenderController.java"


# instance fields
.field private mGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;


# direct methods
.method public constructor <init>(Lcom/instagram/android/video/gl/GLRenderContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/instagram/android/video/gl/RenderController;->mGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    .line 10
    return-void
.end method


# virtual methods
.method protected final getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/instagram/android/video/gl/RenderController;->mGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    return-object v0
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public postRender()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public preInit()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public preRender()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
