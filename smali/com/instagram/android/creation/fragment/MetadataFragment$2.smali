.class Lcom/instagram/android/creation/fragment/MetadataFragment$2;
.super Landroid/os/Handler;
.source "MetadataFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$2;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$2;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    sget v1, Lcom/facebook/k;->failed_to_detect_location:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$2;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$2;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$200(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$2;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$300(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setEnabled(Z)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
