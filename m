Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD336CBA25
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 11:09:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ph5Ky-00015A-NQ;
	Tue, 28 Mar 2023 09:09:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <huangjie.albert@bytedance.com>) id 1ph5Kr-00014w-GZ
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 09:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I0FJY5p1XKwPzYvLnkNi9oo0lek3cMv6F0ETbdlGKMA=; b=XrWiWcvaEj9jLzR3njJA+0d17E
 B0M8Za1I/E7a+ucJfNvSV5h6ZOJAdPbBU1qsyo+J/tP+9MZhJWAgdlNu7qUtbUdwdc4Ws2n25Hptw
 lHPp0bECRaLVFnkNuruqksYN/HWNtoWX3ecdmL7w6jH0F15FTq89oOF1icU6nzqi7zFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I0FJY5p1XKwPzYvLnkNi9oo0lek3cMv6F0ETbdlGKMA=; b=U3XhmPCTAHenNtgwgPDH+/+HQg
 VAljBmd6vrnMA0gqqXH0baMnYwnwKCJHLXVGyHS/iRIAT4agXiIeVPe04YcnLLW2hGA6hkEy1DUtZ
 R2QFHssdW+KQCMv0m9lYvqibyQVvAPc56Y2lEnDVhfvLvaLvS7tfQcyjcxNQ4HreXjyk=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ph5Kj-006upT-D7 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 09:09:44 +0000
Received: by mail-lf1-f50.google.com with SMTP id g17so14883905lfv.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 02:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1679994571;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I0FJY5p1XKwPzYvLnkNi9oo0lek3cMv6F0ETbdlGKMA=;
 b=j1e9efDnhizqRWx6+6IgWT5o6+XnOTpMVf7F8qoMPpQLH0TfhEyIxZ6EJyT+t6d6ap
 2FD9NVU/Uge5R8ozLdxLmyrRWt9YkQoWNk9Cd83aa1oqYT94wRBIY3aI6JX3UJMT166h
 n2TgAwvaRXz3w7A3++nQMTvUYIZFT/Lytx6Id+tABatsQ050voPh8B+zTyv2M77Tjt9n
 Nl4O6zSBEcDNKhVqoGgsIQfPhPJiu8JJwdC3tj54qXElAJ9WH2WxoFNq3ijR1GP6jGeX
 vWrk72qq4BpPZBRHKYMye/deg0o9bZHE+4k8NnT5azEst8MI//mTHkmvlNNPypSLO3I3
 af+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679994571;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=I0FJY5p1XKwPzYvLnkNi9oo0lek3cMv6F0ETbdlGKMA=;
 b=h1JCdGku065I+SMjjmgHjpcfDUVwaA7cLeazQjlQsxRCoTmZHW85OrFJjpAebApQtz
 905lkuz+3lNkBUMDoF8mS/Ma4ZobnfBgDDM0/Rn7dl7sgT+v71j8rAmmc29tfR5fJZoG
 GJ1YowNlw2s3edJmyJwzQEaxqXY+aydSp5wc6z46A3lkd9t7UoflvZgDtm/igztBRrbT
 L0N3u+plJeDzz6ZdYMHNHlYgTd09WTtAp79828Hvc4msMTzE7irsxdH4uKtdY1O1S7nl
 QakrZAY7/we8IclH7NyDpLksPTFQD25mU3Ub8+iWeum0mSqdNEoyNviAtV06oNQeoNaG
 hn3w==
X-Gm-Message-State: AAQBX9egXdg8NT99L1HRJSv+3WyHSNidXCN3fK5kuP1azBHiA9L2XTbQ
 J5Dm9zx46Oc0M4c9yZF64jwxvkaPFvRuD6+TDuxn+Q==
X-Google-Smtp-Source: AKy350b5Ot50K6CwCRqsdiiYL9iVdbRBVgRwvGLUqJoERAqtVyx7WTUf9fgauZ2PAQ9QMrKdHYYeB/yKZOQwca4y3SM=
X-Received: by 2002:a05:6512:4c2:b0:4e9:c027:5be6 with SMTP id
 w2-20020a05651204c200b004e9c0275be6mr4386630lfq.12.1679994570678; Tue, 28 Mar
 2023 02:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
 <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
 <CABKxMyPwuRb6p-oHxcQDhRtJv04=NDWvosNAp=epgvdrfCeveg@mail.gmail.com>
 <CACGkMEuukvjXBTDX2K9YLYmpHsqK96AiMK39gbm3+f_+kUydMQ@mail.gmail.com>
In-Reply-To: <CACGkMEuukvjXBTDX2K9YLYmpHsqK96AiMK39gbm3+f_+kUydMQ@mail.gmail.com>
Date: Tue, 28 Mar 2023 17:09:19 +0800
Message-ID: <CABKxMyN0598wA6wHv5GkZC14znwp=OPo7u71_BizJfR+gUx4_w@mail.gmail.com>
To: Jason Wang <jasowang@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Jason Wang <jasowang@redhat.com> 于2023年3月28日周二
    11:40写道： > > On Tue, Mar 28, 2023 at 11:09 AM 黄杰 <huangjie.albert@bytedance.com>
    wrote: > > > > Jason Wang <jasowang@redhat.com> [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1ph5Kj-006upT-D7
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
From: =?UTF-8?B?6buE5p2w?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?6buE5p2w?= <huangjie.albert@bytedance.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Luis Chamberlain <mcgrof@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SmFzb24gV2FuZyA8amFzb3dhbmdAcmVkaGF0LmNvbT4g5LqOMjAyM+W5tDPmnIgyOOaXpeWRqOS6
jCAxMTo0MOWGmemBk++8mgo+Cj4gT24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTE6MDnigK9BTSDp
u4TmnbAgPGh1YW5namllLmFsYmVydEBieXRlZGFuY2UuY29tPiB3cm90ZToKPiA+Cj4gPiBKYXNv
biBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPiDkuo4yMDIz5bm0M+aciDI45pel5ZGo5LqMIDEw
OjU55YaZ6YGT77yaCj4gPiA+Cj4gPiA+IE9uIFR1ZSwgTWFyIDI4LCAyMDIzIGF0IDEwOjEz4oCv
QU0gRG9taW5pcXVlIE1hcnRpbmV0Cj4gPiA+IDxhc21hZGV1c0Bjb2Rld3JlY2sub3JnPiB3cm90
ZToKPiA+ID4gPgo+ID4gPiA+IEhpIE1pY2hhZWwsIEFsYmVydCwKPiA+ID4gPgo+ID4gPiA+IEFs
YmVydCBIdWFuZyB3cm90ZSBvbiBTYXQsIE1hciAyNSwgMjAyMyBhdCAwNjo1NjozM1BNICswODAw
Ogo+ID4gPiA+ID4gaW4gdmlydGlvX25ldCwgaWYgd2UgZGlzYWJsZSB0aGUgbmFwaV90eCwgd2hl
biB3ZSB0cmlnZXIgYSB0eCBpbnRlcnJ1cHQsCj4gPiA+ID4gPiB0aGUgdnEtPmV2ZW50X3RyaWdn
ZXJlZCB3aWxsIGJlIHNldCB0byB0cnVlLiBJdCB3aWxsIG5vIGxvbmdlciBiZSBzZXQgdG8KPiA+
ID4gPiA+IGZhbHNlLiBVbmxlc3Mgd2UgZXhwbGljaXRseSBjYWxsIHZpcnRxdWV1ZV9lbmFibGVf
Y2JfZGVsYXllZCBvcgo+ID4gPiA+ID4gdmlydHF1ZXVlX2VuYWJsZV9jYl9wcmVwYXJlLgo+ID4g
PiA+Cj4gPiA+ID4gVGhpcyBwYXRjaCAoY29tbWl0ZWQgYXMgMzUzOTU3NzBmODAzICgidmlydGlv
X3Jpbmc6IGRvbid0IHVwZGF0ZSBldmVudAo+ID4gPiA+IGlkeCBvbiBnZXRfYnVmIikgaW4gbmV4
dC0yMDIzMDMyNyBhcHBhcmVudGx5IGJyZWFrcyA5cCwgYXMgcmVwb3J0ZWQgYnkKPiA+ID4gPiBM
dWlzIGluIGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvWkNJKzdXZzVPY2xTbEU4Y0Bib21iYWRp
bC5pbmZyYWRlYWQub3JnCj4gPiA+ID4KPiA+ID4gPiBJJ3ZlIGp1c3QgaGl0IGhhZCBhIGxvb2sg
YXQgcmVjZW50IHBhdGNoZXNbMV0gYW5kIHJldmVydGVkIHRoaXMgdG8gdGVzdAo+ID4gPiA+IGFu
ZCBJIGNhbiBtb3VudCBhZ2Fpbiwgc28gSSdtIHByZXR0eSBzdXJlIHRoaXMgaXMgdGhlIGN1bHBy
aXQsIGJ1dCBJCj4gPiA+ID4gZGlkbid0IGxvb2sgYXQgdGhlIGNvbnRlbnQgYXQgYWxsIHlldCBz
byBjYW5ub3QgYWR2aXNlIGZ1cnRoZXIuCj4gPiA+ID4gSXQgbWlnaHQgdmVyeSB3ZWxsIGJlIHRo
YXQgd2UgbmVlZCBzb21lIGV4dHJhIGhhbmRsaW5nIGZvciA5cAo+ID4gPiA+IHNwZWNpZmljYWxs
eSB0aGF0IGNhbiBiZSBhZGRlZCBzZXBhcmF0ZWx5IGlmIHJlcXVpcmVkLgo+ID4gPiA+Cj4gPiA+
ID4gWzFdIGdpdCBsb2cgMGVjNTdjZmE3MjFmYmQzNmI0YzRjMGQ5Y2NjNWQ3OGE3OGY3ZmEzNS4u
SEVBRCBkcml2ZXJzL3ZpcnRpby8KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBjYW4gYmUg
cmVwcm9kdWNlZCB3aXRoIGEgc2ltcGxlIG1vdW50LCBydW4gcWVtdSB3aXRoIHNvbWUgLXZpcnRm
cwo+ID4gPiA+IGFyZ3VtZW50IGFuZCBgbW91bnQgLXQgOXAgLW8gZGVidWc9NjU1MzUgdGFnIG1v
dW50cG9pbnRgIHdpbGwgaGFuZyBhZnRlcgo+ID4gPiA+IHRoZXNlIG1lc3NhZ2VzOgo+ID4gPiA+
IDlwbmV0OiAtLSBwOV92aXJ0aW9fcmVxdWVzdCAoODMpOiA5cCBkZWJ1ZzogdmlydGlvIHJlcXVl
c3QKPiA+ID4gPiA5cG5ldDogLS0gcDlfdmlydGlvX3JlcXVlc3QgKDgzKTogdmlydGlvIHJlcXVl
c3Qga2lja2VkCj4gPiA+ID4KPiA+ID4gPiBTbyBJIHN1c3BlY3Qgd2UncmUganVzdCBub3QgZ2V0
dGluZyBhIGNhbGxiYWNrLgo+ID4gPgo+ID4gPiBJIHRoaW5rIHNvLiBUaGUgcGF0Y2ggYXNzdW1l
cyB0aGUgZHJpdmVyIHdpbGwgY2FsbAo+ID4gPiB2aXJ0cXVldWVfZGlzYWJsZS9lbmFibGVfY2Io
KSB3aGljaCBpcyBub3QgdGhlIGNhc2Ugb2YgdGhlIDlwIGRyaXZlci4KPiA+ID4KPiA+ID4gU28g
YWZ0ZXIgdGhlIGZpcnN0IGludGVycnVwdCwgZXZlbnRfdHJpZ2dlcmVkIHdpbGwgYmUgc2V0IHRv
IHRydWUgZm9yZXZlci4KPiA+ID4KPiA+ID4gVGhhbmtzCj4gPiA+Cj4gPgo+ID4gSGk6IFdhbmcK
PiA+Cj4gPiBZZXMsICBUaGlzIHBhdGNoIGFzc3VtZXMgdGhhdCBhbGwgdmlydGlvLXJlbGF0ZWQg
ZHJpdmVycyB3aWxsIGNhbGwKPiA+IHZpcnRxdWV1ZV9kaXNhYmxlL2VuYWJsZV9jYigpLgo+ID4g
VGhhbmsgeW91IGZvciByYWlzaW5nIHRoaXMgaXNzdWUuCj4gPgo+ID4gSXQgc2VlbXMgdGhhdCBu
YXBpX3R4IGlzIG9ubHkgcmVsYXRlZCB0byB2aXJ0dWVfbmV0LiBJJ20gdGhpbmtpbmcgaWYKPiA+
IHdlIG5lZWQgdG8gcmVmYWN0b3IKPiA+IG5hcGlfdHggaW5zdGVhZCBvZiBpbXBsZW1lbnRpbmcg
aXQgaW5zaWRlIHZpcnRpb19yaW5nLgo+Cj4gV2UgY2FuIGhlYXIgZnJvbSBvdGhlcnMuCj4KPiBJ
IHRoaW5rIGl0J3MgYmV0dGVyIG5vdCB0byB3b3JrYXJvdW5kIHZpcnRpb19yaW5nIGlzc3VlcyBp
biBhIHNwZWNpZmljCj4gZHJpdmVyLiBJdCBtaWdodCBqdXN0IGFkZCBtb3JlIGhhY2tzLiBXZSBz
aG91bGQgY29ycmVjdGx5IHNldAo+IFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBULAo+Cj4gRG8g
eW91IHRoaW5rIHRoZSBmb2xsb3dpbmcgbWlnaHQgd29yayAobm90IGV2ZW4gYSBjb21waWxlIHRl
c3QpPwo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMgYi9kcml2
ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCj4gaW5kZXggNDExNDRiNTI0NmE4Li4xMmY0ZWZiNmRj
NTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+ICsrKyBiL2Ry
aXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMKPiBAQCAtODUyLDE2ICs4NTIsMTYgQEAgc3RhdGlj
IHZvaWQgdmlydHF1ZXVlX2Rpc2FibGVfY2Jfc3BsaXQoc3RydWN0Cj4gdmlydHF1ZXVlICpfdnEp
Cj4gIHsKPiAgICAgICAgIHN0cnVjdCB2cmluZ192aXJ0cXVldWUgKnZxID0gdG9fdnZxKF92cSk7
Cj4KPiAtICAgICAgIGlmICghKHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFkb3cgJiBWUklOR19B
VkFJTF9GX05PX0lOVEVSUlVQVCkpIHsKPiAtICAgICAgICAgICAgICAgdnEtPnNwbGl0LmF2YWls
X2ZsYWdzX3NoYWRvdyB8PSBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVDsKPiAtICAgICAgICAg
ICAgICAgaWYgKHZxLT5ldmVudCkKPiAtICAgICAgICAgICAgICAgICAgICAgICAvKiBUT0RPOiB0
aGlzIGlzIGEgaGFjay4gRmlndXJlIG91dCBhIGNsZWFuZXIKPiB2YWx1ZSB0byB3cml0ZS4gKi8K
PiAtICAgICAgICAgICAgICAgICAgICAgICB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQudnJp
bmcpID0gMHgwOwo+IC0gICAgICAgICAgICAgICBlbHNlCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgdnEtPnNwbGl0LnZyaW5nLmF2YWlsLT5mbGFncyA9Cj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjcHVfdG9fdmlydGlvMTYoX3ZxLT52ZGV2LAo+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFk
b3cpOwo+IC0gICAgICAgfQo+ICsgICAgICAgaWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3No
YWRvdyAmIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUKSkKPiArICAgICAgICAgICAgICAgdnEt
PnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyB8PSBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVDsK
PiArCj4gKyAgICAgICBpZiAodnEtPmV2ZW50ICYmICF2cS0+ZXZlbnRfdHJpZ2dlcmVkKQo+ICsg
ICAgICAgICAgICAgICAvKiBUT0RPOiB0aGlzIGlzIGEgaGFjay4gRmlndXJlIG91dCBhIGNsZWFu
ZXIgdmFsdWUgdG8gd3JpdGUuICovCj4gKyAgICAgICAgICAgICAgIHZyaW5nX3VzZWRfZXZlbnQo
JnZxLT5zcGxpdC52cmluZykgPSAweDA7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAg
IHZxLT5zcGxpdC52cmluZy5hdmFpbC0+ZmxhZ3MgPQo+ICsgICAgICAgICAgICAgICAgICAgICAg
IGNwdV90b192aXJ0aW8xNihfdnEtPnZkZXYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHZxLT5zcGxpdC5hdmFpbF9mbGFnc19zaGFkb3cpOwo+ICB9Cj4KPiAgc3Rh
dGljIHVuc2lnbmVkIGludCB2aXJ0cXVldWVfZW5hYmxlX2NiX3ByZXBhcmVfc3BsaXQoc3RydWN0
IHZpcnRxdWV1ZSAqX3ZxKQo+IEBAIC0xNjk3LDggKzE2OTcsMTAgQEAgc3RhdGljIHZvaWQgdmly
dHF1ZXVlX2Rpc2FibGVfY2JfcGFja2VkKHN0cnVjdAo+IHZpcnRxdWV1ZSAqX3ZxKQo+ICB7Cj4g
ICAgICAgICBzdHJ1Y3QgdnJpbmdfdmlydHF1ZXVlICp2cSA9IHRvX3Z2cShfdnEpOwo+Cj4gLSAg
ICAgICBpZiAodnEtPnBhY2tlZC5ldmVudF9mbGFnc19zaGFkb3cgIT0gVlJJTkdfUEFDS0VEX0VW
RU5UX0ZMQUdfRElTQUJMRSkgewo+ICsgICAgICAgaWYgKCEodnEtPnBhY2tlZC5ldmVudF9mbGFn
c19zaGFkb3cgJiBWUklOR19QQUNLRURfRVZFTlRfRkxBR19ESVNBQkxFKSkKPiAgICAgICAgICAg
ICAgICAgdnEtPnBhY2tlZC5ldmVudF9mbGFnc19zaGFkb3cgPSBWUklOR19QQUNLRURfRVZFTlRf
RkxBR19ESVNBQkxFOwo+ICsKPiArICAgICAgIGlmICh2cS0+ZXZlbnRfdHJpZ2dlcmVkKQo+ICAg
ICAgICAgICAgICAgICB2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+ZmxhZ3MgPQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGNwdV90b19sZTE2KHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hhZG93
KTsKPiAgICAgICAgIH0KPiBAQCAtMjMzMCwxMiArMjMzMiw2IEBAIHZvaWQgdmlydHF1ZXVlX2Rp
c2FibGVfY2Ioc3RydWN0IHZpcnRxdWV1ZSAqX3ZxKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgdnJp
bmdfdmlydHF1ZXVlICp2cSA9IHRvX3Z2cShfdnEpOwo+Cj4gLSAgICAgICAvKiBJZiBkZXZpY2Ug
dHJpZ2dlcmVkIGFuIGV2ZW50IGFscmVhZHkgaXQgd29uJ3QgdHJpZ2dlciBvbmUgYWdhaW46Cj4g
LSAgICAgICAgKiBubyBuZWVkIHRvIGRpc2FibGUuCj4gLSAgICAgICAgKi8KPiAtICAgICAgIGlm
ICh2cS0+ZXZlbnRfdHJpZ2dlcmVkKQo+IC0gICAgICAgICAgICAgICByZXR1cm47Cj4gLQo+ICAg
ICAgICAgaWYgKHZxLT5wYWNrZWRfcmluZykKPiAgICAgICAgICAgICAgICAgdmlydHF1ZXVlX2Rp
c2FibGVfY2JfcGFja2VkKF92cSk7Cj4gICAgICAgICBlbHNlCj4KPiBUaGFua3MKPgoKSGksIFRo
aXMgcGF0Y2ggc2VlbXMgdG8gYWRkcmVzcyB0aGUgaXNzdWUgSSBpbml0aWFsbHkgcmFpc2VkIGFu
ZCBhbHNvCmF2b2lkcyB0aGUgcHJvYmxlbSB3aXRoIHZpcnRpby05UC4KCmJ1dCBtYXliZSB0aGlz
IGlzIGEgYmV0dGVyIGNob2ljZToKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpcnRpby92aXJ0aW9f
cmluZy5jIGIvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwppbmRleCAzMDdlMTM5Y2IxMWQu
LjY3ODRkMTU1Yzc4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwor
KysgYi9kcml2ZXJzL3ZpcnRpby92aXJ0aW9fcmluZy5jCkBAIC04MTIsNiArODEyLDEwIEBAIHN0
YXRpYyB2b2lkIHZpcnRxdWV1ZV9kaXNhYmxlX2NiX3NwbGl0KHN0cnVjdAp2aXJ0cXVldWUgKl92
cSkKCiAgICAgICAgaWYgKCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5HX0FW
QUlMX0ZfTk9fSU5URVJSVVBUKSkgewogICAgICAgICAgICAgICAgdnEtPnNwbGl0LmF2YWlsX2Zs
YWdzX3NoYWRvdyB8PSBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVDsKKworICAgICAgICAgICAg
ICAgaWYgKHZxLT5ldmVudF90cmlnZ2VyZWQpCisgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
bjsKKwogICAgICAgICAgICAgICAgaWYgKHZxLT5ldmVudCkKICAgICAgICAgICAgICAgICAgICAg
ICAgLyogVE9ETzogdGhpcyBpcyBhIGhhY2suIEZpZ3VyZSBvdXQgYSBjbGVhbmVyCnZhbHVlIHRv
IHdyaXRlLiAqLwogICAgICAgICAgICAgICAgICAgICAgICB2cmluZ191c2VkX2V2ZW50KCZ2cS0+
c3BsaXQudnJpbmcpID0gMHgwOwpAQCAtMTU0Niw2ICsxNTUwLDEwIEBAIHN0YXRpYyB2b2lkIHZp
cnRxdWV1ZV9kaXNhYmxlX2NiX3BhY2tlZChzdHJ1Y3QKdmlydHF1ZXVlICpfdnEpCgogICAgICAg
IGlmICh2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyAhPSBWUklOR19QQUNLRURfRVZFTlRf
RkxBR19ESVNBQkxFKSB7CiAgICAgICAgICAgICAgICB2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3No
YWRvdyA9IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RJU0FCTEU7CisKKyAgICAgICAgICAgICAg
IGlmICh2cS0+ZXZlbnRfdHJpZ2dlcmVkKQorICAgICAgICAgICAgICAgICAgICAgICByZXR1cm47
CisKICAgICAgICAgICAgICAgIHZxLT5wYWNrZWQudnJpbmcuZHJpdmVyLT5mbGFncyA9CiAgICAg
ICAgICAgICAgICAgICAgICAgIGNwdV90b19sZTE2KHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hh
ZG93KTsKICAgICAgICB9CkBAIC0yMDYzLDEyICsyMDcxLDYgQEAgdm9pZCB2aXJ0cXVldWVfZGlz
YWJsZV9jYihzdHJ1Y3QgdmlydHF1ZXVlICpfdnEpCiB7CiAgICAgICAgc3RydWN0IHZyaW5nX3Zp
cnRxdWV1ZSAqdnEgPSB0b192dnEoX3ZxKTsKCi0gICAgICAgLyogSWYgZGV2aWNlIHRyaWdnZXJl
ZCBhbiBldmVudCBhbHJlYWR5IGl0IHdvbid0IHRyaWdnZXIgb25lIGFnYWluOgotICAgICAgICAq
IG5vIG5lZWQgdG8gZGlzYWJsZS4KLSAgICAgICAgKi8KLSAgICAgICBpZiAodnEtPmV2ZW50X3Ry
aWdnZXJlZCkKLSAgICAgICAgICAgICAgIHJldHVybjsKLQogICAgICAgIGlmICh2cS0+cGFja2Vk
X3JpbmcpCiAgICAgICAgICAgICAgICB2aXJ0cXVldWVfZGlzYWJsZV9jYl9wYWNrZWQoX3ZxKTsK
ICAgICAgICBlbHNlCgpEb2VzIE1pY2hhZWwgaGF2ZSBhbnkgb3RoZXIgc3VnZ2VzdGlvbnM/CgpU
aGFua3MuCgo+ID4KPiA+IFRoYW5rcwo+ID4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gSSdsbCBo
YXZlIGEgY2xvc2VyIGxvb2sgYWZ0ZXIgd29yaywgYnV0IGFueSBhZHZpY2UgbWVhbndoaWxlIHdp
bGwgYmUKPiA+ID4gPiBhcHByZWNpYXRlZCEKPiA+ID4gPiAoSSdtIHN1cmUgTHVpcyB3b3VsZCBh
bHNvIGxpa2UgYSB0ZW1wb3JhcnkgZHJvcCBmcm9tIC1uZXh0IHVudGlsCj4gPiA+ID4gdGhpcyBp
cyBmaWd1cmVkIG91dCwgYnV0IEknbGwgbGVhdmUgdGhpcyB1cCB0byB5b3UpCj4gPiA+ID4KPiA+
ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+IElmIHdlIGRpc2FibGUgdGhlIG5hcGlfdHgsIGl0IHdp
bGwgb25seSBiZSBjYWxsZWQgd2hlbiB0aGUgdHggcmluZwo+ID4gPiA+ID4gYnVmZmVyIGlzIHJl
bGF0aXZlbHkgc21hbGwuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQmVjYXVzZSBldmVudF90cmlnZ2Vy
ZWQgaXMgdHJ1ZS4gVGhlcmVmb3JlLCBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCBvcgo+ID4g
PiA+ID4gVlJJTkdfUEFDS0VEX0VWRU5UX0ZMQUdfRElTQUJMRSB3aWxsIG5vdCBiZSBzZXQuIFNv
IHdlIHVwZGF0ZQo+ID4gPiA+ID4gdnJpbmdfdXNlZF9ldmVudCgmdnEtPnNwbGl0LnZyaW5nKSBv
ciB2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+b2ZmX3dyYXAKPiA+ID4gPiA+IGV2ZXJ5IHRpbWUg
d2UgY2FsbCB2aXJ0cXVldWVfZ2V0X2J1Zl9jdHguIFRoaXMgd2lsbCBicmluZyBtb3JlIGludGVy
cnVwdGlvbnMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVG8gc3VtbWFyaXplOgo+ID4gPiA+ID4gMSkg
ZXZlbnRfdHJpZ2dlcmVkIHdhcyBzZXQgdG8gdHJ1ZSBpbiB2cmluZ19pbnRlcnJ1cHQoKQo+ID4g
PiA+ID4gMikgYWZ0ZXIgdGhpcyBub3RoaW5nIHdpbGwgaGFwcGVuIGZvciB2aXJ0cXVldWVfZGlz
YWJsZV9jYigpIHNvCj4gPiA+ID4gPiAgICBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCBpcyBu
b3Qgc2V0IGluIGF2YWlsX2ZsYWdzX3NoYWRvdwo+ID4gPiA+ID4gMykgdmlydHF1ZXVlX2dldF9i
dWZfY3R4X3NwbGl0KCkgd2lsbCBzdGlsbCB0aGluayB0aGUgY2IgaXMgZW5hYmxlZAo+ID4gPiA+
ID4gICAgdGhlbiBpdCB0cmllcyB0byBwdWJsaXNoIG5ldyBldmVudAo+ID4gPiA+ID4KPiA+ID4g
PiA+IFRvIGZpeCwgaWYgZXZlbnRfdHJpZ2dlcmVkIGlzIHNldCB0byB0cnVlLCBkbyBub3QgdXBk
YXRlCj4gPiA+ID4gPiB2cmluZ191c2VkX2V2ZW50KCZ2cS0+c3BsaXQudnJpbmcpIG9yIHZxLT5w
YWNrZWQudnJpbmcuZHJpdmVyLT5vZmZfd3JhcAo+ID4gPiA+ID4KPiA+ID4gPiA+IFRlc3RlZCB3
aXRoIGlwZXJmOgo+ID4gPiA+ID4gaXBlcmYzIHRjcCBzdHJlYW06Cj4gPiA+ID4gPiB2bTEgLS0t
LS0tLS0tLS0tLS0tLS0+IHZtMgo+ID4gPiA+ID4gdm0yIGp1c3QgcmVjZWl2ZXMgdGNwIGRhdGEg
c3RyZWFtIGZyb20gdm0xLCBhbmQgc2VuZHMgdGhlIGFjayB0byB2bTEsCj4gPiA+ID4gPiB0aGVy
ZSBhcmUgbWFueSB0eCBpbnRlcnJ1cHRzIGluIHZtMi4KPiA+ID4gPiA+IGJ1dCB3aXRob3V0IGV2
ZW50X3RyaWdnZXJlZCB0aGVyZSBhcmUganVzdCBhIGZldyB0eCBpbnRlcnJ1cHRzLgo+ID4gPiA+
ID4KPiA+ID4gPiA+IEZpeGVzOiA4ZDYyMmQyMWQyNDggKCJ2aXJ0aW86IGZpeCB1cCB2aXJ0aW9f
ZGlzYWJsZV9jYiIpCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGJlcnQgSHVhbmcgPGh1YW5n
amllLmFsYmVydEBieXRlZGFuY2UuY29tPgo+ID4gPiA+ID4gTWVzc2FnZS1JZDogPDIwMjMwMzIx
MDg1OTUzLjI0OTQ5LTEtaHVhbmdqaWUuYWxiZXJ0QGJ5dGVkYW5jZS5jb20+Cj4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFMuIFRzaXJraW4gPG1zdEByZWRoYXQuY29tPgo+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiAgZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYyB8IDYgKysrKy0t
Cj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiA+ID4gPiA+Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aXJ0aW8vdmlydGlv
X3JpbmcuYyBiL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMKPiA+ID4gPiA+IGluZGV4IGNi
ZWVlYTFiMDQzOS4uMWMzNmZhNDc3OTY2IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy92
aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy92aXJ0aW8vdmlydGlv
X3JpbmcuYwo+ID4gPiA+ID4gQEAgLTkxNCw3ICs5MTQsOCBAQCBzdGF0aWMgdm9pZCAqdmlydHF1
ZXVlX2dldF9idWZfY3R4X3NwbGl0KHN0cnVjdCB2aXJ0cXVldWUgKl92cSwKPiA+ID4gPiA+ICAg
ICAgIC8qIElmIHdlIGV4cGVjdCBhbiBpbnRlcnJ1cHQgZm9yIHRoZSBuZXh0IGVudHJ5LCB0ZWxs
IGhvc3QKPiA+ID4gPiA+ICAgICAgICAqIGJ5IHdyaXRpbmcgZXZlbnQgaW5kZXggYW5kIGZsdXNo
IG91dCB0aGUgd3JpdGUgYmVmb3JlCj4gPiA+ID4gPiAgICAgICAgKiB0aGUgcmVhZCBpbiB0aGUg
bmV4dCBnZXRfYnVmIGNhbGwuICovCj4gPiA+ID4gPiAtICAgICBpZiAoISh2cS0+c3BsaXQuYXZh
aWxfZmxhZ3Nfc2hhZG93ICYgVlJJTkdfQVZBSUxfRl9OT19JTlRFUlJVUFQpKQo+ID4gPiA+ID4g
KyAgICAgaWYgKHVubGlrZWx5KCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5H
X0FWQUlMX0ZfTk9fSU5URVJSVVBUKSAmJgo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICF2
cS0+ZXZlbnRfdHJpZ2dlcmVkKSkKPiA+ID4gPiA+ICAgICAgICAgICAgICAgdmlydGlvX3N0b3Jl
X21iKHZxLT53ZWFrX2JhcnJpZXJzLAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJnZyaW5nX3VzZWRfZXZlbnQoJnZxLT5zcGxpdC52cmluZyksCj4gPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjcHVfdG9fdmlydGlvMTYoX3ZxLT52ZGV2LCB2cS0+
bGFzdF91c2VkX2lkeCkpOwo+ID4gPiA+ID4gQEAgLTE3NDQsNyArMTc0NSw4IEBAIHN0YXRpYyB2
b2lkICp2aXJ0cXVldWVfZ2V0X2J1Zl9jdHhfcGFja2VkKHN0cnVjdCB2aXJ0cXVldWUgKl92cSwK
PiA+ID4gPiA+ICAgICAgICAqIGJ5IHdyaXRpbmcgZXZlbnQgaW5kZXggYW5kIGZsdXNoIG91dCB0
aGUgd3JpdGUgYmVmb3JlCj4gPiA+ID4gPiAgICAgICAgKiB0aGUgcmVhZCBpbiB0aGUgbmV4dCBn
ZXRfYnVmIGNhbGwuCj4gPiA+ID4gPiAgICAgICAgKi8KPiA+ID4gPiA+IC0gICAgIGlmICh2cS0+
cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyA9PSBWUklOR19QQUNLRURfRVZFTlRfRkxBR19ERVND
KQo+ID4gPiA+ID4gKyAgICAgaWYgKHVubGlrZWx5KHZxLT5wYWNrZWQuZXZlbnRfZmxhZ3Nfc2hh
ZG93ID09IFZSSU5HX1BBQ0tFRF9FVkVOVF9GTEFHX0RFU0MgJiYKPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAhdnEtPmV2ZW50X3RyaWdnZXJlZCkpCj4gPiA+ID4gPiAgICAgICAgICAgICAg
IHZpcnRpb19zdG9yZV9tYih2cS0+d2Vha19iYXJyaWVycywKPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICZ2cS0+cGFja2VkLnZyaW5nLmRyaXZlci0+b2ZmX3dyYXAsCj4g
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjcHVfdG9fbGUxNih2cS0+bGFz
dF91c2VkX2lkeCkpOwo+ID4gPiA+Cj4gPiA+Cj4gPgo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
