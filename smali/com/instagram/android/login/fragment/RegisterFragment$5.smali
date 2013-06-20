.class Lcom/instagram/android/login/fragment/RegisterFragment$5;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$5;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$5;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$800(Lcom/instagram/android/login/fragment/RegisterFragment;)Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->showDialog()V

    .line 292
    return-void
.end method
