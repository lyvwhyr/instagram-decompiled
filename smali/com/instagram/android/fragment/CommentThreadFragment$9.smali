.class Lcom/instagram/android/fragment/CommentThreadFragment$9;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$9;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 253
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$9;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #getter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mIsEditing:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$500(Lcom/instagram/android/fragment/CommentThreadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$9;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->toggleEditView()V
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$600(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    .line 256
    :cond_0
    return-void
.end method
