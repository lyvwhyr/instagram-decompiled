.class Lcom/instagram/appirater/Appirater$2;
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
    .line 248
    iput-object p1, p0, Lcom/instagram/appirater/Appirater$2;->this$0:Lcom/instagram/appirater/Appirater;

    iput-object p2, p0, Lcom/instagram/appirater/Appirater$2;->val$rateDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$2;->this$0:Lcom/instagram/appirater/Appirater;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I
    invoke-static {v0, v1}, Lcom/instagram/appirater/Appirater;->access$302(Lcom/instagram/appirater/Appirater;I)I

    .line 252
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$2;->this$0:Lcom/instagram/appirater/Appirater;

    #calls: Lcom/instagram/appirater/Appirater;->saveSettings()V
    invoke-static {v0}, Lcom/instagram/appirater/Appirater;->access$200(Lcom/instagram/appirater/Appirater;)V

    .line 253
    iget-object v0, p0, Lcom/instagram/appirater/Appirater$2;->val$rateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 254
    return-void
.end method
