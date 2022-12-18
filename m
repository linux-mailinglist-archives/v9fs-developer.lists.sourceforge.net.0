Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9329C65048A
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 20:50:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6zfi-0001eU-B4;
	Sun, 18 Dec 2022 19:50:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p6zfg-0001eN-F7
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gzRa6huFbcrZLvLkrDSmTVFdbVyeUMFAbkgdKnjl9l8=; b=ARx0pKIbDNMFFjubHJNzrSWOIv
 Y5JtqpFd/t7uD4YQfOFqjpdTE1DFL4t/0HRUpxvKGRY3eoDuNBGUpMiJz1yf0a/8h+BhJ2+pAM4LC
 HvsLhvK0HCV3aq641I1X0sUveE2crpHXmthgtKarE6RfKazcpKXov8hNPbx1p1wyrgCk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gzRa6huFbcrZLvLkrDSmTVFdbVyeUMFAbkgdKnjl9l8=; b=ckd06RPVqcqxVu+QrH1/76bhRv
 dT1LqX0t0+mVo5UiwxCe+H9D1LHrVuTy6+IWBZIrdg0R+Hlq7/q4qkxA0dgll8iyx3n+w5+MiyIXd
 pMWMdf62C8X+rS/ywKKxyDTmE1MBcu1cOTAdo6HyAHKSCDtbUnbAKrYiFTEDcElMt/jQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6zff-0001TI-Ct for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:50:04 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4462FC01E; Sun, 18 Dec 2022 20:50:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671393009; bh=gzRa6huFbcrZLvLkrDSmTVFdbVyeUMFAbkgdKnjl9l8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RjKTnYDIn6wfQ6ukiJlCOlwQMqU3pn5/PIIlgakfNq3I18A97uyWLzp0xldAL6GN3
 b49cUGCwTdVVfrHcjzOBdaFUuv1pwRDgVvamcLo2qe38RoHkn0/pwbup+NmQd+O9UU
 5sjN3ev/lVSw2BWE8Wlx+tt8qtUPR3PjCLHFFDE3QA1PxoQ10R6UN1jlwf2ifH0Bky
 1haiV3mkUh65thUKuXrnDAibByRzmoeYDEBSpx53JvwM/7knT/5Qsjwqoi/aVyN5cR
 I4jO+lG5cQEciDPvn/z1lDKJwsMjW/1LXo0Le37Dqd1NrrH22dNVqn1p8rmM5PzsNA
 U3ccmPw+qP1xw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B178FC009;
 Sun, 18 Dec 2022 20:50:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671393007; bh=gzRa6huFbcrZLvLkrDSmTVFdbVyeUMFAbkgdKnjl9l8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bi8DfmRN3Mp/E6qkHghZ3GJNqzVQdQOuOomDkxM7FdMjVdwEEfWUl294aM/NTmT5H
 hr/uy2hs17Rc5QmJClzTuEpqOC/TPulGPVAAnO0SM0wopfe1Pu3nfA6LTontmWuFdv
 SWgnCfsnVlES5kqhs/En+Uc8GAg+p3y0Skzo1Fs5SOIH7YKEjrjr1n1VDHC9e6Y0l8
 e78VYajPTeBisKs7zzka5DtUukXsI+GXiHvPBEvq1ydBlj0CLtlQBsmkVrAB0xAy//
 EcGsEtaJZFmvZgnuP+2onvZTTzU6E3eunwDOPALox7AasNMhqGQUdES5YO3RGY3Fun
 3IXMPK5y9pMvw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0e0d0f0b;
 Sun, 18 Dec 2022 19:49:50 +0000 (UTC)
Date: Mon, 19 Dec 2022 04:49:35 +0900
From: asmadeus@codewreck.org
To: evanhensbergen@icloud.com
Message-ID: <Y59uz0aeuoLMU9W8@codewreck.org>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-3-evanhensbergen@icloud.com>
 <Y55Z2DwZgRG+9zW3@codewreck.org>
 <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
 <864E1007-CBCF-40C7-B438-A76C3065AFC9@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <864E1007-CBCF-40C7-B438-A76C3065AFC9@icloud.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  evanhensbergen@icloud.com wrote on Sun, Dec 18, 2022 at 10:32:57AM
    -0600: > Okay, reproduced the error you suspected on the patch. It’s kind
    of a > pain because the code as is won’t work unless I� [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1p6zff-0001TI-Ct
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
 linux-kernel@vger.kernel.org, Ron Minnich <rminnich@gmail.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ZXZhbmhlbnNiZXJnZW5AaWNsb3VkLmNvbSB3cm90ZSBvbiBTdW4sIERlYyAxOCwgMjAyMiBhdCAx
MDozMjo1N0FNIC0wNjAwOgo+IE9rYXksIHJlcHJvZHVjZWQgdGhlIGVycm9yIHlvdSBzdXNwZWN0
ZWQgb24gdGhlIHBhdGNoLiAgSXTigJlzIGtpbmQgb2YgYQo+IHBhaW4gYmVjYXVzZSB0aGUgY29k
ZSBhcyBpcyB3b27igJl0IHdvcmsgdW5sZXNzIEnigJltIHJ1bm5pbmcgdGhlIGZpbGUKPiBzZXJ2
ZXIgYXMgcm9vdCBhbmQgY2hhbmdpbmcgYWxsIHRoZSBzZXJ2ZXJzIHRvIGlnbm9yZSByZXF1ZXN0
cyBzZWVtcwo+IG9mZi4gIEl0IGFsc28gb2NjdXJyZWQgdG8gbWUgdGhhdCBoYXZpbmcgYSByb290
IFIvVyB3cml0ZSBiYWNrIGNvdWxkCj4gYmUgYSBzZWN1cml0eSB2dWxuZXJhYmlsaXR5LiAgSSB0
cmllZCBwYXRjaGluZyBpdCB3aXRoCj4gZGZsdHVpZC9kZmx0Z2lkLCBidXQgb25seSByb290IGNh
biBvdmVycmlkZSB0aGUgbW9kZXMgc28gdGhhdCBkb2VzbuKAmXQKPiB3b3JrLgo+IAo+IFNpbmNl
IEkgaGF2ZSB0aGUgYmV0dGVyIHdyaXRlIGJhY2sgZml4IHRlc3Rpbmcgb2theSwgd2UgY291bGQg
ZHJvcAo+IHRoaXMgcGF0Y2ggZnJvbSB0aGUgc2VyaWVzIGFuZCBJIGNvdWxkIGp1c3QgZm9jdXMg
b24gZ2V0dGluZyB0aGF0Cj4gcGF0Y2ggcmVhZHkgKHdoaWNoIEkgc2hvdWxkIGJlIGFibGUgdG8g
ZG8gdG9kYXkpLiAgSXQgZG9lcyBzZWVtIHRvCj4gd29yayB3aXRoIHRoZSBweXRob24gdGVzdCBj
YXNlIHlvdSBnYXZlLCBzbyBpdCBkb2VzbuKAmXQgaGF2ZSB0aGUgc2FtZQo+IGlzc3Vlcy4KPiAK
PiBUaG91Z2h0cz8KClRoYXQgc291bmRzIGdvb2QgdG8gbWUsIHRoYW5rcyEKCkkgaGF2ZW4ndCBo
YWQgdGltZSB0byBsb29rIGF0IHRoZSBvdGhlciBwYXRjaGVzIGluIGRldGFpbCBidXQgdGhleSBs
b29rCmdvb2QgdG8gbWUgaW4gcHJpbmNpcGxlLgpJJ2xsIHRyeSB0byBmaW5kIHRpbWUgdG8gcnVu
IHNvbWUgeGZzdGVzdHMgdGhpcyB3ZWVrIHRvIGNoZWNrIGZvcgpyZWdyZXNzaW9ucyB3aXRoIHRo
ZSBvdGhlciBwYXRjaGVzIChJIGRvbid0IGhhdmUgYW55IGxpc3QsIHNvIHJ1biBzb21lCmJlZm9y
ZS9hZnRlciB3aXRoIHFlbXUgaW4gY2FjaGU9bW1hcC9sb29zZSBtb2RlcyBwZXJoYXBzPykgYW5k
IHdlIGNhbgpzdWJtaXQgdGhlbSBuZXh0IG1lcmdlIHdpbmRvdyB1bmxlc3MgeW91J3JlIGluIGEg
aHVycnkuClNvbWUgYXJlIG9idmlvdXMgZml4ZXMgKG5vdCBjYWxsaW5nIGluIGZzY2FjaGUgY29k
ZSBpbiBsb29zZSBtb2RlKSBhbmQKY291bGQgZ2V0IGluIGZhc3RlciBidXQgSSBkb24ndCB0aGlu
ayB3ZSBzaG91bGQgcnVzaCBlLmcuIG9wdGlvbgpwYXJzaW5nLi4uIFdlbGwgdGhhdCBwcm9iYWJs
eSB3b24ndCBnZXQgbXVjaCB0ZXN0cyBpbiAtbmV4dCwgSSdsbCBsZWF2ZQp0aGF0IHVwIHRvIHlv
dS4KCkRvIHlvdSAoc3RpbGw/KSBoYXZlIGEgYnJhbmNoIHRoYXQgZ2V0cyBtZXJnZWQgaW4gbGlu
dXgtbmV4dCwgb3Igc2hhbGwgSQp0YWtlIHRoZSBwYXRjaGVzIGluIGZvciB0aGF0LCBvciBkbyB5
b3Ugd2FudCB0byBhc2sgU3RlZmVuPwooSSBzaG91bGQgcHJvYmFibHkganVzdCBjaGVjayBteXNl
bGYsIGJ1dCBpdCdzIDVhbSBhbmQgSSdsbCBiZSBsYXp5KQoKLS0gCkRvbWluaXF1ZQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
