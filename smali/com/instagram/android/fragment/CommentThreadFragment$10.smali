.class Lcom/instagram/android/fragment/CommentThreadFragment$10;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$10;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$10;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 263
    return-void
.end method
