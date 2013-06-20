.class Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$2;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

.field final synthetic val$media:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$2;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$2;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$2;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$100(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/support/v4/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$2;->val$media:Lcom/instagram/android/model/Media;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/CommentThreadFragment;->show(Landroid/support/v4/app/p;Lcom/instagram/android/model/Media;Z)V

    .line 224
    return-void
.end method
