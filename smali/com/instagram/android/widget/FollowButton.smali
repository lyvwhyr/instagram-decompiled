.class public Lcom/instagram/android/widget/FollowButton;
.super Landroid/widget/Button;
.source "FollowButton.java"


# static fields
.field public static final DX:F = 0.0f

.field public static final DY:F = 1.0f

.field public static final RADIUS:F = 0.1f

.field private static final sStatusResIDs:[I


# instance fields
.field private mAlreadyFetched:Z

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/facebook/k;->following_button_following:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/facebook/k;->following_button_requested:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/facebook/k;->following_button_follow:I

    aput v2, v0, v1

    sput-object v0, Lcom/instagram/android/widget/FollowButton;->sStatusResIDs:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    sget v1, Lcom/facebook/l;->IgFollowButtonStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/widget/FollowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    sget v0, Lcom/facebook/l;->IgFollowButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/widget/FollowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->init()V

    .line 48
    return-void
.end method

.method private setOptimalWidth()V
    .locals 8

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 138
    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 139
    const/4 v1, 0x0

    .line 141
    sget-object v5, Lcom/instagram/android/widget/FollowButton;->sStatusResIDs:[I

    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_0

    aget v0, v5, v2

    .line 142
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 144
    cmpl-float v7, v0, v1

    if-lez v7, :cond_1

    .line 141
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 149
    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setWidth(I)V

    .line 150
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateShadowColor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/d;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v4, v4, v4, v0}, Lcom/instagram/android/widget/FollowButton;->setShadowLayer(FFFI)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const v1, 0x3dcccccd

    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/d;->follow_button_shadow_color_green:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v1, v4, v2, v0}, Lcom/instagram/android/widget/FollowButton;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/facebook/d;->follow_button_shadow_color_blue:I

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/instagram/android/widget/FollowButton;->updateShadowColor()V

    .line 56
    sget v0, Lcom/facebook/f;->profile_button_follow:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setBackgroundResource(I)V

    .line 61
    invoke-direct {p0}, Lcom/instagram/android/widget/FollowButton;->setOptimalWidth()V

    .line 65
    sget v0, Lcom/facebook/f;->button_small_gray:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setBackgroundResource(I)V

    .line 66
    return-void
.end method

.method public update(Lcom/instagram/android/model/User;Landroid/support/v4/app/af;Z)V
    .locals 4
    .parameter "user"
    .parameter "loaderManager"
    .parameter "loadFetchState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/User;->isSelf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/widget/FollowButton;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/FollowButton;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iput-boolean v2, p0, Lcom/instagram/android/widget/FollowButton;->mAlreadyFetched:Z

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/widget/FollowButton;->mUserId:Ljava/lang/String;

    .line 86
    iget-boolean v0, p0, Lcom/instagram/android/widget/FollowButton;->mAlreadyFetched:Z

    if-nez v0, :cond_3

    .line 87
    iput-boolean v3, p0, Lcom/instagram/android/widget/FollowButton;->mAlreadyFetched:Z

    .line 88
    if-eqz p3, :cond_3

    .line 89
    new-instance v0, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;

    invoke-virtual {p0}, Lcom/instagram/android/widget/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/User;)V

    .line 90
    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FetchFollowingStatus;->perform()V

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFetching:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v0, v1, :cond_4

    .line 98
    invoke-virtual {p0, v2}, Lcom/instagram/android/widget/FollowButton;->setEnabled(Z)V

    .line 99
    const-string v0, "..."

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p0, v2}, Lcom/instagram/android/widget/FollowButton;->setSelected(Z)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/instagram/android/widget/FollowButton;->setEnabled(Z)V

    .line 105
    sget v1, Lcom/facebook/f;->profile_button_follow:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/widget/FollowButton;->setBackgroundResource(I)V

    .line 107
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v0, v1, :cond_6

    .line 108
    sget v0, Lcom/facebook/k;->following_button_following:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setText(I)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/instagram/android/widget/FollowButton;->setSelected(Z)V

    .line 120
    :cond_5
    :goto_1
    new-instance v0, Lcom/instagram/android/widget/FollowButton$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/widget/FollowButton$1;-><init>(Lcom/instagram/android/widget/FollowButton;Lcom/instagram/android/model/User;Landroid/support/v4/app/af;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/instagram/android/widget/FollowButton;->updateShadowColor()V

    goto :goto_0

    .line 110
    :cond_6
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v0, v1, :cond_7

    .line 111
    sget v0, Lcom/facebook/k;->following_button_requested:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setText(I)V

    .line 112
    sget v0, Lcom/facebook/f;->button_small_gray:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 113
    :cond_7
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v0, v1, :cond_5

    .line 114
    sget v0, Lcom/facebook/k;->following_button_follow:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FollowButton;->setText(I)V

    goto :goto_1
.end method
