.class public Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter;
.super Ljava/lang/Object;
.source "LoadMoreRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static bindView(Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)V
    .locals 2
    .parameter "holder"
    .parameter "loadMoreInterface"

    .prologue
    .line 29
    const-string v0, "LoadMoreRowAdapter"

    const-string v1, "binding"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    #getter for: Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;->button:Lcom/instagram/android/widget/LoadMoreButton;
    invoke-static {p0}, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;->access$000(Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;)Lcom/instagram/android/widget/LoadMoreButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/LoadMoreButton;->bind(Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)V

    .line 31
    return-void
.end method

.method public static newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 19
    const-string v0, "LoadMoreRowAdapter"

    const-string v1, "new view"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_load_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;-><init>()V

    .line 22
    sget v0, Lcom/facebook/g;->row_load_more_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/LoadMoreButton;

    #setter for: Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;->button:Lcom/instagram/android/widget/LoadMoreButton;
    invoke-static {v2, v0}, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;->access$002(Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;Lcom/instagram/android/widget/LoadMoreButton;)Lcom/instagram/android/widget/LoadMoreButton;

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    return-object v1
.end method
