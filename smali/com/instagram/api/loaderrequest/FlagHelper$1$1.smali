.class Lcom/instagram/api/loaderrequest/FlagHelper$1$1;
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
    .line 33
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$1;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$1;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$000(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$1;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    iget-object v1, v1, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mFlagType:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;
    invoke-static {v1}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$100(Lcom/instagram/api/loaderrequest/FlagHelper;)Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->getSuccessMessageResourceId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    return-void
.end method
