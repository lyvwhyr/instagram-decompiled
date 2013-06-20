.class Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$2;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mOpenGraphActionRequest:Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$300(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;

    move-result-object v2

    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;->perform(IZ)V

    .line 106
    return-void

    :cond_0
    move v0, v1

    .line 105
    goto :goto_0
.end method
