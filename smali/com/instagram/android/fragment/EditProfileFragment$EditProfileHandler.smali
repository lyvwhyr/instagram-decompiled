.class Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;
.super Landroid/os/Handler;
.source "EditProfileFragment.java"


# instance fields
.field private mEditProfileFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/instagram/android/fragment/EditProfileFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 1
    .parameter "editProfileFragment"

    .prologue
    .line 654
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 655
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;->mEditProfileFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 657
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 661
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 663
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;->mEditProfileFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/EditProfileFragment;

    .line 665
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 670
    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->performUsernameCheck()V
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$100(Lcom/instagram/android/fragment/EditProfileFragment;)V

    goto :goto_0
.end method
