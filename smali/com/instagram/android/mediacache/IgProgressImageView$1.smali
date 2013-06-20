.class Lcom/instagram/android/mediacache/IgProgressImageView$1;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/IgProgressImageView;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgProgressImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgProgressImageView$1;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView$1;->this$0:Lcom/instagram/android/mediacache/IgProgressImageView;

    #calls: Lcom/instagram/android/mediacache/IgProgressImageView;->getIgImageView()Lcom/instagram/android/mediacache/IgImageView;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->access$000(Lcom/instagram/android/mediacache/IgProgressImageView;)Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgImageView;->retryCurrentUrl()V

    .line 62
    return-void
.end method
