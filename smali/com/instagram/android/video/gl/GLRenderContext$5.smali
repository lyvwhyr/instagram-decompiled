.class Lcom/instagram/android/video/gl/GLRenderContext$5;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/gl/GLRenderContext;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/gl/GLRenderContext;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext$5;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$5;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/video/gl/GLRenderContext;->mDrawingOffscreen:Z
    invoke-static {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$702(Lcom/instagram/android/video/gl/GLRenderContext;Z)Z

    .line 414
    return-void
.end method
