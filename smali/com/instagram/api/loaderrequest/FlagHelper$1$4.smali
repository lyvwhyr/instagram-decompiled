.class Lcom/instagram/api/loaderrequest/FlagHelper$1$4;
.super Ljava/lang/Object;
.source "FlagHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$4;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$4;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    #calls: Lcom/instagram/api/loaderrequest/FlagHelper$1;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper$1;->access$400(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V

    .line 78
    return-void
.end method
