.class public Lcom/instagram/camera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/instagram/camera/ui/Rotatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateLayout"


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/RotateLayout;->setBackgroundResource(I)V

    .line 27
    return-void
.end method

.method private setTranslation(II)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    iget v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget v1, p0, Lcom/instagram/camera/ui/RotateLayout;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 101
    return-void

    .line 84
    :sswitch_0
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 89
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 92
    :sswitch_2
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 96
    :sswitch_3
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 35
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 37
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 42
    sub-int v0, p4, p2

    .line 43
    sub-int v1, p5, p3

    .line 44
    iget v2, p0, Lcom/instagram/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 47
    :sswitch_0
    iget-object v2, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 51
    :sswitch_1
    iget-object v2, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v0, 0x0

    .line 58
    .line 59
    iget v1, p0, Lcom/instagram/camera/ui/RotateLayout;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    .line 73
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/instagram/camera/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 76
    invoke-direct {p0, v1, v0}, Lcom/instagram/camera/ui/RotateLayout;->setTranslation(II)V

    .line 78
    :cond_0
    return-void

    .line 62
    :sswitch_0
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/instagram/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 63
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 64
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_1
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/instagram/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 69
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 105
    rem-int/lit16 p1, p1, 0x168

    .line 106
    iget v0, p0, Lcom/instagram/camera/ui/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iput p1, p0, Lcom/instagram/camera/ui/RotateLayout;->mOrientation:I

    .line 108
    invoke-virtual {p0}, Lcom/instagram/camera/ui/RotateLayout;->requestLayout()V

    goto :goto_0
.end method
