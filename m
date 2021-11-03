Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0DF444912
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 20:38:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miM5p-000051-S6; Wed, 03 Nov 2021 19:38:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1miM5o-00004v-Cr
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BpQOhb2cZBGd7u8g7wwhelyv2avMnIDNd9OpbcIsOfg=; b=hMXDg/+OU+g8GojAUjVaZhcCTU
 FYUQ8jUa7RhklkezOFKUwc1e55TbOBSpgwvP0N++VhEwtvteEW+2QQzjYzOW8ExtUb9ttbQq88/gD
 0qDwZz//We+WPW75ObhmlHggvM4vzPEpeZEJ0/c85/xw/xxXQadnle8NGnoduMMgwlZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BpQOhb2cZBGd7u8g7wwhelyv2avMnIDNd9OpbcIsOfg=; b=ekDwTW+TJDwFmDqLw6EVjj9gWH
 zaLWZLPDh4lOH+nqAy7OrR8FcIrA7Nu2zxSciclLHrkRvPXrASP1FRR1ytrpgxQxltoePvEbtV43w
 YbZw8r8tsZQ4u1+7rdYXXFi3yWCI/1y0L2dwJYghja+DZ4S2d23ZIgJuypStlEnDx6vI=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miM5k-00HYtU-45
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:40 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1635968309;
 bh=1lvpZBMnAiuoh4ysYuD5bGBkS7W06lh/Tvn7af7xom4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V0vse0iZPtrez5azQFc4VRg+v50Qjlu533fDW9EO24pn6RadYpzudPv2eBVRKdhBv
 Ldmwe1uopJf2M5qCpN5zOFHyqBvRTBZIC06gXi0mrxvak4Nsq+tf5C6DqwETqbFWL9
 0+JoW1z7UT/7goMsweC24PQaCICTYUDx7BHpP5IA=
To: v9fs-developer@lists.sourceforge.net,
	netdev@vger.kernel.org
Date: Wed,  3 Nov 2021 20:38:21 +0100
Message-Id: <20211103193823.111007-3-linux@weissschuh.net>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211103193823.111007-1-linux@weissschuh.net>
References: <20211103193823.111007-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This allows these transports only to be used when needed.
   Signed-off-by: Thomas Weißschuh <linux@weissschuh.net> --- include/net/9p/9p.h
    | 2 -- net/9p/Kconfig | 7 +++++++ net/9p/Makefile | 5 ++++- net/9p/mod.c
   | 2 -- net/9p/trans_fd.c | 14 ++++++++++++-- 5 [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: weissschuh.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1miM5k-00HYtU-45
Subject: [V9fs-developer] [PATCH v2 2/4] 9p/trans_fd: split into dedicated
 module
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
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, Stefano Stabellini <stefano@aporeto.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhpcyBhbGxvd3MgdGhlc2UgdHJhbnNwb3J0cyBvbmx5IHRvIGJlIHVzZWQgd2hlbiBuZWVkZWQu
CgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8bGludXhAd2Vpc3NzY2h1aC5uZXQ+
Ci0tLQogaW5jbHVkZS9uZXQvOXAvOXAuaCB8ICAyIC0tCiBuZXQvOXAvS2NvbmZpZyAgICAgIHwg
IDcgKysrKysrKwogbmV0LzlwL01ha2VmaWxlICAgICB8ICA1ICsrKystCiBuZXQvOXAvbW9kLmMg
ICAgICAgIHwgIDIgLS0KIG5ldC85cC90cmFuc19mZC5jICAgfCAxNCArKysrKysrKysrKystLQog
NSBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbmV0LzlwLzlwLmggYi9pbmNsdWRlL25ldC85cC85cC5oCmluZGV4IDAz
NjE0ZGU4Njk0Mi4uZjQyMGY4Y2IzNzhkIDEwMDY0NAotLS0gYS9pbmNsdWRlL25ldC85cC85cC5o
CisrKyBiL2luY2x1ZGUvbmV0LzlwLzlwLmgKQEAgLTU1Myw2ICs1NTMsNCBAQCBzdHJ1Y3QgcDlf
ZmNhbGwgewogaW50IHA5X2VycnN0cjJlcnJubyhjaGFyICplcnJzdHIsIGludCBsZW4pOwogCiBp
bnQgcDlfZXJyb3JfaW5pdCh2b2lkKTsKLWludCBwOV90cmFuc19mZF9pbml0KHZvaWQpOwotdm9p
ZCBwOV90cmFuc19mZF9leGl0KHZvaWQpOwogI2VuZGlmIC8qIE5FVF85UF9IICovCmRpZmYgLS1n
aXQgYS9uZXQvOXAvS2NvbmZpZyBiL25ldC85cC9LY29uZmlnCmluZGV4IDY0NDY4YzQ5NzkxZi4u
YWY2MDExMjlmMWJiIDEwMDY0NAotLS0gYS9uZXQvOXAvS2NvbmZpZworKysgYi9uZXQvOXAvS2Nv
bmZpZwpAQCAtMTUsNiArMTUsMTMgQEAgbWVudWNvbmZpZyBORVRfOVAKIAogaWYgTkVUXzlQCiAK
K2NvbmZpZyBORVRfOVBfRkQKKwlkZXBlbmRzIG9uIFZJUlRJTworCXRyaXN0YXRlICI5UCBGRCBU
cmFuc3BvcnQiCisJaGVscAorCSAgVGhpcyBidWlsZHMgc3VwcG9ydCBmb3IgdHJhbnNwb3J0cyBv
dmVyIFRDUCwgVW5peCBzb2NrZXRzIGFuZAorCSAgZmlsZWRlc2NyaXB0b3JzLgorCiBjb25maWcg
TkVUXzlQX1ZJUlRJTwogCWRlcGVuZHMgb24gVklSVElPCiAJdHJpc3RhdGUgIjlQIFZpcnRpbyBU
cmFuc3BvcnQiCmRpZmYgLS1naXQgYS9uZXQvOXAvTWFrZWZpbGUgYi9uZXQvOXAvTWFrZWZpbGUK
aW5kZXggYWEwYTU2NDFlNWQwLi4xZGY5YjM0NGMzMGIgMTAwNjQ0Ci0tLSBhL25ldC85cC9NYWtl
ZmlsZQorKysgYi9uZXQvOXAvTWFrZWZpbGUKQEAgLTEsNSArMSw2IEBACiAjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wCiBvYmotJChDT05GSUdfTkVUXzlQKSA6PSA5cG5ldC5vCitv
YmotJChDT05GSUdfTkVUXzlQX0ZEKSArPSA5cG5ldF9mZC5vCiBvYmotJChDT05GSUdfTkVUXzlQ
X1hFTikgKz0gOXBuZXRfeGVuLm8KIG9iai0kKENPTkZJR19ORVRfOVBfVklSVElPKSArPSA5cG5l
dF92aXJ0aW8ubwogb2JqLSQoQ09ORklHX05FVF85UF9SRE1BKSArPSA5cG5ldF9yZG1hLm8KQEAg
LTksOSArMTAsMTEgQEAgb2JqLSQoQ09ORklHX05FVF85UF9SRE1BKSArPSA5cG5ldF9yZG1hLm8K
IAljbGllbnQubyBcCiAJZXJyb3IubyBcCiAJcHJvdG9jb2wubyBcCi0JdHJhbnNfZmQubyBcCiAJ
dHJhbnNfY29tbW9uLm8gXAogCis5cG5ldF9mZC1vYmpzIDo9IFwKKwl0cmFuc19mZC5vIFwKKwog
OXBuZXRfdmlydGlvLW9ianMgOj0gXAogCXRyYW5zX3ZpcnRpby5vIFwKIApkaWZmIC0tZ2l0IGEv
bmV0LzlwL21vZC5jIGIvbmV0LzlwL21vZC5jCmluZGV4IGM5NTQxNmMxZDFhMi4uOGYxZDA2N2Iy
NzJlIDEwMDY0NAotLS0gYS9uZXQvOXAvbW9kLmMKKysrIGIvbmV0LzlwL21vZC5jCkBAIC0xODIs
NyArMTgyLDYgQEAgc3RhdGljIGludCBfX2luaXQgaW5pdF9wOSh2b2lkKQogCiAJcDlfZXJyb3Jf
aW5pdCgpOwogCXByX2luZm8oIkluc3RhbGxpbmcgOVAyMDAwIHN1cHBvcnRcbiIpOwotCXA5X3Ry
YW5zX2ZkX2luaXQoKTsKIAogCXJldHVybiByZXQ7CiB9CkBAIC0xOTYsNyArMTk1LDYgQEAgc3Rh
dGljIHZvaWQgX19leGl0IGV4aXRfcDkodm9pZCkKIHsKIAlwcl9pbmZvKCJVbmxvYWRpbmcgOVAy
MDAwIHN1cHBvcnRcbiIpOwogCi0JcDlfdHJhbnNfZmRfZXhpdCgpOwogCXA5X2NsaWVudF9leGl0
KCk7CiB9CiAKZGlmZiAtLWdpdCBhL25ldC85cC90cmFuc19mZC5jIGIvbmV0LzlwL3RyYW5zX2Zk
LmMKaW5kZXggMDA3YmJjYzY4MDEwLi5lM2Y0YTdhNWM4NDUgMTAwNjQ0Ci0tLSBhL25ldC85cC90
cmFuc19mZC5jCisrKyBiL25ldC85cC90cmFuc19mZC5jCkBAIC0xMDkyLDYgKzEwOTIsNyBAQCBz
dGF0aWMgc3RydWN0IHA5X3RyYW5zX21vZHVsZSBwOV90Y3BfdHJhbnMgPSB7CiAJLnNob3dfb3B0
aW9ucyA9IHA5X2ZkX3Nob3dfb3B0aW9ucywKIAkub3duZXIgPSBUSElTX01PRFVMRSwKIH07CitN
T0RVTEVfQUxJQVNfOVAoInRjcCIpOwogCiBzdGF0aWMgc3RydWN0IHA5X3RyYW5zX21vZHVsZSBw
OV91bml4X3RyYW5zID0gewogCS5uYW1lID0gInVuaXgiLApAQCAtMTEwNSw2ICsxMTA2LDcgQEAg
c3RhdGljIHN0cnVjdCBwOV90cmFuc19tb2R1bGUgcDlfdW5peF90cmFucyA9IHsKIAkuc2hvd19v
cHRpb25zID0gcDlfZmRfc2hvd19vcHRpb25zLAogCS5vd25lciA9IFRISVNfTU9EVUxFLAogfTsK
K01PRFVMRV9BTElBU185UCgidW5peCIpOwogCiBzdGF0aWMgc3RydWN0IHA5X3RyYW5zX21vZHVs
ZSBwOV9mZF90cmFucyA9IHsKIAkubmFtZSA9ICJmZCIsCkBAIC0xMTE4LDYgKzExMjAsNyBAQCBz
dGF0aWMgc3RydWN0IHA5X3RyYW5zX21vZHVsZSBwOV9mZF90cmFucyA9IHsKIAkuc2hvd19vcHRp
b25zID0gcDlfZmRfc2hvd19vcHRpb25zLAogCS5vd25lciA9IFRISVNfTU9EVUxFLAogfTsKK01P
RFVMRV9BTElBU185UCgiZmQiKTsKIAogLyoqCiAgKiBwOV9wb2xsX3dvcmtmbiAtIHBvbGwgd29y
a2VyIHRocmVhZApAQCAtMTE1MSw3ICsxMTU0LDcgQEAgc3RhdGljIHZvaWQgcDlfcG9sbF93b3Jr
Zm4oc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCXA5X2RlYnVnKFA5X0RFQlVHX1RSQU5TLCAi
ZmluaXNoXG4iKTsKIH0KIAotaW50IHA5X3RyYW5zX2ZkX2luaXQodm9pZCkKK3N0YXRpYyBpbnQg
X19pbml0IHA5X3RyYW5zX2ZkX2luaXQodm9pZCkKIHsKIAl2OWZzX3JlZ2lzdGVyX3RyYW5zKCZw
OV90Y3BfdHJhbnMpOwogCXY5ZnNfcmVnaXN0ZXJfdHJhbnMoJnA5X3VuaXhfdHJhbnMpOwpAQCAt
MTE2MCwxMCArMTE2MywxNyBAQCBpbnQgcDlfdHJhbnNfZmRfaW5pdCh2b2lkKQogCXJldHVybiAw
OwogfQogCi12b2lkIHA5X3RyYW5zX2ZkX2V4aXQodm9pZCkKK3N0YXRpYyB2b2lkIF9fZXhpdCBw
OV90cmFuc19mZF9leGl0KHZvaWQpCiB7CiAJZmx1c2hfd29yaygmcDlfcG9sbF93b3JrKTsKIAl2
OWZzX3VucmVnaXN0ZXJfdHJhbnMoJnA5X3RjcF90cmFucyk7CiAJdjlmc191bnJlZ2lzdGVyX3Ry
YW5zKCZwOV91bml4X3RyYW5zKTsKIAl2OWZzX3VucmVnaXN0ZXJfdHJhbnMoJnA5X2ZkX3RyYW5z
KTsKIH0KKworbW9kdWxlX2luaXQocDlfdHJhbnNfZmRfaW5pdCk7Cittb2R1bGVfZXhpdChwOV90
cmFuc19mZF9leGl0KTsKKworTU9EVUxFX0FVVEhPUigiRXJpYyBWYW4gSGVuc2JlcmdlbiA8ZXJp
Y3ZoQGdtYWlsLmNvbT4iKTsKK01PRFVMRV9ERVNDUklQVElPTigiRmlsZWRlc2NyaXB0b3IgVHJh
bnNwb3J0IGZvciA5UCIpOworTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwotLSAKMi4zMy4xCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
