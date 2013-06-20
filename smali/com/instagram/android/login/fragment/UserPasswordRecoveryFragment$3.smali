.class Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$3;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$3;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 139
    new-instance v0, Lcom/instagram/android/login/request/SendPasswordResetRequest;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$3;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$3;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    #getter for: Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->resetPasswordCallbacks:Lcom/instagram/api/AbstractApiCallbacks;
    invoke-static {v2}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->access$100(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Lcom/instagram/api/AbstractApiCallbacks;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/login/request/SendPasswordResetRequest;-><init>(Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    iget-object v1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$3;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    #getter for: Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->mUser:Lcom/instagram/android/model/User;
    invoke-static {v1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->access$200(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/request/SendPasswordResetRequest;->performWithUserId(Ljava/lang/String;)V

    .line 140
    return-void
.end method
