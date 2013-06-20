.class Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;
.super Ljava/lang/Object;
.source "PhotosOfYouFragment.java"

# interfaces
.implements Lcom/facebook/content/b;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    const/4 v1, 0x1

    new-instance v2, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;

    iget-object v3, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$PhotosOfYouRequestCallbacks;-><init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;Lcom/instagram/android/people/fragment/PhotosOfYouFragment$1;)V

    #calls: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$100(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 72
    return-void
.end method
