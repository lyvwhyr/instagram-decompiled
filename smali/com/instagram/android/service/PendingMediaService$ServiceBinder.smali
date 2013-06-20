.class public Lcom/instagram/android/service/PendingMediaService$ServiceBinder;
.super Landroid/os/Binder;
.source "PendingMediaService.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/PendingMediaService;


# direct methods
.method public constructor <init>(Lcom/instagram/android/service/PendingMediaService;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instagram/android/service/PendingMediaService$ServiceBinder;->this$0:Lcom/instagram/android/service/PendingMediaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/instagram/android/service/PendingMediaService;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaService$ServiceBinder;->this$0:Lcom/instagram/android/service/PendingMediaService;

    return-object v0
.end method
