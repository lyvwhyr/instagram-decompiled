.class Lcom/instagram/android/video/gl/GLRenderContext$1;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/gl/GLRenderContext;

.field final synthetic val$r:I


# direct methods
.method constructor <init>(Lcom/instagram/android/video/gl/GLRenderContext;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext$1;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    iput p2, p0, Lcom/instagram/android/video/gl/GLRenderContext$1;->val$r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$1;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->oesCopyFilter:Lcom/instagram/android/video/filters/OESCopyFilter;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->access$100(Lcom/instagram/android/video/gl/GLRenderContext;)Lcom/instagram/android/video/filters/OESCopyFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$1;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mAspectRatio:F
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$000(Lcom/instagram/android/video/gl/GLRenderContext;)F

    move-result v1

    iget v2, p0, Lcom/instagram/android/video/gl/GLRenderContext$1;->val$r:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/filters/OESCopyFilter;->setAspectRatioRotation(FI)V

    .line 131
    return-void
.end method
