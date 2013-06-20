.class Lcom/instagram/android/rageshake/SensorHelper$1;
.super Lcom/facebook/e/a;
.source "SensorHelper.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/rageshake/SensorHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/rageshake/SensorHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/rageshake/SensorHelper$1;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    invoke-direct {p0}, Lcom/facebook/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRageShake()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$1;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #getter for: Lcom/instagram/android/rageshake/SensorHelper;->mDialogPresent:Z
    invoke-static {v0}, Lcom/instagram/android/rageshake/SensorHelper;->access$000(Lcom/instagram/android/rageshake/SensorHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$1;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/rageshake/SensorHelper;->mDialogPresent:Z
    invoke-static {v0, v1}, Lcom/instagram/android/rageshake/SensorHelper;->access$002(Lcom/instagram/android/rageshake/SensorHelper;Z)Z

    .line 43
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$1;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #calls: Lcom/instagram/android/rageshake/SensorHelper;->displayRageShakeDialog()V
    invoke-static {v0}, Lcom/instagram/android/rageshake/SensorHelper;->access$100(Lcom/instagram/android/rageshake/SensorHelper;)V

    .line 45
    :cond_0
    return-void
.end method
