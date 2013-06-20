.class Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;
.super Landroid/os/AsyncTask;
.source "NearbyVenuesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

.field final synthetic val$venues:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/NearbyVenuesAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;->this$0:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    iput-object p2, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;->val$venues:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 320
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;->this$0:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    iget-object v1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;->val$venues:Ljava/util/List;

    #calls: Lcom/instagram/android/adapter/NearbyVenuesAdapter;->doSerializeCustomVenues(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->access$000(Lcom/instagram/android/adapter/NearbyVenuesAdapter;Ljava/util/List;)V

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method
