.class Lcom/instagram/android/mediacache/IgProgressImageView$3;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/IgProgressImageView;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgProgressImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgProgressImageView$3;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 86
    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$3;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setDisplayedChild(I)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$3;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    #getter for: Lcom/instagram/android/mediacache/IgProgressImageView;->mOnLoadListener:Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->access$200(Lcom/instagram/android/mediacache/IgProgressImageView;)Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$3;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    #getter for: Lcom/instagram/android/mediacache/IgProgressImageView;->mOnLoadListener:Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->access$200(Lcom/instagram/android/mediacache/IgProgressImageView;)Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$3;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setDisplayedChild(I)V

    goto :goto_0
.end method
