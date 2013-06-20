.class Lcom/instagram/util/AutoUpdateHelper$1;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "AutoUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/model/AutoUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/util/AutoUpdateHelper;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$reportType:Lcom/instagram/util/AutoUpdateHelper$ReportType;


# direct methods
.method constructor <init>(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;Lcom/instagram/util/AutoUpdateHelper$ReportType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/util/AutoUpdateHelper$1;->this$0:Lcom/instagram/util/AutoUpdateHelper;

    iput-object p2, p0, Lcom/instagram/util/AutoUpdateHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/instagram/util/AutoUpdateHelper$1;->val$reportType:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/AutoUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/AutoUpdateInfo;>;"
    const-string v0, "AutoUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version check request failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/AutoUpdateInfo;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 86
    const-string v0, "AutoUpdateHelper"

    const-string v1, "Completed update check successfully."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper$1;->this$0:Lcom/instagram/util/AutoUpdateHelper;

    #getter for: Lcom/instagram/util/AutoUpdateHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/util/AutoUpdateHelper;->access$000(Lcom/instagram/util/AutoUpdateHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/BuildInfoUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 89
    invoke-virtual {p1}, Lcom/instagram/android/model/AutoUpdateInfo;->getMinVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 90
    invoke-virtual {p1}, Lcom/instagram/android/model/AutoUpdateInfo;->getNewVersionUrl()Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "AutoUpdateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-ge v0, v1, :cond_1

    invoke-static {v2}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper$1;->this$0:Lcom/instagram/util/AutoUpdateHelper;

    iget-object v1, p0, Lcom/instagram/util/AutoUpdateHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    #calls: Lcom/instagram/util/AutoUpdateHelper;->askToDownloadUpdate(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/util/AutoUpdateHelper;->access$100(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper$1;->val$reportType:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    sget-object v1, Lcom/instagram/util/AutoUpdateHelper$ReportType;->REPORT_UP_TO_DATE:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper$1;->this$0:Lcom/instagram/util/AutoUpdateHelper;

    iget-object v1, p0, Lcom/instagram/util/AutoUpdateHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    #calls: Lcom/instagram/util/AutoUpdateHelper;->reportUpToDate(Landroid/support/v4/app/FragmentActivity;)V
    invoke-static {v0, v1}, Lcom/instagram/util/AutoUpdateHelper;->access$200(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    check-cast p1, Lcom/instagram/android/model/AutoUpdateInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/util/AutoUpdateHelper$1;->onSuccess(Lcom/instagram/android/model/AutoUpdateInfo;)V

    return-void
.end method
