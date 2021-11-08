Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB3B4480C0
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Nov 2021 15:03:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mk5F4-0003iU-E7; Mon, 08 Nov 2021 14:03:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mk5F2-0003iC-Br
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8d1SRJTILJ3jSIx5wk4bJ3Oi9mCX4rFkHpU/0zIOD/c=; b=i4fqKcMub9O6cj0UkyTPR/FAKR
 Pl8WxX0jJ+DSPqQ1Y4v/UJXO4yLTH5YUGnqaiUGBoZLlFgqa/msliWKl4O3+BpZx+QyrpKeCgiZmj
 DzMMQwDYE6bWfnC80iAcxw7Srftks4abT8J6cgnDyto61lYapAmZzuvXFSmc+tSPcKt8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8d1SRJTILJ3jSIx5wk4bJ3Oi9mCX4rFkHpU/0zIOD/c=; b=L
 OuO4OEdfVFL8foAmza3GLhPvZdlu+EwK6DKxhwVFpqbCbnC3WK0ecrJzi509ge7O+qOY6osblgmDb
 w38NdDi2JaadcPPX5kwKARSMzuqPGdsLdnWNPydqKUUE63WLX2MYsHMqDqTBUJ1jlXOxsxuUoQpBN
 xVfzm7OmSNXa7Yrg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk5Ex-0068AT-8e
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:03:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id BE7F9C01B; Mon,  8 Nov 2021 15:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636380187; bh=8d1SRJTILJ3jSIx5wk4bJ3Oi9mCX4rFkHpU/0zIOD/c=;
 h=Date:From:To:Cc:Subject:From;
 b=aABpJMwHvyGlEABHKFx++J8MSyggP5v2ObDAsyOFDPyBRdkwALhz8Fdok67xFOTJu
 1GxcuEIF4qG2j6bQPS6P3y6Xoc+CEpwuXW6w4p4RLRdYr3IKj4lhsYl5CziX/eCHCL
 0/N7E9wsINhyJD4MWOSF1vnT6Zda/3b181IQykBBC2cLW117qz/cEjUCppU9SMfUuq
 13S4oNgVIe+nmLzuC2Spm9TVPLo7fOielWS8DeWKlsAC847xUcgBmYl917GEBYDhtr
 5H+jdJ9/twVFVWTDtjjlm808wvA5XU7LMVta2NgTOpd57mRpDqgZgS56sfsEr+G9Sm
 Lq8nQx1/lOhAw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AE3D6C009;
 Mon,  8 Nov 2021 15:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636380187; bh=8d1SRJTILJ3jSIx5wk4bJ3Oi9mCX4rFkHpU/0zIOD/c=;
 h=Date:From:To:Cc:Subject:From;
 b=aABpJMwHvyGlEABHKFx++J8MSyggP5v2ObDAsyOFDPyBRdkwALhz8Fdok67xFOTJu
 1GxcuEIF4qG2j6bQPS6P3y6Xoc+CEpwuXW6w4p4RLRdYr3IKj4lhsYl5CziX/eCHCL
 0/N7E9wsINhyJD4MWOSF1vnT6Zda/3b181IQykBBC2cLW117qz/cEjUCppU9SMfUuq
 13S4oNgVIe+nmLzuC2Spm9TVPLo7fOielWS8DeWKlsAC847xUcgBmYl917GEBYDhtr
 5H+jdJ9/twVFVWTDtjjlm808wvA5XU7LMVta2NgTOpd57mRpDqgZgS56sfsEr+G9Sm
 Lq8nQx1/lOhAw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 597cbc73;
 Mon, 8 Nov 2021 14:03:02 +0000 (UTC)
Date: Mon, 8 Nov 2021 23:02:47 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YYkuBxbTYS2ANFnK@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, I've been hesitant on the checkpatch fixes: it's
 a large batch of noise that doesn't give much value, but I guess going forward
 it's good if I can have a baseline to keep enforcing and it'll prevent g
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mk5Ex-0068AT-8e
Subject: [V9fs-developer] [GIT PULL] 9p for 5.16-rc1
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

CkhpIExpbnVzLAoKSSd2ZSBiZWVuIGhlc2l0YW50IG9uIHRoZSBjaGVja3BhdGNoIGZpeGVzOiBp
dCdzIGEgbGFyZ2UgYmF0Y2ggb2Ygbm9pc2UKdGhhdCBkb2Vzbid0IGdpdmUgbXVjaCB2YWx1ZSwg
YnV0IEkgZ3Vlc3MgZ29pbmcgZm9yd2FyZCBpdCdzIGdvb2QgaWYKSSBjYW4gaGF2ZSBhIGJhc2Vs
aW5lIHRvIGtlZXAgZW5mb3JjaW5nIGFuZCBpdCdsbCBwcmV2ZW50IGdldHRpbmcgbW9yZQpoYWxm
LWFzc2VkIGRyaXZlLWJ5IHN0eWxlIHBhdGNoZXMgdGhhdCBhcmVuJ3QgZXZlbiBjb3JyZWN0IGxp
a2UgSSd2ZQpoYWQuLi4KCklmIHlvdSBoYXZlIGFuIG9waW5pb24gb24gaXQgZmVlbCBmcmVlIHRv
IGp1c3QgZHJvcCB0aGUgbGFzdCBwYXRjaCwgdGhlCnJlc3Qgc3RpbGwgcHJvYmFibHkgbWFrZXMg
c2Vuc2UuCgoKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgOGJiN2VjYTk3MmFk
NTMxYzliMTQ5YzBhNTFhYjQzYTQxNzM4NTgxMzoKCiAgTGludXggNS4xNSAoMjAyMS0xMC0zMSAx
Mzo1MzoxMCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoK
ICBnaXQ6Ly9naXRodWIuY29tL21hcnRpbmV0ZC9saW51eCB0YWdzLzlwLWZvci01LjE2LXJjMQoK
Zm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDZlMTk1YjBmN2M4ZTUwOTI3ZmEzMTk0NjM2
OWMyMmEwNTM0ZWM3ZTI6CgogIDlwOiBmaXggYSBidW5jaCBvZiBjaGVja3BhdGNoIHdhcm5pbmdz
ICgyMDIxLTExLTA0IDIxOjA0OjI1ICswOTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo5cC1mb3ItNS4xNi1yYzE6IGZp
eGVzLCBuZXRmcyByZWFkIHN1cHBvcnQgYW5kIGNoZWNrcGF0Y2ggcmV3cml0ZQoKLSBmaXggc3l6
Y2FsbGVyIHVuaW5pdGlhbGl6ZWQgdmFsdWUgdXNhZ2UgYWZ0ZXIgbWlzc2luZyBlcnJvciBjaGVj
awotIGFkZCBtb2R1bGUgYXV0b2xvYWRpbmcgYmFzZWQgb24gdHJhbnNwb3J0IG5hbWUKLSBjb252
ZXJ0IGNhY2hlZCByZWFkcyB0byB1c2UgbmV0ZnMgaGVscGVycwotIGFkanVzdCByZWFkYWhlYWQg
YmFzZWQgb24gdHJhbnNwb3J0IG1zaXplCi0gYW5kIG1hbnksIG1hbnkgY2hlY2twYXRjaC5wbCB3
YXJuaW5nIGZpeGVzLi4uCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkRhdmlkIEhvd2VsbHMgKDEpOgogICAgICA5cDogQ29u
dmVydCB0byB1c2luZyB0aGUgbmV0ZnMgaGVscGVyIGxpYiB0byBkbyByZWFkcyBhbmQgY2FjaGlu
ZwoKRG9taW5pcXVlIE1hcnRpbmV0ICg3KToKICAgICAgOXAvbmV0OiBmaXggbWlzc2luZyBlcnJv
ciBjaGVjayBpbiBwOV9jaGVja19lcnJvcnMKICAgICAgZnNjYWNoZV9jb29raWVfZW5hYmxlZDog
Y2hlY2sgY29va2llIGlzIHZhbGlkIGJlZm9yZSBhY2Nlc3NpbmcgaXQKICAgICAgOXA6IGZpeCBm
aWxlIGhlYWRlcnMKICAgICAgOXAgdjlmc19wYXJzZV9vcHRpb25zOiByZXBsYWNlIHNpbXBsZV9z
dHJ0b3VsIHdpdGgga3N0cnRvdWludAogICAgICA5cCBwOW1vZGUycGVybTogcmVtb3ZlIHVzZWxl
c3Mgc3RybGNweSBhbmQgY2hlY2sgc3NjYW5mIHJldHVybiBjb2RlCiAgICAgIDlwOiBzZXQgcmVh
ZGFoZWFkIGFuZCBpbyBzaXplIGFjY29yZGluZyB0byBtYXhzaXplCiAgICAgIDlwOiBmaXggYSBi
dW5jaCBvZiBjaGVja3BhdGNoIHdhcm5pbmdzCgpTb2hhaWIgTW9oYW1lZCAoNCk6CiAgICAgIGZz
LzlwOiBjbGVhbnVwOiBvcGVuaW5nIGJyYWNlIGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIG5leHQg
bGluZQogICAgICA5cDogZml4IG1pbm9yIGluZGVudGF0aW9uIGFuZCBjb2Rlc3R5bGUKICAgICAg
ZnMvOXA6IGZpeCB3YXJuaW5ncyBmb3VuZCBieSBjaGVja3BhdGNoLnBsCiAgICAgIGZzLzlwOiBm
aXggaW5kZW50YXRpb24gYW5kIEFkZCBtaXNzaW5nIGEgYmxhbmsgbGluZSBhZnRlciBkZWNsYXJh
dGlvbgoKVGhvbWFzIFdlacOfc2NodWggKDEpOgogICAgICBuZXQvOXA6IGF1dG9sb2FkIHRyYW5z
cG9ydCBtb2R1bGVzCgogZnMvOXAvS2NvbmZpZyAgICAgICAgICAgICAgfCAgIDEgKwogZnMvOXAv
YWNsLmMgICAgICAgICAgICAgICAgfCAgMTEgKy0tLQogZnMvOXAvYWNsLmggICAgICAgICAgICAg
ICAgfCAgMjcgKysrKy0tLS0tCiBmcy85cC9jYWNoZS5jICAgICAgICAgICAgICB8IDE0MSArLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZnMvOXAvY2FjaGUuaCAg
ICAgICAgICAgICAgfCAgOTcgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBmcy85cC9m
aWQuYyAgICAgICAgICAgICAgICB8ICAgMyArLQogZnMvOXAvdjlmcy5jICAgICAgICAgICAgICAg
fCAgMjIgKysrKy0tLQogZnMvOXAvdjlmcy5oICAgICAgICAgICAgICAgfCAgMTcgKysrKy0tCiBm
cy85cC92OWZzX3Zmcy5oICAgICAgICAgICB8ICAxMSArKy0tCiBmcy85cC92ZnNfYWRkci5jICAg
ICAgICAgICB8IDIxNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGZzLzlwL3Zmc19kZW50cnkuYyAgICAgICAgIHwgICA0
ICstCiBmcy85cC92ZnNfZGlyLmMgICAgICAgICAgICB8ICAgNiArLQogZnMvOXAvdmZzX2ZpbGUu
YyAgICAgICAgICAgfCAgMjAgKysrKystLQogZnMvOXAvdmZzX2lub2RlLmMgICAgICAgICAgfCAg
MjkgKysrKystLS0tCiBmcy85cC92ZnNfaW5vZGVfZG90bC5jICAgICB8ICAxMSArKy0tCiBmcy85
cC92ZnNfc3VwZXIuYyAgICAgICAgICB8ICAxNCArKystLQogZnMvOXAveGF0dHIuYyAgICAgICAg
ICAgICAgfCAgMTAgKy0tLQogZnMvOXAveGF0dHIuaCAgICAgICAgICAgICAgfCAgMjkgKysrKy0t
LS0tCiBpbmNsdWRlL2xpbnV4L2ZzY2FjaGUuaCAgICB8ICAgMiArLQogaW5jbHVkZS9uZXQvOXAv
OXAuaCAgICAgICAgfCAgMTIgKystLQogaW5jbHVkZS9uZXQvOXAvY2xpZW50LmggICAgfCAgMjQg
KysrKy0tLS0KIGluY2x1ZGUvbmV0LzlwL3RyYW5zcG9ydC5oIHwgIDI2ICsrKystLS0tCiBuZXQv
OXAvY2xpZW50LmMgICAgICAgICAgICB8IDQzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogbmV0Lzlw
L2Vycm9yLmMgICAgICAgICAgICAgfCAgIDQgKy0KIG5ldC85cC9tb2QuYyAgICAgICAgICAgICAg
IHwgIDQxICsrKysrKysrLS0tLS0KIG5ldC85cC9wcm90b2NvbC5jICAgICAgICAgIHwgIDM4ICsr
KysrKy0tLS0tLQogbmV0LzlwL3Byb3RvY29sLmggICAgICAgICAgfCAgIDQgKy0KIG5ldC85cC90
cmFuc19jb21tb24uYyAgICAgIHwgIDEwICstLS0KIG5ldC85cC90cmFuc19jb21tb24uaCAgICAg
IHwgIDEyICstLS0KIG5ldC85cC90cmFuc19mZC5jICAgICAgICAgIHwgICAyIC0KIG5ldC85cC90
cmFuc19yZG1hLmMgICAgICAgIHwgICAzICstCiBuZXQvOXAvdHJhbnNfdmlydGlvLmMgICAgICB8
ICAgMSArCiBuZXQvOXAvdHJhbnNfeGVuLmMgICAgICAgICB8ICAyNiArLS0tLS0tLQogMzMgZmls
ZXMgY2hhbmdlZCwgNTIzIGluc2VydGlvbnMoKyksIDc4NCBkZWxldGlvbnMoLSkKCgoKCgo9PT09
PT09PT09PT09PT09PT09PT09PT09PT09CgpUaGUgc2FtZSBzdGF0cyB3aXRob3V0IHRoZSBsYXN0
IHBhdGNoCiBmcy85cC9LY29uZmlnICAgICAgICAgICAgICB8ICAgMSArCiBmcy85cC9hY2wuYyAg
ICAgICAgICAgICAgICB8ICAxMCArLS0tLS0tCiBmcy85cC9hY2wuaCAgICAgICAgICAgICAgICB8
ICAxMCArLS0tLS0tCiBmcy85cC9jYWNoZS5jICAgICAgICAgICAgICB8IDEzNyAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBmcy85cC9jYWNoZS5oICAgICAgICAgICAgICB8ICA5NyAr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogZnMvOXAvZmlkLmMgICAgICAgICAgICAgICAgfCAgIDMgKy0KIGZzLzlwL3Y5ZnMuYyAg
ICAgICAgICAgICAgIHwgIDE4ICsrKysrKy0tLS0tLQogZnMvOXAvdjlmcy5oICAgICAgICAgICAg
ICAgfCAgMTcgKysrKysrKystLS0KIGZzLzlwL3Zmc19hZGRyLmMgICAgICAgICAgIHwgMjA5ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCiBmcy85cC92ZnNfZGVudHJ5LmMgICAgICAgICB8ICAgMiAtLQog
ZnMvOXAvdmZzX2Rpci5jICAgICAgICAgICAgfCAgIDYgKystLQogZnMvOXAvdmZzX2ZpbGUuYyAg
ICAgICAgICAgfCAgMTkgKysrKysrKysrLS0tLQogZnMvOXAvdmZzX2lub2RlLmMgICAgICAgICAg
fCAgMTUgKysrKysrLS0tLQogZnMvOXAvdmZzX2lub2RlX2RvdGwuYyAgICAgfCAgIDIgLS0KIGZz
LzlwL3Zmc19zdXBlci5jICAgICAgICAgIHwgICA3ICsrLS0tCiBmcy85cC94YXR0ci5jICAgICAg
ICAgICAgICB8ICAxMCArLS0tLS0tCiBmcy85cC94YXR0ci5oICAgICAgICAgICAgICB8ICAxMCAr
LS0tLS0tCiBpbmNsdWRlL2xpbnV4L2ZzY2FjaGUuaCAgICB8ICAgMiArLQogaW5jbHVkZS9uZXQv
OXAvOXAuaCAgICAgICAgfCAgIDIgLS0KIGluY2x1ZGUvbmV0LzlwL2NsaWVudC5oICAgIHwgICAy
IC0tCiBpbmNsdWRlL25ldC85cC90cmFuc3BvcnQuaCB8ICAgOCArKysrLS0KIG5ldC85cC9jbGll
bnQuYyAgICAgICAgICAgIHwgICA0ICstLQogbmV0LzlwL2Vycm9yLmMgICAgICAgICAgICAgfCAg
IDIgLS0KIG5ldC85cC9tb2QuYyAgICAgICAgICAgICAgIHwgIDMyICsrKysrKysrKysrKysrKy0t
LS0tLQogbmV0LzlwL3Byb3RvY29sLmMgICAgICAgICAgfCAgIDIgLS0KIG5ldC85cC9wcm90b2Nv
bC5oICAgICAgICAgIHwgICAyIC0tCiBuZXQvOXAvdHJhbnNfY29tbW9uLmMgICAgICB8ICAxMCAr
LS0tLS0tCiBuZXQvOXAvdHJhbnNfY29tbW9uLmggICAgICB8ICAxMCArLS0tLS0tCiBuZXQvOXAv
dHJhbnNfZmQuYyAgICAgICAgICB8ICAgMiAtLQogbmV0LzlwL3RyYW5zX3JkbWEuYyAgICAgICAg
fCAgIDMgKy0KIG5ldC85cC90cmFuc192aXJ0aW8uYyAgICAgIHwgICAxICsKIG5ldC85cC90cmFu
c194ZW4uYyAgICAgICAgIHwgIDI2ICsrLS0tLS0tLS0tLS0tLS0tCiAzMiBmaWxlcyBjaGFuZ2Vk
LCAyMDEgaW5zZXJ0aW9ucygrKSwgNDgwIGRlbGV0aW9ucygtKQoKLS0gCkRvbWluaXF1ZSBNYXJ0
aW5ldCB8IEFzbWFkZXVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby92OWZzLWRldmVsb3Blcgo=
