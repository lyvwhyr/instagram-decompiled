.class Lcom/instagram/android/fragment/CommentThreadFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "CommentThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$2;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$2;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->setSelection(I)V

    .line 86
    return-void
.end method
