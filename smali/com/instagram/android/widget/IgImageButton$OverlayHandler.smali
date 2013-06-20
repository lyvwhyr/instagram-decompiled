.class Lcom/instagram/android/widget/IgImageButton$OverlayHandler;
.super Landroid/os/Handler;
.source "IgImageButton.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/IgImageButton;


# direct methods
.method private constructor <init>(Lcom/instagram/android/widget/IgImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/instagram/android/widget/IgImageButton$OverlayHandler;->this$0:Lcom/instagram/android/widget/IgImageButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/widget/IgImageButton;Lcom/instagram/android/widget/IgImageButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgImageButton$OverlayHandler;-><init>(Lcom/instagram/android/widget/IgImageButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton$OverlayHandler;->this$0:Lcom/instagram/android/widget/IgImageButton;

    #calls: Lcom/instagram/android/widget/IgImageButton;->showTouchOverlay()V
    invoke-static {v0}, Lcom/instagram/android/widget/IgImageButton;->access$300(Lcom/instagram/android/widget/IgImageButton;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton$OverlayHandler;->this$0:Lcom/instagram/android/widget/IgImageButton;

    #calls: Lcom/instagram/android/widget/IgImageButton;->fadeOutTouchOverlay()V
    invoke-static {v0}, Lcom/instagram/android/widget/IgImageButton;->access$200(Lcom/instagram/android/widget/IgImageButton;)V

    goto :goto_0
.end method
