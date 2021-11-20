Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA168458074
	for <lists+v9fs-developer@lfdr.de>; Sat, 20 Nov 2021 22:28:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1moXuk-0003na-38; Sat, 20 Nov 2021 21:28:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <nikolay@oldum.net>) id 1moXui-0003nU-Nx
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 21:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DBAy+PDPEAV3BA9s3sfwEPfn+NmLvEn1r8upoAU9QIA=; b=gbJ4NbaRx6glvBHFmalv83yFM/
 UL8aoFDe2+VI+EFEHI7Zemg07WFx09tsuzecz8FHoInaaPfv8szVU/QA3z0NklasIDFKcSsNbVzAw
 ufdKY8eNPOn9/VUvEB1d3DrauEYkzS0U3TWnuLS3V7zJt9nZkj/lTg9Pam8SJd4LyrL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DBAy+PDPEAV3BA9s3sfwEPfn+NmLvEn1r8upoAU9QIA=; b=CtoAqn45VigxzGMDTyybZQSSlI
 hZ4zmxlBkOUCXwyiUbSece+Pxwbo2eUQmH+QD3etj74IyxidE1RnpTjDsVtpLnJiRNngEZX6uCzMF
 DPFc4a3TLrVurde3kuflQUb4AQVixBF9xHJNGva182NITPf4l6JQ0hoeDg4hIT7mTKT4=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1moXuc-0008ES-C6
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 21:28:49 +0000
Received: by mail-ed1-f52.google.com with SMTP id y13so58183827edd.13
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 20 Nov 2021 13:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oldum-net.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=DBAy+PDPEAV3BA9s3sfwEPfn+NmLvEn1r8upoAU9QIA=;
 b=CggvuFKZlZYe9QeLITiq5POizBgnFP/HWdTIfenV9TpbmGqYGGORPa8NqVfQNoOO6B
 pJFNgALEMU7cY4mS9Efw0V6VabfHmA3dE3fx14W6sl/7oElUGOTO6r0pn55O9gY+E0hJ
 d7STO9Z3YhIyrwuKrmUXwvMxw0m8vD/eydbR7TqkHJnkCtDXozP9tO4+/2C9iwojSr59
 Lp3uBBaku4tYc48ZQ0IYK62LHwR7ABgacdTQy/9s3r7K02IcWRRGyvMScQceLW5bsaVA
 OSTmhw/6o7vo2DzU0KM9Vp0gO2HNPypemDrjgHbX0qp8cTa0SxRQo/gVsAtZpL/LP7LF
 6/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=DBAy+PDPEAV3BA9s3sfwEPfn+NmLvEn1r8upoAU9QIA=;
 b=OnWvoHZufBYRc2TFDkj1szQ77b7Irm6HxsosxHSLWVW8qj+D1sI3RWgEYhElUCeJol
 4KcDO7XMv7Qa/KzB4fVq9gnllc25t1ygiZElu8zWHX4uv6GBcf9JQgkZBXyuVlZ0i4Ip
 3tpidyuzVzCPcgHA45gIMV2XRG6sByie/tVVxBpygVNGmr+/tYVJkRuS2KDV3ucbRrdF
 3hAT0EFoR2/ebnuu+0jvSAeDj5icrH6NFZJyoX4ZWS4fCZRVJIbQdSERJqLwDkAKsDDK
 1Q9HOXkL+9eBdHQq6z6xQPPhCtXDNoVmLQ7f8cE7GfQc2fGJbAKwyh8gwCc1x7Nv/I0K
 0t/w==
X-Gm-Message-State: AOAM533QheoP4WVFcSAJVDMslRLPQXjq/S+W+LqI+fnRoZz4CkAm7fPE
 FEnPvMCtfEZYJT+ExLL2wjPbmA==
X-Google-Smtp-Source: ABdhPJyRNXKYN8IXkl5QyQhOkyLhMvM3JCK4IGDNjDmo2mZdMK8Xxuf5JDQr5mQMZAWrUL79IVaVUg==
X-Received: by 2002:a50:e707:: with SMTP id a7mr43964686edn.352.1637443715885; 
 Sat, 20 Nov 2021 13:28:35 -0800 (PST)
Received: from [10.1.0.200] (external.oldum.net. [82.161.240.76])
 by smtp.googlemail.com with ESMTPSA id j14sm1724917edw.96.2021.11.20.13.28.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Nov 2021 13:28:35 -0800 (PST)
Message-ID: <8d781f45b6a6fb434aa386dccb7f8f424ec1ffbe.camel@oldum.net>
From: Nikolay Kichukov <nikolay@oldum.net>
To: Christian Schoenebeck <linux_oss@crudebyte.com>, Dominique Martinet
 <asmadeus@codewreck.org>
Date: Sat, 20 Nov 2021 22:28:35 +0100
In-Reply-To: <2717208.9V0g2NVZY4@silver>
References: <cover.1632327421.git.linux_oss@crudebyte.com>
 <cef6a6c6f8313a609ef104cc64ee6cf9d0ed6adb.camel@oldum.net>
 <YZjfxT24by0Cse6q@codewreck.org> <2717208.9V0g2NVZY4@silver>
User-Agent: Evolution 3.42.1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 2021-11-20 at 15:46 +0100,
 Christian Schoenebeck wrote:
 > On Samstag, 20. November 2021 12:45:09 CET Dominique Martinet wrote: >
 > (Thanks for restarting this thread, this had totally slipped [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1moXuc-0008ES-C6
Subject: Re: [V9fs-developer] [PATCH v3 6/7] 9p/trans_virtio: support larger
 msize values
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gU2F0LCAyMDIxLTExLTIwIGF0IDE1OjQ2ICswMTAwLCBDaHJpc3RpYW4gU2Nob2VuZWJlY2sg
d3JvdGU6Cj4gT24gU2Ftc3RhZywgMjAuIE5vdmVtYmVyIDIwMjEgMTI6NDU6MDkgQ0VUIERvbWlu
aXF1ZSBNYXJ0aW5ldCB3cm90ZToKPiA+IChUaGFua3MgZm9yIHJlc3RhcnRpbmcgdGhpcyB0aHJl
YWQsIHRoaXMgaGFkIHRvdGFsbHkgc2xpcHBlZCBvdXQgb2YKPiA+IG15Cj4gPiBtaW5kLi4uKQo+
IAo+IEhpIGd1eXMsCj4gCj4gSSBoYXZlIChtb3JlIG9yIGxlc3MpIHNpbGVudGx5IGJlZW4gd29y
a2luZyBvbiB0aGVzZSBwYXRjaGVzIG9uIGFsbAo+IGVuZHMgaW4gCj4gdGhlIG1lYW50aW1lLiBJ
ZiBkZXNpcmVkIEkgdHJ5IHRvIGZpbmQgc29tZSB0aW1lIG5leHQgd2VlayB0bwo+IHN1bW1hcml6
ZSAKPiBjdXJyZW50IHN0YXR1cyBvZiB0aGlzIG92ZXJhbGwgZWZmb3J0IGFuZCB3aGF0IHN0aWxs
IG5lZWRzIHRvIGJlIGRvbmUuCgpHcmVhdCwgSSB3b3VsZCBiZSBtb3JlIHRoYW4gaGFwcHkgdG8g
dGVzdCBuZXh0IHZlcnNpb24gb2YgdGhlc2UgcGF0Y2hlcy4KCj4gCj4gPiBOaWtvbGF5IEtpY2h1
a292IHdyb3RlIG9uIFNhdCwgTm92IDIwLCAyMDIxIGF0IDEyOjIwOjM1UE0gKzAxMDA6Cj4gPiA+
IFdoZW4gdGhlIGNsaWVudCBtb3VudHMgdGhlIHNoYXJlIHZpYSB2aXJ0aW8sIHJlcXVlc3RlZCBt
c2l6ZSBpczoKPiA+ID4gMTA0ODU3NjAgb3IgMTA0ODU3NjAwCj4gPiA+IAo+ID4gPiBob3dldmVy
IHRoZSBtb3VudCBzdWNjZWVkcyB3aXRoOgo+ID4gPiBtc2l6ZT01MDc5MDQgaW4gdGhlIGVuZCBh
cyBwZXIgdGhlIC9wcm9jIGZpbGVzeXN0ZW0uIFRoaXMgaXMgbGVzcwo+ID4gPiB0aGFuCj4gPiA+
IHRoZSBwcmV2aW91cyBtYXhpbXVtIHZhbHVlLgo+ID4gCj4gPiAoTm90IHN1cmUgYWJvdXQgdGhp
cywgSSdsbCB0ZXN0IHRoZXNlIHBhdGNoZXMgdG9tb3Jyb3csIGJ1dCBzaW5jZQo+ID4gc29tZXRo
aW5nIGZhaWxlZCBJJ20gbm90IHN1cnByaXNlZCB5b3UgaGF2ZSBsZXNzIHRoYW4gd2hhdCB5b3Ug
Y291bGQKPiA+IGhhdmUgaGVyZTogd2hhdCBkbyB5b3UgZ2V0IHdpdGggYSBtb3JlIHJlYXNvbmFi
bGUgdmFsdWUgbGlrZSAxTQo+ID4gZmlyc3Q/KQoKSXQgd29ya2VkIHdpdGggMU1CLCBJIGNhbiBz
dGljayB0byB0aGlzIGZvciB0aGUgdGltZSBiZWluZy4KCkFyZSB0aGUga2VybmVsIHBhdGNoZXMg
c3VwcG9zZWQgdG8gYmUgaW5jbHVkZWQgaW4gdGhlIEtWTSBob3N0IGtlcm5lbCBvcgp3b3VsZCB0
aGUgZ3Vlc3Qga2VybmVsIHN1ZmZpY2U/Cgo+IAo+IFRoZSBoaWdoZXN0ICdtc2l6ZScgdmFsdWUg
cG9zc2libGUgZm9yIG1lIHdpdGggdGhpcyBwYXJ0aWN1bGFyIHZlcnNpb24KPiBvZiB0aGUgCj4g
a2VybmVsIHBhdGNoZXMgaXMgNDE4NjIxMiAoc28gc2xpZ2h0bHkgYmVsb3cgNE1CKS4KPiAKPiBT
b21lIGJlbmNobWFya3MsIGxpbmVhciByZWFkaW5nIGEgMTIgR0IgZmlsZToKPiAKPiBtc2l6ZcKg
wqDCoCBhdmVyYWdlwqDCoMKgwqDCoCBub3Rlcwo+IAo+IDgga0LCoMKgwqDCoCA1Mi4wIE1CL3PC
oMKgwqAgZGVmYXVsdCBtc2l6ZSBvZiBMaW51eCBrZXJuZWwgPHY1LjE1Cj4gMTI4IGtCwqDCoCA2
MjQuOCBNQi9zwqDCoCBkZWZhdWx0IG1zaXplIG9mIExpbnV4IGtlcm5lbCA+PXY1LjE1Cj4gNTEy
IGtCwqDCoCAxOTYxIE1CL3PCoMKgwqAgY3VycmVudCBtYXguIG1zaXplIHdpdGggYW55IExpbnV4
IGtlcm5lbCA8PXY1LjE1Cj4gMSBNQsKgwqDCoMKgIDI1NTEgTUIvc8KgwqDCoCB0aGlzIG1zaXpl
IHdvdWxkIHZpb2xhdGUgY3VycmVudCB2aXJ0aW8gc3BlY3MKPiAyIE1CwqDCoMKgwqAgMjUyMSBN
Qi9zwqDCoMKgIHRoaXMgbXNpemUgd291bGQgdmlvbGF0ZSBjdXJyZW50IHZpcnRpbyBzcGVjcwo+
IDQgTULCoMKgwqDCoCAyNjI4IE1CL3PCoMKgwqAgcGxhbm5lZCBtaWxlc3RvbmUKPiAKPiBUaGF0
IGRvZXMgbm90IG1lYW4gaXQgYWxyZWFkeSBtYWtlcyBzZW5zZSB0byB1c2UgdGhlc2UgcGF0Y2hl
cyBpbiB0aGlzCj4gdmVyc2lvbiAKPiBhcyBpcyB0byBpbmNyZWFzZSBvdmVyYWxsIHBlcmZvcm1h
bmNlIHlldCwgYnV0IHRoZSBudW1iZXJzIGFscmVhZHkKPiBzdWdnZXN0IAo+IHRoYXQgaW5jcmVh
c2luZyBtc2l6ZSBjYW4gaW1wcm92ZSBwZXJmb3JtYW5jZSBvbiBsYXJnZSBzZXF1ZW50aWFsIEkv
Ty4KPiBUaGVyZSAKPiBhcmUgc3RpbGwgc29tZSB0aGluZ3MgdG8gZG8gdGhvdWdoIHRvIGZpeCBv
dGhlciB1c2UgcGF0dGVybnMgZnJvbQo+IHNsb3dpbmcgZG93biAKPiB3aXRoIHJpc2luZyBtc2l6
ZSwgd2hpY2ggSSB3aWxsIGRlc2NyaWJlIGluIGEgc2VwYXJhdGUgZW1haWwuCj4gCj4gSSBhbHNv
IGhhdmUgYW4gZXhwZXJpbWVudGFsIHZlcnNpb24gb2Yga2VybmVsIHBhdGNoZXMgYW5kIFFFTVUg
dGhhdAo+IGdvZXMgYXMgCj4gaGlnaCBhcyBtc2l6ZT0xMjhNQi4gQnV0IHRoYXQncyBhIGhpZ2hs
eSBoYWNrZWQgdmVyc2lvbiB0aGF0IGNvcGllcwo+IGJ1ZmZlcnMgCj4gYmV0d2VlbiA5cCBjbGll
bnQgbGV2ZWwgYW5kIHZpcnRpbyBsZXZlbCBiYWNrIGFuZCBmb3J0aCBhbmQgd2l0aAo+IGludGVu
dGlvbmFsIAo+IGxhcmdlIGJ1ZmZlciBzaXplcyBvbiBldmVyeSA5cCBtZXNzYWdlIHR5cGUuIFRo
aXMgd2FzIHNvbGVseSBtZWFudCBhcwo+IGEgc3RyZXNzIAo+IHRlc3QsIGkuZS4gd2hldGhlciBp
dCB3YXMgcG9zc2libGUgdG8gZ28gYXMgaGlnaCBhcyB2aXJ0aW8ncwo+IHRoZW9yZXRpY2FsIAo+
IHByb3RvY29sIGxpbWl0IGluIHRoZSBmaXJzdCBwbGFjZSwgYW5kIHdoZXRoZXIgaXQgd2FzIHN0
YWJsZS4gVGhpcwo+IHN0cmVzcyB0ZXN0IAo+IHdhcyBub3QgYWJvdXQgcGVyZm9ybWFuY2UgYXQg
YWxsLiBBbmQgeWVzLCBJIGhhZCBpdCBydW5uaW5nIHdpdGggMTI4TUIKPiBmb3IgCj4gd2Vla3Mg
d2l0aG91dCBpc3N1ZXMgKGV4Y2VwdCBvZiBiZWluZyB2ZXJ5IHNsb3cgb2YgY291cnNlIGR1ZSB0
byBoYWNrcwo+IHVzZWQpLgo+IAo+ID4gPiBJbiBhZGRpdGlvbiB0byB0aGUgYWJvdmUsIHdoZW4g
dGhlIGtlcm5lbCBvbiB0aGUgZ3Vlc3QgYm9vdHMgYW5kCj4gPiA+IGxvYWRzCj4gPiA+IDlwZnMg
c3VwcG9ydCwgdGhlIGF0dGFjaGVkIG1lbW9yeSBhbGxvY2F0aW9uIGZhaWx1cmUgdHJhY2UgaXMK
PiA+ID4gZ2VuZXJhdGVkLgo+ID4gPiAKPiA+ID4gSXMgYW55b25lIGVsc2Ugc2VlaW5nIHNpbWls
YXIgYW5kIHdhcyBhbnlib2R5IGFibGUgdG8gZ2V0IG1zaXplCj4gPiA+IHNldCB0bwo+ID4gPiAx
ME1CIHZpYSB2aXJ0aW8gcHJvdG9jb2wgd2l0aCB0aGVzZSBwYXRjaGVzPwo+ID4gCj4gPiBJIGRv
bid0IHRoaW5rIHRoZSBrZXJuZWwgd291bGQgZXZlciBhbGxvdyB0aGlzIHdpdGggdGhlIGdpdmVu
IGNvZGUsCj4gPiBhcwo+ID4gdGhlICJjb21tb24iIHBhcnQgb2YgOXAgaXMgbm90IHNtYXJ0IGVu
b3VnaCB0byB1c2Ugc2NhdHRlci1nYXRoZXIKPiA+IGFuZAo+ID4gdHJpZXMgdG8gZG8gYSBiaWcg
YWxsb2NhdGlvbiAoYWxtb3N0KSB0aGUgc2l6ZSBvZiB0aGUgbXNpemU6Cj4gPiAKPiA+IC0tLQo+
ID4gwqDCoMKgwqDCoMKgwqAgY2xudC0+ZmNhbGxfY2FjaGUgPQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGttZW1fY2FjaGVfY3JlYXRlX3VzZXJjb3B5KCI5cC1mY2FsbC1jYWNo
ZSIsIGNsbnQtCj4gPiA+bXNpemUsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMCwg
MCwgUDlfSERSU1ogKyA0LAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsbnQtPm1z
aXplIC0gKFA5X0hEUlNaICsKPiA+IDQpLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IE5VTEwpOwo+ID4gCj4gPiAuLi4KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ZmMtPnNkYXRhID0ga21lbV9jYWNoZV9hbGxvYyhjLT5mY2FsbF9jYWNoZSwKPiA+IEdGUF9OT0ZT
KTsKPiA+IC0tLQo+ID4gU28gaW4gcHJhY3RpY2UsIHlvdSB3aWxsIGJlIGNhcHBlZCBhdCAyTUIg
YXMgdGhhdCBpcyB0aGUgYmlnZ2VzdCB0aGUKPiA+IHNsYWIgd2lsbCBiZSBhYmxlIHRvIGhhbmQg
b3ZlciBpbiBhIHNpbmdsZSBjaHVuay4KPiAKPiBJIGRpZCBub3QgZW5jb3VudGVyIGEgMk1CIGxp
bWl0IGhlcmUuIEJ1dCBrbWFsbG9jKCkgY2xlYXJseSBoYXMgYSA0TUIKPiBsaW1pdCwgCj4gc28g
d2hlbiB0cnlpbmcgYW4gbXNpemUgbGFyZ2VyIHRoYW4gNE1CIGl0IGluZXZpdGFibHkgY2F1c2Vz
IGEgbWVtb3J5IAo+IGFsbG9jYXRpb24gZXJyb3IuIEluIG15IHRlc3RzIHRoaXMgYWxsb2NhdGlv
biBlcnJvciB3b3VsZCBhbHdheXMKPiBoYXBwZW4gCj4gaW1tZWRpYXRlbHkgYXQgbW91bnQgdGlt
ZSBjYXVzaW5nIGFuIGluc3RhbnQga2VybmVsIG9vcHMuCj4gCj4gPiBJdCdsbCBhbHNvIG1ha2Ug
YWxsb2NhdGlvbiBmYWlsdXJlcyBxdWl0ZSBsaWtlbHkgYXMgc29vbiBhcyB0aGUKPiA+IHN5c3Rl
bQo+ID4gaGFzIGhhZCBzb21lIHVwdGltZSAoZGVwZW5kaW5nIG9uIHlvdXIgd29ya2xvYWQsIGxv
b2sgYXQKPiA+IC9wcm9jL2J1ZGR5aW5mbwo+ID4gaWYgeW91ciBtYWNoaW5lcyBub3JtYWxseSBo
YXZlIDJNQiBjaHVua3MgYXZhaWxhYmxlKSwgc28gSSB3b3VsZAo+ID4gcmVhbGx5Cj4gPiBub3Qg
cmVjb21tZW5kIHJ1bm5pbmcgd2l0aCBidWZmZXJzIGJpZ2dlciB0aGFuIGUuZy4gNTEyayBvbiBy
ZWFsCj4gPiB3b3JrbG9hZHMgLS0gaXQgbG9va3MgZ3JlYXQgb24gYmVuY2htYXJrcywgZXNwZWNp
YWxseSBhcyBpdCdzIG9uIGl0cwo+ID4gb3duCj4gPiBzbGFiIHNvIGFzIGxvbmcgYXMgeW91J3Jl
IGRvaW5nIGEgbG90IG9mIHJlcXVlc3RzIGl0IHdpbGwgZGlzaCBvdXQKPiA+IGJ1ZmZlcnMgZmFz
dCwgYnV0IGl0J2xsIGxpa2VseSBiZSB1bnJlbGlhYmxlIG92ZXIgdGltZS4KPiA+IChvaCwgYW5k
IHdlIGFsbG9jYXRlIHR3byBvZiB0aGVzZSBwZXIgcmVxdWVzdC4uLikKPiA+IAo+ID4gCj4gPiBU
aGUgbmV4dCBzdGVwIHRvIHN1cHBvcnQgbGFyZ2UgYnVmZmVycyByZWFsbHkgd291bGQgYmUgc3Bs
aXR0aW5nCj4gPiBodGF0Cj4gPiBidWZmZXIgdG86Cj4gPiDCoDEvIG5vdCBhbGxvY2F0ZSBodWdl
IGJ1ZmZlcnMgZm9yIHNtYWxsIG1ldGFkYXRhIG9wcywgZS5nLiBhbiBvcGVuCj4gPiBjYWxsCj4g
PiBjZXJ0YWlubHkgZG9lc24ndCBuZWVkIHRvIGFsbG9jYXRlIDEwTUIgb2YgbWVtb3J5Cj4gPiDC
oDIvIHN1cHBvcnQgc3BsaXR0aW5nIHRoZSBidWZmZXIgaW4gc29tZSBzY2F0dGVyZ2F0aGVyIGFy
cmF5Cj4gPiAKPiA+IElkZWFsbHkgd2UnZCBvbmx5IGFsbG9jYXRlIG9uIGFuIGFzLW5lZWQgYmFz
aXMsIG1vc3Qgb2YgdGhlIHByb3RvY29sCj4gPiBjYWxscyBib3VuZCBob3cgbXVjaCBkYXRhIGlz
IHN1cHBvc2VkIHRvIGNvbWUgYmFjayBhbmQgd2Uga25vdyBob3cKPiA+IG11Y2gKPiA+IHdlIHdh
bnQgdG8gc2VuZCAoaXQncyBhIGZvcm1hdCBzdHJpbmcgYWN0dWFsbHksIGJ1dCB3ZSBjYW4gbWFq
b3JhdGUKPiA+IGl0Cj4gPiBxdWl0ZSBlYXNpbHkpLCBzbyBvbmUgd291bGQgbmVlZCB0byBhZGp1
c3QgYWxsIHByb3RvY29sIGNhbGxzIHRvCj4gPiBwYXNzCj4gPiB0aGlzIGluZm8gdG8gcDlfY2xp
ZW50X3JwYy9wOV9jbGllbnRfemNfcnBjIHNvIGl0IG9ubHkgYWxsb2NhdGVzCj4gPiBidWZmZXJz
Cj4gPiBhcyByZXF1aXJlZCwgaWYgbmVjZXNzYXJ5IGluIG11bHRpcGxlIHJlYXNvbmFibHktc2l6
ZWQgc2VnbWVudHMgKEknZAo+ID4gbG92ZSAyTUIgaHVnZXBhZ2VzLWJhY2tlZCBmb2xpb3MuLi4p
LCBhbmQgaGF2ZSBhbGwgdHJhbnNwb3J0cyB1c2UKPiA+IHRoZXNlCj4gPiBidWZmZXJzLgo+IAo+
IEl0IGlzIG5vdCB0aGF0IGJhZCBpbiBzZW5zZSBvZiBwZW5kaW5nIHdvcmsuIE9uZSBtYWpvciB0
aGluZyB0aGF0Cj4gbmVlZHMgdG8gYmUgCj4gZG9uZSBpcyB0byBjYXAgdGhlIG1ham9yaXR5IG9m
IDlwIG1lc3NhZ2UgdHlwZXMgdG8gYWxsb2NhdGUgb25seSBhcwo+IG11Y2ggYXMgCj4gdGhleSBu
ZWVkLCB3aGljaCBpcyBmb3IgbW9zdCBtZXNzYWdlIHR5cGVzIDw4ay4gUmlnaHQgbm93IHRoZXkg
YWx3YXlzCj4gc2ltcGx5IAo+IGttYWxsb2MobXNpemUpLCB3aGljaCBodXJ0cyB3aXRoIGluY3Jl
YXNpbmcgbXNpemUgdmFsdWVzLiBUaGF0IHRhc2sKPiBkb2VzIG5vdCAKPiBuZWVkIG1hbnkgY2hh
bmdlcyB0aG91Z2guCj4gCj4gPiBJIGhhdmUgYSByb3VnaCBpZGVhIG9uIGhvdyB0byBkbyBhbGwg
dGhpcyBidXQgaG9uZXN0bHkgbGVzcyB0aGFuIDAKPiA+IHRpbWUKPiA+IGZvciB0aGF0LCBzbyBo
YXBweSB0byBnaXZlIGFkdmljZXMgb3IgcmV2aWV3IGFueSBwYXRjaCwgYnV0IGl0J3MKPiA+IGdv
aW5nCj4gPiB0byBiZSBhIGxvdCBvZiB3b3JrIHRoYXQgc3RhbmQgaW4gdGhlIHdheSBvZiByZWFs
bHkgYmlnIElPcy4KPiAKPiBSZXZpZXdzIG9mIHRoZSBwYXRjaGVzIHdvdWxkIGFjdHVhbGx5IGhl
bHAgYSBsb3QgdG8gYnJpbmcgdGhpcyBvdmVyYWxsCj4gZWZmb3J0IAo+IGZvcndhcmQsIGJ1dCBw
cm9iYWJseSByYXRoZXIgc3RhcnRpbmcgd2l0aCB0aGUgdXBjb21pbmcgbmV4dCB2ZXJzaW9uCj4g
b2YgdGhlIAo+IGtlcm5lbCBwYXRjaGVzLCBub3QgdGhpcyBvbGQgdjMuCj4gCj4gPiA+IFvCoMKg
wqAgMS41Mjc5ODFdIDlwOiBJbnN0YWxsaW5nIHY5ZnMgOXAyMDAwIGZpbGUgc3lzdGVtIHN1cHBv
cnQKPiA+ID4gW8KgwqDCoCAxLjUyODE3M10gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0t
LS0tLS0tCj4gPiA+IFvCoMKgwqAgMS41MjgxNzRdIFdBUk5JTkc6IENQVTogMSBQSUQ6IDc5MSBh
dCBtbS9wYWdlX2FsbG9jLmM6NTM1Ngo+ID4gPiBfX2FsbG9jX3BhZ2VzKzB4MWVkLzB4MjkwCj4g
PiBUaGlzIHdhcm5pbmcgaXMgZXhhY3RseSB3aGF0IEkgd2FzIHNheWluZyBhYm91dCB0aGUgYWxs
b2NhdGlvbiBjYXA6Cj4gPiB5b3UndmUgcmVxdWVzdGVkIGFuIGFsbG9jYXRpb24gdGhhdCB3YXMg
YmlnZ2VyIHRoYW4gdGhlIG1heAo+ID4gX19hbGxvY19wYWdlCj4gPiBpcyB3aWxsaW5nIHRvIHBy
b3ZpZGUgKE1BWF9PUkRFUiwgMTEsIHNvIDJNQiBhcyBJIHdhcyBzYXlpbmcpCgpZZXMsIHRoaXMg
aXMgbm8gbG9uZ2VyIGhhcHBlbmluZyB3aGVuIEkgbG93ZXJlZCB0aGUgdmFsdWUgb2YgdGhlIG1z
aXplCnBhcmFtZXRlci4KCj4gCj4gQmVzdCByZWdhcmRzLAo+IENocmlzdGlhbiBTY2hvZW5lYmVj
awo+IAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==
