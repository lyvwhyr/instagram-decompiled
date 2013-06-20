.class Lcom/instagram/android/fragment/MainFeedFragment$5;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$5;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$5;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/instagram/android/fragment/MainFeedFragment;->mLoadingDefaultContent:Z

    .line 364
    return-void
.end method
