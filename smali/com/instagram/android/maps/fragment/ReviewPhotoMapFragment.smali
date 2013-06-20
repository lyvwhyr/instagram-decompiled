.class public Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;
.implements Lcom/instagram/android/fragment/ScrollToTopFragment/ScrollToTopFragment;


# instance fields
.field private mAdapter:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mIntroIsShowing:Z

.field private mLoadedWithError:Z

.field private mLoading:Z

.field private mMapsEditManagerListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

.field private mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    .line 40
    invoke-static {}, Lcom/instagram/android/maps/clustering/Quadtree;->getGlobalQuadtree()Lcom/instagram/android/maps/clustering/Quadtree;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$1;-><init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mMapsEditManagerListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getAdapter()Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mIntroIsShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->showLoadingErrorIfNecessary()V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->startReviewGeoMediaRequest()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Lcom/instagram/android/maps/clustering/Quadtree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mAdapter:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mLoadedWithError:Z

    return p1
.end method

.method static synthetic access$800(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->setIsLoading(Z)V

    return-void
.end method

.method private getAdapter()Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mAdapter:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mAdapter:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mAdapter:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    return-object v0
.end method

.method private setIsLoading(Z)V
    .locals 3
    .parameter "loading"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mLoading:Z

    .line 154
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mLoading:Z

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 155
    return-void
.end method

.method private showLoadingErrorIfNecessary()V
    .locals 3

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mIntroIsShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mLoadedWithError:Z

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mLoadedWithError:Z

    .line 88
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->popup_review_confirm_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->retry:I

    new-instance v2, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$4;-><init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$3;-><init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 114
    :cond_0
    return-void
.end method

.method public static startFragment(Ljava/lang/String;Landroid/support/v4/app/p;)V
    .locals 2
    .parameter "id"
    .parameter "fragmentManager"

    .prologue
    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    const-string v1, "ARGUMENT_USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-direct {v1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;-><init>()V

    .line 222
    invoke-static {p1, v1, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method private startReviewGeoMediaRequest()V
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lcom/instagram/api/loaderrequest/ReviewGeoMediaRequest;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;

    invoke-direct {v3, p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;-><init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/ReviewGeoMediaRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/ReviewGeoMediaRequest;->perform(Ljava/lang/String;)V

    .line 150
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$6;-><init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getAdapter()Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mMapsEditManagerListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->addListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 68
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->startReviewGeoMediaRequest()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mIntroIsShowing:Z

    .line 71
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/h;->popup_photo_maps_review:I

    sget v3, Lcom/facebook/l;->IgDialogFull:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;II)V

    sget v1, Lcom/facebook/k;->ok_i_understand:I

    new-instance v2, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$2;-><init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 57
    sget v0, Lcom/facebook/h;->layout_listview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mMapsEditManagerListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 173
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroy()V

    .line 174
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mLoading:Z

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 160
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onStart()V

    .line 161
    return-void
.end method

.method public scrollToTop()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method
