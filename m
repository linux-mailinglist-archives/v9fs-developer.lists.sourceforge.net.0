Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E703756CA02
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jul 2022 16:22:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oABLg-0006WM-Ma; Sat, 09 Jul 2022 14:22:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oABLV-0006W7-4Y
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 14:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TuZO7lePDTs9YxgIbj1NxOKlSGeYJai8RcqFXkW4Evk=; b=e0UyyvQAUt4cqXnpxwXRCziVSs
 7baIyVrWLJM8DtyjEovPfTp+v9DjCRTt6DHMosGi7o4dBH+uvv34rj681KS+INkW7FtiQB7dcrOD8
 jCaEBQilT4P78QD+fjV+D+IkB4YXD7lCosjjK1jZ7+N/6XN30rDjJSntWShHz+c/iFRw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TuZO7lePDTs9YxgIbj1NxOKlSGeYJai8RcqFXkW4Evk=; b=G4YRbGc3Q9HBE+nspamfofwYSL
 LCD/wEjCM8egDDpeuYM2jKUq6ZCDnyXWKqHywvxeenh3R5SRwacQovAxWoqjD3oJx5O8Uv+BNNlgt
 UlyK7xEbtc1r6qKDo9oB/rpyxSN8xO2XnlQC4MMLkxv9XOZ2vNu9IyYh//y1dfOIDIJI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oABLQ-0006Yi-5G
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 14:22:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=TuZO7lePDTs9YxgIbj1NxOKlSGeYJai8RcqFXkW4Evk=; b=oT4etza8tmPTuVRqurnfzrRXC+
 KovYwFeM42rA4aLCqqCSMmzq+cq/2oSEcrqxwRuG4BDAMkHvO90jaJf1kphTRBR9mDPUcFyrUzw/h
 jeUAeCEaToOF9UqXYdu41DKlf3UEiSO0JRutNWvbv3wvWodaQLbkVzb5cCRZns+gNQj6DEj6RRHyw
 n+C7YB/eTZsW5ybJZfCovkh/LO+7S7M5kvlJjf7bsLPTjIrjSD8WqWiRR8JA+7R1hHOuFhksDJ/l7
 lj8IaVD8L7zRDGwIKyYaWFzcXS62sixzRM3yq/FHQRY6dKlLGtHlE3nPLaI6aWpf/I32M0Cjkua2u
 yMvGhl36ZZoiX1+2sYXI9CstKrbtt6j0rPBjqMl/OQ3Z7QuOgbkNiHGzklarCDbIE6W9w7/60+w4f
 yXTTAXkbO3qwyDUJnW286QGxFaxBIdT1KJiLpp9CmO7VXnjwtAjbnTveUC4Q4v5T+SsYWYHfY5fQr
 3p4kxFgmCJ0IEwqbtR/W9HjC8XmxKzMqHy9sHOrnPkzyjjf/WOBnWeUmyr9+HI+GTFGRma3rAfHsm
 RTgsqSWGVoMJ21dKtJDUkEVR42eWH+AYAzvc6gHhz0t/7VmIUw6T9eL2A6CAQKvm4/XE9bAqx71ie
 4jp7dUPP1H+JiGvc+3VD7Z3ktiFSkgBDQ+6a+wKlI=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Kent Overstreet <kent.overstreet@gmail.com>
Date: Sat, 09 Jul 2022 16:21:46 +0200
Message-ID: <1690934.P4sCSNuWZQ@silver>
In-Reply-To: <Yskxs4uQ4v8l7Zb9@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <72042449.h6Bkk5LDil@silver> <Yskxs4uQ4v8l7Zb9@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag, 9. Juli 2022 09:43:47 CEST Dominique Martinet
 wrote: > I've taken the mempool patches to 9p-next > > Christian Schoenebeck
 wrote on Mon, Jul 04, 2022 at 03:56:55PM +0200: > >> (I appreciat [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oABLQ-0006Yi-5G
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gU2Ftc3RhZywgOS4gSnVsaSAyMDIyIDA5OjQzOjQ3IENFU1QgRG9taW5pcXVlIE1hcnRpbmV0
IHdyb3RlOgo+IEkndmUgdGFrZW4gdGhlIG1lbXBvb2wgcGF0Y2hlcyB0byA5cC1uZXh0Cj4gCj4g
Q2hyaXN0aWFuIFNjaG9lbmViZWNrIHdyb3RlIG9uIE1vbiwgSnVsIDA0LCAyMDIyIGF0IDAzOjU2
OjU1UE0gKzAyMDA6Cj4gPj4gKEkgYXBwcmVjaWF0ZSB0aGUgbmVlZCBmb3IgdGVzdGluZywgYnV0
IHRoaXMgZmVlbHMgbXVjaCBsZXNzIHJpc2t5IHRoYW4KPiA+PiB0aGUgaW92ZWMgc2VyaWVzIHdl
J3ZlIGhhZCByZWNlbnRseS4uLiBGYW1vdXMgbGFzdCB3b3Jkcz8pCj4gPiAKPiA+IEdvdCBpdCwg
Y29uc2lkZXIgbXkgZmFtb3VzIGxhc3Qgd29yZHMgZHJvcHBlZC4gOy0pCj4gCj4gT2ssIHNvIEkg
dGhpbmsgeW91IHdvbiB0aGlzIG9uZS4uLgo+IAo+IFdlbGwgLS0gd2hlbiB0ZXN0aW5nIG5vcm1h
bGx5IGl0IG9idmlvdXNseSB3b3JrcyB3ZWxsLCBwZXJmb3JtYW5jZSB3aXNlCj4gaXMgcm91Z2hs
eSB0aGUgc2FtZSAob2J2aW91c2x5IHNpbmNlIGl0IHRyaWVzIHRvIGFsbG9jYXRlIGZyb20gc2xh
Ygo+IGZpcnN0IGFuZCBpbiBub3JtYWwgY2FzZSB0aGF0IHdpbGwgd29yaykKPiAKPiBXaGVuIEkg
dHJpZWQgZ2FtaW5nIGl0IHdpdGggdmVyeSBsb3cgbWVtb3J5IHRob3VnaCBJIHRob3VnaHQgaXQg
d29ya2VkCj4gd2VsbCwgYnV0IEkgbWFuYWdlZCB0byBnZXQgYSBidW5jaCBvZiBwcm9jZXNzZXMg
c3R1Y2sgaW4gbWVtcG9vbF9hbGxvYwo+IHdpdGggbm8gb2J2aW91cyB0aWQgd2FpdGluZyBmb3Ig
YSByZXBseS4KPiBJIGhhZCB0aGUgYnJpZ2h0IGlkZWEgb2YgdXNpbmcgZmlvIHdpdGggaW9fdXJp
bmcgYW5kIGludGVyZXN0aW5nbHkgdGhlCj4gdXJpbmcgd29ya2VyIGRvZXNuJ3Qgc2hvdyB1cCBp
biBwcyBvciAvcHJvYy88cGlkPiwgYnV0IHdpdGggcWVtdSdzIGdkYgo+IGFuZCBseC1wcyBJIGNv
dWxkIGZpbmQgYSBidW5jaCBvZiBpb3Utd3JrLTxwaWQ+IHRoYXQgYXJlIGFsbCB3aXRoCj4gc2lt
aWxhciBzdGFja3MKPiAgICAxICAg4pSCIFs8MD5dIG1lbXBvb2xfYWxsb2MrMHgxMzYvMHgxODAK
PiAgICAyICAg4pSCIFs8MD5dIHA5X2ZjYWxsX2luaXQrMHg2My8weDgwIFs5cG5ldF0KPiAgICAz
ICAg4pSCIFs8MD5dIHA5X2NsaWVudF9wcmVwYXJlX3JlcSsweGE5LzB4MjkwIFs5cG5ldF0KPiAg
ICA0ICAg4pSCIFs8MD5dIHA5X2NsaWVudF9ycGMrMHg2NC8weDYxMCBbOXBuZXRdCj4gICAgNSAg
IOKUgiBbPDA+XSBwOV9jbGllbnRfd3JpdGUrMHhjYi8weDIxMCBbOXBuZXRdCj4gICAgNiAgIOKU
giBbPDA+XSB2OWZzX2ZpbGVfd3JpdGVfaXRlcisweDRkLzB4YzAgWzlwXQo+ICAgIDcgICDilIIg
WzwwPl0gaW9fd3JpdGUrMHgxMjkvMHgyYzAKPiAgICA4ICAg4pSCIFs8MD5dIGlvX2lzc3VlX3Nx
ZSsweGExLzB4MjViMAo+ICAgIDkgICDilIIgWzwwPl0gaW9fd3Ffc3VibWl0X3dvcmsrMHg5MC8w
eDE5MAo+ICAgMTAgICDilIIgWzwwPl0gaW9fd29ya2VyX2hhbmRsZV93b3JrKzB4MjExLzB4NTUw
Cj4gICAxMSAgIOKUgiBbPDA+XSBpb193cWVfd29ya2VyKzB4MmM1LzB4MzQwCj4gICAxMiAgIOKU
giBbPDA+XSByZXRfZnJvbV9mb3JrKzB4MWYvMHgzMAo+IAo+IG9yLCBhbmQgdGhhdCdzIHRoZSBp
bnRlcmVzdGluZyBwYXJ0Cj4gICAgMSAgIOKUgiBbPDA+XSBtZW1wb29sX2FsbG9jKzB4MTM2LzB4
MTgwCj4gICAgMiAgIOKUgiBbPDA+XSBwOV9mY2FsbF9pbml0KzB4NjMvMHg4MCBbOXBuZXRdCj4g
ICAgMyAgIOKUgiBbPDA+XSBwOV9jbGllbnRfcHJlcGFyZV9yZXErMHhhOS8weDI5MCBbOXBuZXRd
Cj4gICAgNCAgIOKUgiBbPDA+XSBwOV9jbGllbnRfcnBjKzB4NjQvMHg2MTAgWzlwbmV0XQo+ICAg
IDUgICDilIIgWzwwPl0gcDlfY2xpZW50X2ZsdXNoKzB4ODEvMHhjMCBbOXBuZXRdCj4gICAgNiAg
IOKUgiBbPDA+XSBwOV9jbGllbnRfcnBjKzB4NTkxLzB4NjEwIFs5cG5ldF0KPiAgICA3ICAg4pSC
IFs8MD5dIHA5X2NsaWVudF93cml0ZSsweGNiLzB4MjEwIFs5cG5ldF0KPiAgICA4ICAg4pSCIFs8
MD5dIHY5ZnNfZmlsZV93cml0ZV9pdGVyKzB4NGQvMHhjMCBbOXBdCj4gICAgOSAgIOKUgiBbPDA+
XSBpb193cml0ZSsweDEyOS8weDJjMAo+ICAgMTAgICDilIIgWzwwPl0gaW9faXNzdWVfc3FlKzB4
YTEvMHgyNWIwCj4gICAxMSAgIOKUgiBbPDA+XSBpb193cV9zdWJtaXRfd29yaysweDkwLzB4MTkw
Cj4gICAxMiAgIOKUgiBbPDA+XSBpb193b3JrZXJfaGFuZGxlX3dvcmsrMHgyMTEvMHg1NTAKPiAg
IDEzICAg4pSCIFs8MD5dIGlvX3dxZV93b3JrZXIrMHgyYzUvMHgzNDAKPiAgIDE0ICAg4pSCIFs8
MD5dIHJldF9mcm9tX2ZvcmsrMHgxZi8weDMwCj4gCj4gVGhlIHByb2JsZW0gaXMgdGhlc2UgZmx1
c2hlcyA6IHRoZSBzYW1lIHRhc2sgaXMgaG9sZGluZyBhIGJ1ZmZlciBmb3IgdGhlCj4gb3JpZ2lu
YWwgcnBjIGFuZCB0cmllcyB0byBnZXQgYSBuZXcgb25lLCBidXQgd2FpdHMgZm9yIHNvbWVvbmUg
dG8gZnJlZQo+IGFuZC4uIG9idmlvdXNseSB0aGVyZSBpc24ndCBhbnlvbmUgKEkgY291bmQgMTEg
Zmx1c2hlcyBwZW5kaW5nLCBzbyBtb3JlCj4gdGhhbiB0aGUgbWluaW11bSBudW1iZXIgb2YgYnVm
ZmVycyB3ZSdkIGV4cGVjdCBmcm9tIHRoZSBtZW1wb29sLCBhbmQgSQo+IGRvbid0IHRoaW5rIHdl
IG1pc3NlZCBhbnkgZnJlZSkKPiAKPiBOb3cgSSdtIG5vdCBzdXJlIHdoYXQncyBiZXN0IGhlcmUu
Cj4gVGhlIGJlc3QgdGhpbmcgdG8gZG8gd291bGQgcHJvYmFibHkgdG8ganVzdCB0ZWxsIHRoZSBj
bGllbnQgaXQgY2FuJ3QgdXNlCj4gdGhlIG1lbXBvb2xzIGZvciBmbHVzaGVzIC0tIHRoZSBmbHVz
aGVzIGFyZSByYXJlIGFuZCB3aWxsIHVzZSBzbWFsbAo+IGJ1ZmZlcnMgd2l0aCB5b3VyIHNtYWxs
ZXIgYWxsb2NhdGlvbnMgcGF0Y2g7IEkgYmV0IEkgd291bGRuJ3QgYmUgYWJsZSB0bwo+IHJlcHJv
ZHVjZSB0aGF0IGFueW1vcmUgYnV0IGl0IHNob3VsZCBwcm9iYWJseSBqdXN0IGZvcmJpZCB0aGUg
bWVtcG9vbAo+IGp1c3QgaW4gY2FzZS4KClNvIHRoZSBwcm9ibGVtIGlzIHRoYXQgb25lIHRhc2sg
ZW5kcyB1cCB3aXRoIG1vcmUgdGhhbiAxIHJlcXVlc3QgYXQgYSB0aW1lLCAKYW5kIHRoZSBidWZm
ZXIgaXMgYWxsb2NhdGVkIGFuZCBhc3NvY2lhdGVkIHBlciByZXF1ZXN0LCBub3QgcGVyIHRhc2su
IElmIEkgYW0gCm5vdCBtaXNzaW5nIHNvbWV0aGluZywgdGhlbiB0aGlzIHNjZW5hcmlvICg+MSBy
ZXF1ZXN0IHNpbXVsdGFuaW91c2x5IHBlciB0YXNrKSAKY3VycmVudGx5IG1heSBhY3R1YWxseSBv
bmx5IGhhcHBlbiB3aXRoIHA5X2NsaWVudF9mbHVzaCgpIGNhbGxzLiBXaGljaCAKc2ltcGxpZmll
cyB0aGUgcHJvYmxlbS4KClNvIHByb2JhYmx5IHRoZSBiZXN0IHdheSB3b3VsZCBiZSB0byBzaW1w
bHkgZmxpcCB0aGUgY2FsbCBvcmRlciBzdWNoIHRoYXQgCnA5X3RhZ19yZW1vdmUoKSBpcyBjYWxs
ZWQgYmVmb3JlIHA5X2NsaWVudF9mbHVzaCgpLCBzaW1pbGFyIHRvIGhvdyBpdCdzIAphbHJlYWR5
IGRvbmUgd2l0aCBwOV9jbGllbnRfY2x1bmsoKSBjYWxscz8KCj4gQW55d2F5LCBJJ20gbm90IGNv
bWZvcnRhYmxlIHdpdGggdGhpcyBwYXRjaCByaWdodCBub3csIGEgaGFuZyBpcyB3b3JzZQo+IHRo
YW4gYW4gYWxsb2NhdGlvbiBmYWlsdXJlIHdhcm5pbmcuCgpBcyB5b3UgYWxyZWFkeSBtZW50aW9u
ZWQsIHdpdGggdGhlIHBlbmRpbmcgJ25ldC85cDogYWxsb2NhdGUgYXBwcm9wcmlhdGUgCnJlZHVj
ZWQgbWVzc2FnZSBidWZmZXJzJyBwYXRjaCB0aG9zZSBoYW5ncyBzaG91bGQgbm90IGhhcHBlbiwg
YXMgVGZsdXNoIHdvdWxkIAp0aGVuIGp1c3Qga21hbGxvYygpIGEgc21hbGwgYnVmZmVyLiBCdXQg
SSB3b3VsZCBwcm9iYWJseSBzdGlsbCBmaXggdGhpcyBpc3N1ZSAKaGVyZSBuZXZlcnRoZWxlc3Ms
IGFzIGl0IG1pZ2h0IGh1cnQgaW4gb3RoZXIgd2F5cyBpbiBmdXR1cmUuIFNob3VsZG4ndCBiZSB0
b28gCm11Y2ggbm9pc2UgdG8gc3dhcCB0aGUgY2FsbCBvcmRlciwgcmlnaHQ/Cgo+ID4gPiA+IEhv
dyBhYm91dCBJIGFkZHJlc3MgdGhlIGFscmVhZHkgZGlzY3Vzc2VkIGlzc3VlcyBhbmQgcG9zdCBh
IHY1IG9mCj4gPiA+ID4gdGhvc2UKPiA+ID4gPiBwYXRjaGVzIHRoaXMgd2VlayBhbmQgdGhlbiB3
ZSBjYW4gY29udGludWUgZnJvbSB0aGVyZT8KPiA+ID4gCj4gPiA+IEkgd291bGQgaGF2ZSBiZWVu
IGhhcHB5IHRvIHJlYmFzZSB5b3VyIHBhdGNoZXMgOS4uMTIgb24gdG9wIG9mIEtlbnQncwo+ID4g
PiB0aGlzIHdlZWtlbmQgYnV0IGlmIHlvdSB3YW50IHRvIHJlZnJlc2ggdGhlbSB0aGlzIHdlZWsg
d2UgY2FuIGNvbnRpbnVlCj4gPiA+IGZyb20gdGhlcmUsIHN1cmUuCj4gPiAKPiA+IEknbGwgcmVi
YXNlIHRoZW0gb24gbWFzdGVyIGFuZCBhZGRyZXNzIHdoYXQgd2UgZGlzY3Vzc2VkIHNvIGZhci4g
VGhlbgo+ID4gd2UnbGwKPiA+IHNlZS4KPiAKPiBGV0lXIGFuZCByZWdhcmRpbmcgdGhlIG90aGVy
IHRocmVhZCB3aXRoIHZpcml0byBxdWV1ZSBzaXplcywgSSB3YXMgb25seQo+IGNvbnNpZGVyaW5n
IHRoZSBsYXRlciBwYXRjaGVzIHdpdGggc21hbGwgUlBDcyBmb3IgdGhpcyBtZXJnZSB3aW5kb3cu
CgpJIHdvdWxkIGFsc28gcmVjb21tZW5kIHRvIGxlYXZlIG91dCB0aGUgdmlydGlvIHBhdGNoZXMs
IHllcy4KCj4gU2hhbGwgd2UgdHJ5IHRvIGZvY3VzIG9uIHRoYXQgZmlyc3QsIGFuZCB0aGVuIHJl
dmlzaXQgdGhlIHZpcnRpbyBhbmQKPiBtZW1wb29sIHBhdGNoZXMgb25jZSB0aGF0J3MgZG9uZT8K
CllvdXIgY2FsbC4gSSB0aGluayBib3RoIHdheXMgYXJlIHZpYWJsZS4KCkJlc3QgcmVnYXJkcywK
Q2hyaXN0aWFuIFNjaG9lbmViZWNrCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
