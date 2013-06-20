.class Lcom/instagram/android/video/ui/LivePreviewTextureView$1$1;
.super Ljava/lang/Object;
.source "LivePreviewTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/video/ui/LivePreviewTextureView$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/ui/LivePreviewTextureView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1$1;->this$1:Lcom/instagram/android/video/ui/LivePreviewTextureView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1$1;->this$1:Lcom/instagram/android/video/ui/LivePreviewTextureView$1;

    iget-object v0, v0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #calls: Lcom/instagram/android/video/ui/LivePreviewTextureView;->showPlayButton()V
    invoke-static {v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$200(Lcom/instagram/android/video/ui/LivePreviewTextureView;)V

    .line 121
    return-void
.end method
