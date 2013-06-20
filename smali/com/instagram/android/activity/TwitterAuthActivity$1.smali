.class Lcom/instagram/android/activity/TwitterAuthActivity$1;
.super Ljava/lang/Object;
.source "TwitterAuthActivity.java"

# interfaces
.implements Lcom/instagram/twitter/TwitterXAuth$Listener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

.field final synthetic val$dialog:Lcom/instagram/android/widget/IgProgressDialog;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/TwitterAuthActivity;Lcom/instagram/android/widget/IgProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    iput-object p2, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->val$dialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/instagram/twitter/TwitterAccount;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->val$dialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 39
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    #getter for: Lcom/instagram/android/activity/TwitterAuthActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->access$000(Lcom/instagram/android/activity/TwitterAuthActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Twitter login was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "unsuccessful!"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez p1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/k;->service_login_error:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    invoke-virtual {v5}, Lcom/instagram/android/activity/TwitterAuthActivity;->getServiceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->showAlertDialog(Ljava/lang/String;)V

    .line 55
    :goto_1
    return-void

    .line 39
    :cond_0
    const-string v0, "a success."

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    sget v1, Lcom/facebook/g;->followInstagram:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    invoke-static {p1}, Lcom/instagram/twitter/TwitterService;->followInstagram(Lcom/instagram/twitter/TwitterAccount;)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->setResult(I)V

    .line 53
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity$1;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->finish()V

    goto :goto_1
.end method
