Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3544A6CB46B
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 04:59:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgzYI-0005LB-U3;
	Tue, 28 Mar 2023 02:59:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jasowang@redhat.com>) id 1pgzYI-0005L5-4E
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 02:59:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JVMGCykpINusC1X2o35RkpO4Jksn/8McHykOJK2uUY8=; b=bXcXHkEoqBnVCf4N9UfGLN+1zo
 AbnPryCsRfngu8Pf1CvZCl7Icg/D8AUtocBYbK+BmsNw2llH15vkbOYEkSkkz5PipCac8hDIv3HKL
 DEkPNjAw9Eil27MRRiwcb962WN4ovYZv4jGHeQtgF6RBrqUZM5x6pphMEz50khzBB4Lg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JVMGCykpINusC1X2o35RkpO4Jksn/8McHykOJK2uUY8=; b=Nr7jPhyKuPhqYTFH3RaDwKr2O7
 t8S1/d1ziTNcvrMGK7uCf+JzQx+kvaqE8ADMwOMjoDc2JXcBYnH91gs+0rdm+Wjdp/ARBsRRm1kJX
 HlohlSekIGa+RFLSZvSOFKkzBZ6rY9sc21nfAOJVMTdXFuuhDCRQMce9JN8ZZGwwTCUU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgzYC-0005GH-F2 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 02:59:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1679972342;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JVMGCykpINusC1X2o35RkpO4Jksn/8McHykOJK2uUY8=;
 b=PQ1IlJAGqrqiXhphVcw303FOFJjTA6sGlt8vMviI94qroqPDM7w8UWZHVKlgBiul+eYAxa
 /nReb5MkfEm1bRGqe8DREELLHA1qo+Eq0MF9S+CcJA5VXESakt83f0Ge67Pw4uR4VEBkS2
 EisPhMg57opuyx1yw2wdgWa6ppc8T7c=
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-568-5eeGftt7MQ-AKVvKkDHtgQ-1; Mon, 27 Mar 2023 22:59:00 -0400
X-MC-Unique: 5eeGftt7MQ-AKVvKkDHtgQ-1
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-17f12d9b68eso3742658fac.11
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 27 Mar 2023 19:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679972340;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JVMGCykpINusC1X2o35RkpO4Jksn/8McHykOJK2uUY8=;
 b=wqg5CEYsRyLWYowgF3+6gzkOY3XidkzkfMYu7Wshu4DKZlQPx1n6PbfjmHOoUCb7O5
 28xO3jefi2plfYCd3Jj4sh4xEWXQ1UASppzvobdKYmk5lFuDAGpmb/keLGITWFF8ym3D
 nufGqFgbFxwddg4rz73SPaScZz2ddBQgCCPDJqSy0W8E2TqICzUIXxfDkz8pQkYvjA+H
 iuEZYYN3EZxgx/BYzXtwNL0FwR/G6RHU7g26tphpk9/zAGc1ORnYwuGX6X3P67ix5NH0
 7yQP9CTEAPzb0u6OSKoR3SDgqseBl4ply4yWyKVbuEVq8yuQobfHhfIXmkVUvpYPqEEt
 jORw==
X-Gm-Message-State: AAQBX9drOTKynAeK0SXEhsDjqowXSIznDBLF0XSnhJBF96QmkcOpgo33
 65pFi3yrySqFN4M6bVYzvnEtnYWVL//fJkah5X7umle1t2aHrnaSpgvbC/AplOcjzMgzlOR39Il
 AZgFSN0aE8E92W1vAwZmfwG/sGu3yxHDBUkiJOgyVZf+byNN4J+Q=
X-Received: by 2002:a05:6870:8310:b0:177:c2fb:8cec with SMTP id
 p16-20020a056870831000b00177c2fb8cecmr5393492oae.9.1679972340035; 
 Mon, 27 Mar 2023 19:59:00 -0700 (PDT)
X-Google-Smtp-Source: AK7set9bmnFjMgjYohCBeL1d99Eg+sVv0sUJNJIXbQ4MkNune4yxD1oxJROTbptIQytupPC8Wk6CuoIKAAtkQZX3NQ4=
X-Received: by 2002:a05:6870:8310:b0:177:c2fb:8cec with SMTP id
 p16-20020a056870831000b00177c2fb8cecmr5393483oae.9.1679972339793; Mon, 27 Mar
 2023 19:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
In-Reply-To: <ZCJNTBQLZeyLBKKB@codewreck.org>
From: Jason Wang <jasowang@redhat.com>
Date: Tue, 28 Mar 2023 10:58:48 +0800
Message-ID: <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Mar 28, 2023 at 10:13 AM Dominique Martinet <asmadeus@codewreck.org>
    wrote: > > Hi Michael, Albert, > > Albert Huang wrote on Sat, Mar 25, 2023
    at 06:56:33PM +0800: > > in virtio_net, if we [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1pgzYC-0005GH-F2
Subject: Re: [V9fs-developer] 9p regression (Was: [PATCH v2] virtio_ring:
 don't update event idx on get_buf)
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
 Albert Huang <huangjie.albert@bytedance.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTA6MTPigK9BTSBEb21pbmlxdWUgTWFydGluZXQKPGFz
bWFkZXVzQGNvZGV3cmVjay5vcmc+IHdyb3RlOgo+Cj4gSGkgTWljaGFlbCwgQWxiZXJ0LAo+Cj4g
QWxiZXJ0IEh1YW5nIHdyb3RlIG9uIFNhdCwgTWFyIDI1LCAyMDIzIGF0IDA2OjU2OjMzUE0gKzA4
MDA6Cj4gPiBpbiB2aXJ0aW9fbmV0LCBpZiB3ZSBkaXNhYmxlIHRoZSBuYXBpX3R4LCB3aGVuIHdl
IHRyaWdlciBhIHR4IGludGVycnVwdCwKPiA+IHRoZSB2cS0+ZXZlbnRfdHJpZ2dlcmVkIHdpbGwg
YmUgc2V0IHRvIHRydWUuIEl0IHdpbGwgbm8gbG9uZ2VyIGJlIHNldCB0bwo+ID4gZmFsc2UuIFVu
bGVzcyB3ZSBleHBsaWNpdGx5IGNhbGwgdmlydHF1ZXVlX2VuYWJsZV9jYl9kZWxheWVkIG9yCj4g
PiB2aXJ0cXVldWVfZW5hYmxlX2NiX3ByZXBhcmUuCj4KPiBUaGlzIHBhdGNoIChjb21taXRlZCBh
cyAzNTM5NTc3MGY4MDMgKCJ2aXJ0aW9fcmluZzogZG9uJ3QgdXBkYXRlIGV2ZW50Cj4gaWR4IG9u
IGdldF9idWYiKSBpbiBuZXh0LTIwMjMwMzI3IGFwcGFyZW50bHkgYnJlYWtzIDlwLCBhcyByZXBv
cnRlZCBieQo+IEx1aXMgaW4gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci9aQ0krN1dnNU9jbFNs
RThjQGJvbWJhZGlsLmluZnJhZGVhZC5vcmcKPgo+IEkndmUganVzdCBoaXQgaGFkIGEgbG9vayBh
dCByZWNlbnQgcGF0Y2hlc1sxXSBhbmQgcmV2ZXJ0ZWQgdGhpcyB0byB0ZXN0Cj4gYW5kIEkgY2Fu
IG1vdW50IGFnYWluLCBzbyBJJ20gcHJldHR5IHN1cmUgdGhpcyBpcyB0aGUgY3VscHJpdCwgYnV0
IEkKPiBkaWRuJ3QgbG9vayBhdCB0aGUgY29udGVudCBhdCBhbGwgeWV0IHNvIGNhbm5vdCBhZHZp
c2UgZnVydGhlci4KPiBJdCBtaWdodCB2ZXJ5IHdlbGwgYmUgdGhhdCB3ZSBuZWVkIHNvbWUgZXh0
cmEgaGFuZGxpbmcgZm9yIDlwCj4gc3BlY2lmaWNhbGx5IHRoYXQgY2FuIGJlIGFkZGVkIHNlcGFy
YXRlbHkgaWYgcmVxdWlyZWQuCj4KPiBbMV0gZ2l0IGxvZyAwZWM1N2NmYTcyMWZiZDM2YjRjNGMw
ZDljY2M1ZDc4YTc4ZjdmYTM1Li5IRUFEIGRyaXZlcnMvdmlydGlvLwo+Cj4KPiBUaGlzIGNhbiBi
ZSByZXByb2R1Y2VkIHdpdGggYSBzaW1wbGUgbW91bnQsIHJ1biBxZW11IHdpdGggc29tZSAtdmly
dGZzCj4gYXJndW1lbnQgYW5kIGBtb3VudCAtdCA5cCAtbyBkZWJ1Zz02NTUzNSB0YWcgbW91bnRw
b2ludGAgd2lsbCBoYW5nIGFmdGVyCj4gdGhlc2UgbWVzc2FnZXM6Cj4gOXBuZXQ6IC0tIHA5X3Zp
cnRpb19yZXF1ZXN0ICg4Myk6IDlwIGRlYnVnOiB2aXJ0aW8gcmVxdWVzdAo+IDlwbmV0OiAtLSBw
OV92aXJ0aW9fcmVxdWVzdCAoODMpOiB2aXJ0aW8gcmVxdWVzdCBraWNrZWQKPgo+IFNvIEkgc3Vz
cGVjdCB3ZSdyZSBqdXN0IG5vdCBnZXR0aW5nIGEgY2FsbGJhY2suCgpJIHRoaW5rIHNvLiBUaGUg
cGF0Y2ggYXNzdW1lcyB0aGUgZHJpdmVyIHdpbGwgY2FsbAp2aXJ0cXVldWVfZGlzYWJsZS9lbmFi
bGVfY2IoKSB3aGljaCBpcyBub3QgdGhlIGNhc2Ugb2YgdGhlIDlwIGRyaXZlci4KClNvIGFmdGVy
IHRoZSBmaXJzdCBpbnRlcnJ1cHQsIGV2ZW50X3RyaWdnZXJlZCB3aWxsIGJlIHNldCB0byB0cnVl
IGZvcmV2ZXIuCgpUaGFua3MKCj4KPgo+IEknbGwgaGF2ZSBhIGNsb3NlciBsb29rIGFmdGVyIHdv
cmssIGJ1dCBhbnkgYWR2aWNlIG1lYW53aGlsZSB3aWxsIGJlCj4gYXBwcmVjaWF0ZWQhCj4gKEkn
bSBzdXJlIEx1aXMgd291bGQgYWxzbyBsaWtlIGEgdGVtcG9yYXJ5IGRyb3AgZnJvbSAtbmV4dCB1
bnRpbAo+IHRoaXMgaXMgZmlndXJlZCBvdXQsIGJ1dCBJJ2xsIGxlYXZlIHRoaXMgdXAgdG8geW91
KQo+Cj4KPiA+Cj4gPiBJZiB3ZSBkaXNhYmxlIHRoZSBuYXBpX3R4LCBpdCB3aWxsIG9ubHkgYmUg
Y2FsbGVkIHdoZW4gdGhlIHR4IHJpbmcKPiA+IGJ1ZmZlciBpcyByZWxhdGl2ZWx5IHNtYWxsLgo+
ID4KPiA+IEJlY2F1c2UgZXZlbnRfdHJpZ2dlcmVkIGlzIHRydWUuIFRoZXJlZm9yZSwgVlJJTkdf
QVZBSUxfRl9OT19JTlRFUlJVUFQgb3IKPiA+IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FC
TEUgd2lsbCBub3QgYmUgc2V0LiBTbyB3ZSB1cGRhdGUKPiA+IHZyaW5nX3VzZWRfZXZlbnQoJnZx
LT5zcGxpdC52cmluZykgb3IgdnEtPnBhY2tlZC52cmluZy5kcml2ZXItPm9mZl93cmFwCj4gPiBl
dmVyeSB0aW1lIHdlIGNhbGwgdmlydHF1ZXVlX2dldF9idWZfY3R4LiBUaGlzIHdpbGwgYnJpbmcg
bW9yZSBpbnRlcnJ1cHRpb25zLgo+ID4KPiA+IFRvIHN1bW1hcml6ZToKPiA+IDEpIGV2ZW50X3Ry
aWdnZXJlZCB3YXMgc2V0IHRvIHRydWUgaW4gdnJpbmdfaW50ZXJydXB0KCkKPiA+IDIpIGFmdGVy
IHRoaXMgbm90aGluZyB3aWxsIGhhcHBlbiBmb3IgdmlydHF1ZXVlX2Rpc2FibGVfY2IoKSBzbwo+
ID4gICAgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQgaXMgbm90IHNldCBpbiBhdmFpbF9mbGFn
c19zaGFkb3cKPiA+IDMpIHZpcnRxdWV1ZV9nZXRfYnVmX2N0eF9zcGxpdCgpIHdpbGwgc3RpbGwg
dGhpbmsgdGhlIGNiIGlzIGVuYWJsZWQKPiA+ICAgIHRoZW4gaXQgdHJpZXMgdG8gcHVibGlzaCBu
ZXcgZXZlbnQKPiA+Cj4gPiBUbyBmaXgsIGlmIGV2ZW50X3RyaWdnZXJlZCBpcyBzZXQgdG8gdHJ1
ZSwgZG8gbm90IHVwZGF0ZQo+ID4gdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSBv
ciB2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+b2ZmX3dyYXAKPiA+Cj4gPiBUZXN0ZWQgd2l0aCBp
cGVyZjoKPiA+IGlwZXJmMyB0Y3Agc3RyZWFtOgo+ID4gdm0xIC0tLS0tLS0tLS0tLS0tLS0tPiB2
bTIKPiA+IHZtMiBqdXN0IHJlY2VpdmVzIHRjcCBkYXRhIHN0cmVhbSBmcm9tIHZtMSwgYW5kIHNl
bmRzIHRoZSBhY2sgdG8gdm0xLAo+ID4gdGhlcmUgYXJlIG1hbnkgdHggaW50ZXJydXB0cyBpbiB2
bTIuCj4gPiBidXQgd2l0aG91dCBldmVudF90cmlnZ2VyZWQgdGhlcmUgYXJlIGp1c3QgYSBmZXcg
dHggaW50ZXJydXB0cy4KPiA+Cj4gPiBGaXhlczogOGQ2MjJkMjFkMjQ4ICgidmlydGlvOiBmaXgg
dXAgdmlydGlvX2Rpc2FibGVfY2IiKQo+ID4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEh1YW5nIDxo
dWFuZ2ppZS5hbGJlcnRAYnl0ZWRhbmNlLmNvbT4KPiA+IE1lc3NhZ2UtSWQ6IDwyMDIzMDMyMTA4
NTk1My4yNDk0OS0xLWh1YW5namllLmFsYmVydEBieXRlZGFuY2UuY29tPgo+ID4gU2lnbmVkLW9m
Zi1ieTogTWljaGFlbCBTLiBUc2lya2luIDxtc3RAcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMgfCA2ICsrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMgYi9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5j
Cj4gPiBpbmRleCBjYmVlZWExYjA0MzkuLjFjMzZmYTQ3Nzk2NiAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMKPiA+ICsrKyBiL2RyaXZlcnMvdmlydGlvL3ZpcnRp
b19yaW5nLmMKPiA+IEBAIC05MTQsNyArOTE0LDggQEAgc3RhdGljIHZvaWQgKnZpcnRxdWV1ZV9n
ZXRfYnVmX2N0eF9zcGxpdChzdHJ1Y3QgdmlydHF1ZXVlICpfdnEsCj4gPiAgICAgICAvKiBJZiB3
ZSBleHBlY3QgYW4gaW50ZXJydXB0IGZvciB0aGUgbmV4dCBlbnRyeSwgdGVsbCBob3N0Cj4gPiAg
ICAgICAgKiBieSB3cml0aW5nIGV2ZW50IGluZGV4IGFuZCBmbHVzaCBvdXQgdGhlIHdyaXRlIGJl
Zm9yZQo+ID4gICAgICAgICogdGhlIHJlYWQgaW4gdGhlIG5leHQgZ2V0X2J1ZiBjYWxsLiAqLwo+
ID4gLSAgICAgaWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5HX0FWQUlM
X0ZfTk9fSU5URVJSVVBUKSkKPiA+ICsgICAgIGlmICh1bmxpa2VseSghKHZxLT5zcGxpdC5hdmFp
bF9mbGFnc19zaGFkb3cgJiBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCkgJiYKPiA+ICsgICAg
ICAgICAgICAgICAgICAhdnEtPmV2ZW50X3RyaWdnZXJlZCkpCj4gPiAgICAgICAgICAgICAgIHZp
cnRpb19zdG9yZV9tYih2cS0+d2Vha19iYXJyaWVycywKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZ2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQudnJpbmcpLAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY3B1X3RvX3ZpcnRpbzE2KF92cS0+dmRldiwgdnEtPmxh
c3RfdXNlZF9pZHgpKTsKPiA+IEBAIC0xNzQ0LDcgKzE3NDUsOCBAQCBzdGF0aWMgdm9pZCAqdmly
dHF1ZXVlX2dldF9idWZfY3R4X3BhY2tlZChzdHJ1Y3QgdmlydHF1ZXVlICpfdnEsCj4gPiAgICAg
ICAgKiBieSB3cml0aW5nIGV2ZW50IGluZGV4IGFuZCBmbHVzaCBvdXQgdGhlIHdyaXRlIGJlZm9y
ZQo+ID4gICAgICAgICogdGhlIHJlYWQgaW4gdGhlIG5leHQgZ2V0X2J1ZiBjYWxsLgo+ID4gICAg
ICAgICovCj4gPiAtICAgICBpZiAodnEtPnBhY2tlZC5ldmVudF9mbGFnc19zaGFkb3cgPT0gVlJJ
TkdfUEFDS0VEX0VWRU5UX0ZMQUdfREVTQykKPiA+ICsgICAgIGlmICh1bmxpa2VseSh2cS0+cGFj
a2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyA9PSBWUklOR19QQUNLRURfRVZFTlRfRkxBR19ERVNDICYm
Cj4gPiArICAgICAgICAgICAgICAgICAgIXZxLT5ldmVudF90cmlnZ2VyZWQpKQo+ID4gICAgICAg
ICAgICAgICB2aXJ0aW9fc3RvcmVfbWIodnEtPndlYWtfYmFycmllcnMsCj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmdnEtPnBhY2tlZC52cmluZy5kcml2ZXItPm9mZl93cmFwLAo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3B1X3RvX2xlMTYodnEtPmxhc3RfdXNl
ZF9pZHgpKTsKPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
