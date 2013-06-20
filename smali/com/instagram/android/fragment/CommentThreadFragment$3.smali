.class Lcom/instagram/android/fragment/CommentThreadFragment$3;
.super Landroid/database/DataSetObserver;
.source "CommentThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$3;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$3;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 96
    return-void
.end method
