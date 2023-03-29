Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EA76CD1C6
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Mar 2023 07:42:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phOa7-000367-MC;
	Wed, 29 Mar 2023 05:42:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1phOa6-000360-HS
 for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 05:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fxm8qRZte/FTaGyF5RaotQwgYQ+JMEbj0EH5BzdfLDU=; b=Kj9+6wAH5mbb0iDjjYaAKzF1dP
 ipYXQ0upkBGeWP9Ffcla8kfyBl6yeP4aB2DLr8Jg0cAy7wIgo+//wZTe1nZ7fET8PMxFMIXf6QbjM
 ODXBPtt/73d6TcB9yeTXXQIDqAS1owDlZAVrxaL4GluesrXq1G3NexlTwiA9LZ2t1Pa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fxm8qRZte/FTaGyF5RaotQwgYQ+JMEbj0EH5BzdfLDU=; b=NAf8LaDMUiWf1AGRr/X9A1YjGf
 PRnUwwDgMRaHbGLB+0UAvVfj8Ln4bsbz3C60BVBM/7skspguqrNhKLCiFnoBjyAoDO+ICFSAl9h3A
 xg73g+qpzJrUuNch6Bps5iT1oLvldvkRrPHaWf0eX4vcvqT1oEXLiueT/fs5z6QylwGY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phOa6-0082Yf-Ex for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 05:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680068560;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fxm8qRZte/FTaGyF5RaotQwgYQ+JMEbj0EH5BzdfLDU=;
 b=K3NmSW7vaA9yy3knX92J/5EYGRp/NgGxBAosa+m4J1lyn/D7A9YPBMDD5SEfWdjYkw+IKS
 k+kODPztAUD+EwWxBOc+gL6tAhTzRGRLhhq3gbLX+SjPkKZRd19wMHqyLCLdcmYH/N8VWd
 otaPqcJpTvNNF7kD7aRy5TQAtjOb8xY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-532-4rNHQ7l1Mx6crpsRXHk48w-1; Wed, 29 Mar 2023 01:42:38 -0400
X-MC-Unique: 4rNHQ7l1Mx6crpsRXHk48w-1
Received: by mail-wm1-f69.google.com with SMTP id
 ay37-20020a05600c1e2500b003ee69edec16so8285598wmb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 22:42:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680068557;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Fxm8qRZte/FTaGyF5RaotQwgYQ+JMEbj0EH5BzdfLDU=;
 b=FDqyVG9uxfbQVKXB8wTJpvUb2wtezzR8hylNGUgqh9QNCmfUBQn8euY3pTFQdNAUeH
 6DCUGEQ+yS9bOyMOeDmPGvIUf4WmJZWpQVQOD+5mrE9cZuzMCRFKTW8Sm4q6pDOmPiRG
 Cq8R+75KeAcH/Ksj7pZ6VYtGq3mibzVFxLca0pxWoVTrC0Sbt1Xn9PYlQq/4E+ZVT1Jk
 +NOTesluOtCfknLQqQmyMUZnSdmFu2A/l/NL31bAnm77KEICcYAB0iUdJrerNMWr0w0C
 xuRHlnSZEZ9E+645L2fMXu145Sc6PkWJBPjOALy8QtTC89RvOhwJsubsrkEWkKTvbm6d
 F1gw==
X-Gm-Message-State: AAQBX9c7K+XQI4qsH3UryKsbjjpyfjLZ47kWnhyHclNbIbFaENPsqZ2n
 tN26i9RYK45AkDL2UnS4017Bxk5oOUc/wjO1VJZFu8hIGlREvTY3ipKfUmzJwsKcRSFHAc9CZaj
 PENmnQ4HjZbtMr+CrLvZMHKX2lSdzF8yn0zs=
X-Received: by 2002:adf:e90c:0:b0:2cf:eeae:88c3 with SMTP id
 f12-20020adfe90c000000b002cfeeae88c3mr14980755wrm.32.1680068557480; 
 Tue, 28 Mar 2023 22:42:37 -0700 (PDT)
X-Google-Smtp-Source: AKy350YX1BcLbWkoq8DoA9CqaJNgzwsN1t/seldtwaG8EyIJMgkXoQZImhX+zijkO/qOncCrFsq11w==
X-Received: by 2002:adf:e90c:0:b0:2cf:eeae:88c3 with SMTP id
 f12-20020adfe90c000000b002cfeeae88c3mr14980744wrm.32.1680068557142; 
 Tue, 28 Mar 2023 22:42:37 -0700 (PDT)
Received: from redhat.com ([2.52.18.165]) by smtp.gmail.com with ESMTPSA id
 b3-20020a5d4d83000000b002dfca33ba36sm7714042wru.8.2023.03.28.22.42.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 22:42:36 -0700 (PDT)
Date: Wed, 29 Mar 2023 01:42:29 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20230329013722-mutt-send-email-mst@kernel.org>
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
 <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
 <CABKxMyPwuRb6p-oHxcQDhRtJv04=NDWvosNAp=epgvdrfCeveg@mail.gmail.com>
 <CACGkMEuukvjXBTDX2K9YLYmpHsqK96AiMK39gbm3+f_+kUydMQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkMEuukvjXBTDX2K9YLYmpHsqK96AiMK39gbm3+f_+kUydMQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Mar 28, 2023 at 11:39:59AM +0800, Jason Wang wrote:
    > On Tue, Mar 28, 2023 at 11:09 AM 黄杰 <huangjie.albert@bytedance.com>
    wrote: > > > > Jason Wang <jasowang@redhat.com> 于2023年3月28 [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phOa6-0082Yf-Ex
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
Cc: =?utf-8?B?6buE5p2w?= <huangjie.albert@bytedance.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTE6Mzk6NTlBTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiBPbiBUdWUsIE1hciAyOCwgMjAyMyBhdCAxMTowOeKAr0FNIOm7hOadsCA8aHVhbmdqaWUu
YWxiZXJ0QGJ5dGVkYW5jZS5jb20+IHdyb3RlOgo+ID4KPiA+IEphc29uIFdhbmcgPGphc293YW5n
QHJlZGhhdC5jb20+IOS6jjIwMjPlubQz5pyIMjjml6XlkajkuowgMTA6NTnlhpnpgZPvvJoKPiA+
ID4KPiA+ID4gT24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTA6MTPigK9BTSBEb21pbmlxdWUgTWFy
dGluZXQKPiA+ID4gPGFzbWFkZXVzQGNvZGV3cmVjay5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+
ID4gSGkgTWljaGFlbCwgQWxiZXJ0LAo+ID4gPiA+Cj4gPiA+ID4gQWxiZXJ0IEh1YW5nIHdyb3Rl
IG9uIFNhdCwgTWFyIDI1LCAyMDIzIGF0IDA2OjU2OjMzUE0gKzA4MDA6Cj4gPiA+ID4gPiBpbiB2
aXJ0aW9fbmV0LCBpZiB3ZSBkaXNhYmxlIHRoZSBuYXBpX3R4LCB3aGVuIHdlIHRyaWdlciBhIHR4
IGludGVycnVwdCwKPiA+ID4gPiA+IHRoZSB2cS0+ZXZlbnRfdHJpZ2dlcmVkIHdpbGwgYmUgc2V0
IHRvIHRydWUuIEl0IHdpbGwgbm8gbG9uZ2VyIGJlIHNldCB0bwo+ID4gPiA+ID4gZmFsc2UuIFVu
bGVzcyB3ZSBleHBsaWNpdGx5IGNhbGwgdmlydHF1ZXVlX2VuYWJsZV9jYl9kZWxheWVkIG9yCj4g
PiA+ID4gPiB2aXJ0cXVldWVfZW5hYmxlX2NiX3ByZXBhcmUuCj4gPiA+ID4KPiA+ID4gPiBUaGlz
IHBhdGNoIChjb21taXRlZCBhcyAzNTM5NTc3MGY4MDMgKCJ2aXJ0aW9fcmluZzogZG9uJ3QgdXBk
YXRlIGV2ZW50Cj4gPiA+ID4gaWR4IG9uIGdldF9idWYiKSBpbiBuZXh0LTIwMjMwMzI3IGFwcGFy
ZW50bHkgYnJlYWtzIDlwLCBhcyByZXBvcnRlZCBieQo+ID4gPiA+IEx1aXMgaW4gaHR0cHM6Ly9s
a21sLmtlcm5lbC5vcmcvci9aQ0krN1dnNU9jbFNsRThjQGJvbWJhZGlsLmluZnJhZGVhZC5vcmcK
PiA+ID4gPgo+ID4gPiA+IEkndmUganVzdCBoaXQgaGFkIGEgbG9vayBhdCByZWNlbnQgcGF0Y2hl
c1sxXSBhbmQgcmV2ZXJ0ZWQgdGhpcyB0byB0ZXN0Cj4gPiA+ID4gYW5kIEkgY2FuIG1vdW50IGFn
YWluLCBzbyBJJ20gcHJldHR5IHN1cmUgdGhpcyBpcyB0aGUgY3VscHJpdCwgYnV0IEkKPiA+ID4g
PiBkaWRuJ3QgbG9vayBhdCB0aGUgY29udGVudCBhdCBhbGwgeWV0IHNvIGNhbm5vdCBhZHZpc2Ug
ZnVydGhlci4KPiA+ID4gPiBJdCBtaWdodCB2ZXJ5IHdlbGwgYmUgdGhhdCB3ZSBuZWVkIHNvbWUg
ZXh0cmEgaGFuZGxpbmcgZm9yIDlwCj4gPiA+ID4gc3BlY2lmaWNhbGx5IHRoYXQgY2FuIGJlIGFk
ZGVkIHNlcGFyYXRlbHkgaWYgcmVxdWlyZWQuCj4gPiA+ID4KPiA+ID4gPiBbMV0gZ2l0IGxvZyAw
ZWM1N2NmYTcyMWZiZDM2YjRjNGMwZDljY2M1ZDc4YTc4ZjdmYTM1Li5IRUFEIGRyaXZlcnMvdmly
dGlvLwo+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBUaGlzIGNhbiBiZSByZXByb2R1Y2VkIHdpdGgg
YSBzaW1wbGUgbW91bnQsIHJ1biBxZW11IHdpdGggc29tZSAtdmlydGZzCj4gPiA+ID4gYXJndW1l
bnQgYW5kIGBtb3VudCAtdCA5cCAtbyBkZWJ1Zz02NTUzNSB0YWcgbW91bnRwb2ludGAgd2lsbCBo
YW5nIGFmdGVyCj4gPiA+ID4gdGhlc2UgbWVzc2FnZXM6Cj4gPiA+ID4gOXBuZXQ6IC0tIHA5X3Zp
cnRpb19yZXF1ZXN0ICg4Myk6IDlwIGRlYnVnOiB2aXJ0aW8gcmVxdWVzdAo+ID4gPiA+IDlwbmV0
OiAtLSBwOV92aXJ0aW9fcmVxdWVzdCAoODMpOiB2aXJ0aW8gcmVxdWVzdCBraWNrZWQKPiA+ID4g
Pgo+ID4gPiA+IFNvIEkgc3VzcGVjdCB3ZSdyZSBqdXN0IG5vdCBnZXR0aW5nIGEgY2FsbGJhY2su
Cj4gPiA+Cj4gPiA+IEkgdGhpbmsgc28uIFRoZSBwYXRjaCBhc3N1bWVzIHRoZSBkcml2ZXIgd2ls
bCBjYWxsCj4gPiA+IHZpcnRxdWV1ZV9kaXNhYmxlL2VuYWJsZV9jYigpIHdoaWNoIGlzIG5vdCB0
aGUgY2FzZSBvZiB0aGUgOXAgZHJpdmVyLgo+ID4gPgo+ID4gPiBTbyBhZnRlciB0aGUgZmlyc3Qg
aW50ZXJydXB0LCBldmVudF90cmlnZ2VyZWQgd2lsbCBiZSBzZXQgdG8gdHJ1ZSBmb3JldmVyLgo+
ID4gPgo+ID4gPiBUaGFua3MKPiA+ID4KPiA+Cj4gPiBIaTogV2FuZwo+ID4KPiA+IFllcywgIFRo
aXMgcGF0Y2ggYXNzdW1lcyB0aGF0IGFsbCB2aXJ0aW8tcmVsYXRlZCBkcml2ZXJzIHdpbGwgY2Fs
bAo+ID4gdmlydHF1ZXVlX2Rpc2FibGUvZW5hYmxlX2NiKCkuCj4gPiBUaGFuayB5b3UgZm9yIHJh
aXNpbmcgdGhpcyBpc3N1ZS4KPiA+Cj4gPiBJdCBzZWVtcyB0aGF0IG5hcGlfdHggaXMgb25seSBy
ZWxhdGVkIHRvIHZpcnR1ZV9uZXQuIEknbSB0aGlua2luZyBpZgo+ID4gd2UgbmVlZCB0byByZWZh
Y3Rvcgo+ID4gbmFwaV90eCBpbnN0ZWFkIG9mIGltcGxlbWVudGluZyBpdCBpbnNpZGUgdmlydGlv
X3JpbmcuCj4gCj4gV2UgY2FuIGhlYXIgZnJvbSBvdGhlcnMuCj4gCj4gSSB0aGluayBpdCdzIGJl
dHRlciBub3QgdG8gd29ya2Fyb3VuZCB2aXJ0aW9fcmluZyBpc3N1ZXMgaW4gYSBzcGVjaWZpYwo+
IGRyaXZlci4gSXQgbWlnaHQganVzdCBhZGQgbW9yZSBoYWNrcy4gV2Ugc2hvdWxkIGNvcnJlY3Rs
eSBzZXQKPiBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCwKPiAKPiBEbyB5b3UgdGhpbmsgdGhl
IGZvbGxvd2luZyBtaWdodCB3b3JrIChub3QgZXZlbiBhIGNvbXBpbGUgdGVzdCk/CgoKb2sgYnV0
OgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYyBiL2RyaXZlcnMv
dmlydGlvL3ZpcnRpb19yaW5nLmMKPiBpbmRleCA0MTE0NGI1MjQ2YTguLjEyZjRlZmI2ZGM1NCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCj4gKysrIGIvZHJpdmVy
cy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+IEBAIC04NTIsMTYgKzg1MiwxNiBAQCBzdGF0aWMgdm9p
ZCB2aXJ0cXVldWVfZGlzYWJsZV9jYl9zcGxpdChzdHJ1Y3QKPiB2aXJ0cXVldWUgKl92cSkKPiAg
ewo+ICAgICAgICAgc3RydWN0IHZyaW5nX3ZpcnRxdWV1ZSAqdnEgPSB0b192dnEoX3ZxKTsKPiAK
PiAtICAgICAgIGlmICghKHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFkb3cgJiBWUklOR19BVkFJ
TF9GX05PX0lOVEVSUlVQVCkpIHsKPiAtICAgICAgICAgICAgICAgdnEtPnNwbGl0LmF2YWlsX2Zs
YWdzX3NoYWRvdyB8PSBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVDsKPiAtICAgICAgICAgICAg
ICAgaWYgKHZxLT5ldmVudCkKPiAtICAgICAgICAgICAgICAgICAgICAgICAvKiBUT0RPOiB0aGlz
IGlzIGEgaGFjay4gRmlndXJlIG91dCBhIGNsZWFuZXIKPiB2YWx1ZSB0byB3cml0ZS4gKi8KPiAt
ICAgICAgICAgICAgICAgICAgICAgICB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQudnJpbmcp
ID0gMHgwOwo+IC0gICAgICAgICAgICAgICBlbHNlCj4gLSAgICAgICAgICAgICAgICAgICAgICAg
dnEtPnNwbGl0LnZyaW5nLmF2YWlsLT5mbGFncyA9Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjcHVfdG9fdmlydGlvMTYoX3ZxLT52ZGV2LAo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFkb3cp
Owo+IC0gICAgICAgfQo+ICsgICAgICAgaWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRv
dyAmIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUKSkKPiArICAgICAgICAgICAgICAgdnEtPnNw
bGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyB8PSBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVDsKPiAr
Cj4gKyAgICAgICBpZiAodnEtPmV2ZW50ICYmICF2cS0+ZXZlbnRfdHJpZ2dlcmVkKQo+ICsgICAg
ICAgICAgICAgICAvKiBUT0RPOiB0aGlzIGlzIGEgaGFjay4gRmlndXJlIG91dCBhIGNsZWFuZXIg
dmFsdWUgdG8gd3JpdGUuICovCj4gKyAgICAgICAgICAgICAgIHZyaW5nX3VzZWRfZXZlbnQoJnZx
LT5zcGxpdC52cmluZykgPSAweDA7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgIHZx
LT5zcGxpdC52cmluZy5hdmFpbC0+ZmxhZ3MgPQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNw
dV90b192aXJ0aW8xNihfdnEtPnZkZXYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFkb3cpOwo+ICB9Cj4gCj4gIHN0YXRp
YyB1bnNpZ25lZCBpbnQgdmlydHF1ZXVlX2VuYWJsZV9jYl9wcmVwYXJlX3NwbGl0KHN0cnVjdCB2
aXJ0cXVldWUgKl92cSkKPiBAQCAtMTY5Nyw4ICsxNjk3LDEwIEBAIHN0YXRpYyB2b2lkIHZpcnRx
dWV1ZV9kaXNhYmxlX2NiX3BhY2tlZChzdHJ1Y3QKPiB2aXJ0cXVldWUgKl92cSkKPiAgewo+ICAg
ICAgICAgc3RydWN0IHZyaW5nX3ZpcnRxdWV1ZSAqdnEgPSB0b192dnEoX3ZxKTsKPiAKPiAtICAg
ICAgIGlmICh2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyAhPSBWUklOR19QQUNLRURfRVZF
TlRfRkxBR19ESVNBQkxFKSB7Cj4gKyAgICAgICBpZiAoISh2cS0+cGFja2VkLmV2ZW50X2ZsYWdz
X3NoYWRvdyAmIFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEUpKQo+ICAgICAgICAgICAg
ICAgICB2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyA9IFZSSU5HX1BBQ0tFRF9FVkVOVF9G
TEFHX0RJU0FCTEU7Cj4gKwo+ICsgICAgICAgaWYgKHZxLT5ldmVudF90cmlnZ2VyZWQpCgpJIGRv
bid0IGdldCB0aGlzIG9uZS4gaWYgZXZlbnRfdHJpZ2dlcmVkIHdoeSBkbyB5b3Ugc3RpbGwgd2Fu
dCB0bwp3cml0ZSBpbnRvIGRyaXZlciBmbGFncz8gaXQgd29uJ3QgdHJpZ2dlciBhZ2FpbiBhbnl0
aW1lIHNvb24uCgo+ICAgICAgICAgICAgICAgICB2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+Zmxh
Z3MgPQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNwdV90b19sZTE2KHZxLT5wYWNrZWQuZXZl
bnRfZmxhZ3Nfc2hhZG93KTsKPiAgICAgICAgIH0KPiBAQCAtMjMzMCwxMiArMjMzMiw2IEBAIHZv
aWQgdmlydHF1ZXVlX2Rpc2FibGVfY2Ioc3RydWN0IHZpcnRxdWV1ZSAqX3ZxKQo+ICB7Cj4gICAg
ICAgICBzdHJ1Y3QgdnJpbmdfdmlydHF1ZXVlICp2cSA9IHRvX3Z2cShfdnEpOwo+IAo+IC0gICAg
ICAgLyogSWYgZGV2aWNlIHRyaWdnZXJlZCBhbiBldmVudCBhbHJlYWR5IGl0IHdvbid0IHRyaWdn
ZXIgb25lIGFnYWluOgo+IC0gICAgICAgICogbm8gbmVlZCB0byBkaXNhYmxlLgo+IC0gICAgICAg
ICovCj4gLSAgICAgICBpZiAodnEtPmV2ZW50X3RyaWdnZXJlZCkKPiAtICAgICAgICAgICAgICAg
cmV0dXJuOwo+IC0KPiAgICAgICAgIGlmICh2cS0+cGFja2VkX3JpbmcpCj4gICAgICAgICAgICAg
ICAgIHZpcnRxdWV1ZV9kaXNhYmxlX2NiX3BhY2tlZChfdnEpOwo+ICAgICAgICAgZWxzZQo+IAo+
IFRoYW5rcwoKSSB0aGluayBJIHByZWZlciBIdWFuZyBBbGJlcnQncyBvdGhlciBwYXRjaCAtIGFy
ZSB5b3Ugb2sgd2l0aCBpdD8KCj4gPgo+ID4gVGhhbmtzCj4gPgo+ID4gPiA+Cj4gPiA+ID4KPiA+
ID4gPiBJJ2xsIGhhdmUgYSBjbG9zZXIgbG9vayBhZnRlciB3b3JrLCBidXQgYW55IGFkdmljZSBt
ZWFud2hpbGUgd2lsbCBiZQo+ID4gPiA+IGFwcHJlY2lhdGVkIQo+ID4gPiA+IChJJ20gc3VyZSBM
dWlzIHdvdWxkIGFsc28gbGlrZSBhIHRlbXBvcmFyeSBkcm9wIGZyb20gLW5leHQgdW50aWwKPiA+
ID4gPiB0aGlzIGlzIGZpZ3VyZWQgb3V0LCBidXQgSSdsbCBsZWF2ZSB0aGlzIHVwIHRvIHlvdSkK
PiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSWYgd2UgZGlzYWJsZSB0aGUgbmFw
aV90eCwgaXQgd2lsbCBvbmx5IGJlIGNhbGxlZCB3aGVuIHRoZSB0eCByaW5nCj4gPiA+ID4gPiBi
dWZmZXIgaXMgcmVsYXRpdmVseSBzbWFsbC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBCZWNhdXNlIGV2
ZW50X3RyaWdnZXJlZCBpcyB0cnVlLiBUaGVyZWZvcmUsIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJS
VVBUIG9yCj4gPiA+ID4gPiBWUklOR19QQUNLRURfRVZFTlRfRkxBR19ESVNBQkxFIHdpbGwgbm90
IGJlIHNldC4gU28gd2UgdXBkYXRlCj4gPiA+ID4gPiB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3Bs
aXQudnJpbmcpIG9yIHZxLT5wYWNrZWQudnJpbmcuZHJpdmVyLT5vZmZfd3JhcAo+ID4gPiA+ID4g
ZXZlcnkgdGltZSB3ZSBjYWxsIHZpcnRxdWV1ZV9nZXRfYnVmX2N0eC4gVGhpcyB3aWxsIGJyaW5n
IG1vcmUgaW50ZXJydXB0aW9ucy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUbyBzdW1tYXJpemU6Cj4g
PiA+ID4gPiAxKSBldmVudF90cmlnZ2VyZWQgd2FzIHNldCB0byB0cnVlIGluIHZyaW5nX2ludGVy
cnVwdCgpCj4gPiA+ID4gPiAyKSBhZnRlciB0aGlzIG5vdGhpbmcgd2lsbCBoYXBwZW4gZm9yIHZp
cnRxdWV1ZV9kaXNhYmxlX2NiKCkgc28KPiA+ID4gPiA+ICAgIFZSSU5HX0FWQUlMX0ZfTk9fSU5U
RVJSVVBUIGlzIG5vdCBzZXQgaW4gYXZhaWxfZmxhZ3Nfc2hhZG93Cj4gPiA+ID4gPiAzKSB2aXJ0
cXVldWVfZ2V0X2J1Zl9jdHhfc3BsaXQoKSB3aWxsIHN0aWxsIHRoaW5rIHRoZSBjYiBpcyBlbmFi
bGVkCj4gPiA+ID4gPiAgICB0aGVuIGl0IHRyaWVzIHRvIHB1Ymxpc2ggbmV3IGV2ZW50Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gVG8gZml4LCBpZiBldmVudF90cmlnZ2VyZWQgaXMgc2V0IHRvIHRydWUs
IGRvIG5vdCB1cGRhdGUKPiA+ID4gPiA+IHZyaW5nX3VzZWRfZXZlbnQoJnZxLT5zcGxpdC52cmlu
Zykgb3IgdnEtPnBhY2tlZC52cmluZy5kcml2ZXItPm9mZl93cmFwCj4gPiA+ID4gPgo+ID4gPiA+
ID4gVGVzdGVkIHdpdGggaXBlcmY6Cj4gPiA+ID4gPiBpcGVyZjMgdGNwIHN0cmVhbToKPiA+ID4g
PiA+IHZtMSAtLS0tLS0tLS0tLS0tLS0tLT4gdm0yCj4gPiA+ID4gPiB2bTIganVzdCByZWNlaXZl
cyB0Y3AgZGF0YSBzdHJlYW0gZnJvbSB2bTEsIGFuZCBzZW5kcyB0aGUgYWNrIHRvIHZtMSwKPiA+
ID4gPiA+IHRoZXJlIGFyZSBtYW55IHR4IGludGVycnVwdHMgaW4gdm0yLgo+ID4gPiA+ID4gYnV0
IHdpdGhvdXQgZXZlbnRfdHJpZ2dlcmVkIHRoZXJlIGFyZSBqdXN0IGEgZmV3IHR4IGludGVycnVw
dHMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gRml4ZXM6IDhkNjIyZDIxZDI0OCAoInZpcnRpbzogZml4
IHVwIHZpcnRpb19kaXNhYmxlX2NiIikKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsYmVydCBI
dWFuZyA8aHVhbmdqaWUuYWxiZXJ0QGJ5dGVkYW5jZS5jb20+Cj4gPiA+ID4gPiBNZXNzYWdlLUlk
OiA8MjAyMzAzMjEwODU5NTMuMjQ5NDktMS1odWFuZ2ppZS5hbGJlcnRAYnl0ZWRhbmNlLmNvbT4K
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUy4gVHNpcmtpbiA8bXN0QHJlZGhhdC5j
b20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5j
IHwgNiArKysrLS0KPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+ID4gPiA+ID4KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Zp
cnRpby92aXJ0aW9fcmluZy5jIGIvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4gPiA+
ID4gaW5kZXggY2JlZWVhMWIwNDM5Li4xYzM2ZmE0Nzc5NjYgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3Zp
cnRpby92aXJ0aW9fcmluZy5jCj4gPiA+ID4gPiBAQCAtOTE0LDcgKzkxNCw4IEBAIHN0YXRpYyB2
b2lkICp2aXJ0cXVldWVfZ2V0X2J1Zl9jdHhfc3BsaXQoc3RydWN0IHZpcnRxdWV1ZSAqX3ZxLAo+
ID4gPiA+ID4gICAgICAgLyogSWYgd2UgZXhwZWN0IGFuIGludGVycnVwdCBmb3IgdGhlIG5leHQg
ZW50cnksIHRlbGwgaG9zdAo+ID4gPiA+ID4gICAgICAgICogYnkgd3JpdGluZyBldmVudCBpbmRl
eCBhbmQgZmx1c2ggb3V0IHRoZSB3cml0ZSBiZWZvcmUKPiA+ID4gPiA+ICAgICAgICAqIHRoZSBy
ZWFkIGluIHRoZSBuZXh0IGdldF9idWYgY2FsbC4gKi8KPiA+ID4gPiA+IC0gICAgIGlmICghKHZx
LT5zcGxpdC5hdmFpbF9mbGFnc19zaGFkb3cgJiBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCkp
Cj4gPiA+ID4gPiArICAgICBpZiAodW5saWtlbHkoISh2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hh
ZG93ICYgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQpICYmCj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgIXZxLT5ldmVudF90cmlnZ2VyZWQpKQo+ID4gPiA+ID4gICAgICAgICAgICAgICB2
aXJ0aW9fc3RvcmVfbWIodnEtPndlYWtfYmFycmllcnMsCj4gPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSwKPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNwdV90b192aXJ0aW8xNihfdnEt
PnZkZXYsIHZxLT5sYXN0X3VzZWRfaWR4KSk7Cj4gPiA+ID4gPiBAQCAtMTc0NCw3ICsxNzQ1LDgg
QEAgc3RhdGljIHZvaWQgKnZpcnRxdWV1ZV9nZXRfYnVmX2N0eF9wYWNrZWQoc3RydWN0IHZpcnRx
dWV1ZSAqX3ZxLAo+ID4gPiA+ID4gICAgICAgICogYnkgd3JpdGluZyBldmVudCBpbmRleCBhbmQg
Zmx1c2ggb3V0IHRoZSB3cml0ZSBiZWZvcmUKPiA+ID4gPiA+ICAgICAgICAqIHRoZSByZWFkIGlu
IHRoZSBuZXh0IGdldF9idWYgY2FsbC4KPiA+ID4gPiA+ICAgICAgICAqLwo+ID4gPiA+ID4gLSAg
ICAgaWYgKHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93ID09IFZSSU5HX1BBQ0tFRF9FVkVO
VF9GTEFHX0RFU0MpCj4gPiA+ID4gPiArICAgICBpZiAodW5saWtlbHkodnEtPnBhY2tlZC5ldmVu
dF9mbGFnc19zaGFkb3cgPT0gVlJJTkdfUEFDS0VEX0VWRU5UX0ZMQUdfREVTQyAmJgo+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICF2cS0+ZXZlbnRfdHJpZ2dlcmVkKSkKPiA+ID4gPiA+ICAg
ICAgICAgICAgICAgdmlydGlvX3N0b3JlX21iKHZxLT53ZWFrX2JhcnJpZXJzLAo+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnZxLT5wYWNrZWQudnJpbmcuZHJpdmVyLT5v
ZmZfd3JhcCwKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNwdV90b19s
ZTE2KHZxLT5sYXN0X3VzZWRfaWR4KSk7Cj4gPiA+ID4KPiA+ID4KPiA+CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
