Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C38516B79F8
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 15:10:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbisj-0001Sv-Fx;
	Mon, 13 Mar 2023 14:10:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hackerzheng666@gmail.com>) id 1pbisi-0001Sn-R5
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:10:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ht9o1Rpg8r80GdsikkzvXlqYpvLBxzEFHcMldomiJSg=; b=eHqyhnk3lQwPVfCctcHu/W3nsr
 zxI/lN9G+hjB1xa5Xq2Voe6fyrI4kvkrvdp6bvUjXkPD5yRn2g1Z5cIObMsM2SjSYtgEOhHUxc3gl
 n5nWP1uCUGvK5w3uuygYBzlRjHAD0giuFuvdqLTo3KHookXoNsu3uqtHh5wY/i8qXcGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ht9o1Rpg8r80GdsikkzvXlqYpvLBxzEFHcMldomiJSg=; b=PhRgrmvkxxBfbbjIiDe9NBNOF9
 1M/G2HiK3oyryPO+UNpAR4S6VnsXmJcuoVJezrHn5O4Poja2AfDw8t/MFQhW1UjQnSXZ22moEnQUb
 2tk8VKX/LYoGoHvbgswVXldKLNzHkBffgt9E94EHCqKeAuAEc8WfBo5DNatKs/K5rsEY=;
Received: from mail-pg1-f177.google.com ([209.85.215.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbisi-006Y28-3c for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:10:33 +0000
Received: by mail-pg1-f177.google.com with SMTP id d8so6970370pgm.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 13 Mar 2023 07:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678716626;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ht9o1Rpg8r80GdsikkzvXlqYpvLBxzEFHcMldomiJSg=;
 b=e3w7k/2+Q+XmBHw4TrWj7O4XHw/qsvmVepR4XY5ZfCJub4JUfrKXNJ2HVvOaex+z5N
 +fkYMRJH625M1nCdf0AJ1da9CA7PRrl44BxK8mSGVQfErhScjytUZmMNw1yl0oMyol4I
 7hMp7MnHOhENxI7zuzA6pQdXT+0XoMYVMR8pRAmzGPkDoL6FIcc9kqm1E9rrbbPTZzQg
 o/PMYb/QiTK8IvWXfMMNS2E2/azzzbEABN2Rl+LcYNtL4AmdZR8TJIX7zEcBOYhvBEdH
 0qB7JqBUAS4cGuRhntg/3ckrQ9DgVOanw+VgBkLWqo5XBujJ6Gfi0GFXQSGfEjw5MviU
 preg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678716626;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ht9o1Rpg8r80GdsikkzvXlqYpvLBxzEFHcMldomiJSg=;
 b=uyDvm2d2Lmzo3J2Twc+o6+nZkpEr/q37ZsCCL0Chg09xJ06VsoKlv3LhA80hEWahja
 COhC37woSSiO3T0YVFqSjUca6yYSpHwPdHBo8MbxhYoyyKblkkRQpj/5rqNBLsTit8Oh
 p3HPgfu5Gc0iJf2KMUJmf8Mj4xKMJcqPmbIzHhtmr8bgY3zj2ypmtrE53B1H/+DE3TQi
 prKEE8fvqwv0DxUCz8ZLeMvBvImZVbA2M6HPcIglwFm3w6uVPzPEg7B0Hx9508GR25rP
 iaH3k1Tcn4IAGsIsjswuAQtgGnZLI/Q0qWd3pPuCL5xAZvXWLyaA5xnr2tWzZB8zkr4V
 8IRg==
X-Gm-Message-State: AO0yUKWqGZAine+ajZkOgJyVwAxFvfiUZOHxQ16g7kGD6+Fv7Z0A1+Kh
 XEXGfKSa/Aqh6VTF1mhE7RTAMFSgbw5+PQZZj2E=
X-Google-Smtp-Source: AK7set9dnEsbz+fkberoNUeb7gw2TtbQx0zJnNO2SNwjTPhfV3rVXiTgmWz5+lzHakZjJHPFs9Zx0qDMtBv491snjd0=
X-Received: by 2002:a62:8484:0:b0:5a9:d579:6902 with SMTP id
 k126-20020a628484000000b005a9d5796902mr3633248pfd.0.1678716626517; Mon, 13
 Mar 2023 07:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
 <ZA8rDCw+mJmyETEx@localhost.localdomain>
 <CAJedcCwgvo3meC=k_nPYrRzEj7Hzcy8kqrvHqHLvmPWLjCq_3Q@mail.gmail.com>
 <ZA8uMtMyYKhcEYQ/@localhost.localdomain>
In-Reply-To: <ZA8uMtMyYKhcEYQ/@localhost.localdomain>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Mon, 13 Mar 2023 22:10:15 +0800
Message-ID: <CAJedcCzLs3d3r1=3oXzE1=0Y=VhAfj62S3BgMNZjKbHYW0Wiaw@mail.gmail.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Michal Swiatkowski 于2023年3月13日周一 22:08写道：
    > > On Mon, Mar 13, 2023 at 10:01:21PM +0800, Zheng Hacker wrote: > > Michal
    Swiatkowski 于2023年3月13日周一 21:54写道： > > > [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [hackerzheng666[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [hackerzheng666[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.215.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.215.177 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pbisi-006Y28-3c
Subject: Re: [V9fs-developer] [PATCH net v2] 9p/xen : Fix use after free bug
 in xen_9pfs_front_remove due to race condition
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
Cc: lucho@ionkov.net, alex000young@gmail.com, pabeni@redhat.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, 1395428693sheep@gmail.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 Zheng Wang <zyytlz.wz@163.com>, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

TWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPiDk
uo4yMDIz5bm0M+aciDEz5pel5ZGo5LiAIDIyOjA45YaZ6YGT77yaCj4KPiBPbiBNb24sIE1hciAx
MywgMjAyMyBhdCAxMDowMToyMVBNICswODAwLCBaaGVuZyBIYWNrZXIgd3JvdGU6Cj4gPiBNaWNo
YWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+IOS6jjIw
MjPlubQz5pyIMTPml6XlkajkuIAgMjE6NTTlhpnpgZPvvJoKPiA+ID4KPiA+ID4gT24gTW9uLCBN
YXIgMTMsIDIwMjMgYXQgMDU6MDA6MDJQTSArMDgwMCwgWmhlbmcgV2FuZyB3cm90ZToKPiA+ID4g
PiBJbiB4ZW5fOXBmc19mcm9udF9wcm9iZSwgaXQgY2FsbHMgeGVuXzlwZnNfZnJvbnRfYWxsb2Nf
ZGF0YXJpbmcKPiA+ID4gPiB0byBpbml0IHByaXYtPnJpbmdzIGFuZCBib3VuZCAmcmluZy0+d29y
ayB3aXRoIHA5X3hlbl9yZXNwb25zZS4KPiA+ID4gPgo+ID4gPiA+IFdoZW4gaXQgY2FsbHMgeGVu
XzlwZnNfZnJvbnRfZXZlbnRfaGFuZGxlciB0byBoYW5kbGUgSVJRIHJlcXVlc3RzLAo+ID4gPiA+
IGl0IHdpbGwgZmluYWxseSBjYWxsIHNjaGVkdWxlX3dvcmsgdG8gc3RhcnQgdGhlIHdvcmsuCj4g
PiA+ID4KPiA+ID4gPiBXaGVuIHdlIGNhbGwgeGVuXzlwZnNfZnJvbnRfcmVtb3ZlIHRvIHJlbW92
ZSB0aGUgZHJpdmVyLCB0aGVyZQo+ID4gPiA+IG1heSBiZSBhIHNlcXVlbmNlIGFzIGZvbGxvd3M6
Cj4gPiA+ID4KPiA+ID4gPiBGaXggaXQgYnkgZmluaXNoaW5nIHRoZSB3b3JrIGJlZm9yZSBjbGVh
bnVwIGluIHhlbl85cGZzX2Zyb250X2ZyZWUuCj4gPiA+ID4KPiA+ID4gPiBOb3RlIHRoYXQsIHRo
aXMgYnVnIGlzIGZvdW5kIGJ5IHN0YXRpYyBhbmFseXNpcywgd2hpY2ggbWlnaHQgYmUKPiA+ID4g
PiBmYWxzZSBwb3NpdGl2ZS4KPiA+ID4gPgo+ID4gPiA+IENQVTAgICAgICAgICAgICAgICAgICBD
UFUxCj4gPiA+ID4KPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICB8cDlfeGVuX3Jlc3BvbnNl
Cj4gPiA+ID4geGVuXzlwZnNfZnJvbnRfcmVtb3ZlfAo+ID4gPiA+ICAgeGVuXzlwZnNfZnJvbnRf
ZnJlZXwKPiA+ID4gPiBrZnJlZShwcml2KSAgICAgICAgICB8Cj4gPiA+ID4gLy9mcmVlIHByaXYg
ICAgICAgICAgfAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgIHxwOV90YWdfbG9va3VwCj4g
PiA+ID4gICAgICAgICAgICAgICAgICAgICAgfC8vdXNlIHByaXYtPmNsaWVudAo+ID4gPiA+Cj4g
PiA+ID4gRml4ZXM6IDcxZWJkNzE5MjFlNCAoInhlbi85cGZzOiBjb25uZWN0IHRvIHRoZSBiYWNr
ZW5kIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6eXl0bHoud3pAMTYzLmNv
bT4KPiA+ID4gPiAtLS0KPiA+ID4gPiB2MjoKPiA+ID4gPiAtIGZpeCB0eXBlIGVycm9yIG9mIHJp
bmcgZm91bmQgYnkga2VybmVsIHRlc3Qgcm9ib3QKPiA+ID4gPiAtLS0KPiA+ID4gPiAgbmV0Lzlw
L3RyYW5zX3hlbi5jIHwgNSArKysrKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvbmV0LzlwL3RyYW5zX3hlbi5jIGIv
bmV0LzlwL3RyYW5zX3hlbi5jCj4gPiA+ID4gaW5kZXggYzY0MDUwZTgzOWFjLi44Mzc2NDQzMWMw
NjYgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvbmV0LzlwL3RyYW5zX3hlbi5jCj4gPiA+ID4gKysrIGIv
bmV0LzlwL3RyYW5zX3hlbi5jCj4gPiA+ID4gQEAgLTI3NCwxMiArMjc0LDE3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgeGVuYnVzX2RldmljZV9pZCB4ZW5fOXBmc19mcm9udF9pZHNbXSA9IHsKPiA+
ID4gPiAgc3RhdGljIHZvaWQgeGVuXzlwZnNfZnJvbnRfZnJlZShzdHJ1Y3QgeGVuXzlwZnNfZnJv
bnRfcHJpdiAqcHJpdikKPiA+ID4gPiAgewo+ID4gPiA+ICAgICAgIGludCBpLCBqOwo+ID4gPiA+
ICsgICAgIHN0cnVjdCB4ZW5fOXBmc19kYXRhcmluZyAqcmluZyA9IE5VTEw7Cj4gPiA+IE1vdmUg
aXQgYmVmb3JlIGludCBpLCBqIHRvIGhhdmUgUkNULgo+ID4gPgo+IFNvcnJ5IEkgZGlkbid0IG5v
dGljZSBpdCBiZWZvcmUsIG1vdmUgdGhlIGRlZmluaXRpb24gdG8gZm9yIGxvb3AuCj4KCkdldCBp
dCwgd2lsbCBjb3JyZWN0IGl0IGluIHRoZSBuZXh0IHBhdGNoLiBUaGFua3MgZm9yIHlvdXIgbm90
aWNlIDopCgo+ID4gPiA+Cj4gPiA+ID4gICAgICAgd3JpdGVfbG9jaygmeGVuXzlwZnNfbG9jayk7
Cj4gPiA+ID4gICAgICAgbGlzdF9kZWwoJnByaXYtPmxpc3QpOwo+ID4gPiA+ICAgICAgIHdyaXRl
X3VubG9jaygmeGVuXzlwZnNfbG9jayk7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBmb3IgKGkgPSAw
OyBpIDwgcHJpdi0+bnVtX3JpbmdzOyBpKyspIHsKPiBIZXJlOgo+IHN0cnVjdCB4ZW5fOXBmc19k
YXRhcmluZyAqcmluZyA9ICZwcml2LT5yaW5nc1tpXTsKPgoKQmVzdCByZWdhcmRzLApaaGVuZwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
