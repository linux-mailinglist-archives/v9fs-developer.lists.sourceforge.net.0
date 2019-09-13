Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51832B253E
	for <lists+v9fs-developer@lfdr.de>; Fri, 13 Sep 2019 20:36:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i8qQa-0000hz-TF; Fri, 13 Sep 2019 18:36:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mg@gstardust.com>) id 1i8qQZ-0000hm-1r
 for v9fs-developer@lists.sourceforge.net; Fri, 13 Sep 2019 18:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CqOFMuE9AVodngbSMRBscgAIqSDSR+fGnAPREQHS5Is=; b=Z6RCAcmu2zDxz3m5DkxOYVJ3Na
 72by78Pt+hVl3Mdp/UCVnn1pjtffGpH65/2N5eSj9ADbS7jwlrRtT7a93ILrgEQwhqV23I+knBaRS
 UNkS3Zv7RtBIdJ8mZ6R4AyGoVYevN5fYqslrSy+ohwFZHOJ30WYEkAO4uOkOqju2QGLs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CqOFMuE9AVodngbSMRBscgAIqSDSR+fGnAPREQHS5Is=; b=YAeBQkztJHEFZvsC/nQMrWJTrQ
 6Y//DctZLUbGmaG9SHkfTma9N9Dmo51L1qt+Ci9sgrJzeD7vyMhB3ejvG+Vt8dgANipySi7z43a3/
 8FzbxPiR8WUtN4ZU2kcj5oVzoApBCH8wEfKzHdUvGxPPIsBON756W1pi8xAcv1iIIExQ=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i8qQV-004Ydc-RE
 for v9fs-developer@lists.sourceforge.net; Fri, 13 Sep 2019 18:36:14 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 965CA21BF7;
 Fri, 13 Sep 2019 14:18:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Fri, 13 Sep 2019 14:18:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gstardust.com;
 h=subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=mesmtp;
 bh=CqOFMuE9AVodngbSMRBscgAIqSDSR+fGnAPREQHS5Is=; b=pC2+EEutlZH9
 t8Okazll6/+IjnPCSe26zb9TSDY3o90l/D6ZcKXtDEjYCtlC3EFBpKk8hBYxxfwm
 tdih16ipERp3beepB9+5x5saZvoaaxheBf7tmbShY2fGcEZrsbn8QU1kc3rdmzM7
 KUMNPMLbxNYFOXOxnD/JTs2K3qhmyTY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=CqOFMuE9AVodngbSMRBscgAIqSDSR+fGnAPREQHS5
 Is=; b=YivrMSQj0venWui7VnHoWbarIfcCuqGkrl+4fvPtU4x2UmeglDDpZ3OnG
 yvWL+cOcicvOBYMX8/iGOz1UeXMDLPPbzxn6n2zY9ucvnHu+hMAmf+LhsNZe5g0y
 0GqH/7qGAX5hL/0C2e2saA3aJVHEaIayK5YP9ps0laAo2zawWs+Z6SMXWZ1yVGz7
 +oQz4HNcmyC01v+YkmfaJ316cMyJuqW02tQfbDhxOsTAQuxDxzDBJo1mXatrlwSZ
 W66Q4eIyBH0AS6e1U9fYpvbsZPeEOroifQR8Ds1q3UqqF5QXNt1yJOkMQBJLwx/q
 HGMVL69LIjTAbDGT5HxW/Zi9DRhbA==
X-ME-Sender: <xms:cd17Xf16dIR0QBTkOB4gxBDRonTmw_aQ7hZJ7hGEI7q--_d5aVepQw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrtdejgdduvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepofgrrhgt
 ucfirghuthhhihgvrhcuoehmghesghhsthgrrhguuhhsthdrtghomheqnecuffhomhgrih
 hnpehlihhnuhigqhhuvghsthhiohhnshdrohhrghdpkhgvrhhnvghlrdhorhhgnecukfhp
 pedujeefrddvgedvrddvuddvrdehjeenucfrrghrrghmpehmrghilhhfrhhomhepmhhgse
 hgshhtrghrughushhtrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:cd17XSaX63Cgsip_mDHnw_W2bqlVz0-GfzJCCsLk-J7wr2-s46rl4Q>
 <xmx:cd17XfAxuOSQda_tf2dOGVg__6co1wpr-xDkL14WNy-I4MlotGTMWg>
 <xmx:cd17Xc_aXLpjFzKXcGIjXqScrYk1xXRfI-gKEv3mdjJdzo_lU_Qkmw>
 <xmx:ct17XSWAY7VfVcpr6rOGuiAMuzW-YWc0GLUymclmDlnbCDCxDXTc1g>
Received: from [192.168.1.225] (sm3e406543.cust.navigue.com [173.242.212.57])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1D59F80061;
 Fri, 13 Sep 2019 14:18:25 -0400 (EDT)
To: Dominique Martinet <asmadeus@codewreck.org>
References: <7c1e27db-27ab-64f3-f99a-6a646962251b@gstardust.com>
 <20190913055327.GB13319@nautica>
From: Marc Gauthier <mg@gstardust.com>
Message-ID: <e32bbee2-9d2d-acfb-6fb4-e2cfc4689a54@gstardust.com>
Date: Fri, 13 Sep 2019 14:18:24 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 PostboxApp/6.1.18
MIME-Version: 1.0
In-Reply-To: <20190913055327.GB13319@nautica>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: maintainers.pl]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i8qQV-004Ydc-RE
Subject: Re: [V9fs-developer] Fixes for 9p network transport builtin to the
 kernel
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
 v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgRG9taW5pcXVlLAoKRG9taW5pcXVlIE1hcnRpbmV0IHdyb3RlIG9uIDIwMTktMDktMTMgMTo1
MzoKPiBNYXJjIEdhdXRoaWVyIHdyb3RlIG9uIFRodSwgU2VwIDEyLCAyMDE5Ogo+PiBUaGUgZm9s
bG93aW5nIGlzIGEgcGF0Y2ggdGhhdCBhbGxvd3MgbmV0LzlwIHRvIGJlIGJ1aWx0LWluIHRoZQo+
PiBrZXJuZWwgcmF0aGVyIHRoYW4gYXMgYSBtb2R1bGUuCj4gUGxlYXNlIHNlbmQgcGF0Y2ggd2l0
aCBnaXQgc2VuZC1lbWFpbCAoc28gaXQgaXMgYXBwbGljYWJsZSB3aXRoIGdpdCBhbSkKPiBpZiBw
b3NzaWJsZS4KPiBQYXRjaGVzIG11c3QgYmUgc2VudCB0byBrZXJuZWwgbGlzdHMgKGF0IGxlYXN0
Cj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyBhbmQgdjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0LAo+IHRoZSBtYWludGFpbmVycy5wbCBzY3JpcHQgd2lsbCBhbHNvIHBv
aW50IHlvdSB0byBuZXRkZXYgZm9yIHRoaXMgb25lKSwKPiBJIGNhbm5vdCB0YWtlIHRoaXMgcGF0
Y2ggYXMgaXMuCgpPa2F5LgoKCj4+IEkndmUgaGl0IHRoZSBpc3N1ZSB0aGF0IGFsdGhvdWdoIGNv
bmZpZ3VyZWQgYXMgYnVpbHQtaW4sIGNvZGUgc3VjaAo+PiBhcyBuZXQvOXAvdHJhbnNfdmlydGlv
LmMgd2Fzbid0IGJlaW5nIGluY2x1ZGVkLCBjYXVzaW5nIG1vdW50Cj4+IGZhaWx1cmVzLgo+PiBJ
dCBhcHBlYXJzIHRoaXMgaXMgYSBsb25nLXN0YW5kaW5nIGlzc3VlLCBqdWRnaW5nIGZyb20gdGhl
IGZvbGxvd2luZwo+PiBwb3N0IGZyb20gMjAxNToKPj4gaHR0cHM6Ly93d3cubGludXhxdWVzdGlv
bnMub3JnL3F1ZXN0aW9ucy9zbGFja3dhcmUtMTQvcWVtdS12aXJ0aW8tOXAtaG9zdC1maWxlc3lz
dGVtLXBhc3N0aHJvdWdoLWZhaWx1cmUtaW4tc2xhY2t3YXJlLWN1cnJlbnQtMTNtYXkyMDE1LTQx
NzU1NDI2MDgvCj4+Cj4+IEVzc2VudGlhbGx5IGl0IGZpeGVzIHRoZSBNYWtlZmlsZSB0byB1c2Ug
dGhlIGNvcnJlY3QgZG9jdW1lbnRlZAo+PiBtZXRob2QgZm9yIHNwZWNpZnlpbmcgc3ViLW9iamVj
dHMsIHVzaW5nIC15IGFuZCBub3QgLW9ianMgKHRoZQo+PiBsYXR0ZXIgaXMgbWVhbnQgZm9yIGhv
c3QgcHJvZ3JhbXMsIG5vdCB0YXJnZXQgY29kZSkuwqAgU2VlCj4+IGh0dHBzOi8vd3d3Lmtlcm5l
bC5vcmcvZG9jL0RvY3VtZW50YXRpb24va2J1aWxkL21ha2VmaWxlcy50eHQKPj4gRm9yIHNvbWUg
cmVhc29uLCAtb2JqcyB3b3JrcyBjb25zaXN0ZW50bHkgZm9yIG1vZHVsZXMsIGJ1dCBvbmx5Cj4+
IHdvcmtzIGluIHNvbWUgY2FzZXMgZm9yIGJ1aWx0LWlucy7CoCBQZXJoYXBzIHNvbWV0aGluZyB0
byBkbyB3aXRoCj4+IHdoZXRoZXIgY2VydGFpbiBkZXBlbmRlbmNpZXMgYXJlIHByZXNlbnQuwqAg
SSBoYXZlbid0IGZvbGxvd2VkIGFsbAo+PiB0aGUgaW50cmljYWNpZXMgb2YgdGhlIGJ1aWxkIHN5
c3RlbSAobW9zdGx5IHNjcmlwdHMvTWFrZWZpbGUuYnVpbGQpCj4+IG5vciBob3cgbXVjaCB0aGlz
IG1pZ2h0IGJlIGxlZ2FjeSBsZWZ0b3ZlcnMuwqAgTW9zdCBkcml2ZXIgY29kZQo+PiBjb3JyZWN0
bHkgdXNlcyAteSwgYnV0IHNldmVyYWwgdXNlIC1vYmpzLCBwcmVzdW1hYmx5IGluY29ycmVjdGx5
IGFuZAo+PiBuZWVkaW5nIHRvIGJlIGZpeGVkIGZvciByb2J1c3RuZXNzLsKgIEhvd2V2ZXIsIEkn
dmUgb25seSB0ZXN0ZWQgOXAuCj4+IEhlcmUgeW91IGdvIQo+Cj4gSSBhZ3JlZSBpdCdzIG5vdCBk
b2N1bWVudGVkIHRoYXQgZm9vLW9ianMgcHJvcGVybHkgYWRkcyBkZXBlbmRlbmNpZXMgYnV0Cj4g
bmV0LzlwL2J1aWx0LWluLmEgc2VlbXMgdG8gaGF2ZSB0aGUgc2FtZSBjb250ZW50IHdpdGggTkVU
XzlQPXkgYW5kCj4gTkVUXzlQX1ZJUlRJTz15IGFuZCBlaXRoZXIgeW91ciBtYWtlZmlsZSBvciB0
aGUgb2xkIG9uZSwgc28gdGhlIHN5bWJvbHMKPiBsaW5rZWQgaW4gd2lsbCBiZSB0aGUgc2FtZS4K
Pgo+IFsuLi4gY29tcGlsaW5nIHBsZWFzZSB3YWl0Li4uXQo+Cj4gSnVzdCBkb25lIHRlc3Rpbmcg
YW5kIEkgY29uZmlybSBpdCBqdXN0IHdvcmtz4oSiIHdpdGggdGhlIGN1cnJlbnQKPiBNYWtlZmls
ZToKPiBbcm9vdEBmOSB+XSMgbHNtb2QgfCBncmVwIDlwCj4gOXAgICAgICAgICAgICAgICAgICAg
ICA3NzgyNCAgMQo+IFtyb290QGY5IH5dIyBtb3VudCAtdCA5cAo+IHNoYXJlZCBvbiAvbW50IHR5
cGUgOXAgKHJ3LHJlbGF0aW1lLHN5bmMsZGlyc3luYyxhY2Nlc3M9Y2xpZW50LHRyYW5zPXZpcnRp
bykKPgo+IFNvIHdoaWxlIEkgYWdyZWUgdGhlIGRvY3VtZW50YXRpb24gaXNuJ3QgY2xlYXIsIHNv
bWV0aGluZyBvYnZpb3VzbHkKPiBjaGFuZ2VkIHNpbmNlIDIwMTUuCj4gVGhpcyBwYXRjaCBtaWdo
dCBzdGlsbCBiZSB1c2VmdWwgZm9yIHRoZSBzYWtlIG9mIGNsZWFudXAgaXRzZWxmLCBidXQKPiB0
aGF0IGlzbid0IG11Y2ggb2YgbXkgY29uY2VybiBhbmQgSSdkIHJhdGhlciBpdCBiZSBhIHRyZWUt
d2lkZSBlZmZvcnQ7Cj4geW91ciBjb21taXQgbWVzc2FnZSBzZWVtcyB0byBoaW50IHlvdSdyZSBu
b3QgZ29pbmcgdG8gY2F0dGVyIHRvIG90aGVyCj4gcGFydHMgb2YgdGhlIHRyZWUgYW5kIHRoZXJl
IGlzbid0IG11Y2ggcG9pbnQgaW4gdGhhdC4KPgo+IFBsZWFzZSBlaXRoZXIgY29uc2lkZXIgZG9p
bmcgdGhpcyB0cmVld2lkZSBhbmQgc2VuZCB0byBqYW5pdG9ycyAoc3BsaXQKPiBjb21taXRzIHN0
aWxsIGNhbiBiZSB1c2VmdWwpLCBvciBqdXN0IGRyb3AgdGhlIGlkZWEuCgpNeSBhcG9sb2dpZXMu
wqAgVG8gYmUgY2xlYXIsIHRoaXMgaXMgYW4gaXNzdWUgSSd2ZSBoaXQgYW5kIHdhcyBjYXVzaW5n
IAptb3VudCBmYWlsdXJlcyB3aXRoIHRvcC1vZi10cnVuayBrZXJuZWwgYW5kIFJJU0MtViBhcmNo
aXRlY3R1cmUuwqAgTXkgCm9ic2VydmF0aW9uIGhhZCBiZWVuIHRoYXQgbW9kaWZ5aW5nIHRoZSBN
YWtlZmlsZSBmaXhlZCB0aGUgaXNzdWUuIApIb3dldmVyLCBJIG5vdyBjYW5ub3QgcmVwcm9kdWNl
IGl0IHJlYWRpbHkuwqAgQXMgYmVzdCBJIGNhbiBtYWtlIG91dCwgSSAKbXVzdCBoYXZlIGluYWR2
ZXJ0ZW50bHkgbW9kaWZpZWQgLmNvbmZpZyBhdCB0aGUgc2FtZSB0aW1lIGFzIHRoZSAKTWFrZWZp
bGUsIGFsdGhvdWdoIEknbSBub3Qgc3VyZSBob3cgSSdkIGhhdmUgZG9uZSB0aGF0LgoKU28geWVz
LCB0aGUgLW9ianMgdnMuIC15IG1heSBiZSBhIHJlZCBoZXJyaW5nLgoKUmVnYXJkbGVzcywgdGhh
bmtzIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gdHJ5IGl0IG91dC4KCk0KCgo+IFRoYW5rcy4KPgo+
Cj4gKGxlYXZpbmcgcGF0Y2ggYmVsb3cgZm9yIHRoZSBsaXN0KQo+PiBGcm9tOiBNYXJjIEdhdXRo
aWVyIDxjb25zdWx0LW1nQGdzdGFyZHVzdC5jb20+Cj4+IERhdGU6IFRodSwgMTIgU2VwIDIwMTkg
MDE6MjY6NDkgLTA0MDAKPj4gU3ViamVjdDogW1BBVENIXSA5cDogZml4IE1ha2VmaWxlcyB0byB1
c2UgLXkgaW5zdGVhZCBvZiAtb2Jqcwo+Pgo+PiBUaGUgdXNlIG9mIC1vYmpzIGNhdXNlcyBzb21l
IChidXQgbm90IGFsbCkgb2JqZWN0cyB0byBub3QgYmUgaW5jbHVkZWQKPj4gd2hlbiBidWlsdC1p
biBpbnN0ZWFkIG9mIGJ1aWx0IGFzIGEgbW9kdWxlIC0tIHN1Y2ggYXMgbmV0LzlwL3RyYW5zX3Zp
cnRpby4KPj4KPj4gRG9jdW1lbnRhdGlvbi9rYnVpbGQvbWFrZWZpbGVzLnJzdCBkb2N1bWVudHMg
LW9ianMgb25seSBmb3IgaG9zdCBjb2RlLgo+Pgo+PiBTZXZlcmFsIE1ha2VmaWxlcyBmb3IgdGFy
Z2V0IGNvZGUgdHJlZXdpZGUgc3RpbGwgdXNlIC1vYmpzLiAgVm9sdW50ZWVycwo+PiB3aXRoIHRp
bWUgdG8gdmVyaWZ5IHRoZSByZXN1bHRzIG1pZ2h0IGNvbnNpZGVyIGZpeGluZyB0aGVzZSB0byB1
c2UgLXkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hcmMgR2F1dGhpZXIgPGNvbnN1bHQtbWdAZ3N0
YXJkdXN0LmNvbT4KPj4gLS0tCj4+ICAgZnMvOXAvTWFrZWZpbGUgIHwgMiArLQo+PiAgIG5ldC85
cC9NYWtlZmlsZSB8IDggKysrKy0tLS0KPj4gICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2ZzLzlwL01ha2VmaWxlIGIv
ZnMvOXAvTWFrZWZpbGUKPj4gaW5kZXggZTc4MDBhNWM3Mzk1Li45MTc3NDQ1YTc1MjMgMTAwNjQ0
Cj4+IC0tLSBhL2ZzLzlwL01ha2VmaWxlCj4+ICsrKyBiL2ZzLzlwL01ha2VmaWxlCj4+IEBAIC0x
LDcgKzEsNyBAQAo+PiAgICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPj4gICBv
YmotJChDT05GSUdfOVBfRlMpIDo9IDlwLm8KPj4gICAKPj4gLTlwLW9ianMgOj0gXAo+PiArOXAt
eSA6PSBcCj4+ICAgCXZmc19zdXBlci5vIFwKPj4gICAJdmZzX2lub2RlLm8gXAo+PiAgIAl2ZnNf
aW5vZGVfZG90bC5vIFwKPj4gZGlmZiAtLWdpdCBhL25ldC85cC9NYWtlZmlsZSBiL25ldC85cC9N
YWtlZmlsZQo+PiBpbmRleCBhYTBhNTY0MWU1ZDAuLjVhZGE2NDcxNzhmNSAxMDA2NDQKPj4gLS0t
IGEvbmV0LzlwL01ha2VmaWxlCj4+ICsrKyBiL25ldC85cC9NYWtlZmlsZQo+PiBAQCAtNCw3ICs0
LDcgQEAgb2JqLSQoQ09ORklHX05FVF85UF9YRU4pICs9IDlwbmV0X3hlbi5vCj4+ICAgb2JqLSQo
Q09ORklHX05FVF85UF9WSVJUSU8pICs9IDlwbmV0X3ZpcnRpby5vCj4+ICAgb2JqLSQoQ09ORklH
X05FVF85UF9SRE1BKSArPSA5cG5ldF9yZG1hLm8KPj4gICAKPj4gLTlwbmV0LW9ianMgOj0gXAo+
PiArOXBuZXQteSA6PSBcCj4+ICAgCW1vZC5vIFwKPj4gICAJY2xpZW50Lm8gXAo+PiAgIAllcnJv
ci5vIFwKPj4gQEAgLTEyLDExICsxMiwxMSBAQCBvYmotJChDT05GSUdfTkVUXzlQX1JETUEpICs9
IDlwbmV0X3JkbWEubwo+PiAgIAl0cmFuc19mZC5vIFwKPj4gICAJdHJhbnNfY29tbW9uLm8gXAo+
PiAgIAo+PiAtOXBuZXRfdmlydGlvLW9ianMgOj0gXAo+PiArOXBuZXRfdmlydGlvLXkgOj0gXAo+
PiAgIAl0cmFuc192aXJ0aW8ubyBcCj4+ICAgCj4+IC05cG5ldF94ZW4tb2JqcyA6PSBcCj4+ICs5
cG5ldF94ZW4teSA6PSBcCj4+ICAgCXRyYW5zX3hlbi5vIFwKPj4gICAKPj4gLTlwbmV0X3JkbWEt
b2JqcyA6PSBcCj4+ICs5cG5ldF9yZG1hLXkgOj0gXAo+PiAgIAl0cmFuc19yZG1hLm8gXAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
