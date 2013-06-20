.class Lcom/instagram/android/fragment/AbstractFeedFragment$3$1;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$3;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$3$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$3$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$3;

    iget-object v0, v0, Lcom/instagram/android/fragment/AbstractFeedFragment$3;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$3$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$3;

    iget-object v0, v0, Lcom/instagram/android/fragment/AbstractFeedFragment$3;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->scrollToTop()V

    .line 170
    :cond_0
    return-void
.end method
