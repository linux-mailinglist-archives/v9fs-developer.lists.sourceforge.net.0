Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0A66CD17B
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Mar 2023 07:22:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phOGA-0007yr-Sa;
	Wed, 29 Mar 2023 05:22:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mst@redhat.com>) id 1phOG5-0007yk-BB
 for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 05:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OpGviQRkMdN9wce+9FcdKHJnUT5elcV+86MUr/viZsA=; b=IH5i7TaLI5+godpb03SsaXkTVg
 Xzr9+R2wrLlRRN/n+hhyVBfawhKi08cm+ykbOtXnGwXRGVaV06HL9SUYU8bcky3Ds5U63/Qp+BWSZ
 Ro42ZEvdGyrgjbKm2fJMmh01KabfNelqvKEZEZBoqsLkb7KkPPxT5Z5PlhXcAg0oMGtM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OpGviQRkMdN9wce+9FcdKHJnUT5elcV+86MUr/viZsA=; b=gnFyT1Wuc7N7Up3cW2MOa/yysP
 C5VoYKiMbDZz/kMUXIV5rtTSjYoXd32vlt5yhucoHYjX7X4BpvefS4Ghok0DFWLcWpn9ZYXT4Tq/Y
 ULlOzvqk0CJYMwLxNmyAHURbcmNi4utJctR6uwKLE0mOH0c7btcjr9AN/68OQojvmnsk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phOFv-0081kf-Ep for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 05:22:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680067309;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OpGviQRkMdN9wce+9FcdKHJnUT5elcV+86MUr/viZsA=;
 b=bHiLvMiluvyHbUPEfOZQkEBDf5VuOQ5B6JS/XLIN3fSIbuL5alJuhmkJe1oT+kqWJHNIEr
 2vTeKhO6mHo2LCpBTxd/BkVVp3tN8yCr7ZDaSIdQvYbw8SIE4JS1B6qj2DpYwo0ETvY4OV
 SVJM4sOAKC6tAzeMBlc4syfzX9u+Xkc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-571-q8js_wiWNwC1kUdlbZ_qlA-1; Wed, 29 Mar 2023 01:21:47 -0400
X-MC-Unique: q8js_wiWNwC1kUdlbZ_qlA-1
Received: by mail-wm1-f72.google.com with SMTP id
 p10-20020a05600c358a00b003edf7d484d4so7543631wmq.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 22:21:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680067306;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OpGviQRkMdN9wce+9FcdKHJnUT5elcV+86MUr/viZsA=;
 b=qE8HXJTR77WAnUoc8CBF35eO/BTVOP7t/Yt3IgaxgPaw98JHeSRepY4J0UbaQeXRpW
 q51smPiRuBgYh6rly7iUeCdDL8uquSsvSafw6YT/LPJs3Iv2H6Y0olXRSFewhrD1l/7+
 i7iBaesm7H2yuw77EKlojEWPt3qVdZBrzPiGxSONUDsgHiJGOrXplpZCW5XjS3fT4loA
 QlvM8t2reINiCq+YObNBWDbbEy7EGRhYa6YSw71rjzMRAM+QhoIpuvVp2s/8sV4Pg/ih
 tdRlOF4PWQALCZy8T7CSVhMpnfeuC3BeaUkI3W0S6FYSWYn0+ix6WY3uVvid0qclKd7P
 zd7g==
X-Gm-Message-State: AO0yUKWU8Fl5vS/yOoogHZ8S58LbF4mjMttb88DYslYIHAeRQDmNQ+xY
 ijsD1qV0JC60KskUbuzYHGl7qguEg33n1NbrecEIbP+nphdBS54HX7aRNPNaVa7Dk1NAsKlFuZq
 BHc9LZt5SrMrWxeMSAC1rwVNd+lGtRhHzqFg=
X-Received: by 2002:a7b:cd87:0:b0:3ee:4bd1:39ca with SMTP id
 y7-20020a7bcd87000000b003ee4bd139camr14369614wmj.13.1680067306592; 
 Tue, 28 Mar 2023 22:21:46 -0700 (PDT)
X-Google-Smtp-Source: AK7set/tmTFTti71Jcmt7sCqKWDaOTmwRd2t6ytr8BVNSqDkPDfdxs7xKF1RNBRRGc20wi2FCQRbHw==
X-Received: by 2002:a7b:cd87:0:b0:3ee:4bd1:39ca with SMTP id
 y7-20020a7bcd87000000b003ee4bd139camr14369604wmj.13.1680067306240; 
 Tue, 28 Mar 2023 22:21:46 -0700 (PDT)
Received: from redhat.com ([2.52.18.165]) by smtp.gmail.com with ESMTPSA id
 s2-20020a5d5102000000b002c71b4d476asm29084170wrt.106.2023.03.28.22.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 22:21:45 -0700 (PDT)
Date: Wed, 29 Mar 2023 01:21:42 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20230329012038-mutt-send-email-mst@kernel.org>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phOFv-0081kf-Ep
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
eSBzZXQKPiBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCwKCkkgYW0gc3RpbGwgc3R1Y2sgdHJ5
aW5nIHRvIHVuZGVyc3RhbmQgd2h5IHdlIGRvbid0IHNldCBpdC4KSG93IGRvZXMgZXZlbnRfdHJp
Z2dlcmVkIGVuZCB1cCBnZXR0aW5nIHNldCB3aXRob3V0CmV2ZW50IGluZGV4IHN1cHBvcnQ/CgpU
aGFua3MhCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlm
cy1kZXZlbG9wZXIK
