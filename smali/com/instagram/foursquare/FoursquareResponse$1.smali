.class Lcom/instagram/foursquare/FoursquareResponse$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "FoursquareResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/location/Venue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/foursquare/FoursquareResponse;


# direct methods
.method constructor <init>(Lcom/instagram/foursquare/FoursquareResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/foursquare/FoursquareResponse$1;->this$0:Lcom/instagram/foursquare/FoursquareResponse;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
