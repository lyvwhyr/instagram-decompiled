.class final Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/MediaOptionsButton;


# direct methods
.method private constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton;Lcom/instagram/android/widget/MediaOptionsButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 130
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #calls: Lcom/instagram/android/widget/MediaOptionsButton;->getMenuOptions()[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$300(Lcom/instagram/android/widget/MediaOptionsButton;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    .line 131
    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-virtual {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    sget v2, Lcom/facebook/k;->delete_media:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$500(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->confirm_media_deletion_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v2, :cond_0

    sget v0, Lcom/facebook/k;->delete_this_video_question:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->delete_media:I

    new-instance v2, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$2;-><init>(Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dont_delete:I

    new-instance v2, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$1;-><init>(Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 179
    :goto_1
    return-void

    .line 134
    :cond_0
    sget v0, Lcom/facebook/k;->delete_this_photo_question:I

    goto :goto_0

    .line 154
    :cond_1
    sget v2, Lcom/facebook/k;->share:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    new-instance v1, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    invoke-direct {v1}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;-><init>()V

    #setter for: Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    invoke-static {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$602(Lcom/instagram/android/widget/MediaOptionsButton;Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    .line 156
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$600(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->setCancelable(Z)V

    .line 157
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$600(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$700(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->show(Landroid/support/v4/app/p;)V

    .line 158
    new-instance v0, Lcom/instagram/api/loaderrequest/PermalinkRequest;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/instagram/android/widget/MediaOptionsButton;->access$500(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mLoaderManager:Landroid/support/v4/app/af;
    invoke-static {v3}, Lcom/instagram/android/widget/MediaOptionsButton;->access$800(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/support/v4/app/af;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;

    iget-object v5, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;Lcom/instagram/android/widget/MediaOptionsButton$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/PermalinkRequest;-><init>(Lcom/instagram/android/model/Media;Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 159
    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/PermalinkRequest;->perform()V

    goto :goto_1

    .line 160
    :cond_2
    sget v2, Lcom/facebook/k;->report_inappropriate:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$500(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/activity/SimpleWebViewActivity;->showReportInappropriate(Landroid/content/Context;Lcom/instagram/android/model/Media;)V

    goto :goto_1

    .line 162
    :cond_3
    sget v2, Lcom/facebook/k;->flag_reason_remove_from_popular:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$500(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mLoaderManager:Landroid/support/v4/app/af;
    invoke-static {v2}, Lcom/instagram/android/widget/MediaOptionsButton;->access$800(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v3}, Lcom/instagram/android/widget/MediaOptionsButton;->access$700(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/support/v4/app/p;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/FlagHelper;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;)V

    .line 164
    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/FlagHelper;->flagRemoveFromPopular(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_4
    sget v2, Lcom/facebook/k;->add_people:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v2, "media_id"

    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v3}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "media_url"

    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v3}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getSizedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "people_tags"

    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v3}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 171
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 174
    :cond_5
    sget v2, Lcom/facebook/k;->photo_options:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    new-instance v0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-virtual {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mLoaderManager:Landroid/support/v4/app/af;
    invoke-static {v2}, Lcom/instagram/android/widget/MediaOptionsButton;->access$800(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/support/v4/app/af;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;)V

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->showPhotosOfYouDialog(Lcom/instagram/android/model/Media;)V

    goto/16 :goto_1

    .line 177
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Menu item click not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
