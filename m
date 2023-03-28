Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6596CB4FD
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 05:40:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ph0C7-0005o1-4H;
	Tue, 28 Mar 2023 03:40:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jasowang@redhat.com>) id 1ph0C4-0005nv-IQ
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 03:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oNVJgmEkoTZopYZga5Cz0iNJK6GM/Hw/6UWakhxQAvA=; b=UYojiRF76GA0bcYUTmZgplG3Qn
 L5RTqdT8569nXeUM4PKmxMe3CMe27wO0mFCVBHR/D635XlA7HUcVuxeJU2eRGYbmTlsPE5V0w0NII
 5occToroRML2HPDDK0sHpu95IS1GXrTRYfhN/oqOrESXbWKdFcRIb0CkWdb9gLgn5Lr8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oNVJgmEkoTZopYZga5Cz0iNJK6GM/Hw/6UWakhxQAvA=; b=gCdEW7X22b56GjvS65KJtyqJgy
 q+PwdqnbgOp3/NLLDpFgTsRFv6m9GP5V+fZo+DH2bc0BFk3F1YqD2CD9+PE5QMZbQzj+ODgdQyihw
 2qxEvJXy4fYIxrfpjg5dvW7cffK0NtXG0QIbB05Ud+4L8Rx7DvYZJ5yAOPlp7rEKmWao=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ph0C2-006T0C-NV for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 03:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1679974812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oNVJgmEkoTZopYZga5Cz0iNJK6GM/Hw/6UWakhxQAvA=;
 b=RX1J55m1+ZOpuYRHUPHtRLhHFLoUotJk/mIjBPZSdq+QzbfpV1RrHnDPCINTgL2eb5HKlm
 /DY53jEtQl5AM4uDNW44+lWxyZLFZSkqsEF3trrLxuxL/ZZvVX47oZU07R3Y7hpJe7WzSh
 IgyObY8ogeW3XHzPz2Yd4dHBiVNxWCY=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-172-qp76TuwWPqSqRgPysFqm1g-1; Mon, 27 Mar 2023 23:40:11 -0400
X-MC-Unique: qp76TuwWPqSqRgPysFqm1g-1
Received: by mail-oo1-f71.google.com with SMTP id
 m9-20020a4ac689000000b005255baa8dfbso2665707ooq.23
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 27 Mar 2023 20:40:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679974810;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oNVJgmEkoTZopYZga5Cz0iNJK6GM/Hw/6UWakhxQAvA=;
 b=zhByh0Du41O4N0B11T5nWXxJ4gCqTYms6OAoSFkhxWQdYkwQWj/2LvXnd6WSAOjYUF
 0wKyZkLK92XRSwFkw3sJwJHVfOOaZS+Ks2sCc0KK+yhCp80gCvex7wfoMSj0dpG+ODNm
 sU3q5ZsNAI+E3aLJfNUO/bg7XuPfeuimrh1QJoADUFvMrvx+tVHKBq6lJ+SN8kuoEh63
 3ouhWFGyPOzTnoBmWrTtXH49SCCTM4rsQvc4AE7Ud185JOH+R3bPPnRrCdE4imXuPCYy
 17WiO3Ytdgc0EIrvWgnTTvPAtvgTPslRtoJpm+W0wYw0jcjALQG9t45ONK5Hq2ATiAsI
 iRbA==
X-Gm-Message-State: AO0yUKXT0YNvXVoJ4TisAAV1kw6XNvRG9ZH4q5KhgZnpLWJ5iWydnOW/
 XxJs7Q5LGb2N1hY87S49ywoE/FXdbE2DJgrG4/6krCSplKkcQq/VclV0MpOhKlm90hSKrELESBt
 x7NhZEQSHoH7Wawly0oB9xl2+Nl+wcB8VCyDgOJO+MpGvqGOtsgCI9LlsN7WecJEz
X-Received: by 2002:a9d:6a5a:0:b0:69f:573:6113 with SMTP id
 h26-20020a9d6a5a000000b0069f05736113mr4509642otn.2.1679974810403; 
 Mon, 27 Mar 2023 20:40:10 -0700 (PDT)
X-Google-Smtp-Source: AK7set+MVnEOYlzBRfKqBIlq0GCdw2BBCIIM/kcfb7CoJT4ApMpLrxCI39WXcqVOMZgKgObiNwyXFFmdGQe/YKXtEQY=
X-Received: by 2002:a9d:6a5a:0:b0:69f:573:6113 with SMTP id
 h26-20020a9d6a5a000000b0069f05736113mr4509638otn.2.1679974810136; Mon, 27 Mar
 2023 20:40:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
 <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
 <CABKxMyPwuRb6p-oHxcQDhRtJv04=NDWvosNAp=epgvdrfCeveg@mail.gmail.com>
In-Reply-To: <CABKxMyPwuRb6p-oHxcQDhRtJv04=NDWvosNAp=epgvdrfCeveg@mail.gmail.com>
From: Jason Wang <jasowang@redhat.com>
Date: Tue, 28 Mar 2023 11:39:59 +0800
Message-ID: <CACGkMEuukvjXBTDX2K9YLYmpHsqK96AiMK39gbm3+f_+kUydMQ@mail.gmail.com>
To: =?UTF-8?B?6buE5p2w?= <huangjie.albert@bytedance.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Mar 28, 2023 at 11:09 AM 黄杰 <huangjie.albert@bytedance.com>
    wrote: > > Jason Wang <jasowang@redhat.com> 于2023年3月28日周二 10:59写道：
    > > > > On Tue, Mar 28, 2023 at 10:13 A [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ph0C2-006T0C-NV
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Luis Chamberlain <mcgrof@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTE6MDnigK9BTSDpu4TmnbAgPGh1YW5namllLmFsYmVy
dEBieXRlZGFuY2UuY29tPiB3cm90ZToKPgo+IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5j
b20+IOS6jjIwMjPlubQz5pyIMjjml6XlkajkuowgMTA6NTnlhpnpgZPvvJoKPiA+Cj4gPiBPbiBU
dWUsIE1hciAyOCwgMjAyMyBhdCAxMDoxM+KAr0FNIERvbWluaXF1ZSBNYXJ0aW5ldAo+ID4gPGFz
bWFkZXVzQGNvZGV3cmVjay5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSBNaWNoYWVsLCBBbGJl
cnQsCj4gPiA+Cj4gPiA+IEFsYmVydCBIdWFuZyB3cm90ZSBvbiBTYXQsIE1hciAyNSwgMjAyMyBh
dCAwNjo1NjozM1BNICswODAwOgo+ID4gPiA+IGluIHZpcnRpb19uZXQsIGlmIHdlIGRpc2FibGUg
dGhlIG5hcGlfdHgsIHdoZW4gd2UgdHJpZ2VyIGEgdHggaW50ZXJydXB0LAo+ID4gPiA+IHRoZSB2
cS0+ZXZlbnRfdHJpZ2dlcmVkIHdpbGwgYmUgc2V0IHRvIHRydWUuIEl0IHdpbGwgbm8gbG9uZ2Vy
IGJlIHNldCB0bwo+ID4gPiA+IGZhbHNlLiBVbmxlc3Mgd2UgZXhwbGljaXRseSBjYWxsIHZpcnRx
dWV1ZV9lbmFibGVfY2JfZGVsYXllZCBvcgo+ID4gPiA+IHZpcnRxdWV1ZV9lbmFibGVfY2JfcHJl
cGFyZS4KPiA+ID4KPiA+ID4gVGhpcyBwYXRjaCAoY29tbWl0ZWQgYXMgMzUzOTU3NzBmODAzICgi
dmlydGlvX3Jpbmc6IGRvbid0IHVwZGF0ZSBldmVudAo+ID4gPiBpZHggb24gZ2V0X2J1ZiIpIGlu
IG5leHQtMjAyMzAzMjcgYXBwYXJlbnRseSBicmVha3MgOXAsIGFzIHJlcG9ydGVkIGJ5Cj4gPiA+
IEx1aXMgaW4gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci9aQ0krN1dnNU9jbFNsRThjQGJvbWJh
ZGlsLmluZnJhZGVhZC5vcmcKPiA+ID4KPiA+ID4gSSd2ZSBqdXN0IGhpdCBoYWQgYSBsb29rIGF0
IHJlY2VudCBwYXRjaGVzWzFdIGFuZCByZXZlcnRlZCB0aGlzIHRvIHRlc3QKPiA+ID4gYW5kIEkg
Y2FuIG1vdW50IGFnYWluLCBzbyBJJ20gcHJldHR5IHN1cmUgdGhpcyBpcyB0aGUgY3VscHJpdCwg
YnV0IEkKPiA+ID4gZGlkbid0IGxvb2sgYXQgdGhlIGNvbnRlbnQgYXQgYWxsIHlldCBzbyBjYW5u
b3QgYWR2aXNlIGZ1cnRoZXIuCj4gPiA+IEl0IG1pZ2h0IHZlcnkgd2VsbCBiZSB0aGF0IHdlIG5l
ZWQgc29tZSBleHRyYSBoYW5kbGluZyBmb3IgOXAKPiA+ID4gc3BlY2lmaWNhbGx5IHRoYXQgY2Fu
IGJlIGFkZGVkIHNlcGFyYXRlbHkgaWYgcmVxdWlyZWQuCj4gPiA+Cj4gPiA+IFsxXSBnaXQgbG9n
IDBlYzU3Y2ZhNzIxZmJkMzZiNGM0YzBkOWNjYzVkNzhhNzhmN2ZhMzUuLkhFQUQgZHJpdmVycy92
aXJ0aW8vCj4gPiA+Cj4gPiA+Cj4gPiA+IFRoaXMgY2FuIGJlIHJlcHJvZHVjZWQgd2l0aCBhIHNp
bXBsZSBtb3VudCwgcnVuIHFlbXUgd2l0aCBzb21lIC12aXJ0ZnMKPiA+ID4gYXJndW1lbnQgYW5k
IGBtb3VudCAtdCA5cCAtbyBkZWJ1Zz02NTUzNSB0YWcgbW91bnRwb2ludGAgd2lsbCBoYW5nIGFm
dGVyCj4gPiA+IHRoZXNlIG1lc3NhZ2VzOgo+ID4gPiA5cG5ldDogLS0gcDlfdmlydGlvX3JlcXVl
c3QgKDgzKTogOXAgZGVidWc6IHZpcnRpbyByZXF1ZXN0Cj4gPiA+IDlwbmV0OiAtLSBwOV92aXJ0
aW9fcmVxdWVzdCAoODMpOiB2aXJ0aW8gcmVxdWVzdCBraWNrZWQKPiA+ID4KPiA+ID4gU28gSSBz
dXNwZWN0IHdlJ3JlIGp1c3Qgbm90IGdldHRpbmcgYSBjYWxsYmFjay4KPiA+Cj4gPiBJIHRoaW5r
IHNvLiBUaGUgcGF0Y2ggYXNzdW1lcyB0aGUgZHJpdmVyIHdpbGwgY2FsbAo+ID4gdmlydHF1ZXVl
X2Rpc2FibGUvZW5hYmxlX2NiKCkgd2hpY2ggaXMgbm90IHRoZSBjYXNlIG9mIHRoZSA5cCBkcml2
ZXIuCj4gPgo+ID4gU28gYWZ0ZXIgdGhlIGZpcnN0IGludGVycnVwdCwgZXZlbnRfdHJpZ2dlcmVk
IHdpbGwgYmUgc2V0IHRvIHRydWUgZm9yZXZlci4KPiA+Cj4gPiBUaGFua3MKPiA+Cj4KPiBIaTog
V2FuZwo+Cj4gWWVzLCAgVGhpcyBwYXRjaCBhc3N1bWVzIHRoYXQgYWxsIHZpcnRpby1yZWxhdGVk
IGRyaXZlcnMgd2lsbCBjYWxsCj4gdmlydHF1ZXVlX2Rpc2FibGUvZW5hYmxlX2NiKCkuCj4gVGhh
bmsgeW91IGZvciByYWlzaW5nIHRoaXMgaXNzdWUuCj4KPiBJdCBzZWVtcyB0aGF0IG5hcGlfdHgg
aXMgb25seSByZWxhdGVkIHRvIHZpcnR1ZV9uZXQuIEknbSB0aGlua2luZyBpZgo+IHdlIG5lZWQg
dG8gcmVmYWN0b3IKPiBuYXBpX3R4IGluc3RlYWQgb2YgaW1wbGVtZW50aW5nIGl0IGluc2lkZSB2
aXJ0aW9fcmluZy4KCldlIGNhbiBoZWFyIGZyb20gb3RoZXJzLgoKSSB0aGluayBpdCdzIGJldHRl
ciBub3QgdG8gd29ya2Fyb3VuZCB2aXJ0aW9fcmluZyBpc3N1ZXMgaW4gYSBzcGVjaWZpYwpkcml2
ZXIuIEl0IG1pZ2h0IGp1c3QgYWRkIG1vcmUgaGFja3MuIFdlIHNob3VsZCBjb3JyZWN0bHkgc2V0
ClZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBULAoKRG8geW91IHRoaW5rIHRoZSBmb2xsb3dpbmcg
bWlnaHQgd29yayAobm90IGV2ZW4gYSBjb21waWxlIHRlc3QpPwoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdmlydGlvL3ZpcnRpb19yaW5nLmMgYi9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCmlu
ZGV4IDQxMTQ0YjUyNDZhOC4uMTJmNGVmYjZkYzU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpcnRp
by92aXJ0aW9fcmluZy5jCisrKyBiL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMKQEAgLTg1
MiwxNiArODUyLDE2IEBAIHN0YXRpYyB2b2lkIHZpcnRxdWV1ZV9kaXNhYmxlX2NiX3NwbGl0KHN0
cnVjdAp2aXJ0cXVldWUgKl92cSkKIHsKICAgICAgICBzdHJ1Y3QgdnJpbmdfdmlydHF1ZXVlICp2
cSA9IHRvX3Z2cShfdnEpOwoKLSAgICAgICBpZiAoISh2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hh
ZG93ICYgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQpKSB7Ci0gICAgICAgICAgICAgICB2cS0+
c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93IHw9IFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUOwot
ICAgICAgICAgICAgICAgaWYgKHZxLT5ldmVudCkKLSAgICAgICAgICAgICAgICAgICAgICAgLyog
VE9ETzogdGhpcyBpcyBhIGhhY2suIEZpZ3VyZSBvdXQgYSBjbGVhbmVyCnZhbHVlIHRvIHdyaXRl
LiAqLwotICAgICAgICAgICAgICAgICAgICAgICB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQu
dnJpbmcpID0gMHgwOwotICAgICAgICAgICAgICAgZWxzZQotICAgICAgICAgICAgICAgICAgICAg
ICB2cS0+c3BsaXQudnJpbmcuYXZhaWwtPmZsYWdzID0KLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjcHVfdG9fdmlydGlvMTYoX3ZxLT52ZGV2LAotICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93KTsK
LSAgICAgICB9CisgICAgICAgaWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZS
SU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUKSkKKyAgICAgICAgICAgICAgIHZxLT5zcGxpdC5hdmFp
bF9mbGFnc19zaGFkb3cgfD0gVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQ7CisKKyAgICAgICBp
ZiAodnEtPmV2ZW50ICYmICF2cS0+ZXZlbnRfdHJpZ2dlcmVkKQorICAgICAgICAgICAgICAgLyog
VE9ETzogdGhpcyBpcyBhIGhhY2suIEZpZ3VyZSBvdXQgYSBjbGVhbmVyIHZhbHVlIHRvIHdyaXRl
LiAqLworICAgICAgICAgICAgICAgdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSA9
IDB4MDsKKyAgICAgICBlbHNlCisgICAgICAgICAgICAgICB2cS0+c3BsaXQudnJpbmcuYXZhaWwt
PmZsYWdzID0KKyAgICAgICAgICAgICAgICAgICAgICAgY3B1X3RvX3ZpcnRpbzE2KF92cS0+dmRl
diwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZxLT5zcGxpdC5hdmFp
bF9mbGFnc19zaGFkb3cpOwogfQoKIHN0YXRpYyB1bnNpZ25lZCBpbnQgdmlydHF1ZXVlX2VuYWJs
ZV9jYl9wcmVwYXJlX3NwbGl0KHN0cnVjdCB2aXJ0cXVldWUgKl92cSkKQEAgLTE2OTcsOCArMTY5
NywxMCBAQCBzdGF0aWMgdm9pZCB2aXJ0cXVldWVfZGlzYWJsZV9jYl9wYWNrZWQoc3RydWN0CnZp
cnRxdWV1ZSAqX3ZxKQogewogICAgICAgIHN0cnVjdCB2cmluZ192aXJ0cXVldWUgKnZxID0gdG9f
dnZxKF92cSk7CgotICAgICAgIGlmICh2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyAhPSBW
UklOR19QQUNLRURfRVZFTlRfRkxBR19ESVNBQkxFKSB7CisgICAgICAgaWYgKCEodnEtPnBhY2tl
ZC5ldmVudF9mbGFnc19zaGFkb3cgJiBWUklOR19QQUNLRURfRVZFTlRfRkxBR19ESVNBQkxFKSkK
ICAgICAgICAgICAgICAgIHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93ID0gVlJJTkdfUEFD
S0VEX0VWRU5UX0ZMQUdfRElTQUJMRTsKKworICAgICAgIGlmICh2cS0+ZXZlbnRfdHJpZ2dlcmVk
KQogICAgICAgICAgICAgICAgdnEtPnBhY2tlZC52cmluZy5kcml2ZXItPmZsYWdzID0KICAgICAg
ICAgICAgICAgICAgICAgICAgY3B1X3RvX2xlMTYodnEtPnBhY2tlZC5ldmVudF9mbGFnc19zaGFk
b3cpOwogICAgICAgIH0KQEAgLTIzMzAsMTIgKzIzMzIsNiBAQCB2b2lkIHZpcnRxdWV1ZV9kaXNh
YmxlX2NiKHN0cnVjdCB2aXJ0cXVldWUgKl92cSkKIHsKICAgICAgICBzdHJ1Y3QgdnJpbmdfdmly
dHF1ZXVlICp2cSA9IHRvX3Z2cShfdnEpOwoKLSAgICAgICAvKiBJZiBkZXZpY2UgdHJpZ2dlcmVk
IGFuIGV2ZW50IGFscmVhZHkgaXQgd29uJ3QgdHJpZ2dlciBvbmUgYWdhaW46Ci0gICAgICAgICog
bm8gbmVlZCB0byBkaXNhYmxlLgotICAgICAgICAqLwotICAgICAgIGlmICh2cS0+ZXZlbnRfdHJp
Z2dlcmVkKQotICAgICAgICAgICAgICAgcmV0dXJuOwotCiAgICAgICAgaWYgKHZxLT5wYWNrZWRf
cmluZykKICAgICAgICAgICAgICAgIHZpcnRxdWV1ZV9kaXNhYmxlX2NiX3BhY2tlZChfdnEpOwog
ICAgICAgIGVsc2UKClRoYW5rcwoKPgo+IFRoYW5rcwo+Cj4gPiA+Cj4gPiA+Cj4gPiA+IEknbGwg
aGF2ZSBhIGNsb3NlciBsb29rIGFmdGVyIHdvcmssIGJ1dCBhbnkgYWR2aWNlIG1lYW53aGlsZSB3
aWxsIGJlCj4gPiA+IGFwcHJlY2lhdGVkIQo+ID4gPiAoSSdtIHN1cmUgTHVpcyB3b3VsZCBhbHNv
IGxpa2UgYSB0ZW1wb3JhcnkgZHJvcCBmcm9tIC1uZXh0IHVudGlsCj4gPiA+IHRoaXMgaXMgZmln
dXJlZCBvdXQsIGJ1dCBJJ2xsIGxlYXZlIHRoaXMgdXAgdG8geW91KQo+ID4gPgo+ID4gPgo+ID4g
PiA+Cj4gPiA+ID4gSWYgd2UgZGlzYWJsZSB0aGUgbmFwaV90eCwgaXQgd2lsbCBvbmx5IGJlIGNh
bGxlZCB3aGVuIHRoZSB0eCByaW5nCj4gPiA+ID4gYnVmZmVyIGlzIHJlbGF0aXZlbHkgc21hbGwu
Cj4gPiA+ID4KPiA+ID4gPiBCZWNhdXNlIGV2ZW50X3RyaWdnZXJlZCBpcyB0cnVlLiBUaGVyZWZv
cmUsIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUIG9yCj4gPiA+ID4gVlJJTkdfUEFDS0VEX0VW
RU5UX0ZMQUdfRElTQUJMRSB3aWxsIG5vdCBiZSBzZXQuIFNvIHdlIHVwZGF0ZQo+ID4gPiA+IHZy
aW5nX3VzZWRfZXZlbnQoJnZxLT5zcGxpdC52cmluZykgb3IgdnEtPnBhY2tlZC52cmluZy5kcml2
ZXItPm9mZl93cmFwCj4gPiA+ID4gZXZlcnkgdGltZSB3ZSBjYWxsIHZpcnRxdWV1ZV9nZXRfYnVm
X2N0eC4gVGhpcyB3aWxsIGJyaW5nIG1vcmUgaW50ZXJydXB0aW9ucy4KPiA+ID4gPgo+ID4gPiA+
IFRvIHN1bW1hcml6ZToKPiA+ID4gPiAxKSBldmVudF90cmlnZ2VyZWQgd2FzIHNldCB0byB0cnVl
IGluIHZyaW5nX2ludGVycnVwdCgpCj4gPiA+ID4gMikgYWZ0ZXIgdGhpcyBub3RoaW5nIHdpbGwg
aGFwcGVuIGZvciB2aXJ0cXVldWVfZGlzYWJsZV9jYigpIHNvCj4gPiA+ID4gICAgVlJJTkdfQVZB
SUxfRl9OT19JTlRFUlJVUFQgaXMgbm90IHNldCBpbiBhdmFpbF9mbGFnc19zaGFkb3cKPiA+ID4g
PiAzKSB2aXJ0cXVldWVfZ2V0X2J1Zl9jdHhfc3BsaXQoKSB3aWxsIHN0aWxsIHRoaW5rIHRoZSBj
YiBpcyBlbmFibGVkCj4gPiA+ID4gICAgdGhlbiBpdCB0cmllcyB0byBwdWJsaXNoIG5ldyBldmVu
dAo+ID4gPiA+Cj4gPiA+ID4gVG8gZml4LCBpZiBldmVudF90cmlnZ2VyZWQgaXMgc2V0IHRvIHRy
dWUsIGRvIG5vdCB1cGRhdGUKPiA+ID4gPiB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQudnJp
bmcpIG9yIHZxLT5wYWNrZWQudnJpbmcuZHJpdmVyLT5vZmZfd3JhcAo+ID4gPiA+Cj4gPiA+ID4g
VGVzdGVkIHdpdGggaXBlcmY6Cj4gPiA+ID4gaXBlcmYzIHRjcCBzdHJlYW06Cj4gPiA+ID4gdm0x
IC0tLS0tLS0tLS0tLS0tLS0tPiB2bTIKPiA+ID4gPiB2bTIganVzdCByZWNlaXZlcyB0Y3AgZGF0
YSBzdHJlYW0gZnJvbSB2bTEsIGFuZCBzZW5kcyB0aGUgYWNrIHRvIHZtMSwKPiA+ID4gPiB0aGVy
ZSBhcmUgbWFueSB0eCBpbnRlcnJ1cHRzIGluIHZtMi4KPiA+ID4gPiBidXQgd2l0aG91dCBldmVu
dF90cmlnZ2VyZWQgdGhlcmUgYXJlIGp1c3QgYSBmZXcgdHggaW50ZXJydXB0cy4KPiA+ID4gPgo+
ID4gPiA+IEZpeGVzOiA4ZDYyMmQyMWQyNDggKCJ2aXJ0aW86IGZpeCB1cCB2aXJ0aW9fZGlzYWJs
ZV9jYiIpCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEh1YW5nIDxodWFuZ2ppZS5hbGJl
cnRAYnl0ZWRhbmNlLmNvbT4KPiA+ID4gPiBNZXNzYWdlLUlkOiA8MjAyMzAzMjEwODU5NTMuMjQ5
NDktMS1odWFuZ2ppZS5hbGJlcnRAYnl0ZWRhbmNlLmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBNaWNoYWVsIFMuIFRzaXJraW4gPG1zdEByZWRoYXQuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+
ICBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jIHwgNiArKysrLS0KPiA+ID4gPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jIGIvZHJpdmVycy92aXJ0
aW8vdmlydGlvX3JpbmcuYwo+ID4gPiA+IGluZGV4IGNiZWVlYTFiMDQzOS4uMWMzNmZhNDc3OTY2
IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMKPiA+ID4g
PiArKysgYi9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCj4gPiA+ID4gQEAgLTkxNCw3ICs5
MTQsOCBAQCBzdGF0aWMgdm9pZCAqdmlydHF1ZXVlX2dldF9idWZfY3R4X3NwbGl0KHN0cnVjdCB2
aXJ0cXVldWUgKl92cSwKPiA+ID4gPiAgICAgICAvKiBJZiB3ZSBleHBlY3QgYW4gaW50ZXJydXB0
IGZvciB0aGUgbmV4dCBlbnRyeSwgdGVsbCBob3N0Cj4gPiA+ID4gICAgICAgICogYnkgd3JpdGlu
ZyBldmVudCBpbmRleCBhbmQgZmx1c2ggb3V0IHRoZSB3cml0ZSBiZWZvcmUKPiA+ID4gPiAgICAg
ICAgKiB0aGUgcmVhZCBpbiB0aGUgbmV4dCBnZXRfYnVmIGNhbGwuICovCj4gPiA+ID4gLSAgICAg
aWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5HX0FWQUlMX0ZfTk9fSU5U
RVJSVVBUKSkKPiA+ID4gPiArICAgICBpZiAodW5saWtlbHkoISh2cS0+c3BsaXQuYXZhaWxfZmxh
Z3Nfc2hhZG93ICYgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQpICYmCj4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICF2cS0+ZXZlbnRfdHJpZ2dlcmVkKSkKPiA+ID4gPiAgICAgICAgICAgICAg
IHZpcnRpb19zdG9yZV9tYih2cS0+d2Vha19iYXJyaWVycywKPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSwKPiA+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjcHVfdG9fdmlydGlvMTYoX3ZxLT52
ZGV2LCB2cS0+bGFzdF91c2VkX2lkeCkpOwo+ID4gPiA+IEBAIC0xNzQ0LDcgKzE3NDUsOCBAQCBz
dGF0aWMgdm9pZCAqdmlydHF1ZXVlX2dldF9idWZfY3R4X3BhY2tlZChzdHJ1Y3QgdmlydHF1ZXVl
ICpfdnEsCj4gPiA+ID4gICAgICAgICogYnkgd3JpdGluZyBldmVudCBpbmRleCBhbmQgZmx1c2gg
b3V0IHRoZSB3cml0ZSBiZWZvcmUKPiA+ID4gPiAgICAgICAgKiB0aGUgcmVhZCBpbiB0aGUgbmV4
dCBnZXRfYnVmIGNhbGwuCj4gPiA+ID4gICAgICAgICovCj4gPiA+ID4gLSAgICAgaWYgKHZxLT5w
YWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93ID09IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RFU0Mp
Cj4gPiA+ID4gKyAgICAgaWYgKHVubGlrZWx5KHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93
ID09IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RFU0MgJiYKPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgIXZxLT5ldmVudF90cmlnZ2VyZWQpKQo+ID4gPiA+ICAgICAgICAgICAgICAgdmlydGlv
X3N0b3JlX21iKHZxLT53ZWFrX2JhcnJpZXJzLAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZ2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+b2ZmX3dyYXAsCj4gPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgY3B1X3RvX2xlMTYodnEtPmxhc3RfdXNlZF9pZHgp
KTsKPiA+ID4KPiA+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby92OWZzLWRldmVsb3Blcgo=
