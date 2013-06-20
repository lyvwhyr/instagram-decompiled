.class Lcom/instagram/android/creation/fragment/MetadataFragment$6;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$6;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$6;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$200(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$6;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$200(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 264
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
