.class Lcom/instagram/appirater/Appirater$3;
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
    .line 257
    iput-object p1, p0, Lcom/instagram/appirater/Appirater$3;->this$0:Lcom/instagram/appirater/Appirater;

    iput-object p2, p0, Lcom/instagram/appirater/Appirater$3;->val$rateDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$3;->this$0:Lcom/instagram/appirater/Appirater;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/appirater/Appirater;->mDeclinedToRate:Z
    invoke-static {v0, v1}, Lcom/instagram/appirater/Appirater;->access$402(Lcom/instagram/appirater/Appirater;Z)Z

    .line 261
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$3;->this$0:Lcom/instagram/appirater/Appirater;

    #calls: Lcom/instagram/appirater/Appirater;->saveSettings()V
    invoke-static {v0}, Lcom/instagram/appirater/Appirater;->access$200(Lcom/instagram/appirater/Appirater;)V

    .line 262
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$3;->val$rateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 263
    return-void
.end method
