.class Lcom/instagram/android/fragment/HashtagFeedFragment$3;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "HashtagFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/HashtagFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$3;->this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$3;->this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
