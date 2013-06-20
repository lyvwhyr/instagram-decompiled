.class Lcom/instagram/android/creation/fragment/FilterFragment$17;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 621
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$700(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/widget/TiltShiftButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mRotateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1900(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxButton:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$2000(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$17;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mBorderButton:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$2100(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 632
    :cond_1
    return-void
.end method
