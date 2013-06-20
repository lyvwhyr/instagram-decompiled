.class public Lcom/instagram/android/widget/MediaOptionsButton;
.super Landroid/widget/FrameLayout;
.source "MediaOptionsButton.java"


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFragmentManager:Landroid/support/v4/app/p;

.field private mHandler:Landroid/os/Handler;

.field private mIsMediaAuthor:Z

.field private mLoaderManager:Landroid/support/v4/app/af;

.field private mMedia:Lcom/instagram/android/model/Media;

.field private mMenuOptions:[Ljava/lang/CharSequence;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    .line 47
    new-instance v0, Lcom/instagram/android/widget/MediaOptionsButton$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/MediaOptionsButton$1;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;)V

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 56
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    .line 47
    new-instance v0, Lcom/instagram/android/widget/MediaOptionsButton$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/MediaOptionsButton$1;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;)V

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 61
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    .line 47
    new-instance v0, Lcom/instagram/android/widget/MediaOptionsButton$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/MediaOptionsButton$1;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;)V

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 66
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/widget/MediaOptionsButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->showMenu()V

    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/android/widget/MediaOptionsButton;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instagram/android/widget/MediaOptionsButton;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->getMenuOptions()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    return-object v0
.end method

.method static synthetic access$602(Lcom/instagram/android/widget/MediaOptionsButton;Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;)Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mProgressDialog:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;

    return-object p1
.end method

.method static synthetic access$700(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/support/v4/app/p;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mFragmentManager:Landroid/support/v4/app/p;

    return-object v0
.end method

.method static synthetic access$800(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/support/v4/app/af;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mLoaderManager:Landroid/support/v4/app/af;

    return-object v0
.end method

.method private static checkIsMediaAuthor(Lcom/instagram/android/model/Media;)Z
    .locals 2
    .parameter "media"

    .prologue
    .line 288
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIsMediaAuthor()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mIsMediaAuthor:Z

    return v0
.end method

.method private getMediaHasValidLocation()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getFeedItemLocationType()Lcom/instagram/android/model/Media$FeedItemLocationType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$FeedItemLocationType;->Foursquare:Lcom/instagram/android/model/Media$FeedItemLocationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMenuOptions()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v2

    .line 80
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->getIsMediaAuthor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    sget v3, Lcom/facebook/k;->share:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget v3, Lcom/facebook/k;->delete_media:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v3, v4, :cond_0

    .line 85
    sget v3, Lcom/facebook/k;->add_people:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->getIsMediaAuthor()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->isIsStaff()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    sget v2, Lcom/facebook/k;->flag_reason_remove_from_popular:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    return-object v0

    .line 88
    :cond_3
    sget v3, Lcom/facebook/k;->report_inappropriate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->hasInTags()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instagram/android/people/model/PeopleTagCollection;->containsUser(Lcom/instagram/android/model/User;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    sget v3, Lcom/facebook/k;->photo_options:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaOptionsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private setIsMediaAuthor(Z)V
    .locals 0
    .parameter "isAuthor"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mIsMediaAuthor:Z

    .line 285
    return-void
.end method

.method private showMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 108
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->getMenuOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;Lcom/instagram/android/widget/MediaOptionsButton$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/android/widget/IgDialogBuilder;->setCanceledOnTouchOutside(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mDialog:Landroid/app/Dialog;

    .line 114
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/widget/MediaOptionsButton$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/MediaOptionsButton$2;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 121
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    return-void
.end method


# virtual methods
.method public setActivityContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mActivityContext:Landroid/content/Context;

    .line 273
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/instagram/android/widget/MediaOptionsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 258
    return-void

    .line 257
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public setFragmentManager(Landroid/support/v4/app/p;)V
    .locals 0
    .parameter "fragmentManager"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mFragmentManager:Landroid/support/v4/app/p;

    .line 298
    return-void
.end method

.method public setLoaderManager(Landroid/support/v4/app/af;)V
    .locals 0
    .parameter "loaderManager"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mLoaderManager:Landroid/support/v4/app/af;

    .line 294
    return-void
.end method

.method public setMedia(Lcom/instagram/android/model/Media;)V
    .locals 1
    .parameter "media"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMenuOptions:[Ljava/lang/CharSequence;

    .line 266
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    .line 267
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;

    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->checkIsMediaAuthor(Lcom/instagram/android/model/Media;)Z

    move-result v0

    .line 268
    invoke-direct {p0, v0}, Lcom/instagram/android/widget/MediaOptionsButton;->setIsMediaAuthor(Z)V

    .line 269
    return-void
.end method
