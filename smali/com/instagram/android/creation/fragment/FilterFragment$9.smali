.class Lcom/instagram/android/creation/fragment/FilterFragment$9;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$9;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$9;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$900(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterController;->rotateMasterTexture()V

    .line 361
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$9;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getTiltShiftEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$9;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$300(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/TiltShiftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/TiltShiftManager;->rotate()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$9;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$9;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1400(Lcom/instagram/android/creation/fragment/FilterFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1402(Lcom/instagram/android/creation/fragment/FilterFragment;I)I

    .line 365
    return-void
.end method
