.class Lcom/instagram/android/activity/XAuthActivity$2;
.super Ljava/lang/Object;
.source "XAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/XAuthActivity;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/XAuthActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/activity/XAuthActivity$2;->this$0:Lcom/instagram/android/activity/XAuthActivity;

    iput-object p2, p0, Lcom/instagram/android/activity/XAuthActivity$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/activity/XAuthActivity$2;->val$errorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/fragment/AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/instagram/android/fragment/AlertDialogFragment;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/instagram/android/activity/XAuthActivity$2;->this$0:Lcom/instagram/android/activity/XAuthActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/XAuthActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "alertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 50
    return-void
.end method
