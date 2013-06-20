.class final Lcom/instagram/android/fragment/HashtagFeedFragment$5;
.super Ljava/lang/Object;
.source "HashtagFeedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$fragmentManager:Landroid/support/v4/app/p;

.field final synthetic val$hashtagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$5;->val$hashtagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$5;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$5;->val$hashtagName:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$5;->val$fragmentManager:Landroid/support/v4/app/p;

    #calls: Lcom/instagram/android/fragment/HashtagFeedFragment;->showFeed(Ljava/lang/String;Landroid/support/v4/app/p;)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/HashtagFeedFragment;->access$000(Ljava/lang/String;Landroid/support/v4/app/p;)V

    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    return-void
.end method
