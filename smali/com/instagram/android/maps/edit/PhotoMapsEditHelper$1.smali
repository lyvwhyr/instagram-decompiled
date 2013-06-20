.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$1;
.super Landroid/os/Handler;
.source "PhotoMapsEditHelper.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$1;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$1;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #calls: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->performPollRequest()V
    invoke-static {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$000(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V

    .line 42
    return-void
.end method
