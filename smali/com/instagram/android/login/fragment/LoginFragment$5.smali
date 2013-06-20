.class Lcom/instagram/android/login/fragment/LoginFragment$5;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LoginFragment$5;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 191
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$5;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_fragment_login_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$5;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    #calls: Lcom/instagram/android/login/fragment/LoginFragment;->doLogin()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->access$000(Lcom/instagram/android/login/fragment/LoginFragment;)V

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
