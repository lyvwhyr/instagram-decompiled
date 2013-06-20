.class public Lcom/instagram/android/creation/widget/FilterTileButton;
.super Landroid/widget/FrameLayout;
.source "FilterTileButton.java"

# interfaces
.implements Lcom/instagram/android/widget/IgCheckable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mChecked:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/instagram/android/creation/widget/FilterTileButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/gl/IgFilter;)V
    .locals 3
    .parameter "context"
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->view_filter_tile_button:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    invoke-virtual {p0, v2}, Lcom/instagram/android/creation/widget/FilterTileButton;->setClickable(Z)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/instagram/android/creation/widget/FilterTileButton;->setFocusable(Z)V

    .line 47
    sget v0, Lcom/facebook/g;->filter_name:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mTextView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/gl/IgFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget v0, Lcom/facebook/g;->filter_image:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mImageView:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/instagram/android/creation/widget/FilterTileUtil;->getResId(Landroid/content/Context;Lcom/instagram/android/gl/IgFilter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 98
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterTileButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/instagram/android/creation/widget/FilterTileButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/instagram/android/creation/widget/FilterTileButton;->mergeDrawableStates([I[I)[I

    .line 102
    :cond_0
    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 160
    check-cast p1, Lcom/instagram/android/creation/widget/FilterTileButton$SavedState;

    .line 162
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/android/creation/widget/FilterTileButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 163
    iget-boolean v0, p1, Lcom/instagram/android/creation/widget/FilterTileButton$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->setChecked(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterTileButton;->requestLayout()V

    .line 165
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/instagram/android/creation/widget/FilterTileButton$SavedState;

    invoke-direct {v1, v0}, Lcom/instagram/android/creation/widget/FilterTileButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 154
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterTileButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/instagram/android/creation/widget/FilterTileButton$SavedState;->checked:Z

    .line 155
    return-object v1
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterTileButton;->toggle()V

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 57
    iput-boolean p1, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mChecked:Z

    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterTileButton;->refreshDrawableState()V

    .line 61
    iget-boolean v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mBroadcasting:Z

    .line 66
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;->onCheckedChanged(Lcom/instagram/android/widget/IgCheckable;Z)V

    .line 69
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mOnCheckedChangeListener:Lcom/instagram/android/widget/IgCheckable$OnCheckedChangeListener;

    .line 94
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mChecked:Z

    if-nez v0, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/instagram/android/creation/widget/FilterTileButton;->mChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->setChecked(Z)V

    .line 89
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
