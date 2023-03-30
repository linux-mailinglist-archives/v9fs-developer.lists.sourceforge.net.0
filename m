Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C44416CF949
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 04:53:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phiPo-00074I-EB;
	Thu, 30 Mar 2023 02:53:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jasowang@redhat.com>) id 1phiPl-00074C-Up
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 02:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4EttenRniTRAyINUwSML9x3PTSCdJCbF0TO8TjTN+xs=; b=g0ftt+bzVbNbddIoxFpm+aH+UX
 nQlIb4dmaJvibviHtA6mm1cfihmZC+BLE3UePxA4rIuzgZbYdkHb//Pad0Sdrv8Sq0bIzSOfy47gz
 DSnrSgF6IjB8NgYFffnKJsDdp3Z5oB/1NYUbnMG7IdoyoFD9ncE3/hVsV3MRXwLUQi8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4EttenRniTRAyINUwSML9x3PTSCdJCbF0TO8TjTN+xs=; b=i5yA/f4uoTkm3iYKcPSnOFW7I6
 ra8+nPLqoeW3JsmAvrREXu6qNuKySJJYgRmHHgIFcNOEo7kgefA1obwhSiQorPuZrdp7/FqXGxqPH
 ZxFUFPKM35nTEEMdE69LBqPTPax3sRVBa3nBA5bL9DarL3LfG2ukhKmW3A+Cvrvori5Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phiPe-0093SW-DP for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 02:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680144792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4EttenRniTRAyINUwSML9x3PTSCdJCbF0TO8TjTN+xs=;
 b=gBpaSOJQqsngR0X/qJLFzwvIGrEtI/Ja3NUQiL1GwOKoe1c2vMoBUOwbpFhAzc1WSlLgng
 gJ+27iMdzu/L7EPDD9iA8v4W4gH709Vb/rTO3Os14t6XIE7USZDWB8Xy2L90JSIFvze49s
 W7Cu/AmdxbR3Jp/PIzRY389TPb4kZY4=
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com
 [209.85.160.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-urCzq5aIMGmtyp-1XODS5Q-1; Wed, 29 Mar 2023 22:53:11 -0400
X-MC-Unique: urCzq5aIMGmtyp-1XODS5Q-1
Received: by mail-oa1-f72.google.com with SMTP id
 586e51a60fabf-17a678c2de9so9126023fac.14
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 29 Mar 2023 19:53:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680144790; x=1682736790;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4EttenRniTRAyINUwSML9x3PTSCdJCbF0TO8TjTN+xs=;
 b=O9bWvhwqqiSQO6T9eGro5JUR7S375buA9n8KCYbOma2Dfgtllt/LjHN4qHxth3O7DE
 TUOYpVJaPRxPi+mlwkILfSV6FDs4Iuyzey3PM+Iwa7IWeWZgHOoAb5ANbue+RO3NLBzj
 atGqWrcE7b3Ftf7/uZLYG+RSHIkcRHJv3YSgOX0LHEWUKVRztT5mNRZf48BlBuQhnDv/
 Z0FvqUKhhDEqTtutQ24cDf42KMUZemvPFl4TBVDRm7Y40BxKq9FmSya0fAGEecwTl1mp
 bkSvic+l8PgHhXXRjV6ezhl0dOzVLAQz5PTDi2sHCSLHKUc+ES04EiHPqJgElx4XGQLG
 j+4w==
X-Gm-Message-State: AAQBX9cqJJrDXNpo78ZQ8lEzaL6XNpzgefDCxjY5lBLaSfsaSfV/UAUa
 Ynlj7tWDf0trnw7FL18XT3OyOvoA9X9tf6xY/lwJEToz/zqsAMhyjF/gyC3FY1H3lS8rn3uHIMq
 ZMTdzb90BAgEAEhUqjKW2rrrDSQkXUf0n3AncUsb5C96gsj1tBxKcz0wB7Fintmtq
X-Received: by 2002:a05:6870:57:b0:17e:e396:cce0 with SMTP id
 23-20020a056870005700b0017ee396cce0mr6851490oaz.9.1680144790218; 
 Wed, 29 Mar 2023 19:53:10 -0700 (PDT)
X-Google-Smtp-Source: AK7set8UUvgXLVS4RNtlEVzPx32NNTiSwrPsINzV6q6kl81yuAE/AN5EYtWhZ17cOZYMiPtWzpTj9lN3OUvG01gAERw=
X-Received: by 2002:a05:6870:57:b0:17e:e396:cce0 with SMTP id
 23-20020a056870005700b0017ee396cce0mr6851485oaz.9.1680144789951; Wed, 29 Mar
 2023 19:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
 <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
 <CABKxMyPwuRb6p-oHxcQDhRtJv04=NDWvosNAp=epgvdrfCeveg@mail.gmail.com>
 <CACGkMEuukvjXBTDX2K9YLYmpHsqK96AiMK39gbm3+f_+kUydMQ@mail.gmail.com>
 <20230329013722-mutt-send-email-mst@kernel.org>
In-Reply-To: <20230329013722-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Date: Thu, 30 Mar 2023 10:52:58 +0800
Message-ID: <CACGkMEthD126t16LFjFkggtXb5u7n0-mRj+noGNu26R2zjKmGA@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 29, 2023 at 1:42 PM Michael S. Tsirkin <mst@redhat.com>
    wrote: > > On Tue, Mar 28, 2023 at 11:39:59AM +0800, Jason Wang wrote: >
   > On Tue, Mar 28, 2023 at 11:09 AM 黄杰 <huangjie.alb [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phiPe-0093SW-DP
Subject: Re: [V9fs-developer] [External] Re: 9p regression (Was: [PATCH v2]
 virtio_ring: don't update event idx on get_buf)
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: =?UTF-8?B?6buE5p2w?= <huangjie.albert@bytedance.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gV2VkLCBNYXIgMjksIDIwMjMgYXQgMTo0MuKAr1BNIE1pY2hhZWwgUy4gVHNpcmtpbiA8bXN0
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTE6Mzk6NTlB
TSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToKPiA+IE9uIFR1ZSwgTWFyIDI4LCAyMDIzIGF0IDEx
OjA54oCvQU0g6buE5p2wIDxodWFuZ2ppZS5hbGJlcnRAYnl0ZWRhbmNlLmNvbT4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+IOS6jjIwMjPlubQz5pyI
Mjjml6XlkajkuowgMTA6NTnlhpnpgZPvvJoKPiA+ID4gPgo+ID4gPiA+IE9uIFR1ZSwgTWFyIDI4
LCAyMDIzIGF0IDEwOjEz4oCvQU0gRG9taW5pcXVlIE1hcnRpbmV0Cj4gPiA+ID4gPGFzbWFkZXVz
QGNvZGV3cmVjay5vcmc+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IEhpIE1pY2hhZWwsIEFs
YmVydCwKPiA+ID4gPiA+Cj4gPiA+ID4gPiBBbGJlcnQgSHVhbmcgd3JvdGUgb24gU2F0LCBNYXIg
MjUsIDIwMjMgYXQgMDY6NTY6MzNQTSArMDgwMDoKPiA+ID4gPiA+ID4gaW4gdmlydGlvX25ldCwg
aWYgd2UgZGlzYWJsZSB0aGUgbmFwaV90eCwgd2hlbiB3ZSB0cmlnZXIgYSB0eCBpbnRlcnJ1cHQs
Cj4gPiA+ID4gPiA+IHRoZSB2cS0+ZXZlbnRfdHJpZ2dlcmVkIHdpbGwgYmUgc2V0IHRvIHRydWUu
IEl0IHdpbGwgbm8gbG9uZ2VyIGJlIHNldCB0bwo+ID4gPiA+ID4gPiBmYWxzZS4gVW5sZXNzIHdl
IGV4cGxpY2l0bHkgY2FsbCB2aXJ0cXVldWVfZW5hYmxlX2NiX2RlbGF5ZWQgb3IKPiA+ID4gPiA+
ID4gdmlydHF1ZXVlX2VuYWJsZV9jYl9wcmVwYXJlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoaXMg
cGF0Y2ggKGNvbW1pdGVkIGFzIDM1Mzk1NzcwZjgwMyAoInZpcnRpb19yaW5nOiBkb24ndCB1cGRh
dGUgZXZlbnQKPiA+ID4gPiA+IGlkeCBvbiBnZXRfYnVmIikgaW4gbmV4dC0yMDIzMDMyNyBhcHBh
cmVudGx5IGJyZWFrcyA5cCwgYXMgcmVwb3J0ZWQgYnkKPiA+ID4gPiA+IEx1aXMgaW4gaHR0cHM6
Ly9sa21sLmtlcm5lbC5vcmcvci9aQ0krN1dnNU9jbFNsRThjQGJvbWJhZGlsLmluZnJhZGVhZC5v
cmcKPiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ3ZlIGp1c3QgaGl0IGhhZCBhIGxvb2sgYXQgcmVjZW50
IHBhdGNoZXNbMV0gYW5kIHJldmVydGVkIHRoaXMgdG8gdGVzdAo+ID4gPiA+ID4gYW5kIEkgY2Fu
IG1vdW50IGFnYWluLCBzbyBJJ20gcHJldHR5IHN1cmUgdGhpcyBpcyB0aGUgY3VscHJpdCwgYnV0
IEkKPiA+ID4gPiA+IGRpZG4ndCBsb29rIGF0IHRoZSBjb250ZW50IGF0IGFsbCB5ZXQgc28gY2Fu
bm90IGFkdmlzZSBmdXJ0aGVyLgo+ID4gPiA+ID4gSXQgbWlnaHQgdmVyeSB3ZWxsIGJlIHRoYXQg
d2UgbmVlZCBzb21lIGV4dHJhIGhhbmRsaW5nIGZvciA5cAo+ID4gPiA+ID4gc3BlY2lmaWNhbGx5
IHRoYXQgY2FuIGJlIGFkZGVkIHNlcGFyYXRlbHkgaWYgcmVxdWlyZWQuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gWzFdIGdpdCBsb2cgMGVjNTdjZmE3MjFmYmQzNmI0YzRjMGQ5Y2NjNWQ3OGE3OGY3ZmEz
NS4uSEVBRCBkcml2ZXJzL3ZpcnRpby8KPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhp
cyBjYW4gYmUgcmVwcm9kdWNlZCB3aXRoIGEgc2ltcGxlIG1vdW50LCBydW4gcWVtdSB3aXRoIHNv
bWUgLXZpcnRmcwo+ID4gPiA+ID4gYXJndW1lbnQgYW5kIGBtb3VudCAtdCA5cCAtbyBkZWJ1Zz02
NTUzNSB0YWcgbW91bnRwb2ludGAgd2lsbCBoYW5nIGFmdGVyCj4gPiA+ID4gPiB0aGVzZSBtZXNz
YWdlczoKPiA+ID4gPiA+IDlwbmV0OiAtLSBwOV92aXJ0aW9fcmVxdWVzdCAoODMpOiA5cCBkZWJ1
ZzogdmlydGlvIHJlcXVlc3QKPiA+ID4gPiA+IDlwbmV0OiAtLSBwOV92aXJ0aW9fcmVxdWVzdCAo
ODMpOiB2aXJ0aW8gcmVxdWVzdCBraWNrZWQKPiA+ID4gPiA+Cj4gPiA+ID4gPiBTbyBJIHN1c3Bl
Y3Qgd2UncmUganVzdCBub3QgZ2V0dGluZyBhIGNhbGxiYWNrLgo+ID4gPiA+Cj4gPiA+ID4gSSB0
aGluayBzby4gVGhlIHBhdGNoIGFzc3VtZXMgdGhlIGRyaXZlciB3aWxsIGNhbGwKPiA+ID4gPiB2
aXJ0cXVldWVfZGlzYWJsZS9lbmFibGVfY2IoKSB3aGljaCBpcyBub3QgdGhlIGNhc2Ugb2YgdGhl
IDlwIGRyaXZlci4KPiA+ID4gPgo+ID4gPiA+IFNvIGFmdGVyIHRoZSBmaXJzdCBpbnRlcnJ1cHQs
IGV2ZW50X3RyaWdnZXJlZCB3aWxsIGJlIHNldCB0byB0cnVlIGZvcmV2ZXIuCj4gPiA+ID4KPiA+
ID4gPiBUaGFua3MKPiA+ID4gPgo+ID4gPgo+ID4gPiBIaTogV2FuZwo+ID4gPgo+ID4gPiBZZXMs
ICBUaGlzIHBhdGNoIGFzc3VtZXMgdGhhdCBhbGwgdmlydGlvLXJlbGF0ZWQgZHJpdmVycyB3aWxs
IGNhbGwKPiA+ID4gdmlydHF1ZXVlX2Rpc2FibGUvZW5hYmxlX2NiKCkuCj4gPiA+IFRoYW5rIHlv
dSBmb3IgcmFpc2luZyB0aGlzIGlzc3VlLgo+ID4gPgo+ID4gPiBJdCBzZWVtcyB0aGF0IG5hcGlf
dHggaXMgb25seSByZWxhdGVkIHRvIHZpcnR1ZV9uZXQuIEknbSB0aGlua2luZyBpZgo+ID4gPiB3
ZSBuZWVkIHRvIHJlZmFjdG9yCj4gPiA+IG5hcGlfdHggaW5zdGVhZCBvZiBpbXBsZW1lbnRpbmcg
aXQgaW5zaWRlIHZpcnRpb19yaW5nLgo+ID4KPiA+IFdlIGNhbiBoZWFyIGZyb20gb3RoZXJzLgo+
ID4KPiA+IEkgdGhpbmsgaXQncyBiZXR0ZXIgbm90IHRvIHdvcmthcm91bmQgdmlydGlvX3Jpbmcg
aXNzdWVzIGluIGEgc3BlY2lmaWMKPiA+IGRyaXZlci4gSXQgbWlnaHQganVzdCBhZGQgbW9yZSBo
YWNrcy4gV2Ugc2hvdWxkIGNvcnJlY3RseSBzZXQKPiA+IFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJS
VVBULAo+ID4KPiA+IERvIHlvdSB0aGluayB0aGUgZm9sbG93aW5nIG1pZ2h0IHdvcmsgKG5vdCBl
dmVuIGEgY29tcGlsZSB0ZXN0KT8KPgo+Cj4gb2sgYnV0Ogo+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYyBiL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMK
PiA+IGluZGV4IDQxMTQ0YjUyNDZhOC4uMTJmNGVmYjZkYzU0IDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4gKysrIGIvZHJpdmVycy92aXJ0aW8vdmlydGlv
X3JpbmcuYwo+ID4gQEAgLTg1MiwxNiArODUyLDE2IEBAIHN0YXRpYyB2b2lkIHZpcnRxdWV1ZV9k
aXNhYmxlX2NiX3NwbGl0KHN0cnVjdAo+ID4gdmlydHF1ZXVlICpfdnEpCj4gPiAgewo+ID4gICAg
ICAgICBzdHJ1Y3QgdnJpbmdfdmlydHF1ZXVlICp2cSA9IHRvX3Z2cShfdnEpOwo+ID4KPiA+IC0g
ICAgICAgaWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5HX0FWQUlMX0Zf
Tk9fSU5URVJSVVBUKSkgewo+ID4gLSAgICAgICAgICAgICAgIHZxLT5zcGxpdC5hdmFpbF9mbGFn
c19zaGFkb3cgfD0gVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQ7Cj4gPiAtICAgICAgICAgICAg
ICAgaWYgKHZxLT5ldmVudCkKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIC8qIFRPRE86IHRo
aXMgaXMgYSBoYWNrLiBGaWd1cmUgb3V0IGEgY2xlYW5lcgo+ID4gdmFsdWUgdG8gd3JpdGUuICov
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQu
dnJpbmcpID0gMHgwOwo+ID4gLSAgICAgICAgICAgICAgIGVsc2UKPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgIHZxLT5zcGxpdC52cmluZy5hdmFpbC0+ZmxhZ3MgPQo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjcHVfdG9fdmlydGlvMTYoX3ZxLT52ZGV2LAo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdnEtPnNwbGl0LmF2YWls
X2ZsYWdzX3NoYWRvdyk7Cj4gPiAtICAgICAgIH0KPiA+ICsgICAgICAgaWYgKCEodnEtPnNwbGl0
LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUKSkKPiA+ICsg
ICAgICAgICAgICAgICB2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93IHw9IFZSSU5HX0FWQUlM
X0ZfTk9fSU5URVJSVVBUOwo+ID4gKwo+ID4gKyAgICAgICBpZiAodnEtPmV2ZW50ICYmICF2cS0+
ZXZlbnRfdHJpZ2dlcmVkKQo+ID4gKyAgICAgICAgICAgICAgIC8qIFRPRE86IHRoaXMgaXMgYSBo
YWNrLiBGaWd1cmUgb3V0IGEgY2xlYW5lciB2YWx1ZSB0byB3cml0ZS4gKi8KPiA+ICsgICAgICAg
ICAgICAgICB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQudnJpbmcpID0gMHgwOwo+ID4gKyAg
ICAgICBlbHNlCj4gPiArICAgICAgICAgICAgICAgdnEtPnNwbGl0LnZyaW5nLmF2YWlsLT5mbGFn
cyA9Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBjcHVfdG9fdmlydGlvMTYoX3ZxLT52ZGV2
LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZxLT5zcGxpdC5h
dmFpbF9mbGFnc19zaGFkb3cpOwo+ID4gIH0KPiA+Cj4gPiAgc3RhdGljIHVuc2lnbmVkIGludCB2
aXJ0cXVldWVfZW5hYmxlX2NiX3ByZXBhcmVfc3BsaXQoc3RydWN0IHZpcnRxdWV1ZSAqX3ZxKQo+
ID4gQEAgLTE2OTcsOCArMTY5NywxMCBAQCBzdGF0aWMgdm9pZCB2aXJ0cXVldWVfZGlzYWJsZV9j
Yl9wYWNrZWQoc3RydWN0Cj4gPiB2aXJ0cXVldWUgKl92cSkKPiA+ICB7Cj4gPiAgICAgICAgIHN0
cnVjdCB2cmluZ192aXJ0cXVldWUgKnZxID0gdG9fdnZxKF92cSk7Cj4gPgo+ID4gLSAgICAgICBp
ZiAodnEtPnBhY2tlZC5ldmVudF9mbGFnc19zaGFkb3cgIT0gVlJJTkdfUEFDS0VEX0VWRU5UX0ZM
QUdfRElTQUJMRSkgewo+ID4gKyAgICAgICBpZiAoISh2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3No
YWRvdyAmIFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEUpKQo+ID4gICAgICAgICAgICAg
ICAgIHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93ID0gVlJJTkdfUEFDS0VEX0VWRU5UX0ZM
QUdfRElTQUJMRTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKHZxLT5ldmVudF90cmlnZ2VyZWQpCj4K
PiBJIGRvbid0IGdldCB0aGlzIG9uZS4gaWYgZXZlbnRfdHJpZ2dlcmVkIHdoeSBkbyB5b3Ugc3Rp
bGwgd2FudCB0bwo+IHdyaXRlIGludG8gZHJpdmVyIGZsYWdzPyBpdCB3b24ndCB0cmlnZ2VyIGFn
YWluIGFueXRpbWUgc29vbi4KClNob3VsZCBiZSBhIHR5cG8uCgo+Cj4gPiAgICAgICAgICAgICAg
ICAgdnEtPnBhY2tlZC52cmluZy5kcml2ZXItPmZsYWdzID0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGNwdV90b19sZTE2KHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93KTsKPiA+ICAg
ICAgICAgfQo+ID4gQEAgLTIzMzAsMTIgKzIzMzIsNiBAQCB2b2lkIHZpcnRxdWV1ZV9kaXNhYmxl
X2NiKHN0cnVjdCB2aXJ0cXVldWUgKl92cSkKPiA+ICB7Cj4gPiAgICAgICAgIHN0cnVjdCB2cmlu
Z192aXJ0cXVldWUgKnZxID0gdG9fdnZxKF92cSk7Cj4gPgo+ID4gLSAgICAgICAvKiBJZiBkZXZp
Y2UgdHJpZ2dlcmVkIGFuIGV2ZW50IGFscmVhZHkgaXQgd29uJ3QgdHJpZ2dlciBvbmUgYWdhaW46
Cj4gPiAtICAgICAgICAqIG5vIG5lZWQgdG8gZGlzYWJsZS4KPiA+IC0gICAgICAgICovCj4gPiAt
ICAgICAgIGlmICh2cS0+ZXZlbnRfdHJpZ2dlcmVkKQo+ID4gLSAgICAgICAgICAgICAgIHJldHVy
bjsKPiA+IC0KPiA+ICAgICAgICAgaWYgKHZxLT5wYWNrZWRfcmluZykKPiA+ICAgICAgICAgICAg
ICAgICB2aXJ0cXVldWVfZGlzYWJsZV9jYl9wYWNrZWQoX3ZxKTsKPiA+ICAgICAgICAgZWxzZQo+
ID4KPiA+IFRoYW5rcwo+Cj4gSSB0aGluayBJIHByZWZlciBIdWFuZyBBbGJlcnQncyBvdGhlciBw
YXRjaCAtIGFyZSB5b3Ugb2sgd2l0aCBpdD8KClllcy4KClRoYW5rcwoKPgo+ID4gPgo+ID4gPiBU
aGFua3MKPiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSSdsbCBoYXZlIGEgY2xv
c2VyIGxvb2sgYWZ0ZXIgd29yaywgYnV0IGFueSBhZHZpY2UgbWVhbndoaWxlIHdpbGwgYmUKPiA+
ID4gPiA+IGFwcHJlY2lhdGVkIQo+ID4gPiA+ID4gKEknbSBzdXJlIEx1aXMgd291bGQgYWxzbyBs
aWtlIGEgdGVtcG9yYXJ5IGRyb3AgZnJvbSAtbmV4dCB1bnRpbAo+ID4gPiA+ID4gdGhpcyBpcyBm
aWd1cmVkIG91dCwgYnV0IEknbGwgbGVhdmUgdGhpcyB1cCB0byB5b3UpCj4gPiA+ID4gPgo+ID4g
PiA+ID4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gSWYgd2UgZGlzYWJsZSB0aGUgbmFwaV90eCwg
aXQgd2lsbCBvbmx5IGJlIGNhbGxlZCB3aGVuIHRoZSB0eCByaW5nCj4gPiA+ID4gPiA+IGJ1ZmZl
ciBpcyByZWxhdGl2ZWx5IHNtYWxsLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBCZWNhdXNlIGV2
ZW50X3RyaWdnZXJlZCBpcyB0cnVlLiBUaGVyZWZvcmUsIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJS
VVBUIG9yCj4gPiA+ID4gPiA+IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEUgd2lsbCBu
b3QgYmUgc2V0LiBTbyB3ZSB1cGRhdGUKPiA+ID4gPiA+ID4gdnJpbmdfdXNlZF9ldmVudCgmdnEt
PnNwbGl0LnZyaW5nKSBvciB2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+b2ZmX3dyYXAKPiA+ID4g
PiA+ID4gZXZlcnkgdGltZSB3ZSBjYWxsIHZpcnRxdWV1ZV9nZXRfYnVmX2N0eC4gVGhpcyB3aWxs
IGJyaW5nIG1vcmUgaW50ZXJydXB0aW9ucy4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gVG8gc3Vt
bWFyaXplOgo+ID4gPiA+ID4gPiAxKSBldmVudF90cmlnZ2VyZWQgd2FzIHNldCB0byB0cnVlIGlu
IHZyaW5nX2ludGVycnVwdCgpCj4gPiA+ID4gPiA+IDIpIGFmdGVyIHRoaXMgbm90aGluZyB3aWxs
IGhhcHBlbiBmb3IgdmlydHF1ZXVlX2Rpc2FibGVfY2IoKSBzbwo+ID4gPiA+ID4gPiAgICBWUklO
R19BVkFJTF9GX05PX0lOVEVSUlVQVCBpcyBub3Qgc2V0IGluIGF2YWlsX2ZsYWdzX3NoYWRvdwo+
ID4gPiA+ID4gPiAzKSB2aXJ0cXVldWVfZ2V0X2J1Zl9jdHhfc3BsaXQoKSB3aWxsIHN0aWxsIHRo
aW5rIHRoZSBjYiBpcyBlbmFibGVkCj4gPiA+ID4gPiA+ICAgIHRoZW4gaXQgdHJpZXMgdG8gcHVi
bGlzaCBuZXcgZXZlbnQKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gVG8gZml4LCBpZiBldmVudF90
cmlnZ2VyZWQgaXMgc2V0IHRvIHRydWUsIGRvIG5vdCB1cGRhdGUKPiA+ID4gPiA+ID4gdnJpbmdf
dXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSBvciB2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+
b2ZmX3dyYXAKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gVGVzdGVkIHdpdGggaXBlcmY6Cj4gPiA+
ID4gPiA+IGlwZXJmMyB0Y3Agc3RyZWFtOgo+ID4gPiA+ID4gPiB2bTEgLS0tLS0tLS0tLS0tLS0t
LS0+IHZtMgo+ID4gPiA+ID4gPiB2bTIganVzdCByZWNlaXZlcyB0Y3AgZGF0YSBzdHJlYW0gZnJv
bSB2bTEsIGFuZCBzZW5kcyB0aGUgYWNrIHRvIHZtMSwKPiA+ID4gPiA+ID4gdGhlcmUgYXJlIG1h
bnkgdHggaW50ZXJydXB0cyBpbiB2bTIuCj4gPiA+ID4gPiA+IGJ1dCB3aXRob3V0IGV2ZW50X3Ry
aWdnZXJlZCB0aGVyZSBhcmUganVzdCBhIGZldyB0eCBpbnRlcnJ1cHRzLgo+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiBGaXhlczogOGQ2MjJkMjFkMjQ4ICgidmlydGlvOiBmaXggdXAgdmlydGlvX2Rp
c2FibGVfY2IiKQo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGJlcnQgSHVhbmcgPGh1YW5n
amllLmFsYmVydEBieXRlZGFuY2UuY29tPgo+ID4gPiA+ID4gPiBNZXNzYWdlLUlkOiA8MjAyMzAz
MjEwODU5NTMuMjQ5NDktMS1odWFuZ2ppZS5hbGJlcnRAYnl0ZWRhbmNlLmNvbT4KPiA+ID4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBTLiBUc2lya2luIDxtc3RAcmVkaGF0LmNvbT4KPiA+
ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jIHwg
NiArKysrLS0KPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3ZpcnRpby92aXJ0aW9fcmluZy5jIGIvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4g
PiA+ID4gPiBpbmRleCBjYmVlZWExYjA0MzkuLjFjMzZmYTQ3Nzk2NiAxMDA2NDQKPiA+ID4gPiA+
ID4gLS0tIGEvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4gPiA+ID4gPiArKysgYi9k
cml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCj4gPiA+ID4gPiA+IEBAIC05MTQsNyArOTE0LDgg
QEAgc3RhdGljIHZvaWQgKnZpcnRxdWV1ZV9nZXRfYnVmX2N0eF9zcGxpdChzdHJ1Y3QgdmlydHF1
ZXVlICpfdnEsCj4gPiA+ID4gPiA+ICAgICAgIC8qIElmIHdlIGV4cGVjdCBhbiBpbnRlcnJ1cHQg
Zm9yIHRoZSBuZXh0IGVudHJ5LCB0ZWxsIGhvc3QKPiA+ID4gPiA+ID4gICAgICAgICogYnkgd3Jp
dGluZyBldmVudCBpbmRleCBhbmQgZmx1c2ggb3V0IHRoZSB3cml0ZSBiZWZvcmUKPiA+ID4gPiA+
ID4gICAgICAgICogdGhlIHJlYWQgaW4gdGhlIG5leHQgZ2V0X2J1ZiBjYWxsLiAqLwo+ID4gPiA+
ID4gPiAtICAgICBpZiAoISh2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93ICYgVlJJTkdfQVZB
SUxfRl9OT19JTlRFUlJVUFQpKQo+ID4gPiA+ID4gPiArICAgICBpZiAodW5saWtlbHkoISh2cS0+
c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93ICYgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQpICYm
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAhdnEtPmV2ZW50X3RyaWdnZXJlZCkpCj4g
PiA+ID4gPiA+ICAgICAgICAgICAgICAgdmlydGlvX3N0b3JlX21iKHZxLT53ZWFrX2JhcnJpZXJz
LAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmdnJpbmdfdXNlZF9l
dmVudCgmdnEtPnNwbGl0LnZyaW5nKSwKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY3B1X3RvX3ZpcnRpbzE2KF92cS0+dmRldiwgdnEtPmxhc3RfdXNlZF9pZHgpKTsK
PiA+ID4gPiA+ID4gQEAgLTE3NDQsNyArMTc0NSw4IEBAIHN0YXRpYyB2b2lkICp2aXJ0cXVldWVf
Z2V0X2J1Zl9jdHhfcGFja2VkKHN0cnVjdCB2aXJ0cXVldWUgKl92cSwKPiA+ID4gPiA+ID4gICAg
ICAgICogYnkgd3JpdGluZyBldmVudCBpbmRleCBhbmQgZmx1c2ggb3V0IHRoZSB3cml0ZSBiZWZv
cmUKPiA+ID4gPiA+ID4gICAgICAgICogdGhlIHJlYWQgaW4gdGhlIG5leHQgZ2V0X2J1ZiBjYWxs
Lgo+ID4gPiA+ID4gPiAgICAgICAgKi8KPiA+ID4gPiA+ID4gLSAgICAgaWYgKHZxLT5wYWNrZWQu
ZXZlbnRfZmxhZ3Nfc2hhZG93ID09IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RFU0MpCj4gPiA+
ID4gPiA+ICsgICAgIGlmICh1bmxpa2VseSh2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyA9
PSBWUklOR19QQUNLRURfRVZFTlRfRkxBR19ERVNDICYmCj4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAhdnEtPmV2ZW50X3RyaWdnZXJlZCkpCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAg
dmlydGlvX3N0b3JlX21iKHZxLT53ZWFrX2JhcnJpZXJzLAo+ID4gPiA+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmdnEtPnBhY2tlZC52cmluZy5kcml2ZXItPm9mZl93cmFwLAo+
ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjcHVfdG9fbGUxNih2cS0+
bGFzdF91c2VkX2lkeCkpOwo+ID4gPiA+ID4KPiA+ID4gPgo+ID4gPgo+CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
