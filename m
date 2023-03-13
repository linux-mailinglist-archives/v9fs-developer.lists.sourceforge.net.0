Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 552926B79CE
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 15:01:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbik9-0001Eb-DJ;
	Mon, 13 Mar 2023 14:01:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hackerzheng666@gmail.com>) id 1pbik6-0001EU-Gb
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xqxxP+NmXLp8umJHs6SnxZxdSNjdtg4YX/6KjcEE3WY=; b=TJZ0wj9QrnFGkQ8w18pZVgmfNc
 De0DuDXs2YDOLSM3uq1dzAYe2nu4lP+3t1aOnL2bMeVA1a131ci9FfgKdre8YLDJhVdnYsAOugE/k
 aMW7p1VupaQZ8r0Ket9j73g2ej6t9QzwoWHRI3dR4ulkYESaoDLJ/nWv/QlkPcv8jbLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xqxxP+NmXLp8umJHs6SnxZxdSNjdtg4YX/6KjcEE3WY=; b=OyL5AiO2snHf5zXiM0zxXYPNFS
 OOq6WswjL4IHtIgh3hYYqau4mBlk+plg1gKRdXBRiRZRMz6zbQUFbvsK2TSSHZO78SPpcEs/qL9GE
 /R8w9IVaNh8vncRNbNrUNqS2MEXy/PG5vnL3gdYKaq/9XcEB64RGtFVW9bO7fBzQD/Js=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbik6-00019f-GA for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:01:39 +0000
Received: by mail-pl1-f178.google.com with SMTP id v21so2914603ple.9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 13 Mar 2023 07:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678716093;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xqxxP+NmXLp8umJHs6SnxZxdSNjdtg4YX/6KjcEE3WY=;
 b=V69HZWslPHyyyl7CN1Zbwb3h5Vu/x7rPAeqzyyr03nJOhQCLh0Q6Q6mfjVwMf5XiCv
 Gt8ehRPBpCDvMbzdWlYM7W/ZjQrb96PnbKONR8GMvqt/vcZk24b7Q/Zw9UxUmDTOoCGm
 mziI+x4jS1t1jRSk2dTGimraXG7gtfOwp4XbcORHo22xbHqknRSD0WDU9CtLgVdHcGMq
 tjyHR1Mp/rMOt+oUSoTCp7wRqhVPNO8Gc4o6Rgdei71IOHPsFnI8YbccrRGjfrFMOsgk
 H02WR5TN4NQAk0m7QTCNudm1SNWxRtDZg+O8wmQSA9SRnNZUZaSXNBn2G5gUPGmEVnZI
 AXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678716093;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xqxxP+NmXLp8umJHs6SnxZxdSNjdtg4YX/6KjcEE3WY=;
 b=XKMgA1dMm/8H+VCsyI9aNltWKyMhe39vPiktWjWRM/x6WW4/EbRlOSZ5jLhrZ4aJYI
 39qxTDfkE/reS3h3OcPjczuJsS9DGa1csNTLacAO5AOEJglh/K9FYK14nmqPSmI7Y3In
 I0qlzQertDHP5kbSABdhKu3ef7059eaTR+6oYFd+OdDWrPNxAkhs9PSrj6LJFYkj5zvE
 HX9FXVPDMttrMkbNc2dQ6ZYHU4sUpZQeYDEmo6QHwdQElyEzpbPVlS2k0awUxCoMfS//
 uGSVG7sZAWc+onBTgc8qqGmTqJ+tuStqJgYk7SGw0VlciMTBbHTYJcl0AUoYG4p6PW/P
 6CBQ==
X-Gm-Message-State: AO0yUKVQrBOsWoRbZqQGfM2P7/vjev0H4eMOb0iuTpqc9x9aNI9ZPABK
 H6l35bqRdljflEG69xhcPJgv+8rkRKh0CtlL4Makf2djBOVqOn+fq1Y=
X-Google-Smtp-Source: AK7set93wvcJ2lqVoJK9m9f5Ty8L6w8MePLZRLCU6iIxSR5R10O+/E1J/u3z+VonBCSK40kBB5W6s5V5FerEQx0wL7M=
X-Received: by 2002:a17:903:3410:b0:19f:3cc1:e3c3 with SMTP id
 ke16-20020a170903341000b0019f3cc1e3c3mr1852337plb.12.1678716092879; Mon, 13
 Mar 2023 07:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
 <ZA8rDCw+mJmyETEx@localhost.localdomain>
In-Reply-To: <ZA8rDCw+mJmyETEx@localhost.localdomain>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Mon, 13 Mar 2023 22:01:21 +0800
Message-ID: <CAJedcCwgvo3meC=k_nPYrRzEj7Hzcy8kqrvHqHLvmPWLjCq_3Q@mail.gmail.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Michal Swiatkowski 于2023年3月13日周一 21:54写道：
    > > On Mon, Mar 13, 2023 at 05:00:02PM +0800, Zheng Wang wrote: > > In xen_9pfs_front_probe,
    it calls xen_9pfs_front_alloc_dataring > > to [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.178 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [hackerzheng666[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [hackerzheng666[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.178 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pbik6-00019f-GA
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
uo4yMDIz5bm0M+aciDEz5pel5ZGo5LiAIDIxOjU05YaZ6YGT77yaCj4KPiBPbiBNb24sIE1hciAx
MywgMjAyMyBhdCAwNTowMDowMlBNICswODAwLCBaaGVuZyBXYW5nIHdyb3RlOgo+ID4gSW4geGVu
XzlwZnNfZnJvbnRfcHJvYmUsIGl0IGNhbGxzIHhlbl85cGZzX2Zyb250X2FsbG9jX2RhdGFyaW5n
Cj4gPiB0byBpbml0IHByaXYtPnJpbmdzIGFuZCBib3VuZCAmcmluZy0+d29yayB3aXRoIHA5X3hl
bl9yZXNwb25zZS4KPiA+Cj4gPiBXaGVuIGl0IGNhbGxzIHhlbl85cGZzX2Zyb250X2V2ZW50X2hh
bmRsZXIgdG8gaGFuZGxlIElSUSByZXF1ZXN0cywKPiA+IGl0IHdpbGwgZmluYWxseSBjYWxsIHNj
aGVkdWxlX3dvcmsgdG8gc3RhcnQgdGhlIHdvcmsuCj4gPgo+ID4gV2hlbiB3ZSBjYWxsIHhlbl85
cGZzX2Zyb250X3JlbW92ZSB0byByZW1vdmUgdGhlIGRyaXZlciwgdGhlcmUKPiA+IG1heSBiZSBh
IHNlcXVlbmNlIGFzIGZvbGxvd3M6Cj4gPgo+ID4gRml4IGl0IGJ5IGZpbmlzaGluZyB0aGUgd29y
ayBiZWZvcmUgY2xlYW51cCBpbiB4ZW5fOXBmc19mcm9udF9mcmVlLgo+ID4KPiA+IE5vdGUgdGhh
dCwgdGhpcyBidWcgaXMgZm91bmQgYnkgc3RhdGljIGFuYWx5c2lzLCB3aGljaCBtaWdodCBiZQo+
ID4gZmFsc2UgcG9zaXRpdmUuCj4gPgo+ID4gQ1BVMCAgICAgICAgICAgICAgICAgIENQVTEKPiA+
Cj4gPiAgICAgICAgICAgICAgICAgICAgICB8cDlfeGVuX3Jlc3BvbnNlCj4gPiB4ZW5fOXBmc19m
cm9udF9yZW1vdmV8Cj4gPiAgIHhlbl85cGZzX2Zyb250X2ZyZWV8Cj4gPiBrZnJlZShwcml2KSAg
ICAgICAgICB8Cj4gPiAvL2ZyZWUgcHJpdiAgICAgICAgICB8Cj4gPiAgICAgICAgICAgICAgICAg
ICAgICB8cDlfdGFnX2xvb2t1cAo+ID4gICAgICAgICAgICAgICAgICAgICAgfC8vdXNlIHByaXYt
PmNsaWVudAo+ID4KPiA+IEZpeGVzOiA3MWViZDcxOTIxZTQgKCJ4ZW4vOXBmczogY29ubmVjdCB0
byB0aGUgYmFja2VuZCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6eXl0bHoud3pA
MTYzLmNvbT4KPiA+IC0tLQo+ID4gdjI6Cj4gPiAtIGZpeCB0eXBlIGVycm9yIG9mIHJpbmcgZm91
bmQgYnkga2VybmVsIHRlc3Qgcm9ib3QKPiA+IC0tLQo+ID4gIG5ldC85cC90cmFuc194ZW4uYyB8
IDUgKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL25ldC85cC90cmFuc194ZW4uYyBiL25ldC85cC90cmFuc194ZW4uYwo+ID4gaW5k
ZXggYzY0MDUwZTgzOWFjLi44Mzc2NDQzMWMwNjYgMTAwNjQ0Cj4gPiAtLS0gYS9uZXQvOXAvdHJh
bnNfeGVuLmMKPiA+ICsrKyBiL25ldC85cC90cmFuc194ZW4uYwo+ID4gQEAgLTI3NCwxMiArMjc0
LDE3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgeGVuYnVzX2RldmljZV9pZCB4ZW5fOXBmc19mcm9u
dF9pZHNbXSA9IHsKPiA+ICBzdGF0aWMgdm9pZCB4ZW5fOXBmc19mcm9udF9mcmVlKHN0cnVjdCB4
ZW5fOXBmc19mcm9udF9wcml2ICpwcml2KQo+ID4gIHsKPiA+ICAgICAgIGludCBpLCBqOwo+ID4g
KyAgICAgc3RydWN0IHhlbl85cGZzX2RhdGFyaW5nICpyaW5nID0gTlVMTDsKPiBNb3ZlIGl0IGJl
Zm9yZSBpbnQgaSwgaiB0byBoYXZlIFJDVC4KPgo+ID4KPiA+ICAgICAgIHdyaXRlX2xvY2soJnhl
bl85cGZzX2xvY2spOwo+ID4gICAgICAgbGlzdF9kZWwoJnByaXYtPmxpc3QpOwo+ID4gICAgICAg
d3JpdGVfdW5sb2NrKCZ4ZW5fOXBmc19sb2NrKTsKPiA+Cj4gPiAgICAgICBmb3IgKGkgPSAwOyBp
IDwgcHJpdi0+bnVtX3JpbmdzOyBpKyspIHsKPiA+ICsgICAgICAgICAgICAgLypjYW5jZWwgd29y
ayovCj4gSXQgaXNuJ3QgbmVlZGVkIEkgdGhpbmssIHRoZSBmdW5jdGlvbiBjYW5jZWxfd29ya19z
eW5jKCkgdGVsbHMgZXZlcnl0aGluZwo+IGhlcmUuCj4KCkdldCBpdCwgd2lsbCByZW1vdmUgaXQg
aW4gdGhlIG5leHQgdmVyc2lvbiBvZiBwYXRjaC4KCkJlc3QgcmVnYXJkcywKWmhlbmcKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
