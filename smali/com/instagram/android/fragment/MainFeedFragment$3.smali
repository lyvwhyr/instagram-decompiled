.class Lcom/instagram/android/fragment/MainFeedFragment$3;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;

.field final synthetic val$epochWhenCalled:J


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$3;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iput-wide p2, p0, Lcom/instagram/android/fragment/MainFeedFragment$3;->val$epochWhenCalled:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$3;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getCachedHomeFeedFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$3;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iget-wide v2, p0, Lcom/instagram/android/fragment/MainFeedFragment$3;->val$epochWhenCalled:J

    #calls: Lcom/instagram/android/fragment/MainFeedFragment;->readFromCache(Ljava/io/File;J)V
    invoke-static {v1, v0, v2, v3}, Lcom/instagram/android/fragment/MainFeedFragment;->access$400(Lcom/instagram/android/fragment/MainFeedFragment;Ljava/io/File;J)V

    .line 294
    const-string v0, "MainFeedFragment"

    const-string v1, "Loaded from cached file."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const-string v0, "MainFeedFragment"

    const-string v1, "Error reading from cached file."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
