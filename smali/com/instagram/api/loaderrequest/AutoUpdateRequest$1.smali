.class Lcom/instagram/api/loaderrequest/AutoUpdateRequest$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "AutoUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Lcom/instagram/android/model/AutoUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/AutoUpdateRequest;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/AutoUpdateRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AutoUpdateRequest$1;->this$0:Lcom/instagram/api/loaderrequest/AutoUpdateRequest;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
