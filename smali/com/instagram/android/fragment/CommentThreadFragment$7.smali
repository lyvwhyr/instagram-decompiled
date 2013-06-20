.class Lcom/instagram/android/fragment/CommentThreadFragment$7;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$7;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 228
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$7;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->validate()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$200(Lcom/instagram/android/fragment/CommentThreadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$7;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->sendCommentFromTextView(Landroid/widget/TextView;)V
    invoke-static {v0, p1}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$400(Lcom/instagram/android/fragment/CommentThreadFragment;Landroid/widget/TextView;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$7;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
