.class Lcom/instagram/api/BaseApiLoaderCallbacks$2;
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
    .line 126
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks$2;,"Lcom/instagram/api/BaseApiLoaderCallbacks.2;"
    iput-object p1, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$2;->this$0:Lcom/instagram/api/BaseApiLoaderCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logoutAndUnlink()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/foursquare/FoursquareAccount;->delete(Landroid/content/Context;)V

    .line 130
    return-void
.end method
