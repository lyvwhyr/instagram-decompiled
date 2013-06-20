.class Lcom/instagram/android/maps/fragment/GeoGridFragment$6$1;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$1;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6$1;->this$1:Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    iget-object v0, v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    #calls: Lcom/instagram/android/maps/fragment/GeoGridFragment;->handleCancel()V
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$100(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    .line 242
    return-void
.end method
