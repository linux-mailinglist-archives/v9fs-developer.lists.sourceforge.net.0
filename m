Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD21D442D8E
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 13:11:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhsdN-0003kB-DQ; Tue, 02 Nov 2021 12:11:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mhsdM-0003k5-9R
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 12:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N68L2alYd3DJ7Qcj5zBlvsPrdZjk1fqAyrthCp2CoXM=; b=PFgexNs3JSvjF7M1MDqE12ljoc
 cq0N/gHnZg+nd1pgjSOt9Jo0wmEyRyXyzD0cUJ9uAYWbfYaIhjTxQ99qaW2M558zPO5f88IZ2e2sY
 AZLvpOZIojiKP7FqUoqXAce+g0jK4kXWJR3ZyA+fp47p3b8Gsd39bBbbobqyE/cM4on8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N68L2alYd3DJ7Qcj5zBlvsPrdZjk1fqAyrthCp2CoXM=; b=PPcoGiu18cOmYOBjXQZvBd5MjK
 otyapssogo8w8eCIJhOBvSZLx3ithWfswrOkVrmrwGao6MhO0SrBiOHfgjXqFWGqV83L7rcpANk04
 14P8/ABYNGCyEqn+jHXq0SRWQKTW75Od9lGG3EuoybZ4IzzvACYeHupHrzwJBauUAk/k=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhsdI-00Eqxl-4b
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 12:11:20 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 899EAC01D; Tue,  2 Nov 2021 12:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635853905; bh=N68L2alYd3DJ7Qcj5zBlvsPrdZjk1fqAyrthCp2CoXM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jitk4g+V+Feq9GE2JHDctYvZpD1dn3V9F1S7y9HrKG472uTitHFob4SY0iiLDGnWv
 D0hnE44xCNfgwY4oXuFR7GHjzHikN5/e/yOQ5DpaSj6WMToETlW1l7HsmFwGGWgodu
 6hj8XtOrObHOOiCHN5vFXesIJkc7Xrzsr5/CkczijEHCsadzD4ngsHrGen6J6/ahV1
 NcEwqfEwGuW0jh1PQPEscHnQOCws83nCUu998O+m0Pw1TdVnIgOrRHXdsuZQCtSaJ7
 t+QsvtPWLgXM9/UQI8o8F0A381XP5e8YStjkuFAISwwiLYpg7V3GGTVvOBUX+iiQEW
 tsdCx+RiJPc8Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 95015C009;
 Tue,  2 Nov 2021 12:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635853904; bh=N68L2alYd3DJ7Qcj5zBlvsPrdZjk1fqAyrthCp2CoXM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u+mZG2dwfJ1lV4mkZy85Q0ZQhOPb7LHmEB9zd9TLA56AEL4Hvse9L6wqQXdwpD7qD
 p/i9W2+neSsFFrlA+Twy8lltP4NiVMa2hjhEBEnYGqa4HElxMHjpWbmSAKLrlTP76+
 lAgAufkoXIlqxPl2+ouo1TmY7rfBITj4Icifj3qbtJJEmGldVAHZWAh0otQ0yPVEjd
 +Ruvqg2OYhyG1pG7mMTHL0fR33whu3+MAHsN0btCa0k/zexDVyNo+EiOTMpLDE6fWM
 3F1tSwrLFN8g4a1+DYinR1V8rVNkhFhOWrZmfuMyJJQY58ALW/gyDXXhyVwpK4ukuN
 XakcAp2uAi0nQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id eb2be388;
 Tue, 2 Nov 2021 11:51:36 +0000 (UTC)
Date: Tue, 2 Nov 2021 20:51:21 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
Message-ID: <YYEmOcEf5fjDyM67@codewreck.org>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
 <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thomas Weißschuh wrote on Tue, Nov 02, 2021 at 11:59:32AM
    +0100: > On 2021-11-02 19:51+0900, Dominique Martinet wrote: > > Sorry for
    the late reply > > > > Thomas Weißschuh wrote on Sun, Oct 17, 202 [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: codewreck.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1mhsdI-00Eqxl-4b
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

VGhvbWFzIFdlacOfc2NodWggd3JvdGUgb24gVHVlLCBOb3YgMDIsIDIwMjEgYXQgMTE6NTk6MzJB
TSArMDEwMDoKPiBPbiAyMDIxLTExLTAyIDE5OjUxKzA5MDAsIERvbWluaXF1ZSBNYXJ0aW5ldCB3
cm90ZToKPiA+IFNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseQo+ID4gCj4gPiBUaG9tYXMgV2Vpw59z
Y2h1aCB3cm90ZSBvbiBTdW4sIE9jdCAxNywgMjAyMSBhdCAwMzo0NjoxMVBNICswMjAwOgo+ID4g
PiBBdXRvbWF0aWNhbGx5IGxvYWQgdHJhbnNwb3J0IG1vZHVsZXMgYmFzZWQgb24gdGhlIHRyYW5z
PSBwYXJhbWV0ZXIKPiA+ID4gcGFzc2VkIHRvIG1vdW50Lgo+ID4gPiBUaGUgcmVtb3ZlcyB0aGUg
cmVxdWlyZW1lbnQgZm9yIHRoZSB1c2VyIHRvIGtub3cgd2hpY2ggbW9kdWxlIHRvIHVzZS4KPiA+
IAo+ID4gVGhpcyBsb29rcyBnb29kIHRvIG1lLCBJJ2xsIHRlc3QgdGhpcyBicmllZmx5IG9uIGRp
ZmZlcm5ldCBjb25maWcgKD15LAo+ID4gPW0pIGFuZCBzdWJtaXQgdG8gTGludXMgdGhpcyB3ZWVr
IGZvciB0aGUgbmV4dCBjeWNsZS4KPiAKPiBUaGFua3MuIENvdWxkIHlvdSBhbHNvIGZpeCB1cCB0
aGUgdHlwbyBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ugd2hlbiBhcHBseWluZz8KPiAoIlRoZSByZW1v
dmVzIiAtPiAiVGhpcyByZW1vdmVzIikKClN1cmUsIGRvbmUgLS0gSSBoYWRuJ3QgZXZlbiBub3Rp
Y2VkIGl0Li4KCj4gPiBNYWtlcyBtZSB3b25kZXIgd2h5IHRyYW5zX2ZkIGlzIGluY2x1ZGVkIGlu
IDlwbmV0IGFuZCBub3QgaW4gYSA5cG5ldC1mZAo+ID4gb3IgOXBuZXQtdGNwIG1vZHVsZSBidXQg
dGhhdCdsbCBiZSBmb3IgYW5vdGhlciB0aW1lLi4uCj4gCj4gVG8gcHJlcGFyZSBmb3IgdGhlIG1v
bWVudCB3aGVuIHRob3NlIHRyYW5zcG9ydCBtb2R1bGVzIGFyZSBzcGxpdCBpbnRvIHRoZWlyIG93
bgo+IG1vZHVsZShzKSwgd2UgY291bGQgYWxyZWFkeSBhZGQgTU9EVUxFX0FMSUFTXzlQKCkgY2Fs
bHMgdG8gbmV0LzlwL3RyYW5zX2ZkLmMuCgpJIGd1ZXNzIGl0IHdvdWxkbid0IGh1cnQgdG8gaGF2
ZSA5cC10Y3AgOXAtdW5peCBhbmQgOXAtZmQgYWxpYXNlcyB0byB0aGUKOXBuZXQgbW9kdWxlLCBi
dXQgaWlyYyB0aGVzZSB0cmFuc3BvcnRzIHdlcmUgbW9yZSBjbG9zZWx5IHRpZWQgdG8gdGhlCnJl
c3Qgb2YgOXBuZXQgdGhhbiB0aGUgcmVzdCBzbyBpdCBtaWdodCB0YWtlIGEgd2hpbGUgdG8gZG8g
YW5kIEkgZG9uJ3QKaGF2ZSBtdWNoIHRpbWUgZm9yIHRoaXMgcmlnaHQgbm93Li4uCkknZCByYXRo
ZXIgbm90IHByZXBhcmUgZm9yIHNvbWV0aGluZyBJJ2xsIGxpa2VseSBuZXZlciBnZXQgb250bywg
c28KbGV0J3MgZG8gdGhpcyBpZiB0aGVyZSBpcyBwcm9ncmVzcy4KCk9mIGNvdXJzZSBpZiB5b3Un
ZCBsaWtlIHRvIGhhdmUgYSBsb29rIHRoYXQnZCBiZSBtb3JlIHRoYW4gd2VsY29tZSA6LSkKCi0t
IApEb21pbmlxdWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
