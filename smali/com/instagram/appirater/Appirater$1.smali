.class Lcom/instagram/appirater/Appirater$1;
.super Ljava/lang/Object;
.source "Appirater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/appirater/Appirater;

.field final synthetic val$rateDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/instagram/appirater/Appirater;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/instagram/appirater/Appirater$1;->this$0:Lcom/instagram/appirater/Appirater;

    iput-object p2, p0, Lcom/instagram/appirater/Appirater$1;->val$rateDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 238
    const-string v0, "market://details?id=%s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/appirater/Appirater$1;->this$0:Lcom/instagram/appirater/Appirater;

    #getter for: Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/instagram/appirater/Appirater;->access$000(Lcom/instagram/appirater/Appirater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/instagram/appirater/Appirater$1;->this$0:Lcom/instagram/appirater/Appirater;

    #getter for: Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/appirater/Appirater;->access$000(Lcom/instagram/appirater/Appirater;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$1;->this$0:Lcom/instagram/appirater/Appirater;

    #setter for: Lcom/instagram/appirater/Appirater;->mRatedCurrentVersion:Z
    invoke-static {v0, v4}, Lcom/instagram/appirater/Appirater;->access$102(Lcom/instagram/appirater/Appirater;Z)Z

    .line 242
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$1;->this$0:Lcom/instagram/appirater/Appirater;

    #calls: Lcom/instagram/appirater/Appirater;->saveSettings()V
    invoke-static {v0}, Lcom/instagram/appirater/Appirater;->access$200(Lcom/instagram/appirater/Appirater;)V

    .line 244
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$1;->val$rateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    return-void
.end method
