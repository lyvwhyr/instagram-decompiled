.class public Lcom/instagram/android/fragment/LikedFeedFragment$LikesActionBar;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "LikedFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/LikedFeedFragment;


# direct methods
.method protected constructor <init>(Lcom/instagram/android/fragment/LikedFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/fragment/LikedFeedFragment$LikesActionBar;->this$0:Lcom/instagram/android/fragment/LikedFeedFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/LikedFeedFragment$LikesActionBar;->this$0:Lcom/instagram/android/fragment/LikedFeedFragment;

    sget v1, Lcom/facebook/k;->likes:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/LikedFeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
