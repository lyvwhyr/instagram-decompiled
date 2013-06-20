.class Lcom/instagram/android/creation/fragment/MetadataFragment$5;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 221
    if-eqz p2, :cond_2

    .line 223
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #calls: Lcom/instagram/android/creation/fragment/MetadataFragment;->hasLocation()Z
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$600(Lcom/instagram/android/creation/fragment/MetadataFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #calls: Lcom/instagram/android/creation/fragment/MetadataFragment;->requestLocation()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$700(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    .line 227
    :cond_0
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->hasSeenPhotoMapEducation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #calls: Lcom/instagram/android/creation/fragment/MetadataFragment;->dismissKeyboard()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$800(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    .line 230
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/h;->popup_photo_maps_confirm_geotag:I

    sget v3, Lcom/facebook/l;->IgDialogFull:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;II)V

    sget v1, Lcom/facebook/k;->ok_i_understand:I

    invoke-virtual {v0, v1, v4}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 238
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/UserPreferences;->setHasSeenPhotoMapEducation(Z)Z

    .line 244
    :cond_1
    :goto_0
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/UserPreferences;->setHasGeotagEnabled(Z)Z

    .line 245
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #calls: Lcom/instagram/android/creation/fragment/MetadataFragment;->configureGeoViewState()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$900(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    .line 246
    return-void

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #calls: Lcom/instagram/android/creation/fragment/MetadataFragment;->setLocation(Landroid/location/Location;)V
    invoke-static {v0, v4}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$100(Lcom/instagram/android/creation/fragment/MetadataFragment;Landroid/location/Location;)V

    .line 242
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$5;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0, v4}, Lcom/instagram/android/creation/fragment/MetadataFragment;->setVenue(Lcom/instagram/android/location/Venue;)V

    goto :goto_0
.end method
