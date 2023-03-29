Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 690166CD1AA
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Mar 2023 07:34:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phOS3-00040e-HC;
	Wed, 29 Mar 2023 05:34:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1phOS2-00040X-2K
 for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 05:34:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TKYnXvCYab97RG66lZ81YPSbP8j646tw3OvcwjSJJ4U=; b=dNfEiBqejI+pw+0rFQDpUrCyow
 BDCYMpMp7xXfzQ6xOggfi/e9kh61OdQqjZBof36ItMLGhQbp/nvp6UeZoo0t1AFuzv0cN1vLlet56
 5Qrk+Zghoq2ie5ktg54PSHwT5YHVmZyLAkI4moMH5Wp42GOBLp5C373xN9n7YZPs7ovc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TKYnXvCYab97RG66lZ81YPSbP8j646tw3OvcwjSJJ4U=; b=Fa+JajiY0E/vP/HCcaxMTq10cl
 /SmbksLCbkFCiIs4hd6skvFyea7x1VCzkOBA+Yrq7toLAkngkPMvoEsyaSjdZ9ffplGJYf+d16+hF
 PQ50GH8Q26SU8wL1jYvvHqX/LRJnvbU4ayIJrW1rkH22bBGxXizuPEVSQ9UuR69oQrzc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phOS0-008251-GP for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 05:34:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680068058;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TKYnXvCYab97RG66lZ81YPSbP8j646tw3OvcwjSJJ4U=;
 b=DKiR7Ibh3wj8n6e/b/qIEsmQJfa2wLr5IYD4yA0OsYd1AajPG1bFlLQjPDKf4EPS8Q83M3
 7m+sPRlOdPefjRyouFiRLI4FToYTXvJbGJDXXlMFY3ZcYxkjDPKaGb8dE7JJBJSWY3foLI
 jf7jyrs8Mp4+0PHvVVEmr9wXikUoJAo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-228-0Iq70ywhNzeCjs6a2zkgsw-1; Wed, 29 Mar 2023 01:34:16 -0400
X-MC-Unique: 0Iq70ywhNzeCjs6a2zkgsw-1
Received: by mail-wm1-f69.google.com with SMTP id
 z20-20020a05600c0a1400b003edcff41678so638694wmp.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 22:34:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680068055;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TKYnXvCYab97RG66lZ81YPSbP8j646tw3OvcwjSJJ4U=;
 b=g4TFCTZw0q30slaXH5PFJ0T6Kwb5kLPVB/ZidHJ2PtQ+d5byeCFoM272TEaf9YEKsE
 rVJ4zZTj2JdzuFsSfZbdizfzUhQ3DXmRssPI/UWjQPV5VpS+YpCVY4T11MNRfalxwLsa
 ghOnNmtjVXzI8gw5h/RPLSZ3mI6nnFiL9TlW2097kM7YGdZtyhmQcxBbdLeYiwSGm9J/
 35dci0KbUMSaR0wErN1AQRyY8gbOCBXa9xNba5XcW1hJH2n3u82cYD8ldkn/11aDkUeS
 oZoR8PZeSgJ7RGLuhf6WFv8OGafbIvh9lOcB3HlaFxVkqgwelk/tSdrjNjCdE6XrF6Vx
 WQSw==
X-Gm-Message-State: AAQBX9dK0Fvq9aAI0Y4kZMIuxDfYuzmPfQGvfpD/1bme+tAPXsuOAoGx
 85S36ClI4OcbQ6/R79Jnyh2DImCqgutGC/Ms6n6RZCGkPLTEIfgLI5pXJXtF1Qd1QjNzPsHtXc0
 +rsIuB1pv178fht6UjMVL9BGpNHxUh1MfUkE=
X-Received: by 2002:a5d:570d:0:b0:2d8:1aff:813 with SMTP id
 a13-20020a5d570d000000b002d81aff0813mr13128445wrv.43.1680068055644; 
 Tue, 28 Mar 2023 22:34:15 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZXpaB1zzOrJRIrcFRm8e9P+85wO5jiKmHj4ONTexa4CS8h/FuQoFUC20/bE8USu/IjPBFshA==
X-Received: by 2002:a5d:570d:0:b0:2d8:1aff:813 with SMTP id
 a13-20020a5d570d000000b002d81aff0813mr13128432wrv.43.1680068055292; 
 Tue, 28 Mar 2023 22:34:15 -0700 (PDT)
Received: from redhat.com ([2.52.18.165]) by smtp.gmail.com with ESMTPSA id
 j10-20020adff00a000000b002d1bfe3269esm29182858wro.59.2023.03.28.22.34.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 22:34:14 -0700 (PDT)
Date: Wed, 29 Mar 2023 01:34:11 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: =?utf-8?B?6buE5p2w?= <huangjie.albert@bytedance.com>
Message-ID: <20230329012908-mutt-send-email-mst@kernel.org>
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
 <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
 <CABKxMyPwuRb6p-oHxcQDhRtJv04=NDWvosNAp=epgvdrfCeveg@mail.gmail.com>
 <CACGkMEuukvjXBTDX2K9YLYmpHsqK96AiMK39gbm3+f_+kUydMQ@mail.gmail.com>
 <CABKxMyN0598wA6wHv5GkZC14znwp=OPo7u71_BizJfR+gUx4_w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABKxMyN0598wA6wHv5GkZC14znwp=OPo7u71_BizJfR+gUx4_w@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Mar 28, 2023 at 05:09:19PM +0800, 黄杰 wrote: >
   Jason Wang <jasowang@redhat.com> 于2023年3月28日周二 11:40写道：
   > > > > On Tue, Mar 28, 2023 at 11:09 AM 黄杰 <huangjie.albert@b [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phOS0-008251-GP
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Jason Wang <jasowang@redhat.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Luis Chamberlain <mcgrof@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMDU6MDk6MTlQTSArMDgwMCwg6buE5p2wIHdyb3RlOgo+
IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+IOS6jjIwMjPlubQz5pyIMjjml6Xlkajk
uowgMTE6NDDlhpnpgZPvvJoKPiA+Cj4gPiBPbiBUdWUsIE1hciAyOCwgMjAyMyBhdCAxMTowOeKA
r0FNIOm7hOadsCA8aHVhbmdqaWUuYWxiZXJ0QGJ5dGVkYW5jZS5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPiDkuo4yMDIz5bm0M+aciDI45pel
5ZGo5LqMIDEwOjU55YaZ6YGT77yaCj4gPiA+ID4KPiA+ID4gPiBPbiBUdWUsIE1hciAyOCwgMjAy
MyBhdCAxMDoxM+KAr0FNIERvbWluaXF1ZSBNYXJ0aW5ldAo+ID4gPiA+IDxhc21hZGV1c0Bjb2Rl
d3JlY2sub3JnPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBIaSBNaWNoYWVsLCBBbGJlcnQs
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQWxiZXJ0IEh1YW5nIHdyb3RlIG9uIFNhdCwgTWFyIDI1LCAy
MDIzIGF0IDA2OjU2OjMzUE0gKzA4MDA6Cj4gPiA+ID4gPiA+IGluIHZpcnRpb19uZXQsIGlmIHdl
IGRpc2FibGUgdGhlIG5hcGlfdHgsIHdoZW4gd2UgdHJpZ2VyIGEgdHggaW50ZXJydXB0LAo+ID4g
PiA+ID4gPiB0aGUgdnEtPmV2ZW50X3RyaWdnZXJlZCB3aWxsIGJlIHNldCB0byB0cnVlLiBJdCB3
aWxsIG5vIGxvbmdlciBiZSBzZXQgdG8KPiA+ID4gPiA+ID4gZmFsc2UuIFVubGVzcyB3ZSBleHBs
aWNpdGx5IGNhbGwgdmlydHF1ZXVlX2VuYWJsZV9jYl9kZWxheWVkIG9yCj4gPiA+ID4gPiA+IHZp
cnRxdWV1ZV9lbmFibGVfY2JfcHJlcGFyZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGlzIHBhdGNo
IChjb21taXRlZCBhcyAzNTM5NTc3MGY4MDMgKCJ2aXJ0aW9fcmluZzogZG9uJ3QgdXBkYXRlIGV2
ZW50Cj4gPiA+ID4gPiBpZHggb24gZ2V0X2J1ZiIpIGluIG5leHQtMjAyMzAzMjcgYXBwYXJlbnRs
eSBicmVha3MgOXAsIGFzIHJlcG9ydGVkIGJ5Cj4gPiA+ID4gPiBMdWlzIGluIGh0dHBzOi8vbGtt
bC5rZXJuZWwub3JnL3IvWkNJKzdXZzVPY2xTbEU4Y0Bib21iYWRpbC5pbmZyYWRlYWQub3JnCj4g
PiA+ID4gPgo+ID4gPiA+ID4gSSd2ZSBqdXN0IGhpdCBoYWQgYSBsb29rIGF0IHJlY2VudCBwYXRj
aGVzWzFdIGFuZCByZXZlcnRlZCB0aGlzIHRvIHRlc3QKPiA+ID4gPiA+IGFuZCBJIGNhbiBtb3Vu
dCBhZ2Fpbiwgc28gSSdtIHByZXR0eSBzdXJlIHRoaXMgaXMgdGhlIGN1bHByaXQsIGJ1dCBJCj4g
PiA+ID4gPiBkaWRuJ3QgbG9vayBhdCB0aGUgY29udGVudCBhdCBhbGwgeWV0IHNvIGNhbm5vdCBh
ZHZpc2UgZnVydGhlci4KPiA+ID4gPiA+IEl0IG1pZ2h0IHZlcnkgd2VsbCBiZSB0aGF0IHdlIG5l
ZWQgc29tZSBleHRyYSBoYW5kbGluZyBmb3IgOXAKPiA+ID4gPiA+IHNwZWNpZmljYWxseSB0aGF0
IGNhbiBiZSBhZGRlZCBzZXBhcmF0ZWx5IGlmIHJlcXVpcmVkLgo+ID4gPiA+ID4KPiA+ID4gPiA+
IFsxXSBnaXQgbG9nIDBlYzU3Y2ZhNzIxZmJkMzZiNGM0YzBkOWNjYzVkNzhhNzhmN2ZhMzUuLkhF
QUQgZHJpdmVycy92aXJ0aW8vCj4gPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoaXMgY2Fu
IGJlIHJlcHJvZHVjZWQgd2l0aCBhIHNpbXBsZSBtb3VudCwgcnVuIHFlbXUgd2l0aCBzb21lIC12
aXJ0ZnMKPiA+ID4gPiA+IGFyZ3VtZW50IGFuZCBgbW91bnQgLXQgOXAgLW8gZGVidWc9NjU1MzUg
dGFnIG1vdW50cG9pbnRgIHdpbGwgaGFuZyBhZnRlcgo+ID4gPiA+ID4gdGhlc2UgbWVzc2FnZXM6
Cj4gPiA+ID4gPiA5cG5ldDogLS0gcDlfdmlydGlvX3JlcXVlc3QgKDgzKTogOXAgZGVidWc6IHZp
cnRpbyByZXF1ZXN0Cj4gPiA+ID4gPiA5cG5ldDogLS0gcDlfdmlydGlvX3JlcXVlc3QgKDgzKTog
dmlydGlvIHJlcXVlc3Qga2lja2VkCj4gPiA+ID4gPgo+ID4gPiA+ID4gU28gSSBzdXNwZWN0IHdl
J3JlIGp1c3Qgbm90IGdldHRpbmcgYSBjYWxsYmFjay4KPiA+ID4gPgo+ID4gPiA+IEkgdGhpbmsg
c28uIFRoZSBwYXRjaCBhc3N1bWVzIHRoZSBkcml2ZXIgd2lsbCBjYWxsCj4gPiA+ID4gdmlydHF1
ZXVlX2Rpc2FibGUvZW5hYmxlX2NiKCkgd2hpY2ggaXMgbm90IHRoZSBjYXNlIG9mIHRoZSA5cCBk
cml2ZXIuCj4gPiA+ID4KPiA+ID4gPiBTbyBhZnRlciB0aGUgZmlyc3QgaW50ZXJydXB0LCBldmVu
dF90cmlnZ2VyZWQgd2lsbCBiZSBzZXQgdG8gdHJ1ZSBmb3JldmVyLgo+ID4gPiA+Cj4gPiA+ID4g
VGhhbmtzCj4gPiA+ID4KPiA+ID4KPiA+ID4gSGk6IFdhbmcKPiA+ID4KPiA+ID4gWWVzLCAgVGhp
cyBwYXRjaCBhc3N1bWVzIHRoYXQgYWxsIHZpcnRpby1yZWxhdGVkIGRyaXZlcnMgd2lsbCBjYWxs
Cj4gPiA+IHZpcnRxdWV1ZV9kaXNhYmxlL2VuYWJsZV9jYigpLgo+ID4gPiBUaGFuayB5b3UgZm9y
IHJhaXNpbmcgdGhpcyBpc3N1ZS4KPiA+ID4KPiA+ID4gSXQgc2VlbXMgdGhhdCBuYXBpX3R4IGlz
IG9ubHkgcmVsYXRlZCB0byB2aXJ0dWVfbmV0LiBJJ20gdGhpbmtpbmcgaWYKPiA+ID4gd2UgbmVl
ZCB0byByZWZhY3Rvcgo+ID4gPiBuYXBpX3R4IGluc3RlYWQgb2YgaW1wbGVtZW50aW5nIGl0IGlu
c2lkZSB2aXJ0aW9fcmluZy4KPiA+Cj4gPiBXZSBjYW4gaGVhciBmcm9tIG90aGVycy4KPiA+Cj4g
PiBJIHRoaW5rIGl0J3MgYmV0dGVyIG5vdCB0byB3b3JrYXJvdW5kIHZpcnRpb19yaW5nIGlzc3Vl
cyBpbiBhIHNwZWNpZmljCj4gPiBkcml2ZXIuIEl0IG1pZ2h0IGp1c3QgYWRkIG1vcmUgaGFja3Mu
IFdlIHNob3VsZCBjb3JyZWN0bHkgc2V0Cj4gPiBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCwK
PiA+Cj4gPiBEbyB5b3UgdGhpbmsgdGhlIGZvbGxvd2luZyBtaWdodCB3b3JrIChub3QgZXZlbiBh
IGNvbXBpbGUgdGVzdCk/Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlydGlvL3ZpcnRp
b19yaW5nLmMgYi9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCj4gPiBpbmRleCA0MTE0NGI1
MjQ2YTguLjEyZjRlZmI2ZGM1NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvdmlydGlvL3ZpcnRp
b19yaW5nLmMKPiA+ICsrKyBiL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMKPiA+IEBAIC04
NTIsMTYgKzg1MiwxNiBAQCBzdGF0aWMgdm9pZCB2aXJ0cXVldWVfZGlzYWJsZV9jYl9zcGxpdChz
dHJ1Y3QKPiA+IHZpcnRxdWV1ZSAqX3ZxKQo+ID4gIHsKPiA+ICAgICAgICAgc3RydWN0IHZyaW5n
X3ZpcnRxdWV1ZSAqdnEgPSB0b192dnEoX3ZxKTsKPiA+Cj4gPiAtICAgICAgIGlmICghKHZxLT5z
cGxpdC5hdmFpbF9mbGFnc19zaGFkb3cgJiBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCkpIHsK
PiA+IC0gICAgICAgICAgICAgICB2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93IHw9IFZSSU5H
X0FWQUlMX0ZfTk9fSU5URVJSVVBUOwo+ID4gLSAgICAgICAgICAgICAgIGlmICh2cS0+ZXZlbnQp
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAvKiBUT0RPOiB0aGlzIGlzIGEgaGFjay4gRmln
dXJlIG91dCBhIGNsZWFuZXIKPiA+IHZhbHVlIHRvIHdyaXRlLiAqLwo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSA9IDB4MDsKPiA+
IC0gICAgICAgICAgICAgICBlbHNlCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICB2cS0+c3Bs
aXQudnJpbmcuYXZhaWwtPmZsYWdzID0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY3B1X3RvX3ZpcnRpbzE2KF92cS0+dmRldiwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFkb3cpOwo+
ID4gLSAgICAgICB9Cj4gPiArICAgICAgIGlmICghKHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFk
b3cgJiBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCkpCj4gPiArICAgICAgICAgICAgICAgdnEt
PnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyB8PSBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVDsK
PiA+ICsKPiA+ICsgICAgICAgaWYgKHZxLT5ldmVudCAmJiAhdnEtPmV2ZW50X3RyaWdnZXJlZCkK
PiA+ICsgICAgICAgICAgICAgICAvKiBUT0RPOiB0aGlzIGlzIGEgaGFjay4gRmlndXJlIG91dCBh
IGNsZWFuZXIgdmFsdWUgdG8gd3JpdGUuICovCj4gPiArICAgICAgICAgICAgICAgdnJpbmdfdXNl
ZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSA9IDB4MDsKPiA+ICsgICAgICAgZWxzZQo+ID4gKyAg
ICAgICAgICAgICAgIHZxLT5zcGxpdC52cmluZy5hdmFpbC0+ZmxhZ3MgPQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgY3B1X3RvX3ZpcnRpbzE2KF92cS0+dmRldiwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93
KTsKPiA+ICB9Cj4gPgo+ID4gIHN0YXRpYyB1bnNpZ25lZCBpbnQgdmlydHF1ZXVlX2VuYWJsZV9j
Yl9wcmVwYXJlX3NwbGl0KHN0cnVjdCB2aXJ0cXVldWUgKl92cSkKPiA+IEBAIC0xNjk3LDggKzE2
OTcsMTAgQEAgc3RhdGljIHZvaWQgdmlydHF1ZXVlX2Rpc2FibGVfY2JfcGFja2VkKHN0cnVjdAo+
ID4gdmlydHF1ZXVlICpfdnEpCj4gPiAgewo+ID4gICAgICAgICBzdHJ1Y3QgdnJpbmdfdmlydHF1
ZXVlICp2cSA9IHRvX3Z2cShfdnEpOwo+ID4KPiA+IC0gICAgICAgaWYgKHZxLT5wYWNrZWQuZXZl
bnRfZmxhZ3Nfc2hhZG93ICE9IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEUpIHsKPiA+
ICsgICAgICAgaWYgKCEodnEtPnBhY2tlZC5ldmVudF9mbGFnc19zaGFkb3cgJiBWUklOR19QQUNL
RURfRVZFTlRfRkxBR19ESVNBQkxFKSkKPiA+ICAgICAgICAgICAgICAgICB2cS0+cGFja2VkLmV2
ZW50X2ZsYWdzX3NoYWRvdyA9IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEU7Cj4gPiAr
Cj4gPiArICAgICAgIGlmICh2cS0+ZXZlbnRfdHJpZ2dlcmVkKQo+ID4gICAgICAgICAgICAgICAg
IHZxLT5wYWNrZWQudnJpbmcuZHJpdmVyLT5mbGFncyA9Cj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICBjcHVfdG9fbGUxNih2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyk7Cj4gPiAgICAg
ICAgIH0KPiA+IEBAIC0yMzMwLDEyICsyMzMyLDYgQEAgdm9pZCB2aXJ0cXVldWVfZGlzYWJsZV9j
YihzdHJ1Y3QgdmlydHF1ZXVlICpfdnEpCj4gPiAgewo+ID4gICAgICAgICBzdHJ1Y3QgdnJpbmdf
dmlydHF1ZXVlICp2cSA9IHRvX3Z2cShfdnEpOwo+ID4KPiA+IC0gICAgICAgLyogSWYgZGV2aWNl
IHRyaWdnZXJlZCBhbiBldmVudCBhbHJlYWR5IGl0IHdvbid0IHRyaWdnZXIgb25lIGFnYWluOgo+
ID4gLSAgICAgICAgKiBubyBuZWVkIHRvIGRpc2FibGUuCj4gPiAtICAgICAgICAqLwo+ID4gLSAg
ICAgICBpZiAodnEtPmV2ZW50X3RyaWdnZXJlZCkKPiA+IC0gICAgICAgICAgICAgICByZXR1cm47
Cj4gPiAtCj4gPiAgICAgICAgIGlmICh2cS0+cGFja2VkX3JpbmcpCj4gPiAgICAgICAgICAgICAg
ICAgdmlydHF1ZXVlX2Rpc2FibGVfY2JfcGFja2VkKF92cSk7Cj4gPiAgICAgICAgIGVsc2UKPiA+
Cj4gPiBUaGFua3MKPiA+Cj4gCj4gSGksIFRoaXMgcGF0Y2ggc2VlbXMgdG8gYWRkcmVzcyB0aGUg
aXNzdWUgSSBpbml0aWFsbHkgcmFpc2VkIGFuZCBhbHNvCj4gYXZvaWRzIHRoZSBwcm9ibGVtIHdp
dGggdmlydGlvLTlQLgo+IAo+IGJ1dCBtYXliZSB0aGlzIGlzIGEgYmV0dGVyIGNob2ljZToKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYyBiL2RyaXZlcnMvdmly
dGlvL3ZpcnRpb19yaW5nLmMKPiBpbmRleCAzMDdlMTM5Y2IxMWQuLjY3ODRkMTU1Yzc4MSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCj4gKysrIGIvZHJpdmVycy92
aXJ0aW8vdmlydGlvX3JpbmcuYwo+IEBAIC04MTIsNiArODEyLDEwIEBAIHN0YXRpYyB2b2lkIHZp
cnRxdWV1ZV9kaXNhYmxlX2NiX3NwbGl0KHN0cnVjdAo+IHZpcnRxdWV1ZSAqX3ZxKQo+IAo+ICAg
ICAgICAgaWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5HX0FWQUlMX0Zf
Tk9fSU5URVJSVVBUKSkgewo+ICAgICAgICAgICAgICAgICB2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nf
c2hhZG93IHw9IFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUOwo+ICsKPiArICAgICAgICAgICAg
ICAgaWYgKHZxLT5ldmVudF90cmlnZ2VyZWQpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuOwo+ICsKPiAgICAgICAgICAgICAgICAgaWYgKHZxLT5ldmVudCkKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAvKiBUT0RPOiB0aGlzIGlzIGEgaGFjay4gRmlndXJlIG91dCBhIGNsZWFuZXIK
PiB2YWx1ZSB0byB3cml0ZS4gKi8KPiAgICAgICAgICAgICAgICAgICAgICAgICB2cmluZ191c2Vk
X2V2ZW50KCZ2cS0+c3BsaXQudnJpbmcpID0gMHgwOwo+IEBAIC0xNTQ2LDYgKzE1NTAsMTAgQEAg
c3RhdGljIHZvaWQgdmlydHF1ZXVlX2Rpc2FibGVfY2JfcGFja2VkKHN0cnVjdAo+IHZpcnRxdWV1
ZSAqX3ZxKQo+IAo+ICAgICAgICAgaWYgKHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93ICE9
IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEUpIHsKPiAgICAgICAgICAgICAgICAgdnEt
PnBhY2tlZC5ldmVudF9mbGFnc19zaGFkb3cgPSBWUklOR19QQUNLRURfRVZFTlRfRkxBR19ESVNB
QkxFOwo+ICsKPiArICAgICAgICAgICAgICAgaWYgKHZxLT5ldmVudF90cmlnZ2VyZWQpCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsKPiAgICAgICAgICAgICAgICAgdnEtPnBh
Y2tlZC52cmluZy5kcml2ZXItPmZsYWdzID0KPiAgICAgICAgICAgICAgICAgICAgICAgICBjcHVf
dG9fbGUxNih2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyk7Cj4gICAgICAgICB9Cj4gQEAg
LTIwNjMsMTIgKzIwNzEsNiBAQCB2b2lkIHZpcnRxdWV1ZV9kaXNhYmxlX2NiKHN0cnVjdCB2aXJ0
cXVldWUgKl92cSkKPiAgewo+ICAgICAgICAgc3RydWN0IHZyaW5nX3ZpcnRxdWV1ZSAqdnEgPSB0
b192dnEoX3ZxKTsKPiAKPiAtICAgICAgIC8qIElmIGRldmljZSB0cmlnZ2VyZWQgYW4gZXZlbnQg
YWxyZWFkeSBpdCB3b24ndCB0cmlnZ2VyIG9uZSBhZ2FpbjoKPiAtICAgICAgICAqIG5vIG5lZWQg
dG8gZGlzYWJsZS4KPiAtICAgICAgICAqLwo+IC0gICAgICAgaWYgKHZxLT5ldmVudF90cmlnZ2Vy
ZWQpCj4gLSAgICAgICAgICAgICAgIHJldHVybjsKPiAtCj4gICAgICAgICBpZiAodnEtPnBhY2tl
ZF9yaW5nKQo+ICAgICAgICAgICAgICAgICB2aXJ0cXVldWVfZGlzYWJsZV9jYl9wYWNrZWQoX3Zx
KTsKPiAgICAgICAgIGVsc2UKPiAKPiBEb2VzIE1pY2hhZWwgaGF2ZSBhbnkgb3RoZXIgc3VnZ2Vz
dGlvbnM/Cj4gCj4gVGhhbmtzLgoKT2ggSSBmaW5hbGx5IHVuZGVyc3RhbmQgSSB0aGluay4gVGhl
IGlzc3VlIGlzIHdpdGggZXZlbnQgaW5kZXgKZW5hYmxlZC4gaW50ZXJydXB0IGZpcmVzIG9uY2Us
IHdlIHNldCBldmVudCBpbmRleCB0byAweDAuCnNpbmNlIHNoYWRvdyBpcyBub3Qgc2V0IHRoZW4g
d2UgbmV2ZXIgdXBkYXRlIGl0IGFnYWluLgoKSSBhZ3JlZSwgeW91ciBwYXRjaCBpcyBhIGdvb2Qg
Zml4LCBqdXN0IHBsZWFzZSBjb3B5IHRoZSBjb21tZW50CnlvdSBhcmUgcmVtb3ZpbmcgdG8gdGhl
IHR3byBwbGFjZXMgd2hlcmUgd2UgY2hlY2sgZXZlbnRfdHJpZ2dlcmVkIG5vdy4KSSBkcm9wcGVk
IHBhdGNoIHYyIGZyb20gbXkgdHJlZSBhbmQgcGxlYXNlIHBvc3QgdjMKd2l0aCB0aGlzIGZpeHVw
IHNxdWFzaGVkLgoKVGhhbmtzIGEgbG90IQoKCgpBcHJvcG9zIGlmIHdlIGZpeGVkIGFsbCBkcml2
ZXJzIHRvIGNhbGwgZGlzYWJsZS9lbmFibGVfY2IKZXhwbGljaXRseSB3ZSBjb3VsZCByZW1vdmUg
YnJhbmNoIG9uIGRhdGEgcGF0aCwgYnV0IGl0J3MgYSBsb3Qgb2Ygd29yawphbmQgaXQncyBlYXN5
IHRvIG1pc3Mgc29tZSBkcml2ZXJzLgoKCgo+ID4gPgo+ID4gPiBUaGFua3MKPiA+ID4KPiA+ID4g
PiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSSdsbCBoYXZlIGEgY2xvc2VyIGxvb2sgYWZ0ZXIgd29y
aywgYnV0IGFueSBhZHZpY2UgbWVhbndoaWxlIHdpbGwgYmUKPiA+ID4gPiA+IGFwcHJlY2lhdGVk
IQo+ID4gPiA+ID4gKEknbSBzdXJlIEx1aXMgd291bGQgYWxzbyBsaWtlIGEgdGVtcG9yYXJ5IGRy
b3AgZnJvbSAtbmV4dCB1bnRpbAo+ID4gPiA+ID4gdGhpcyBpcyBmaWd1cmVkIG91dCwgYnV0IEkn
bGwgbGVhdmUgdGhpcyB1cCB0byB5b3UpCj4gPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gSWYgd2UgZGlzYWJsZSB0aGUgbmFwaV90eCwgaXQgd2lsbCBvbmx5IGJlIGNh
bGxlZCB3aGVuIHRoZSB0eCByaW5nCj4gPiA+ID4gPiA+IGJ1ZmZlciBpcyByZWxhdGl2ZWx5IHNt
YWxsLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBCZWNhdXNlIGV2ZW50X3RyaWdnZXJlZCBpcyB0
cnVlLiBUaGVyZWZvcmUsIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUIG9yCj4gPiA+ID4gPiA+
IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEUgd2lsbCBub3QgYmUgc2V0LiBTbyB3ZSB1
cGRhdGUKPiA+ID4gPiA+ID4gdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSBvciB2
cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+b2ZmX3dyYXAKPiA+ID4gPiA+ID4gZXZlcnkgdGltZSB3
ZSBjYWxsIHZpcnRxdWV1ZV9nZXRfYnVmX2N0eC4gVGhpcyB3aWxsIGJyaW5nIG1vcmUgaW50ZXJy
dXB0aW9ucy4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gVG8gc3VtbWFyaXplOgo+ID4gPiA+ID4g
PiAxKSBldmVudF90cmlnZ2VyZWQgd2FzIHNldCB0byB0cnVlIGluIHZyaW5nX2ludGVycnVwdCgp
Cj4gPiA+ID4gPiA+IDIpIGFmdGVyIHRoaXMgbm90aGluZyB3aWxsIGhhcHBlbiBmb3IgdmlydHF1
ZXVlX2Rpc2FibGVfY2IoKSBzbwo+ID4gPiA+ID4gPiAgICBWUklOR19BVkFJTF9GX05PX0lOVEVS
UlVQVCBpcyBub3Qgc2V0IGluIGF2YWlsX2ZsYWdzX3NoYWRvdwo+ID4gPiA+ID4gPiAzKSB2aXJ0
cXVldWVfZ2V0X2J1Zl9jdHhfc3BsaXQoKSB3aWxsIHN0aWxsIHRoaW5rIHRoZSBjYiBpcyBlbmFi
bGVkCj4gPiA+ID4gPiA+ICAgIHRoZW4gaXQgdHJpZXMgdG8gcHVibGlzaCBuZXcgZXZlbnQKPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gVG8gZml4LCBpZiBldmVudF90cmlnZ2VyZWQgaXMgc2V0IHRv
IHRydWUsIGRvIG5vdCB1cGRhdGUKPiA+ID4gPiA+ID4gdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNw
bGl0LnZyaW5nKSBvciB2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+b2ZmX3dyYXAKPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gVGVzdGVkIHdpdGggaXBlcmY6Cj4gPiA+ID4gPiA+IGlwZXJmMyB0Y3Ag
c3RyZWFtOgo+ID4gPiA+ID4gPiB2bTEgLS0tLS0tLS0tLS0tLS0tLS0+IHZtMgo+ID4gPiA+ID4g
PiB2bTIganVzdCByZWNlaXZlcyB0Y3AgZGF0YSBzdHJlYW0gZnJvbSB2bTEsIGFuZCBzZW5kcyB0
aGUgYWNrIHRvIHZtMSwKPiA+ID4gPiA+ID4gdGhlcmUgYXJlIG1hbnkgdHggaW50ZXJydXB0cyBp
biB2bTIuCj4gPiA+ID4gPiA+IGJ1dCB3aXRob3V0IGV2ZW50X3RyaWdnZXJlZCB0aGVyZSBhcmUg
anVzdCBhIGZldyB0eCBpbnRlcnJ1cHRzLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBGaXhlczog
OGQ2MjJkMjFkMjQ4ICgidmlydGlvOiBmaXggdXAgdmlydGlvX2Rpc2FibGVfY2IiKQo+ID4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGJlcnQgSHVhbmcgPGh1YW5namllLmFsYmVydEBieXRlZGFu
Y2UuY29tPgo+ID4gPiA+ID4gPiBNZXNzYWdlLUlkOiA8MjAyMzAzMjEwODU5NTMuMjQ5NDktMS1o
dWFuZ2ppZS5hbGJlcnRAYnl0ZWRhbmNlLmNvbT4KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
TWljaGFlbCBTLiBUc2lya2luIDxtc3RAcmVkaGF0LmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+
ID4gPiA+ICBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jIHwgNiArKysrLS0KPiA+ID4gPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmlu
Zy5jIGIvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4gPiA+ID4gPiBpbmRleCBjYmVl
ZWExYjA0MzkuLjFjMzZmYTQ3Nzk2NiAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy92
aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3ZpcnRpby92aXJ0
aW9fcmluZy5jCj4gPiA+ID4gPiA+IEBAIC05MTQsNyArOTE0LDggQEAgc3RhdGljIHZvaWQgKnZp
cnRxdWV1ZV9nZXRfYnVmX2N0eF9zcGxpdChzdHJ1Y3QgdmlydHF1ZXVlICpfdnEsCj4gPiA+ID4g
PiA+ICAgICAgIC8qIElmIHdlIGV4cGVjdCBhbiBpbnRlcnJ1cHQgZm9yIHRoZSBuZXh0IGVudHJ5
LCB0ZWxsIGhvc3QKPiA+ID4gPiA+ID4gICAgICAgICogYnkgd3JpdGluZyBldmVudCBpbmRleCBh
bmQgZmx1c2ggb3V0IHRoZSB3cml0ZSBiZWZvcmUKPiA+ID4gPiA+ID4gICAgICAgICogdGhlIHJl
YWQgaW4gdGhlIG5leHQgZ2V0X2J1ZiBjYWxsLiAqLwo+ID4gPiA+ID4gPiAtICAgICBpZiAoISh2
cS0+c3BsaXQuYXZhaWxfZmxhZ3Nfc2hhZG93ICYgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQp
KQo+ID4gPiA+ID4gPiArICAgICBpZiAodW5saWtlbHkoISh2cS0+c3BsaXQuYXZhaWxfZmxhZ3Nf
c2hhZG93ICYgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQpICYmCj4gPiA+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAhdnEtPmV2ZW50X3RyaWdnZXJlZCkpCj4gPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgdmlydGlvX3N0b3JlX21iKHZxLT53ZWFrX2JhcnJpZXJzLAo+ID4gPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAmdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZy
aW5nKSwKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3B1X3RvX3Zp
cnRpbzE2KF92cS0+dmRldiwgdnEtPmxhc3RfdXNlZF9pZHgpKTsKPiA+ID4gPiA+ID4gQEAgLTE3
NDQsNyArMTc0NSw4IEBAIHN0YXRpYyB2b2lkICp2aXJ0cXVldWVfZ2V0X2J1Zl9jdHhfcGFja2Vk
KHN0cnVjdCB2aXJ0cXVldWUgKl92cSwKPiA+ID4gPiA+ID4gICAgICAgICogYnkgd3JpdGluZyBl
dmVudCBpbmRleCBhbmQgZmx1c2ggb3V0IHRoZSB3cml0ZSBiZWZvcmUKPiA+ID4gPiA+ID4gICAg
ICAgICogdGhlIHJlYWQgaW4gdGhlIG5leHQgZ2V0X2J1ZiBjYWxsLgo+ID4gPiA+ID4gPiAgICAg
ICAgKi8KPiA+ID4gPiA+ID4gLSAgICAgaWYgKHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93
ID09IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RFU0MpCj4gPiA+ID4gPiA+ICsgICAgIGlmICh1
bmxpa2VseSh2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyA9PSBWUklOR19QQUNLRURfRVZF
TlRfRkxBR19ERVNDICYmCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAhdnEtPmV2ZW50
X3RyaWdnZXJlZCkpCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgdmlydGlvX3N0b3JlX21iKHZx
LT53ZWFrX2JhcnJpZXJzLAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAmdnEtPnBhY2tlZC52cmluZy5kcml2ZXItPm9mZl93cmFwLAo+ID4gPiA+ID4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjcHVfdG9fbGUxNih2cS0+bGFzdF91c2VkX2lkeCkpOwo+
ID4gPiA+ID4KPiA+ID4gPgo+ID4gPgo+ID4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2
ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
