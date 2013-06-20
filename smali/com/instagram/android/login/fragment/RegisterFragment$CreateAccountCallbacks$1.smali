.class Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks$1;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->navigateToNextFragmentAfterSignUpWasSuccessful()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$2100(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    .line 665
    return-void
.end method
