.class Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

.field final synthetic val$permalink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    iput-object p2, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;->val$permalink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    iget-object v0, v0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$600(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->getWasCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    iget-object v0, v0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$600(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->dismiss()V

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;->val$permalink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    iget-object v1, v1, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$500(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/k;->share:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    :cond_0
    return-void
.end method
