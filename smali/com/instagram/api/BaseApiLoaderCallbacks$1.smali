.class Lcom/instagram/api/BaseApiLoaderCallbacks$1;
.super Ljava/lang/Object;
.source "BaseApiLoaderCallbacks.java"

# interfaces
.implements Lcom/instagram/api/SystemMessageHelper;


# instance fields
.field final synthetic this$0:Lcom/instagram/api/BaseApiLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/api/BaseApiLoaderCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks$1;,"Lcom/instagram/api/BaseApiLoaderCallbacks.1;"
    iput-object p1, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$1;->this$0:Lcom/instagram/api/BaseApiLoaderCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logoutAndUnlink()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/facebook/FacebookAccount;->deleteCredentials(Z)V

    .line 123
    return-void
.end method
