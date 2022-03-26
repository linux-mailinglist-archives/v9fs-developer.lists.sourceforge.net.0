Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E631C4E811B
	for <lists+v9fs-developer@lfdr.de>; Sat, 26 Mar 2022 14:35:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nY6a3-0004RZ-4N; Sat, 26 Mar 2022 13:35:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nY6a1-0004QS-AN
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 13:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=caxiXjBYa3uItnmO98ZarywbPNZq6fbyhtrusK+UKag=; b=lf6Lmr6LVoixG+ujqJ/tHzzJem
 vdlvAaDqQcunO2+/KhxTLpp5ZJwVEZ5vyx1P1wpY6wtJXYYYv/tYQXX7SMPaIvx8FXqzBJVMqQpSG
 8D6ASv/5eal+MIP7p/z9iHbUJ9HuaEwnMcHuzQniWaH1Wc4r27ZUO9xaLjF9XhHrWc08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=caxiXjBYa3uItnmO98ZarywbPNZq6fbyhtrusK+UKag=; b=h+XPc5DunYMBkuiQ6Rs2Goq7uc
 I3f2vTpEYM+xhCKPYwXat91UKNumsdId8Ha3idtQvh81k73JHvXWhuyCdu2Z8gdTL0jN3HYAYGalX
 OPrJDV+LAvkjDmyDF81kOR2dq7M3J8906DGMF6LydX3NegL5p8rr6P6YjqccePrDJJXk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nY6Zy-00Cnxw-Rl
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 13:35:43 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 69D86C01E; Sat, 26 Mar 2022 14:35:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648301736; bh=caxiXjBYa3uItnmO98ZarywbPNZq6fbyhtrusK+UKag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TsOpIa+idW73rTSBcViqBJ2wFFxhwbHtcv95nfEKD6Cg9dan7uGXohF5Ee0HpvIM+
 reazWyC+GPXZvTJQIL6TmJu7JDjJje/DKUz8JSRuFzCH7/smiFyT1BNsbTJg8RLwcU
 2QhFxEN+ZtDLlCoZCsMEPHlYJcBbAORl/c/x0+JXTZ3qqE2e8CaCc+fbZbQQW/f27M
 ZR2xcO5NC9WUtpmDhai20AzREC/AntaWU3n9zAwYElOBQyTpLp0xP4ZFOkIkpIoQb1
 P4nKsj+2IrRPbBCcSu9s+JbHDYmBlSaC4ZqLvAnzerhqWSg9CaXW6TbnXX0Y8QwXrb
 kxmdU/sO0Zs9g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A3557C009;
 Sat, 26 Mar 2022 14:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648301735; bh=caxiXjBYa3uItnmO98ZarywbPNZq6fbyhtrusK+UKag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZUd05sIczudj0TkfECNQJQgSgITQtJDaiyXu62kBTdBMmASCPjErzlTlMdo3EK5mu
 UvYmPBhx6gBAn9GMWE+OGZFdEsH6CHQ4lrNIsmgXCj2RPljEYaVjnBiGt0j8uRqdSQ
 EIHyE8ZLzMur20q7NULrkm/MeaXpAWUM11Nn6jU8Ma1nJeow5dBwiVEfLM1FpmH4Ut
 x9dwPGHqgJzyfrwGJWCv9X9TwIqWxH7zzdt9OJprtjJmFWFH64//TFdTJbo6fuhPBZ
 JlvGD8gLB9gpyTQmW45P8detTSSMa2vyCBZjfM/B/oKFghztPB+ySwZhpRXPfFja4x
 5lRBQXtqX2CIg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d9f9648a;
 Sat, 26 Mar 2022 13:35:29 +0000 (UTC)
Date: Sat, 26 Mar 2022 22:35:14 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yj8WkjT+MsdFIfwr@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3597833.OkAhqpS0b6@silver> <Yj8F6sQzx6Bvy+aZ@codewreck.org>
 <2582025.XdajAv7fHn@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2582025.XdajAv7fHn@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  (+David Howells in Cc as he's knows how that works better
 than me;
 -syzbot lists as it doesn't really concern this bug) Christian Schoenebeck
 wrote on Sat, Mar 26, 2022 at 01:36:31PM +0100: > BTW, another issue that
 I am seeing for a long time affects the fs-cache: When > I use cache=mmap
 then things seem to be harmles [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nY6Zy-00Cnxw-Rl
Subject: Re: [V9fs-developer] 9p fscache Duplicate cookie detected (Was:
 [syzbot] WARNING in p9_client_destroy)
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

KCtEYXZpZCBIb3dlbGxzIGluIENjIGFzIGhlJ3Mga25vd3MgaG93IHRoYXQgd29ya3MgYmV0dGVy
IHRoYW4gbWU7CiAtc3l6Ym90IGxpc3RzIGFzIGl0IGRvZXNuJ3QgcmVhbGx5IGNvbmNlcm4gdGhp
cyBidWcpCgpDaHJpc3RpYW4gU2Nob2VuZWJlY2sgd3JvdGUgb24gU2F0LCBNYXIgMjYsIDIwMjIg
YXQgMDE6MzY6MzFQTSArMDEwMDoKPiBCVFcsIGFub3RoZXIgaXNzdWUgdGhhdCBJIGFtIHNlZWlu
ZyBmb3IgYSBsb25nIHRpbWUgYWZmZWN0cyB0aGUgZnMtY2FjaGU6IFdoZW4KPiBJIHVzZSBjYWNo
ZT1tbWFwIHRoZW4gdGhpbmdzIHNlZW0gdG8gYmUgaGFybWxlc3MsIEkgcGVyaW9kaWNhbGx5IHNl
ZSBtZXNzYWdlcwo+IGxpa2UgdGhlc2UsIGJ1dCB0aGF0J3MgYWJvdXQgaXQ6Cj4gCj4gWzkwNzYz
LjQzNTU2Ml0gRlMtQ2FjaGU6IER1cGxpY2F0ZSBjb29raWUgZGV0ZWN0ZWQKPiBbOTA3NjMuNDM2
NTE0XSBGUy1DYWNoZTogTy1jb29raWUgYz0wMGRjYjQyZiBbcD0wMDAwMDAwMyBmbD0yMTYgbmM9
MCBuYT0wXQo+IFs5MDc2My40Mzc3OTVdIEZTLUNhY2hlOiBPLWNvb2tpZSBkPTAwMDAwMDAwMDAw
MDAwMDB7P30gbj0wMDAwMDAwMDAwMDAwMDAwCj4gWzkwNzYzLjQ0MDA5Nl0gRlMtQ2FjaGU6IE8t
a2V5PVs4XSAnYTdhYjJjMDAwMDAwMDAwMCcKPiBbOTA3NjMuNDQxNjU2XSBGUy1DYWNoZTogTi1j
b29raWUgYz0wMGRjYjRhNyBbcD0wMDAwMDAwMyBmbD0yIG5jPTAgbmE9MV0KPiBbOTA3NjMuNDQ2
NzUzXSBGUy1DYWNoZTogTi1jb29raWUgZD0wMDAwMDAwMDViNTgzZDVhezlwLmlub2RlfSBuPTAw
MDAwMDAwMjEyMTg0ZmIKPiBbOTA3NjMuNDQ4MTk2XSBGUy1DYWNoZTogTi1rZXk9WzhdICdhN2Fi
MmMwMDAwMDAwMDAwJwoKaG0sIGZzY2FjaGUgY29kZSBzaG91bGRuJ3QgYmUgdXNlZCBmb3IgY2Fj
aGU9bW1hcCwgSSdtIHN1cnByaXNlZCB5b3UgY2FuCmhpdCB0aGlzLi4uCgo+IFRoZSByZWFsIHRy
b3VibGUgc3RhcnRzIHdoZW4gSSB1c2UgY2FjaGU9bG9vc2UgdGhvdWdoLCBpbiB0aGlzIGNhc2Ug
SSBnZXQgYWxsCj4gc29ydHMgb2YgbWlzYmVoYXZpb3VycyBmcm9tIHRpbWUgdG8gdGltZSwgZXNw
ZWNpYWxseSBjb21wbGFpbmluZyBhYm91dCBpbnZhbGlkCj4gZmlsZSBkZXNjcmlwdG9ycy4KCi4u
LiBidXQgSSBkaWQgZW5jb3V0ZXIgdGhlc2Ugb24gY2FjaGU9bG9vc2UvZnNjYWNoZSwgYWx0aG91
Z2ggSSBoYWRuJ3QKbm90aWNlZCBhbnkgYmFkIGJlaGF2aW91ciBzdWNoIGFzIGludmFsaWQgZmls
ZSBkZXNjcmlwdG9ycy4KCj4gQW55IGNsdWVzPwoKU2luY2UgSSBoYWRuJ3Qgbm90aWNlZCByZWFs
IGhhcm0gSSBkaWRuJ3QgbG9vayB0b28gaGFyZCBpbnRvIGl0LCBJIGhhdmUKYSBjb3VwbGUgb2Yg
aWRlYXM6Ci0gdGhlIGNvb2tpZSBpcyBqdXN0IGEgdHJ1bmNhdGVkIHBhcnQgb2YgdGhlIGlub2Rl
IG51bWJlciwgaXQncyBwb3NzaWJsZQp3ZSBnZXQgcmVhbCBjb2xsaXNpb25zIGJlY2F1c2UgdGhl
cmUgYXJlIG5vIGd1YXJhbnRlZXMgdGhlcmUgd29uJ3QgYmUKaWRlbnRpY2FsIGlub2RlcyB0aGVy
ZS4KSW4gcGFydGljdWxhciwgaXQncyB0cml2aWFsIHRvIHJlcHJvZHVjZSBieSBleHBvcnRpbmcg
c3VibW91bnRzOgoKIyMgb24gaG9zdCBpbiBleHBvcnQgZGlyZWN0b3J5CiMgbW91bnQgLXQgdG1w
ZnMgdG1wZnMgbTEKIyBtb3VudCAtdCB0bXBmcyB0bXBmcyBtMgojIGVjaG8gZm9vID4gbTEvYQoj
IGVjaG8gYmFyID4gbTIvYQojIGxzIC1saSBtMSBtMgptMToKdG90YWwgNAoyIC1ydy1yLS1yLS0g
MSBhc21hZGV1cyB1c2VycyA0IE1hciAyNiAyMjoyMyBhCgptMjoKdG90YWwgNAoyIC1ydy1yLS1y
LS0gMSBhc21hZGV1cyB1c2VycyA0IE1hciAyNiAyMjoyMyBhCgojIyBvbiBjbGllbnQKIyAvbW50
L3QvbSovYQpmb28KYmFyCkZTLUNhY2hlOiBEdXBsaWNhdGUgY29va2llIGRldGVjdGVkCkZTLUNh
Y2hlOiBPLWNvb2tpZSBjPTAwMDAwOTlhIFtmbD00MDAwIG5hPTAgbkE9MCBzPS1dCkZTLUNhY2hl
OiBPLWNvb2tpZSBWPTAwMDAwMDA2IFs5cCx0bXAsXQpGUy1DYWNoZTogTy1rZXk9WzhdICcwMjAw
MDAwMDAwMDAwMDAwJwpGUy1DYWNoZTogTi1jb29raWUgYz0wMDAwMDk5YiBbZmw9MCBuYT0wIG5B
PTAgcz0tXQpGUy1DYWNoZTogTi1jb29raWUgVj0wMDAwMDAwNiBbOXAsdG1wLF0KRlMtQ2FjaGU6
IE4ta2V5PVs4XSAnMDIwMDAwMDAwMDAwMDAwMCcKCgpCdXQgYXMgeW91IGNhbiBzZWUgZGVzcGl0
ZSB0aGUgd2FybmluZyB0aGUgY29udGVudCBpcyBwcm9wZXJseQpkaWZmZXJlbnQsIGFuZCB3cml0
aW5nIGFsc28gd29ya3MsIHNvIHRoaXMgcHJvYmFibHkgaXNuJ3QgaXQuLi4gQWx0aG91Z2gKdGhl
IGZzY2FjaGUgY29kZSB3ZSdyZSB1c2luZyBpcyB0b3RhbGx5IGRpZmZlcmVudCAtLSB5b3VyIGRt
ZXNnIG91dHB1dAppcyBmcm9tIHRoZSAicHJlLW5ldGZzIiBjb2RlLCBzbyB0aGF0IG1pZ2h0IGhh
dmUgZ290dGVuIGZpeGVkIGFzIGEgc2lkZQplZmZlY3Q/CgoKLSBsaWZlY3ljbGUgZGlmZsOpcmVu
Y2UgYmV0d2VlbiBpbm9kZSBhbmQgZnNjYWNoZSBlbnRyeS4KRGF2aWQgcHVzaGVkIGEgcGF0Y2gg
YSBmZXcgeWVhcnMgYmFjayB0byBhZGRyZXNzIHRoaXMgYnV0IGl0IGxvb2tzIGxpa2UKaXQgbmV2
ZXIgZ290IG1lcmdlZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8xNTUyMzE1ODQ0ODcu
Mjk5Mi4xNzQ2NjMzMDE2MDMyOTM4NTE2Mi5zdGdpdEB3YXJ0aG9nLnByb2N5b24ub3JnLnVrLwoK
dGhlIHJhdGlvbmFsZSBpcyB0aGF0IHdlIGNvdWxkIGV2aWN0IHRoZSBpbm9kZSB0aGVuIHJlYWxs
b2NhdGUgaXQsIGFuZAppdCdkIGdlbmVyYXRlIGEgbmV3IGZzY2FjaGUgZW50cnkgd2l0aCB0aGUg
c2FtZSBrZXkgYmVmb3JlIHRoZSBwcmV2aW91cwpmc2NhY2hlIGVudHJ5IGhhZCBiZWVuIGZyZWVk
LgpJJ20gbm90IHN1cmUgaWYgdGhhdCBnb3QgZml4ZWQgb3RoZXJ3aXNlIGFuZCBpdCBtaWdodCBu
b3QgYmUgcG9zc2libGUKYW55bW9yZSwgSSBkaWRuJ3QgZm9sbG93IHRoYXQsIGJ1dCBnaXZlbiAK
CgogLSBzb21lIG90aGVyIGJ1Zy4uLgoKSWYgeW91IGhhdmUgc29tZSBraW5kIG9mIHJlcHJvZHVj
ZXIgb2YgaW52YWxpZCBmaWxlZGVzY3JpcHRvciBvciBzaW1pbGFyCmVycm9ycyBJJ2QgYmUgaGFw
cHkgdG8gZGlnIGEgYml0IG1vcmUsIEkgZG9uJ3QgcGFydGljdWxhcmx5IGxpa2UgYWxsCmFzcGVj
dCBvZiBvdXIgY2FjaGUgbW9kZWwgYnV0IGl0J3Mgbm90IGdvb2QgaWYgaXQgY29ycnVwdHMgdGhp
bmdzLgoKLS0gCkRvbWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
