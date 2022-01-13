Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC4448E119
	for <lists+v9fs-developer@lfdr.de>; Fri, 14 Jan 2022 00:42:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n89jC-0001tg-BE; Thu, 13 Jan 2022 23:42:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n89j7-0001tZ-LR
 for v9fs-developer@lists.sourceforge.net; Thu, 13 Jan 2022 23:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2aEkqz5/AQOW2kreM22bx+J68/cwIwKWJKqmf4QjsjY=; b=DlULhX/grO7x9BSPc3nNFkP64Y
 Enc1gTy/EZVpYBI+gIc9DK3FIJ6AfdSK9iWLMwAHBisdlpWyWTDNz5gfZg/cJG3uxp7zDqCe7+KI9
 7d8CZnExw+SlLPJZm3uTYhRxcL/gkQUmG/0w6/p76udQL5MkBoQPIvVy3AehMpV5hNX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2aEkqz5/AQOW2kreM22bx+J68/cwIwKWJKqmf4QjsjY=; b=L
 iSLKdrJXnp+HhlZXoGdZOJghH3cawZQ/joq6CckIJC7Mp1eaHN+avW5nMF5F6TudMtixDLoGaULi9
 RuQZOTqL+rM+NlH/M/A9QjP4kHLh9mG6mXhc+/SBqDVa4yghPyUBg/mEy5gqctS6i6kphcA0enjS5
 cpCsblR4Fj/mXVUw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n89jJ-00Ey7g-Ie
 for v9fs-developer@lists.sourceforge.net; Thu, 13 Jan 2022 23:42:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 13460C01C; Fri, 14 Jan 2022 00:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1642117313; bh=2aEkqz5/AQOW2kreM22bx+J68/cwIwKWJKqmf4QjsjY=;
 h=Date:From:To:Cc:Subject:From;
 b=hp2H+yFGlPtVf6CywJ+x2XKjbBnABpKXaud3jp4EUZwOuwqAtvSWUwtry6ffrTVgX
 Pxf+R2HuJlSGlXMODXNJLG6ExA6OTbTCwCZ9cj9Kblqu8xZaygWl189k035KWVAaYo
 Pmkc7JYqNRIWl85/La9HueVshWlKMyrBKAal2hgnt6zJEnJGe522ec9nhzRNzRBf6t
 z/2y3SWeDsg8yguIyYIyUAWRBwGn0fGhqwqeF/CgJraeEHRfaAtX7GCbNBtEx+cd5r
 YKoX3kMr4tlZUJVGXpm0DuMwK49PZHnn/0RXPfH+iMMkvt9n46IilHKd4MZAxDXERS
 HvH02aiIODXag==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E9BABC009;
 Fri, 14 Jan 2022 00:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1642117312; bh=2aEkqz5/AQOW2kreM22bx+J68/cwIwKWJKqmf4QjsjY=;
 h=Date:From:To:Cc:Subject:From;
 b=fOCM/jGT4Vooq5gEl0Un1DBDULNAt5Y+iZKAL2CHv6Js5Wkfff6LKgMKcEND+dbIQ
 FkV0j7bZdD6WfAcVvNP3vsyQ+v9rSPqbk0ZsCPYPFc7f99GHcxmD4GzcWW1Msx+zOq
 cFxYVohFnbOqIaOnBOn1KoguhqxcubeH3pctTcspAPXigl0WMwcpDCTmpFoW0SdA2C
 j2TadpDRx6tPf1gYAJHaFJeZ94VWHxqUCI9gmkCcKzHsjVHyn5v+hidi6rYVMjnjUI
 UXhCmX9TywFDDmX5cdZk55j/u6Vj6cfviofSMl+6Kro12YJm4GzaJbr1XGFsDyuGGO
 Ip95DHVI1XHjA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0509ad97;
 Thu, 13 Jan 2022 23:41:47 +0000 (UTC)
Date: Fri, 14 Jan 2022 08:41:32 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YeC4rCJjQhLOJGlH@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 2585cf9dfaaddf00b069673f27bb3f8530e2039c:
 Linux 5.16-rc5 (2021-12-12 14:53:01 -0800) are available in the Git repository
 at: Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n89jJ-00Ey7g-Ie
Subject: [V9fs-developer] [GIT PULL] 9p for 5.17-rc1
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCAyNTg1Y2Y5ZGZhYWRkZjAwYjA2OTY3
M2YyN2JiM2Y4NTMwZTIwMzljOgoKICBMaW51eCA1LjE2LXJjNSAoMjAyMS0xMi0xMiAxNDo1Mzow
MSAtMDgwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6
Ly9naXRodWIuY29tL21hcnRpbmV0ZC9saW51eCB0YWdzLzlwLWZvci01LjE3LXJjMQoKZm9yIHlv
dSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDE5ZDFjMzI2NTJiYmJmNDA2MDYzMDI1MzU0ODQ1ZmRk
ZGJjZWNkM2E6CgogIDlwOiBmaXggZW5vZGF0YSB3aGVuIHJlYWRpbmcgZ3Jvd2luZyBmaWxlICgy
MDIyLTAxLTExIDE1OjIxOjUzICswOTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo5cC1mb3ItNS4xNy1yYzE6IGZpeGVz
LCBzcGxpdCA5cF9uZXRfZmQsIG5ldyByZXZpZXdlcgoKLSBmaXggcG9zc2libGUgdW5pbml0aWFs
aXplZCBtZW1vcnkgdXNhZ2UgZm9yIHNldGF0dHIKLSBmaXggZnNjYWNoZSByZWFkaW5nIGhvbGUg
aW4gYSBmaWxlIGp1c3QgYWZ0ZXIgaXQncyBiZWVuIGdyb3duCi0gc3BsaXQgbmV0LzlwL3RyYW5z
X2ZkLmMgaW4gaXRzIG93biBtb2R1bGUgbGlrZSBvdGhlciB0cmFuc3BvcnRzCiAgdGhhdCBtb2R1
bGUgZGVmYXVsdHMgdG8gOVBfTkVUIGFuZCBpcyBhdXRvbG9hZGVkIGlmIHJlcXVpcmVkIHNvCiAg
dXNlcnMgc2hvdWxkIG5vdCBiZSBpbXBhY3RlZAotIGFkZCBDaHJpc3RpYW4gU2Nob2VuZWJlY2sg
dG8gOXAgcmV2aWV3ZXJzCi0gc29tZSBtb3JlIHRyaXZpYWwgY2xlYW51cAoKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpDaGFu
Z2NoZW5nIERlbmcgKDEpOgogICAgICBmczogOXA6IHJlbW92ZSB1bm5lZWRlZCB2YXJpYWJsZQoK
Q2hyaXN0aWFuIEJyYXVuZXIgKDEpOgogICAgICA5cDogb25seSBjb3B5IHZhbGlkIGlhdHRycyBp
biA5UDIwMDAuTCBzZXRhdHRyIGltcGxlbWVudGF0aW9uCgpDaHJpc3RpYW4gU2Nob2VuZWJlY2sg
KDIpOgogICAgICBNQUlOVEFJTkVSUzogOXA6IGFkZCBDaHJpc3RpYW4gU2Nob2VuZWJlY2sgYXMg
cmV2aWV3ZXIKICAgICAgbmV0LzlwOiBzaG93IGVycm9yIG1lc3NhZ2UgaWYgdXNlciAnbXNpemUn
IGNhbm5vdCBiZSBzYXRpc2ZpZWQKCkRvbWluaXF1ZSBNYXJ0aW5ldCAoMSk6CiAgICAgIDlwOiBm
aXggZW5vZGF0YSB3aGVuIHJlYWRpbmcgZ3Jvd2luZyBmaWxlCgpUaG9tYXMgV2Vpw59zY2h1aCAo
Myk6CiAgICAgIDlwL3RyYW5zX2ZkOiBzcGxpdCBpbnRvIGRlZGljYXRlZCBtb2R1bGUKICAgICAg
OXAveGVuOiBhdXRvbG9hZCB3aGVuIHhlbmJ1cyBzZXJ2aWNlIGlzIGF2YWlsYWJsZQogICAgICBu
ZXQvcDk6IGxvYWQgZGVmYXVsdCB0cmFuc3BvcnRzCgpaaGFuZyBNaW5neXUgKDEpOgogICAgICA5
cDogVXNlIEJVR19PTiBpbnN0ZWFkIG9mIGlmIGNvbmRpdGlvbiBmb2xsb3dlZCBieSBCVUcuCgp6
aHV4aW5yYW4gKDEpOgogICAgICA5cC90cmFuc192aXJ0aW86IEZpeCB0eXBvIGluIHRoZSBjb21t
ZW50IGZvciBwOV92aXJ0aW9fY3JlYXRlKCkKCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICB8
ICAxICsKIGZzLzlwL3Zmc19hZGRyLmMgICAgICAgICAgIHwgIDUgKysrKysKIGZzLzlwL3Zmc19m
aWxlLmMgICAgICAgICAgIHwgIDYgKystLS0tCiBmcy85cC92ZnNfaW5vZGVfZG90bC5jICAgICB8
IDI5ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiBpbmNsdWRlL25ldC85cC85cC5oICAg
ICAgICB8ICAyIC0tCiBpbmNsdWRlL25ldC85cC90cmFuc3BvcnQuaCB8ICAyICstCiBuZXQvOXAv
S2NvbmZpZyAgICAgICAgICAgICB8ICA3ICsrKysrKysKIG5ldC85cC9NYWtlZmlsZSAgICAgICAg
ICAgIHwgIDUgKysrKy0KIG5ldC85cC9jbGllbnQuYyAgICAgICAgICAgIHwgIDcgKysrKysrLQog
bmV0LzlwL21vZC5jICAgICAgICAgICAgICAgfCAxNSArKysrKysrKysrKy0tLS0KIG5ldC85cC90
cmFuc19mZC5jICAgICAgICAgIHwgMTQgKysrKysrKysrKysrLS0KIG5ldC85cC90cmFuc192aXJ0
aW8uYyAgICAgIHwgIDIgKy0KIG5ldC85cC90cmFuc194ZW4uYyAgICAgICAgIHwgIDEgKwogMTMg
ZmlsZXMgY2hhbmdlZCwgNzEgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgotLSAKRG9t
aW5pcXVlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Vjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZz
LWRldmVsb3Blcgo=
