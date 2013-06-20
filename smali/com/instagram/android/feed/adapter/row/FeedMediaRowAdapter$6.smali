.class Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$6;
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
    .line 406
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$6;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$6;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 409
    new-instance v0, Lcom/instagram/util/FragmentNavigator;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$6;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$100(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/support/v4/app/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$6;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/util/FragmentNavigator;->toProfile(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    .line 410
    return-void
.end method
