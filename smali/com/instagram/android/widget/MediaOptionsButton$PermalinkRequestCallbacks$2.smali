.class Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    iget-object v0, v0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$600(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->dismiss()V

    .line 238
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    iget-object v1, v1, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$500(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2$1;-><init>(Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 247
    return-void
.end method
