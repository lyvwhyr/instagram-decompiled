.class final Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "IgColorDrawable.java"


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mUseColor:I


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget v0, p1, Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;->mBaseColor:I

    .line 178
    iget v0, p1, Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;->mUseColor:I

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/instagram/android/mediacache/IgColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/mediacache/IgColorDrawable;-><init>(Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;Lcom/instagram/android/mediacache/IgColorDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 189
    new-instance v0, Lcom/instagram/android/mediacache/IgColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/mediacache/IgColorDrawable;-><init>(Lcom/instagram/android/mediacache/IgColorDrawable$ColorState;Lcom/instagram/android/mediacache/IgColorDrawable$1;)V

    return-object v0
.end method
