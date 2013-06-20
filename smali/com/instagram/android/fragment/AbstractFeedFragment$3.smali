.class Lcom/instagram/android/fragment/AbstractFeedFragment$3;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$3;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshed()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$3;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$3$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$3$1;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method
