.class public Lcom/instagram/android/creation/widget/TiltShiftButton;
.super Lcom/instagram/android/creation/widget/ActionBarHighlightButton;
.source "TiltShiftButton.java"


# static fields
.field public static final TILTSHIFT_CIRCLE:I = 0x1

.field public static final TILTSHIFT_LINE:I = 0x2

.field public static final TILTSHIFT_OFF:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 27
    :pswitch_0
    sget v0, Lcom/facebook/f;->action_bar_glyph_tiltshift_default:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setButtonDrawable(I)V

    goto :goto_0

    .line 30
    :pswitch_1
    sget v0, Lcom/facebook/f;->action_bar_glyph_tiltshift_circle:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setButtonDrawable(I)V

    goto :goto_0

    .line 33
    :pswitch_2
    sget v0, Lcom/facebook/f;->action_bar_glyph_tiltshift_bar:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setButtonDrawable(I)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
