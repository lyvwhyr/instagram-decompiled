.class Lcom/instagram/android/maps/fragment/GeoGridFragment$6;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 218
    sget v0, Lcom/facebook/h;->action_bar_geo_maps:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 221
    sget v1, Lcom/facebook/g;->action_bar_review_photo_map_done:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;

    iget-object v4, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v4}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->EDIT:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;-><init>(Landroid/app/Activity;Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getMostRecentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 231
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getNumToBeRemoved()I

    move-result v3

    if-lez v3, :cond_1

    .line 232
    sget v3, Lcom/facebook/g;->action_bar_review_photo_map_done:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :goto_1
    sget v3, Lcom/facebook/g;->action_bar_geo_map_cancel:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$1;

    invoke-direct {v4, p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$1;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment$6;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    if-eqz v1, :cond_2

    .line 247
    sget v1, Lcom/facebook/g;->action_bar_geo_map_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :goto_2
    sget v1, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;

    invoke-direct {v3, p0, v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$2;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment$6;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getMostRecentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 264
    sget v1, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :goto_3
    sget v1, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    sget v1, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-object v0

    :cond_0
    move v1, v2

    .line 225
    goto/16 :goto_0

    .line 234
    :cond_1
    sget v3, Lcom/facebook/g;->action_bar_review_photo_map_done:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 249
    :cond_2
    sget v1, Lcom/facebook/g;->action_bar_geo_map_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 266
    :cond_3
    sget v1, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    const-string v0, "%s photos"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    #calls: Lcom/instagram/android/maps/fragment/GeoGridFragment;->getGeoMedia()Ljava/util/List;
    invoke-static {v3}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$200(Lcom/instagram/android/maps/fragment/GeoGridFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getMostRecentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 283
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 279
    goto :goto_0

    :cond_1
    move v0, v1

    .line 283
    goto :goto_1
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method
