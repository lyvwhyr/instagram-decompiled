.class Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;
.super Ljava/lang/Object;
.source "ActionBarCameraFlashButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 67
    sget-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$3;->$SwitchMap$com$instagram$android$creation$widget$ActionBarCameraFlashButton$FlashMode:[I

    iget-object v1, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    #getter for: Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;
    invoke-static {v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->access$000(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->OFF:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->showMode(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    #getter for: Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mOnClickListener:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;
    invoke-static {v0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->access$100(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    #getter for: Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mOnClickListener:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;
    invoke-static {v0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->access$100(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    #getter for: Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;
    invoke-static {v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->access$000(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;->onClick(Landroid/view/View;Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V

    .line 83
    :cond_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->AUTO:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->showMode(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;->this$0:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->ON:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->showMode(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
