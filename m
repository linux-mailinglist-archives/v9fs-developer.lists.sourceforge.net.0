Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5671664FD5B
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 02:09:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6iBU-0000yL-OS;
	Sun, 18 Dec 2022 01:09:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rminnich@gmail.com>) id 1p6iBU-0000yF-3G
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 01:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G0NdNo5+NDC0Puclev0gxxC1gGRW2KZCjN3muKvRdDU=; b=aoHBeCPq38zxsxvB7BoG5VXmbv
 aisjSdqCN1ODwJ46JKEVxekENXC4j739f7iFI8STDc38jppwLBFl+2JGCx0i9ZqS6s7nStw4OqUp5
 nA3eDNxfemSKat5531PE6xppmVkf2e1ccZ3301TQ9BOdnc8BaCT4yOnNyH+61R+SW85E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G0NdNo5+NDC0Puclev0gxxC1gGRW2KZCjN3muKvRdDU=; b=ZN/iaHN9pXxOJmuqlyT5DFkB6w
 4aBpPfGqTnr2s2zyYSaW+gbadTATgkal1gm59dRCxdDX41r3Wr/unx1Gf+mZPqfYgJMtJBGC0a6jP
 TgHfoDE8vXIPj8+4Of6KX8BpfbTZ0vu3iFiMaXEBe2QxB43UvvtFMGny2kN2TBfR7lQI=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p6iBT-002yCs-3Y for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 01:09:43 +0000
Received: by mail-qt1-f170.google.com with SMTP id a16so5758250qtw.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 17 Dec 2022 17:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=G0NdNo5+NDC0Puclev0gxxC1gGRW2KZCjN3muKvRdDU=;
 b=FTYVVIS7ykzKs3caZ4/vuMMjBEj8K3fmTUAlvAWusST0ZFTcEC+W1CSHy+vuJuU6s0
 05zp/wp+Jkxd8IhVwAaWdV3SbFUE5wzGzZzJ7jiz7IgjAHMfawrQr1KVUFY9D3uvrG0w
 vUOC29KS/Q9Oq3ffTn79HDIxhUnpmi1VjuyFC8d38OAjbQn8zVwM0jSMyAJOUH+C0BpN
 Rloq+BugSKG+5LZ5vs4FsNwAPNw2GcS7N/VohXX+CucNd75qqgmEuWeJ8jl9gkFr3dLt
 mUsqfQASVF/2f5FLu0wl5y71VJxMwbN8X8XVXwXYgVcxzZ/OpApwv4CDhjk1tnGfqfkB
 7SKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=G0NdNo5+NDC0Puclev0gxxC1gGRW2KZCjN3muKvRdDU=;
 b=D8PBWDMynnC+HjHjjFeMFdyhdxL8KlNEzDuoWS/12onIuDXeZ3VooVdi27uOh5SeLJ
 7xSJdV0jZfcqmV34bMKt2noY+AdIDPlOclCFJTWgw0i+heIiHDYws1gCkh1ScdZ0+Oaa
 J2JzHditGZrUKp8FtB59DiSHbLW+JRtYaK21JSxomnmGDkNFr908ytx255Z0rZHPsP2c
 dvadk9sWZE4m0abDwQcC5BN55QdPf08hS0py3glog3gOW1ZfVZc9rlaIj4c1lIiWUykO
 0CJhyDEmigXi1sDseJi/HUSMi6jYnVmiqSJI3wS4N/gava4pXSaru2RQAOQuficEbeCp
 FsHA==
X-Gm-Message-State: ANoB5pkrwsUDqHoghXRonpjBiMAx1UuyJ8njuwtYZkZ5cnUFJhBxXGTQ
 QU+M9ecYanOfumTi+QqOhJpaFSooXbgU1NZQU3SQGVS8lUM=
X-Google-Smtp-Source: AA0mqf7PVhjJlkoIzKUixBsH84HSYDswaOlCxc0h3sIMIA2+8yDSWaqPXhxv4PCkYEme7PvziIRnlXxTstN/30dqs0M=
X-Received: by 2002:ac8:7087:0:b0:3a7:f5e5:66a7 with SMTP id
 y7-20020ac87087000000b003a7f5e566a7mr5104143qto.371.1671325777015; Sat, 17
 Dec 2022 17:09:37 -0800 (PST)
MIME-Version: 1.0
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-3-evanhensbergen@icloud.com>
 <Y55Z2DwZgRG+9zW3@codewreck.org>
 <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
In-Reply-To: <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
From: ron minnich <rminnich@gmail.com>
Date: Sat, 17 Dec 2022 17:09:25 -0800
Message-ID: <CAP6exYL9HxXjuq9ZuHFdrvKJbpKFx4j=rJy6=8fiD6aqROSo+A@mail.gmail.com>
To: evanhensbergen@icloud.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I noticed eric used the term 'cpu',
 which may not be something
 anybody here has seen (unless they're used Plan 9 .... ) more information
 here: shorturl.at/gCEJ4 which might provide helpful context. On Sat, Dec
 17, 2022 at 5:05 PM wrote: 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.170 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p6iBT-002yCs-3Y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH 2/6] Don't assume UID 0 attach
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSBub3RpY2VkIGVyaWMgdXNlZCB0aGUgdGVybSAnY3B1Jywgd2hpY2ggbWF5IG5vdCBiZSBzb21l
dGhpbmcgYW55Ym9keSBoZXJlCmhhcyBzZWVuICh1bmxlc3MgdGhleSdyZSB1c2VkIFBsYW4gOSAu
Li4uICkKCm1vcmUgaW5mb3JtYXRpb24gaGVyZTogc2hvcnR1cmwuYXQvZ0NFSjQgd2hpY2ggbWln
aHQgcHJvdmlkZSBoZWxwZnVsCmNvbnRleHQuCgpPbiBTYXQsIERlYyAxNywgMjAyMiBhdCA1OjA1
IFBNIDxldmFuaGVuc2JlcmdlbkBpY2xvdWQuY29tPiB3cm90ZToKCj4KPgo+ID4gT24gRGVjIDE3
LCAyMDIyLCBhdCA2OjA3IFBNLCBhc21hZGV1c0Bjb2Rld3JlY2sub3JnIHdyb3RlOgo+ID4KPiA+
IEVyaWMgVmFuIEhlbnNiZXJnZW4gd3JvdGUgb24gU2F0LCBEZWMgMTcsIDIwMjIgYXQgMDY6NTI6
MDZQTSArMDAwMDoKPiA+PiBUaGUgd3JpdGViYWNrX2ZpZCBmYWxsYmFjayBjb2RlIGFzc3VtZXMg
YSByb290IHVpZCBmYWxsYmFjayB3aGljaAo+ID4+IGJyZWFrcyBtYW55IHNlcnZlciBjb25maWd1
cmF0aW9ucyAod2hpY2ggZG9uJ3QgcnVuIGFzIHJvb3QpLiAgVGhpcwo+ID4+IHBhdGNoIHN3aXRj
aGVzIHRvIGdlbmVyaWMgbG9va3VwIHdoaWNoIHdpbGwgZm9sbG93IGFyZ3VtZW50Cj4gPj4gZ3Vp
ZGVuY2Ugb24gYWNjZXNzIG1vZGVzIGFuZCBkZWZhdWx0IGlkcyB0byB1c2Ugb24gZmFpbHVyZS4K
PiA+Cj4gPiBVbmZvcnR1bmF0ZWx5IHRoaXMgb25lIHdpbGwgYnJlYWsgd3JpdGVzIHRvIGEgZmls
ZSBjcmVhdGVkIGFzIDQwMCBJCj4gPiB0aGluawo+ID4gVGhhdCdzIHRoZSBtYWluIHJlYXNvbiB3
ZSBoYXZlIHRoaXMgd3JpdGViYWNrIGZpZCBhZmFpayAtLSB0aGVyZSBhcmUKPiA+IGNhc2VzIHdo
ZXJlIHRoZSB1c2VyIHNob3VsZCBiZSBhYmxlIHRvIHdyaXRlIHRvIHRoZSBmaWxlLCBidXQgYSBw
bGFpbgo+ID4gb3Blbi93cml0ZSB3b24ndCB3b3JrLi4uIEkgY2FuJ3QgdGhpbmsgb2YgYW55dGhp
bmcgZWxzZSB0aGFuIG9wZW4gNDAwCj4gPiByaWdodCBub3cgdGhvdWdoCj4gPgo+Cj4gSeKAmWxs
IHRyeSBhbmQgY3JhZnQgYSB0ZXN0IGNhc2UgZm9yIHRoaXMsIGJ1dCBJIHRoaW5rIGl0IHdvcmtz
Pwo+IFRoYXQgYmVpbmcgc2FpZCwgSSBoYXZlbuKAmXQgYmVlbiB0cnlpbmcgdGhlIHhmc3Rlc3Rz
LCBqdXN0IGZzeCBhbmQgYmVuY2guCj4KPiA+IEknbSBzdXJlIHRoZXJlJ3MgYW4geGZzX2lvIGNv
bW1hbmQgYW5kIHhmc3Rlc3QgZm9yIHRoYXQsIGJ1dCBmb3Igbm93Ogo+ID4gcHl0aG9uMyAtYyAn
aW1wb3J0IG9zOyBmID0gb3Mub3BlbigidGVzdGZpbGUiLCBvcy5PX0NSRUFUICsgb3MuT19SRFdS
LAo+IDBvNDAwKTsgb3Mud3JpdGUoZiwgYiJva1xuIiknCj4gPgo+ID4gaWlyYyBnYW5lc2hhIHJ1
bm5pbmcgYXMgbm9uLXJvb3QganVzdCBpZ25vcmVzIHJvb3QgcmVxdWVzdHMgYW5kIG9wZW5zIGFz
Cj4gPiBjdXJyZW50IHVzZXItLSB0aGlzIHdvbid0IHdvcmsgZm9yIHRoaXMgcGFydGljdWxhciBj
YXNlLCBidXQgbWlnaHQgYmUKPiA+IGdvb2QgZW5vdWdoIGZvciB5b3UuLi4gV2l0aCB0aGF0IHNh
aWQ6Cj4KPiBZZWFoLCB0aGUgcmVhbCBwcm9ibGVtIEkgcmFuIGludG8gdGhpcyB3YXMgaWYgdGhl
IHNlcnZlciBpcyBydW5uaW5nIGFzCj4gbm9uLXJvb3QgdGhpcyBjYXVzZXMgaXNzdWVzIGFuZCBJ
IHdhcyB0ZXN0aW5nIGFnYWluc3QgY3B1ICh3aGljaCBkb2VzbuKAmXQKPiBydW4gYXMgcm9vdCku
ICBJIG5lZWQgdG8gZ28gYmFjayBhbmQgY2hlY2ssIGJ1dCBpZiB5b3UgYXJlIHJ1bm5pbmcgYXMg
cm9vdAo+IGFuZCBkZnR1aWQ9MCB0aGVuIHRoZSBiZWhhdmlvciBzaG91bGQgYmUgdGhlIHNhbWUg
YXMgYmVmb3JlPwo+IEluIGFueSBjYXNlLCBJ4oCZbGwgdHJ5IHRvIGdvIGJhY2sgYW5kIG1ha2Ug
dGhpcyB3b3JrIOKAlCBteSBiaWcgaXNzdWUgd2FzCj4gYWx3YXlzIHVzaW5nIHVpZCAwIHJlZ2Fy
ZGxlc3Mgb2Ygd2hhdCBtb3VudCBvcHRpb25zIHNhaWQgaXMgV29uZy4KPgo+ID4KPiA+PiBUaGVy
ZSBpcyBhIGRlZXBlciB1bmRlcmx5aW5nIHByb2JsZW0gd2l0aCB3cml0ZWJhY2tfZmlkcyBpbiB0
aGF0Cj4gPj4gdGhpcyBmYWxsYmFjayBpcyB0b28gc3RhbmRhcmQgYW5kIG5vdCBhbiBleGNlcHRp
b24gZHVlIHRvIHRoZSB3YXkKPiA+PiB3cml0ZWJhY2sgbW9kZSB3b3JrcyBpbiB0aGUgY3VycmVu
dCBpbXBsZW1lbnRhdGlvbi4gIFN1YnNlcXVlbnQKPiA+PiBwYXRjaGVzIHdpbGwgdHJ5IHRvIGFz
c29jaWF0ZSB3cml0ZWJhY2sgZmlkcyBmcm9tIHRoZSBvcmlnaW5hbCB1c2VyCj4gPj4gZWl0aGVy
IGJ5IGZsdXNoaW5nIG9uIGNsb3NlIG9yIGJ5IGhvbGRpbmcgb250byBmaWQgdW50aWwgd3JpdGVi
YWNrCj4gPj4gY29tcGxldGVzLgo+ID4KPiA+IElmIHdlIGNhbiBhZGRyZXNzIHRoaXMgcHJvYmxl
bSB0aG91Z2ggSSBhZ3JlZSB3ZSBzaG91bGQgc3RvcCB1c2luZwo+ID4gd3JpZWJhY2sgZmlkcyBh
cyBtdWNoIGFzIHdlIGRvLgo+ID4gTm93IGZpZHMgYXJlIHJlZmNvdW50ZWQsIEkgdGhpbmsgd2Ug
Y291bGQganVzdCB1c2UgdGhlIG5vcm1hbCBmaWQgYXMKPiA+IHdyaXRlYmFjayBmaWQgKGdldHRp
bmcgYSByZWYpLCBhbmQgdGhlIHJlZ3VsYXIgY2xvc2Ugd2lsbCBub3QgY2x1bmsgaXQKPiA+IHNv
IGRlbGF5ZWQgSU9zIHdpbGwgcGFzcy4KPiA+Cj4gPiBXb3J0aCBhIHRyeT8KPgo+IFllYWgsIHRo
YXQgKHVzaW5nIHJlZ3VsYXIgZmlkcykgaXMgZXhhY3RseSB3aGF0IEkgYW0gZG9pbmcgaW4gbXkg
d3JpdGUKPiBiYWNrLWZpeCBwYXRjaCB3aGljaCBpc27igJl0IHBhcnQgb2YgdGhpcyBzZXJpZXMu
ICBJIHdhcyBzdGlsbCBodW50aW5nIGEgZmV3Cj4gYnVncywgYnV0IEkgdGhpbmsgSSBuYWlsZWQg
dGhlbSB0b2RheS4gIEkgaGF2ZSB0byBkbyBhIG1vcmUgZXh0ZW5zaXZlIHRlc3QKPiBzd2VlcCBv
ZiB0aGUgZGlmZmVyZW50IGNvbmZpZ3MsIGJ1dCB1bml0IHRlc3RzIHNlZW0gZ29vZCB0byBnbyBu
b3cgc28gaWYgSQo+IGVuZCB1cCByZXdvcmtpbmcgdGhlIHBhdGNoIHNldCB0byBhZGRyZXNzIHlv
dXIgY29tbWVudCBhYm92ZSwgSSBtYXkganVzdCBnbwo+IGFoZWFkIGFuZCBhZGQgaXQgdG8gdGhl
IHJlc3VibWl0IHNldC4gIEhvd2V2ZXIsIEkgYWxzbyBnbyBhaGVhZCBhbmQgZmx1c2gKPiBvbiBj
bG9zZS9jbHVuayDigJQgYW5kIHRoYXQgZ2V0cyByaWQgb2YgdGhlIGRlbGF5ZWQgd3JpdGUgYmFj
ayB3aGljaCBJIHRoaW5rCj4gaXMgYWN0dWFsbHkgcHJlZmVyYWJsZSBhbnl3YXlzLiAgSSBtYXkg
cmUtaW50cm9kdWNlIGl0IHdpdGggdGVtcG9yYWwKPiBjYWNoaW5nLCBidXQgaXRzIGp1c3Qgc28g
cHJvYmxlbWF0aWPigKYuLgo+Cj4gICAgICAgICAgLUVyaWMKPgo+Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
