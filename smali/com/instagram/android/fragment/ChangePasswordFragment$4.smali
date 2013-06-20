.class Lcom/instagram/android/fragment/ChangePasswordFragment$4;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$4;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 84
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$4;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #getter for: Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$200(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$4;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #calls: Lcom/instagram/android/fragment/ChangePasswordFragment;->saveEdits()V
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$000(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
