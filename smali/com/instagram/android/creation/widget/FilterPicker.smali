.class public Lcom/instagram/android/creation/widget/FilterPicker;
.super Landroid/widget/HorizontalScrollView;
.source "FilterPicker.java"

# interfaces
.implements Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FilterPicker"


# instance fields
.field private mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

.field private mFilters:[Lcom/instagram/android/gl/IgFilter;

.field private mListener:Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;

.field private mRestoreScrollPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mRestoreScrollPosition:I

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/widget/FilterPicker;->init(Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mRestoreScrollPosition:I

    .line 42
    invoke-direct {p0, p2}, Lcom/instagram/android/creation/widget/FilterPicker;->init(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mRestoreScrollPosition:I

    .line 47
    invoke-direct {p0, p2}, Lcom/instagram/android/creation/widget/FilterPicker;->init(Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private addFilterTiles(Lcom/instagram/android/widget/IgRadioGroup;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 109
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilters:[Lcom/instagram/android/gl/IgFilter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 110
    new-instance v1, Lcom/instagram/android/creation/widget/FilterTileButton;

    invoke-virtual {p1}, Lcom/instagram/android/widget/IgRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilters:[Lcom/instagram/android/gl/IgFilter;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/creation/widget/FilterTileButton;-><init>(Landroid/content/Context;Lcom/instagram/android/gl/IgFilter;)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->setId(I)V

    .line 112
    invoke-virtual {p1, v1}, Lcom/instagram/android/widget/IgRadioGroup;->addView(Landroid/view/View;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    .line 77
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/facebook/m;->FilterPicker:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 79
    sget v0, Lcom/facebook/m;->FilterPicker_video:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 80
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/android/creation/widget/FilterTileUtil;->getVideoFilters()[Lcom/instagram/android/video/filters/VideoFilter;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilters:[Lcom/instagram/android/gl/IgFilter;

    .line 85
    sget v0, Lcom/facebook/f;->cover_bg_tile:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/FilterPicker;->setBackgroundResource(I)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/instagram/android/creation/widget/FilterPicker;->setHorizontalFadingEdgeEnabled(Z)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/instagram/android/creation/widget/FilterPicker;->setHorizontalScrollBarEnabled(Z)V

    .line 90
    new-instance v0, Lcom/instagram/android/widget/IgRadioGroup;

    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/android/widget/IgRadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    .line 91
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    sget v2, Lcom/facebook/g;->filter_tile_group:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgRadioGroup;->setId(I)V

    .line 92
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgRadioGroup;->setOrientation(I)V

    .line 93
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-virtual {v0, p0}, Lcom/instagram/android/widget/IgRadioGroup;->setOnCheckedChangeListener(Lcom/instagram/android/widget/IgRadioGroup$OnCheckedChangeListener;)V

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    iget-object v1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgRadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/widget/FilterPicker;->addFilterTiles(Lcom/instagram/android/widget/IgRadioGroup;)V

    .line 101
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/FilterPicker;->addView(Landroid/view/View;)V

    .line 102
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/instagram/android/creation/widget/FilterTileUtil;->getPhotoFilters()[Lcom/instagram/android/gl/NativeFilter;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setRestoreScrollPosition(I)V
    .locals 0
    .parameter "scrollX"

    .prologue
    .line 162
    iput p1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mRestoreScrollPosition:I

    .line 163
    return-void
.end method


# virtual methods
.method public getSelectedFilter()Lcom/instagram/android/gl/IgFilter;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilters:[Lcom/instagram/android/gl/IgFilter;

    iget-object v1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-virtual {v1}, Lcom/instagram/android/widget/IgRadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public onCheckedChanged(Lcom/instagram/android/widget/IgRadioGroup;I)V
    .locals 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-virtual {p1}, Lcom/instagram/android/widget/IgRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/widget/IgRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/FilterTileButton;

    .line 121
    iget-object v1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mListener:Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mListener:Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;

    iget-object v2, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilters:[Lcom/instagram/android/gl/IgFilter;

    invoke-virtual {p1}, Lcom/instagram/android/widget/IgRadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lcom/instagram/android/widget/IgRadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;->onFilterChanged(Lcom/instagram/android/gl/IgFilter;I)V

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterPicker;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 130
    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->getRight()I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/FilterTileButton;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterPicker;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterPicker;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    .line 133
    if-lez v0, :cond_2

    .line 134
    invoke-virtual {p0, v0, v4}, Lcom/instagram/android/creation/widget/FilterPicker;->smoothScrollBy(II)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    if-gez v1, :cond_1

    .line 136
    invoke-virtual {p0, v1, v4}, Lcom/instagram/android/creation/widget/FilterPicker;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, -0x1

    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 54
    iget v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mRestoreScrollPosition:I

    if-eq v0, v1, :cond_0

    .line 55
    iget v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mRestoreScrollPosition:I

    .line 56
    iput v1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mRestoreScrollPosition:I

    .line 57
    new-instance v1, Lcom/instagram/android/creation/widget/FilterPicker$1;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/creation/widget/FilterPicker$1;-><init>(Lcom/instagram/android/creation/widget/FilterPicker;I)V

    invoke-virtual {p0, v1}, Lcom/instagram/android/creation/widget/FilterPicker;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/instagram/android/creation/widget/FilterPicker$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 159
    .end local p1
    :goto_0
    return-void

    .line 156
    .restart local p1
    :cond_0
    check-cast p1, Lcom/instagram/android/creation/widget/FilterPicker$SavedState;

    .line 157
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/android/creation/widget/FilterPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 158
    iget v0, p1, Lcom/instagram/android/creation/widget/FilterPicker$SavedState;->scrollX:I

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/widget/FilterPicker;->setRestoreScrollPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/instagram/android/creation/widget/FilterPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/instagram/android/creation/widget/FilterPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 144
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/FilterPicker;->getScrollX()I

    move-result v0

    iput v0, v1, Lcom/instagram/android/creation/widget/FilterPicker$SavedState;->scrollX:I

    .line 145
    return-object v1
.end method

.method public setOnFilterChangedListener(Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mListener:Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;

    .line 68
    return-void
.end method

.method public setSelectedFilterIndex(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker;->mFilterTileGroup:Lcom/instagram/android/widget/IgRadioGroup;

    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/IgRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/FilterTileButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/FilterTileButton;->setChecked(Z)V

    .line 106
    return-void
.end method
