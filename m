Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5084431C5
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 16:32:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhvm2-0003xw-7l; Tue, 02 Nov 2021 15:32:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mhvm0-0003xq-PB
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 15:32:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JQVyxc+5e8BLWMhcg3SS37gDBNCEhn9Zd345Nr+JNNE=; b=HA6Gk0MeUC1tbAhMSSlCYLC2/O
 LVEcrkvGPil5qm/yJHFYYx01pC3UktVY+v7B0FQdVogLS9MOPzkV4U/i2phR8EBBVS9C4/sCHKaa+
 jT/LZQL8WadSGycLJNq6xU+UPtF3QI177VfV2g9l0RI2EHU0bQuc7jnGcGwvDM1DAMc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JQVyxc+5e8BLWMhcg3SS37gDBNCEhn9Zd345Nr+JNNE=; b=DnmKg2z7DWMdeXkHBPld1gzI+F
 uOkCT6H3ZIEcL6paOQ+/Aa6bK/jACh5XqheJcoWlev3fExPx4tDcMlM3WBMVHX3scylkhLCAPb75d
 5E1WGIVAQxg2e5VNwXBzN7kHcTWfqS+Sz973X4c7Wsgcrejqm9jM//smDgh2rwiKwx94=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhvm0-00F5br-1b
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 15:32:28 +0000
Date: Tue, 2 Nov 2021 16:32:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1635867141;
 bh=5OvMbhfJq7+QGUzOTVZo8+8AZYHPyj8ag6BCpDM1akE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TT+zHTNU+xlgltSeNmmVjhdFBf4vwmViPqgi7i282urMt8n7mTzMU0Oy3TcIKWWys
 onsXZBYdmGFMobiBlypHRcgCPCNF1Vo6PPX8Zr1ZaJzmIC+uaKkjqLOCD2bte0LeZJ
 wHnHW8M8b/KnXJkbpmgB67Hoe7cakEGbfNEJhJes=
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <3e8fcaff-6a2e-4546-87c9-a58146e02e88@t-8ch.de>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
 <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
 <YYEmOcEf5fjDyM67@codewreck.org>
 <ddf6b6c9-1d9b-4378-b2ee-b7ac4a622010@t-8ch.de>
 <YYFSBKXNPyIIFo7J@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YYFSBKXNPyIIFo7J@codewreck.org>
Jabber-ID: thomas@t-8ch.de
X-Accept: text/plain, text/html;q=0.2, text/*;q=0.1
X-Accept-Language: en-us, en;q=0.8, de-de;q=0.7, de;q=0.6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2021-11-02 23:58+0900, Dominique Martinet wrote: > Thomas
    Weißschuh wrote on Tue, Nov 02, 2021 at 03:49:32PM +0100: > > > I guess
   it wouldn't hurt to have 9p-tcp 9p-unix and 9p-fd aliases to the > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: weissschuh.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mhvm0-00F5br-1b
Subject: Re: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gMjAyMS0xMS0wMiAyMzo1OCswOTAwLCBEb21pbmlxdWUgTWFydGluZXQgd3JvdGU6Cj4gVGhv
bWFzIFdlacOfc2NodWggd3JvdGUgb24gVHVlLCBOb3YgMDIsIDIwMjEgYXQgMDM6NDk6MzJQTSAr
MDEwMDoKPiA+ID4gSSBndWVzcyBpdCB3b3VsZG4ndCBodXJ0IHRvIGhhdmUgOXAtdGNwIDlwLXVu
aXggYW5kIDlwLWZkIGFsaWFzZXMgdG8gdGhlCj4gPiA+IDlwbmV0IG1vZHVsZSwgYnV0IGlpcmMg
dGhlc2UgdHJhbnNwb3J0cyB3ZXJlIG1vcmUgY2xvc2VseSB0aWVkIHRvIHRoZQo+ID4gPiByZXN0
IG9mIDlwbmV0IHRoYW4gdGhlIHJlc3Qgc28gaXQgbWlnaHQgdGFrZSBhIHdoaWxlIHRvIGRvIGFu
ZCBJIGRvbid0Cj4gPiA+IGhhdmUgbXVjaCB0aW1lIGZvciB0aGlzIHJpZ2h0IG5vdy4uLgo+ID4g
PiBJJ2QgcmF0aGVyIG5vdCBwcmVwYXJlIGZvciBzb21ldGhpbmcgSSdsbCBsaWtlbHkgbmV2ZXIg
Z2V0IG9udG8sIHNvCj4gPiA+IGxldCdzIGRvIHRoaXMgaWYgdGhlcmUgaXMgcHJvZ3Jlc3MuCj4g
PiA+IAo+ID4gPiBPZiBjb3Vyc2UgaWYgeW91J2QgbGlrZSB0byBoYXZlIGEgbG9vayB0aGF0J2Qg
YmUgbW9yZSB0aGFuIHdlbGNvbWUgOi0pCj4gPiAKPiA+IElmIHlvdSBhcmUgc3RpbGwgdGVzdGlu
ZyBhbnl3YXlzLCB5b3UgY291bGQgYWxzbyB0cnkgdGhlIGF0dGFjaGVkIHBhdGNoLgo+ID4gKEl0
IHJlcXVpcmVzIHRoZSBhdXRsb2FkIHBhdGNoKQo+ID4gCj4gPiBJdCBidWlsZHMgZmluZSBhbmQg
SSBzZWUgbm8gcmVhc29uIGZvciBpdCBub3QgdG8gd29yay4KPiAKPiBUaGFua3MhIEknbGwgZ2l2
ZSBpdCBhIHNwaW4uCj4gCj4gCj4gSSB3YXMgYWN0dWFsbHkganVzdCB0ZXN0aW5nIHRoZSBhdXRv
bG9hZCBvbmUgYW5kIEkgY2FuJ3QgZ2V0IGl0IHRvIHdvcmsKPiBvbiBteSBtaW5pbWFsIFZNLCBJ
IGd1ZXNzIHRoZXJlJ3MgYSBwcm9ibGVtIHdpdGggdGhlIHVzZXJtb2RoZWxwZXIgY2FsbAo+IHRv
IGxvYWQgbW9kdWxlLi4KPiAKPiB3aXRoIDlwLzlwbmV0IGxvYWRlZCwKPiBydW5uaW5nICJtb3Vu
dCAtdCA5cCAtbyB0cmFucz12aXJ0aW8gdG1wIC9tbnQiCj4gcmVxdWVzdF9tb2R1bGUoIjlwLSVz
IiwgInZpcnRpbyIpIHJldHVybnMgLTIgKEVOT0VOVCkKCkNhbiB5b3UgcmV0cnkgd2l0aG91dCA5
cC85cG5ldCBsb2FkZWQgYW5kIHNlZSBpZiB0aGV5IGFyZSBsb2FkZWQgYnkgdGhlIG1vdW50CnBy
b2Nlc3M/ClRoZSBzYW1lIGF1dG9sb2FkaW5nIGZ1bmN0aW9uYWxpdHkgZXhpc3RzIGZvciBmaWxl
c3lzdGVtcyB1c2luZwpyZXF1ZXN0X21vZHVsZSgiZnMtJXMiKSBpbiBmcy9maWxlc3lzdGVtcy5j
CklmIHRoYXQgYWxzbyBkb2Vzbid0IHdvcmsgaXQgd291bGQgaW5kaWNhdGUgYW4gaXNzdWUgd2l0
aCB0aGUga2VybmVsIHNldHVwIGluIGdlbmVyYWwuCgo+IExvb2tpbmcgYXQgdGhlIGNvZGUgaXQg
c2hvdWxkIGJlIHJ1bm5pbmcgIm1vZHByb2JlIC1xIC0tIDlwLXZpcnRpbyIKPiB3aGljaCBmaW5k
cyB0aGUgbW9kdWxlIGp1c3QgZmluZSwgaGVuY2UgbXkgc3VwcG9zaXRpb24gdXNlcm1vZGhlbHBl
ciBpcwo+IG5vdCBzZXR1cCBjb3JyZWN0bHkKPiAKPiBEbyB5b3UgaGFwcGVuIHRvIGtub3cgd2hh
dCBJIG5lZWQgdG8gZG8gZm9yIGl0PwoKV2hhdCBpcyB0aGUgdmFsdWUgb2YgQ09ORklHX01PRFBS
T0JFX1BBVEg/CkFuZCB0aGUgY29udGVudHMgb2YgL3Byb2Mvc3lzL2tlcm5lbC9tb2Rwcm9iZT8K
Cj4gSSd2ZSBydW4gb3V0IG9mIHRpbWUgZm9yIHRvZGF5IGJ1dCB3aWxsIGxvb2sgdG9tb3Jyb3cg
aWYgeW91IGRvbid0IGtub3cuCj4gCj4gKEFuZCBzaW5jZSBpdCBkb2Vzbid0IGFwcGFyZW50bHkg
d29yayBvdXQgb2YgdGhlIGJveCBvbiB0aGVzZSBtaW5pbWFsCj4gVk1zIEkgdGhpbmsgSSdsbCB3
YW50IHRoZSB0cmFuc19mZCBtb2R1bGUgc3BsaXQgdG8gc2l0IGluIGxpbnV4LW5leHQKPiBmb3Ig
YSBiaXQgbG9uZ2VyIHRoYW4gYSBmZXcgZGF5cywgc28gd2lsbCBiZSBuZXh0IG1lcmdlIHdpbmRv
dykKClN1cmUuCgpUaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
