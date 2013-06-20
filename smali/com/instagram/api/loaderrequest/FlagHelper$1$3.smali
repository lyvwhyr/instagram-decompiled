.class Lcom/instagram/api/loaderrequest/FlagHelper$1$3;
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
    .line 63
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$3;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$3;->this$1:Lcom/instagram/api/loaderrequest/FlagHelper$1;

    #calls: Lcom/instagram/api/loaderrequest/FlagHelper$1;->showProgressDialog()V
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper$1;->access$300(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V

    .line 67
    return-void
.end method
