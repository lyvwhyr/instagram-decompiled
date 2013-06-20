.class Lcom/instagram/android/maps/PhotoMapsActivity$9;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$9;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$9;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->startFetchGeoMediaRequest()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$900(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 219
    return-void
.end method
