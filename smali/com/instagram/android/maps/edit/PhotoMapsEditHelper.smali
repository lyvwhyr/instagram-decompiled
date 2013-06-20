.class public Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"


# static fields
.field public static final TIMEOUT:I = 0x3a98


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

.field final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/af;

.field final mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

.field private mTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;)V
    .locals 1
    .parameter "context"
    .parameter "editType"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$1;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V

    iput-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mLoaderManager:Landroid/support/v4/app/af;

    .line 55
    new-instance v0, Lcom/instagram/android/widget/IgProgressDialog;

    invoke-direct {v0, p1}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 56
    iput-object p2, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->performPollRequest()V

    return-void
.end method

.method static synthetic access$102(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mTicket:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->removeDialog(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->addErrorDialog()V

    return-void
.end method

.method private addErrorDialog()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 100
    return-void
.end method

.method private performPollRequest()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mLoaderManager:Landroid/support/v4/app/af;

    new-instance v3, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;

    invoke-direct {v3, p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;->perform(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private removeDialog(Z)V
    .locals 2
    .parameter "withSuccess"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method


# virtual methods
.method public performPhotoDeletion()V
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;

    iget-object v2, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mLoaderManager:Landroid/support/v4/app/af;

    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v4

    new-instance v5, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;

    invoke-direct {v5, p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 92
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getCurrentlyDeletedItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;->perform(Ljava/util/List;)V

    .line 93
    return-void
.end method
