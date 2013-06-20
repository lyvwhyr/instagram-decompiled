.class Lcom/instagram/android/rageshake/SensorHelper$3;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/rageshake/SensorHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/rageshake/SensorHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instagram/android/rageshake/SensorHelper$3;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$3;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/rageshake/SensorHelper;->mDialogPresent:Z
    invoke-static {v0, v1}, Lcom/instagram/android/rageshake/SensorHelper;->access$002(Lcom/instagram/android/rageshake/SensorHelper;Z)Z

    .line 80
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$3;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #getter for: Lcom/instagram/android/rageshake/SensorHelper;->mSensorEventListener:Lcom/facebook/e/a;
    invoke-static {v0}, Lcom/instagram/android/rageshake/SensorHelper;->access$200(Lcom/instagram/android/rageshake/SensorHelper;)Lcom/facebook/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/e/a;->cooldown()V

    .line 81
    return-void
.end method
