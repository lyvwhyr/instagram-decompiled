.class Lcom/instagram/android/login/task/LogoutTask$1;
.super Lcom/instagram/android/fragment/ProgressDialogFragment;
.source "LogoutTask.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/task/LogoutTask;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/task/LogoutTask;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/instagram/android/login/task/LogoutTask$1;->this$0:Lcom/instagram/android/login/task/LogoutTask;

    invoke-direct {p0}, Lcom/instagram/android/fragment/ProgressDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getProgressMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/facebook/k;->logging_out:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/task/LogoutTask$1;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
