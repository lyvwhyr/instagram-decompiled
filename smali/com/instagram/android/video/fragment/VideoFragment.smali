.class public abstract Lcom/instagram/android/video/fragment/VideoFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "VideoFragment.java"


# static fields
.field public static final ARGUMENT_PENDING_MEDIA_KEY:Ljava/lang/String; = "pendingMediaKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    return-void
.end method

.method private setupBackButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 42
    sget v0, Lcom/facebook/g;->action_bar_button_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Needs <include layout=\"@layout/action_bar_video\"/> in layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    new-instance v1, Lcom/instagram/android/video/fragment/VideoFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/VideoFragment$1;-><init>(Lcom/instagram/android/video/fragment/VideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method private setupNextButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 55
    sget v0, Lcom/facebook/g;->action_bar_button_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    new-instance v1, Lcom/instagram/android/video/fragment/VideoFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/VideoFragment$2;-><init>(Lcom/instagram/android/video/fragment/VideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private setupTitle(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 65
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/FreightSanBoldSCTextView;

    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/FreightSanBoldSCTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getPendingMedia()Lcom/instagram/android/model/PendingMedia;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/VideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/instagram/android/service/PendingMediaStore;->getInstance()Lcom/instagram/android/service/PendingMediaStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/PendingMediaStore;->get(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract onBackButtonPressed(Landroid/view/View;)V
.end method

.method public abstract onNextButtonPressed(Landroid/view/View;)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/VideoFragment;->setupBackButton(Landroid/view/View;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/VideoFragment;->setupNextButton(Landroid/view/View;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/VideoFragment;->setupTitle(Landroid/view/View;)V

    .line 39
    return-void
.end method
