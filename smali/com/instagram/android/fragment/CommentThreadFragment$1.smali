.class Lcom/instagram/android/fragment/CommentThreadFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CommentThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$1;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$1;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #getter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$000(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$1;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #getter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$100(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/adapter/CommentThreadAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$1;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #getter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$000(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/CommentThreadAdapter;->setMedia(Lcom/instagram/android/model/Media;)V

    .line 78
    :cond_0
    return-void
.end method
