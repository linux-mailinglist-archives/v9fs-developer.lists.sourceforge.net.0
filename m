Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A05B443A62
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 01:27:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mi47N-0000A6-3S; Wed, 03 Nov 2021 00:27:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mi47L-00009u-Ox
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ssJfJT9GribpXdyR0WzQoSNTB2yUqvYv2yimhfDwlDg=; b=eZQ5TJ4fgIRGJTdCZfKRTc82a6
 zFKpGN6vh6+CcG0O7/kHy6ReX2hheV0RUl97DZ57VMqGtrJPkku6nU90reXbJdJDrvsNwMUdCuo97
 jBGWl6zdMR0ijFkuBmj1fVhqm9mSWTA/fSaVbuOE+dGV3D8e1nx/lvjFe2liUd6iYN1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ssJfJT9GribpXdyR0WzQoSNTB2yUqvYv2yimhfDwlDg=; b=Y7LXhYoPRmb/WG8IBoBE1oePpQ
 D4TdF3yAZ7or7N0oZin1zoKuWKMpfcNv3WYv5UtpzjetMliM8hPcdcTb0xtjM1Nsd/+rnD/n2WVPW
 M9ANY4LUaNo+3pKVf8BNPIsz8RcIdixLSjJ2uElhIK63Qyx6xGWFBDunC0Ka1m3mQkzA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi47J-00Fd2s-Em
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:27:02 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 10263C01D; Wed,  3 Nov 2021 01:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635899215; bh=ssJfJT9GribpXdyR0WzQoSNTB2yUqvYv2yimhfDwlDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W2dC00XlLTfuAWa0lRdasTP1OxGKUH+08+81VvsrbDYRelVJG79n8ebJNzsKu2plp
 DLbVcw4RdkdRgrjrLAqoFhYRmpmw93WCu57Pi15M0EPIMMpvSKNs3mPUynybXOUaXl
 Srj3RFbJW/eo+d+z//Gz1B48VvhcLtrUnsJKcbBwlw4WW/kiDM09ZhyTs0wIqHZBqj
 L1jZ9XY+Ir4McgBXZaYkvE17Js3+85jM82TqE18Au+M05pIO9WehwTeOVMJq6ITnYH
 g9fxDhFvKoMrMZ84EcqEfPnFc+uj/EFUmpSRPhIatdaH7ir09zprJR+yTpP9kBb3Hs
 XVm8JBIEogaOg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B5645C009;
 Wed,  3 Nov 2021 01:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635899214; bh=ssJfJT9GribpXdyR0WzQoSNTB2yUqvYv2yimhfDwlDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CUQDILRq4/78gsIY/HM/+Ign1Oz9zCxZVq5Q5UcSAchC2CRFzPHaeCY0pw09hKXOm
 yheggZ3gQkIO2w/Vov5qxz3rMRHoIra3IT25XdmpQ8hanRslZWDLtS5E+NwG1f8dyq
 QXOkbdx7ecmWPUapkM4aQ/oi17/ND1wpM68SGqprBtGJliSGAfi4faCl2fOubH6riu
 K68LyVpvKFp+XHLsGjXrBGel9DaCmg4Lo/W4IqkeJUxqxNPao+tXsdFW+HT45OC/nF
 8SpqKLg2tcEv6QXdFJQSRDU4lT/TzBBo5XfTfqgjAfAlBpLS0WSSj4R8Ap5/HOyeOX
 xuDfSyFstuyug==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1be5e57c;
 Wed, 3 Nov 2021 00:26:47 +0000 (UTC)
Date: Wed, 3 Nov 2021 09:26:32 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
Message-ID: <YYHXOOwkmJW8bhHW@codewreck.org>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
 <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
 <YYEmOcEf5fjDyM67@codewreck.org>
 <ddf6b6c9-1d9b-4378-b2ee-b7ac4a622010@t-8ch.de>
 <YYFSBKXNPyIIFo7J@codewreck.org>
 <3e8fcaff-6a2e-4546-87c9-a58146e02e88@t-8ch.de>
 <YYHHHy0qJGlpGEaQ@codewreck.org>
 <778dfd93-ace5-4cab-9a08-21d279f18c1f@t-8ch.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <778dfd93-ace5-4cab-9a08-21d279f18c1f@t-8ch.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thomas Weißschuh wrote on Tue, Nov 02, 2021 at 11:33:25PM
    +0000: > > aha, these two were indeed different from where my modprobe is
    so it is > > a setup problem -- I might have been a little rash wit [...]
    
 
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
X-Headers-End: 1mi47J-00Fd2s-Em
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
 netdev@vger.kernel.org,
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhvbWFzIFdlacOfc2NodWggIHdyb3RlIG9uIFR1ZSwgTm92IDAyLCAyMDIxIGF0IDExOjMzOjI1
UE0gKzAwMDA6Cj4gPiBhaGEsIHRoZXNlIHR3byB3ZXJlIGluZGVlZCBkaWZmZXJlbnQgZnJvbSB3
aGVyZSBteSBtb2Rwcm9iZSBpcyBzbyBpdCBpcwo+ID4gYSBzZXR1cCBwcm9ibGVtIC0tIEkgbWln
aHQgaGF2ZSBiZWVuIGEgbGl0dGxlIHJhc2ggd2l0aCB0aGlzIGluaXRyZAo+ID4gc2V0dXAgYW5k
IG1vZHByb2JlIGVuZGVkIHVwIGluIC9iaW4gd2l0aCBwYXRoIGhlcmUgaW4gL3NiaW4uLi4KPiA+
Cj4gPiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLCBJIHNhdyB0aGUgY29kZSBzZXR1cCBhbiBlbnZp
cm9ubWVudCB3aXRoIGEKPiA+IGZ1bGwtYmxvd24gUEFUSCBzbyBkaWRuJ3QgdGhpbmsgb2YgY2hl
Y2tpbmcgaWYgdGhpcyBraW5kIG9mIHNldHRpbmcKPiA+IGV4aXN0ZWQhCj4gPiBBbGwgbG9va3Mg
aW4gb3JkZXIgdGhlbiA6KQo+IAo+IERvZXMgaXQgYWxzbyB3b3JrIGZvciB0aGUgc3BsaXQgb3V0
IEZEIHRyYW5zcG9ydHM/Cj4gSWYgc28sIEknbGwgcmVzZW5kIHRoYXQgcGF0Y2ggaW4gYSBwcm9w
ZXIgZm9ybSB0b21vcnJvdy4KClNvcnJ5IGhhdmVuJ3QgdGVzdGVkIHlldCwgSSBuZWVkIHRvIGZp
ZGRsZSBhIGJpdCB0byBnZXQgYSB0Y3Agc2VydmVyCnNldHVwIHJpZ2h0IG5vdyBhbmQgZ290IGEg
ZnNjYWNoZSBidWcgSSdkIGxpa2UgZml4ZWQgZm9yIHRoaXMgbWVyZ2UKd2luZG93Li4uCgpJJ3Zl
IGNvbmZpcm1lZCB0aGUgbW9kdWxlIGdldHMgbG9hZGVkIGJ1dCB0aGF0J3MgYXMgZmFyIGFzIEkg
Y2FuIGdldApyaWdodCBub3cuLi4gaXQgY2FsbHMgcDlfZmRfY3JlYXRlX3RjcCBzbyBpdCdzIHBy
b2JhYmx5IHF1aXRlIG9rIDopCgpJJ2QgYWxzbyBiZSB0ZW1wdGVkIHRvIGFkZCBhIG5ldyB0cmFu
c3BvcnQgY29uZmlnIG9wdGlvbiB0aGF0IGRlZmF1bHRzCnRvIHRydWUvTkVUXzlQIHZhbHVlIC0t
IGluIG15IG9waW5pb24gdGhlIG1haW4gYWR2YW50YWdlIG9mIHNwbGl0dGluZwp0aGlzIGlzIG5v
dCBpbnN0YWxsaW5nIHRjcC9mZCB0cmFuc3BvcnQgd2hpY2ggY2FuIG1vcmUgZWFzaWx5IGJlIGFi
dXNlZAp0aGFuIHZpcnRpbyBmb3IgVk1zIHdobyB3b3VsZG4ndCBuZWVkIGl0IChtb3N0IG9mIHRo
ZW0pLCBzbyBoYXZpbmcgYQp0b2dnbGUgd291bGQgYmUgaGFuZHkuCgoKRmVlbCBmcmVlIHRvIHJl
c2VuZCBpbiBhIHByb3BlciBmb3JtIHRob3VnaCwgSSBjb3VsZCBtYWtlIHVwIGEgY29tbWl0Cm1l
c3NhZ2UgYnV0IGl0IG1pZ2h0IGFzIHdlbGwgYmUgeW91ciB3b3JkcyEKCi0tIApEb21pbmlxdWUK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==
