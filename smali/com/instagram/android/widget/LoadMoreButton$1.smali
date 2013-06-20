.class Lcom/instagram/android/widget/LoadMoreButton$1;
.super Ljava/lang/Object;
.source "LoadMoreButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/LoadMoreButton;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/LoadMoreButton;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/instagram/android/widget/LoadMoreButton$1;->this$0:Lcom/instagram/android/widget/LoadMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/widget/LoadMoreButton$1;->this$0:Lcom/instagram/android/widget/LoadMoreButton;

    iget-object v0, v0, Lcom/instagram/android/widget/LoadMoreButton;->mLoadMoreInterface:Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;

    invoke-interface {v0}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->loadMore()V

    .line 105
    iget-object v0, p0, Lcom/instagram/android/widget/LoadMoreButton$1;->this$0:Lcom/instagram/android/widget/LoadMoreButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/LoadMoreButton;->setDisplayedChild(I)V

    .line 106
    return-void
.end method
