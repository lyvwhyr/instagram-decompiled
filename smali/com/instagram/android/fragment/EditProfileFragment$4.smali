.class Lcom/instagram/android/fragment/EditProfileFragment$4;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$4;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$4;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$300(Lcom/instagram/android/fragment/EditProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$4;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$4;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->crop_text_save:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
