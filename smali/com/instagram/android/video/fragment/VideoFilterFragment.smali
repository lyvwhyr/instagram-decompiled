.class public Lcom/instagram/android/video/fragment/VideoFilterFragment;
.super Lcom/instagram/android/video/fragment/VideoFragment;
.source "VideoFilterFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoFilterFragment"


# instance fields
.field private mFilterId:I

.field private mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

.field private mPreviewTextureView:Lcom/instagram/android/video/ui/LivePreviewTextureView;

.field private mSelectedFilterIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoFragment;-><init>()V

    .line 26
    iput v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterId:I

    .line 27
    iput v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mSelectedFilterIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/fragment/VideoFilterFragment;)Lcom/instagram/android/video/ui/LivePreviewTextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mPreviewTextureView:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/video/fragment/VideoFilterFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterId:I

    return p1
.end method

.method static synthetic access$202(Lcom/instagram/android/video/fragment/VideoFilterFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mSelectedFilterIndex:I

    return p1
.end method

.method private startScrubber()V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterId:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setFilterType(I)V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    const-string v2, "pendingMediaKey"

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-direct {v2}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;-><init>()V

    const-string v3, "VideoScrubberFragment"

    invoke-static {v0, v2, v3, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->edit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackButtonPressed(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 32
    sget v0, Lcom/facebook/h;->fragment_video_filter:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    const-string v0, "VideoFilterFragment"

    const-string v1, "View Destroyed"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object v2, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    .line 86
    iput-object v2, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mPreviewTextureView:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    .line 87
    invoke-super {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->onDestroyView()V

    .line 88
    return-void
.end method

.method public onNextButtonPressed(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->startScrubber()V

    .line 38
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mPreviewTextureView:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->pauseRender()V

    .line 93
    invoke-super {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->onPause()V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mPreviewTextureView:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->resumeRender()V

    .line 100
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/instagram/android/video/fragment/VideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    const-string v0, "VideoFilterFragment"

    const-string v1, "View Created"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v1

    .line 56
    sget v0, Lcom/facebook/g;->square_texture_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/LivePreviewTextureView;

    .line 58
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 59
    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getStitchedVideoFilePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 60
    sget v3, Lcom/facebook/g;->play_button:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->setPlayButton(Landroid/view/View;)V

    .line 61
    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->setVideoFiles([Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->square_texture_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/LivePreviewTextureView;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mPreviewTextureView:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    .line 65
    sget v0, Lcom/facebook/g;->fragment_filter_filter_picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/FilterPicker;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    .line 66
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    new-instance v1, Lcom/instagram/android/video/fragment/VideoFilterFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/VideoFilterFragment$1;-><init>(Lcom/instagram/android/video/fragment/VideoFilterFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/FilterPicker;->setOnFilterChangedListener(Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    iget v1, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment;->mSelectedFilterIndex:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/FilterPicker;->setSelectedFilterIndex(I)V

    .line 78
    return-void
.end method
