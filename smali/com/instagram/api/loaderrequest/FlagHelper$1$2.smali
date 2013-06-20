.class Lcom/instagram/api/loaderrequest/FlagHelper$1$2;
.super Ljava/lang/Object;
.source "FlagHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$2;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$2;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    iget-object v1, v1, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$000(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->could_not_submit_flag:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/api/loaderrequest/FlagHelper$1$2$1;

    invoke-direct {v2, p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1$2$1;-><init>(Lcom/instagram/api/loaderrequest/FlagHelper$1$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 57
    return-void
.end method
