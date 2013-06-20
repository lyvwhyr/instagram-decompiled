.class Lcom/instagram/android/fragment/UserOptionsFragment$2;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/menu/MenuItem;

    .line 123
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->find_friends_menu_label:I

    if-ne v1, v4, :cond_1

    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/FindFriendsFragment;-><init>()V

    invoke-static {v0, v1, v6}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->log_out:I

    if-ne v1, v4, :cond_2

    .line 127
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->log_out:I

    new-instance v2, Lcom/instagram/android/fragment/UserOptionsFragment$2$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserOptionsFragment$2$2;-><init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/UserOptionsFragment$2$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserOptionsFragment$2$1;-><init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->posts_you_liked:I

    if-ne v1, v4, :cond_3

    .line 146
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/LikedFeedFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/LikedFeedFragment;-><init>()V

    invoke-static {v0, v1, v6}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->check_for_updates:I

    if-ne v1, v4, :cond_4

    .line 149
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/UserOptionsFragment;->mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->access$000(Lcom/instagram/android/fragment/UserOptionsFragment;)Lcom/instagram/util/AutoUpdateHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/UserOptionsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/AutoUpdateHelper;->forceCheckForNewVersion(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/af;)V

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->change_profile_picture:I

    if-ne v1, v4, :cond_5

    .line 152
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/UserOptionsFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->access$100(Lcom/instagram/android/fragment/UserOptionsFragment;)Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->showDialog()V

    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->save_original_photos:I

    if-ne v1, v4, :cond_7

    .line 155
    sget v1, Lcom/facebook/g;->row_simple_text_checkbox:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 156
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    .line 157
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 158
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/instagram/android/UserPreferences;->setSaveOriginalPhotos(Z)Z

    .line 159
    invoke-virtual {v0, v2}, Lcom/instagram/android/model/menu/MenuItem;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 156
    goto :goto_1

    .line 161
    :cond_7
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->video_feed_auto_play_preference:I

    if-ne v1, v4, :cond_9

    .line 162
    sget v1, Lcom/facebook/g;->row_simple_text_checkbox:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 163
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_8

    .line 164
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/instagram/android/UserPreferences;->setFeedAutoPlayVideos(Z)Z

    .line 166
    invoke-virtual {v0, v2}, Lcom/instagram/android/model/menu/MenuItem;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 163
    goto :goto_2

    .line 168
    :cond_9
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->advanced_features:I

    if-ne v1, v4, :cond_a

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/CameraSettingsFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/CameraSettingsFragment;-><init>()V

    invoke-static {v0, v1, v6}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 171
    :cond_a
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->about:I

    if-ne v1, v4, :cond_b

    .line 172
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/AboutFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/AboutFragment;-><init>()V

    invoke-static {v0, v1, v6}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 174
    :cond_b
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->edit_sharing_settings:I

    if-ne v1, v4, :cond_c

    .line 175
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;-><init>()V

    invoke-static {v0, v1, v6}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 176
    :cond_c
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->push_notification_settings:I

    if-ne v1, v4, :cond_d

    .line 177
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "/push/preferences/"

    invoke-static {v1, v2}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    sget v4, Lcom/facebook/k;->notifications:I

    invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/UserOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/activity/SimpleWebViewActivity;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_d
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->options:I

    if-ne v1, v4, :cond_e

    .line 184
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/DeveloperOptionsFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/DeveloperOptionsFragment;-><init>()V

    invoke-static {v0, v1, v6}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 185
    :cond_e
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->terms_of_service:I

    if-ne v1, v4, :cond_f

    .line 186
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "/legal/terms/"

    invoke-static {v1, v3}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    sget v4, Lcom/facebook/k;->terms_of_service:I

    invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/UserOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/activity/SimpleWebViewActivity;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_f
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->privacy_policy:I

    if-ne v1, v4, :cond_10

    .line 190
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "/legal/privacy/"

    invoke-static {v1, v3}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    sget v4, Lcom/facebook/k;->privacy_policy:I

    invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/UserOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/activity/SimpleWebViewActivity;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_10
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->clear_search_history:I

    if-ne v1, v4, :cond_11

    .line 194
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->yes_im_sure:I

    new-instance v2, Lcom/instagram/android/fragment/UserOptionsFragment$2$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserOptionsFragment$2$3;-><init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    invoke-virtual {v0, v1, v6}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 204
    :cond_11
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v4, Lcom/facebook/k;->report_problem:I

    if-ne v1, v4, :cond_12

    .line 205
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->report_problem:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    sget v5, Lcom/facebook/k;->abuse_or_spam:I

    invoke-virtual {v4, v5}, Lcom/instagram/android/fragment/UserOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    sget v4, Lcom/facebook/k;->send_feedback:I

    invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/UserOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    sget v4, Lcom/facebook/k;->report_problem:I

    invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/UserOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/instagram/android/fragment/UserOptionsFragment$2$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserOptionsFragment$2$4;-><init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    invoke-virtual {v0, v1, v6}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 233
    :cond_12
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v0

    sget v1, Lcom/facebook/k;->instagram_help_center:I

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/"

    iget-object v4, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v4}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/loaderrequest/WebUrlHelper;->addAndroidVersionToUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/UserOptionsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
