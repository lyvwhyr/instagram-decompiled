.class Lcom/instagram/android/mediacache/IgProgressImageView$2;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/IgProgressImageView;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgProgressImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgProgressImageView$2;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$2;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getDisplayedChild()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$2;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setDisplayedChild(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$2;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    #calls: Lcom/instagram/android/mediacache/IgProgressImageView;->getProgressBar()Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->access$100(Lcom/instagram/android/mediacache/IgProgressImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    return-void
.end method
