.class public Lcom/instagram/android/rageshake/SensorHelper;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

.field private mDialogPresent:Z

.field private mNegativeButton:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButton:Landroid/content/DialogInterface$OnClickListener;

.field private mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;

.field private mSensorEventListener:Lcom/facebook/e/a;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/instagram/android/rageshake/SensorHelper$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/rageshake/SensorHelper$1;-><init>(Lcom/instagram/android/rageshake/SensorHelper;)V

    iput-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorEventListener:Lcom/facebook/e/a;

    .line 58
    new-instance v0, Lcom/instagram/android/rageshake/SensorHelper$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/rageshake/SensorHelper$2;-><init>(Lcom/instagram/android/rageshake/SensorHelper;)V

    iput-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mPositiveButton:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    new-instance v0, Lcom/instagram/android/rageshake/SensorHelper$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/rageshake/SensorHelper$3;-><init>(Lcom/instagram/android/rageshake/SensorHelper;)V

    iput-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mNegativeButton:Landroid/content/DialogInterface$OnClickListener;

    .line 35
    iput-object p1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mActivity:Landroid/app/Activity;

    .line 36
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/rageshake/SensorHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mDialogPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/instagram/android/rageshake/SensorHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mDialogPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/instagram/android/rageshake/SensorHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/rageshake/SensorHelper;->displayRageShakeDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/rageshake/SensorHelper;)Lcom/facebook/e/a;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorEventListener:Lcom/facebook/e/a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/rageshake/SensorHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/rageshake/SensorHelper;)Lcom/instagram/android/rageshake/SaveScreenShotTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/instagram/android/rageshake/SensorHelper;Lcom/instagram/android/rageshake/SaveScreenShotTask;)Lcom/instagram/android/rageshake/SaveScreenShotTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;

    return-object p1
.end method

.method private displayRageShakeDialog()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    .line 50
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    sget v1, Lcom/facebook/k;->rageshake_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 51
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    sget v1, Lcom/facebook/k;->rageshake_question:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 52
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 53
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    sget v1, Lcom/facebook/k;->no:I

    iget-object v2, p0, Lcom/instagram/android/rageshake/SensorHelper;->mNegativeButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 54
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    sget v1, Lcom/facebook/k;->yes:I

    iget-object v2, p0, Lcom/instagram/android/rageshake/SensorHelper;->mPositiveButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 55
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    return-void
.end method

.method public static isRageShakeEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->isProdBuild()Z

    move-result v0

    .line 101
    invoke-static {p0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v1

    .line 103
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;

    invoke-virtual {v0}, Lcom/instagram/android/rageshake/SaveScreenShotTask;->detach()V

    .line 87
    iput-object v1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->dismiss()V

    .line 91
    iput-object v1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mBuilder:Lcom/instagram/android/widget/IgDialogBuilder;

    .line 93
    :cond_1
    iput-object v1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mActivity:Landroid/app/Activity;

    .line 94
    return-void
.end method

.method public registerShakeListener()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorEventListener:Lcom/facebook/e/a;

    iget-object v2, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 110
    return-void
.end method

.method public unRegisterShakeListener()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/instagram/android/rageshake/SensorHelper;->mSensorEventListener:Lcom/facebook/e/a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    return-void
.end method
