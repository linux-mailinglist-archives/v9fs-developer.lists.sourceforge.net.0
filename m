Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89347444914
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 20:38:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miM5u-00005j-02; Wed, 03 Nov 2021 19:38:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1miM5s-00005I-Au
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bPtZ5urCGG1Bf0l9RxaKyoUoElkp5/py7sel8jQo8mI=; b=Jm5drA/zSwFj0K9UplpiMiDy00
 yWTx/76ppOtL2eIBZwwqkl0dFdzTWOCC9+eqpQeGt0NoRYeH3763HRi1z/m8Wi/wV6HFD70qzeMjh
 TsDVMfrMPOv0OGTnREo+gVN/ssBW/l3Sz+SliHRnx3Jje+9GWCfUjlUKCm1+PuOjbLdM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bPtZ5urCGG1Bf0l9RxaKyoUoElkp5/py7sel8jQo8mI=; b=PSvwxyeJFhl6xtuDzZRxmunZ2U
 Ic41RnBRGYJ50noIIg4nZgnfyvSmIEuMx/NLs6p8kxG98V0bvhMwKOmCBIkCZ8+sB337ocXRs/2nX
 mXlq5MXQpQl2RS/naGnC8C6zXwBH19FyUOJGLPbx6uKJ5PDEB3so/dUUAfS7Y2TC314Q=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miM5k-000076-BA
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:44 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1635968309;
 bh=R/4AG9vLH5gheMs6GHXMBsH1IwvhwsPI0SJ8kMELE9U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sA+3LazFHbb2drW5DJ9iQnl4eWVgM0XsJF3P5woPPasdkd9cZYA1LHi8WQJ7L0Zog
 S3DVJ2BXAH4hL3NYr1M10MgAcdnkQs11cuq6iXAOUxwjySWJbS7M+Xi+JLALEPwwME
 z6xfjt9R4MotGtI/jR1aI4B4VWxSz4nfyBG/0Q1I=
To: v9fs-developer@lists.sourceforge.net,
	netdev@vger.kernel.org
Date: Wed,  3 Nov 2021 20:38:20 +0100
Message-Id: <20211103193823.111007-2-linux@weissschuh.net>
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
 
 Content preview:  Automatically load transport modules based on the trans= parameter
    passed to mount. This removes the requirement for the user to know which
   module to use. Signed-off-by: Thomas Weißschuh <linux@weissschuh.net> ---
    include/net/9p/transport.h | 8 +++++++- net/9p/mod.c | 30 ++++++++++++++++++++++++------
    net/9p/trans_rdma.c | 1 + net/9p/trans_virtio.c | 1 [...] 
 
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
X-Headers-End: 1miM5k-000076-BA
Subject: [V9fs-developer] [PATCH v2 1/4] net/9p: autoload transport modules
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

QXV0b21hdGljYWxseSBsb2FkIHRyYW5zcG9ydCBtb2R1bGVzIGJhc2VkIG9uIHRoZSB0cmFucz0g
cGFyYW1ldGVyCnBhc3NlZCB0byBtb3VudC4KVGhpcyByZW1vdmVzIHRoZSByZXF1aXJlbWVudCBm
b3IgdGhlIHVzZXIgdG8ga25vdyB3aGljaCBtb2R1bGUgdG8gdXNlLgoKU2lnbmVkLW9mZi1ieTog
VGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0PgotLS0KIGluY2x1ZGUvbmV0
LzlwL3RyYW5zcG9ydC5oIHwgIDggKysrKysrKy0KIG5ldC85cC9tb2QuYyAgICAgICAgICAgICAg
IHwgMzAgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCiBuZXQvOXAvdHJhbnNfcmRtYS5j
ICAgICAgICB8ICAxICsKIG5ldC85cC90cmFuc192aXJ0aW8uYyAgICAgIHwgIDEgKwogbmV0Lzlw
L3RyYW5zX3hlbi5jICAgICAgICAgfCAgMSArCiA1IGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQvOXAvdHJhbnNw
b3J0LmggYi9pbmNsdWRlL25ldC85cC90cmFuc3BvcnQuaAppbmRleCAzZWI0MjYxYjI5NTguLmI5
YTAwOTUzNGY5OSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQvOXAvdHJhbnNwb3J0LmgKKysrIGIv
aW5jbHVkZS9uZXQvOXAvdHJhbnNwb3J0LmgKQEAgLTExLDYgKzExLDggQEAKICNpZm5kZWYgTkVU
XzlQX1RSQU5TUE9SVF9ICiAjZGVmaW5lIE5FVF85UF9UUkFOU1BPUlRfSAogCisjaW5jbHVkZSA8
bGludXgvbW9kdWxlLmg+CisKICNkZWZpbmUgUDlfREVGX01JTl9SRVNWUE9SVAkoNjY1VSkKICNk
ZWZpbmUgUDlfREVGX01BWF9SRVNWUE9SVAkoMTAyM1UpCiAKQEAgLTUyLDcgKzU0LDExIEBAIHN0
cnVjdCBwOV90cmFuc19tb2R1bGUgewogCiB2b2lkIHY5ZnNfcmVnaXN0ZXJfdHJhbnMoc3RydWN0
IHA5X3RyYW5zX21vZHVsZSAqbSk7CiB2b2lkIHY5ZnNfdW5yZWdpc3Rlcl90cmFucyhzdHJ1Y3Qg
cDlfdHJhbnNfbW9kdWxlICptKTsKLXN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnY5ZnNfZ2V0X3Ry
YW5zX2J5X25hbWUoY2hhciAqcyk7CitzdHJ1Y3QgcDlfdHJhbnNfbW9kdWxlICp2OWZzX2dldF90
cmFuc19ieV9uYW1lKGNvbnN0IGNoYXIgKnMpOwogc3RydWN0IHA5X3RyYW5zX21vZHVsZSAqdjlm
c19nZXRfZGVmYXVsdF90cmFucyh2b2lkKTsKIHZvaWQgdjlmc19wdXRfdHJhbnMoc3RydWN0IHA5
X3RyYW5zX21vZHVsZSAqbSk7CisKKyNkZWZpbmUgTU9EVUxFX0FMSUFTXzlQKHRyYW5zcG9ydCkg
XAorCU1PRFVMRV9BTElBUygiOXAtIiB0cmFuc3BvcnQpCisKICNlbmRpZiAvKiBORVRfOVBfVFJB
TlNQT1JUX0ggKi8KZGlmZiAtLWdpdCBhL25ldC85cC9tb2QuYyBiL25ldC85cC9tb2QuYwppbmRl
eCA1MTI2NTY2ODUwYmQuLmM5NTQxNmMxZDFhMiAxMDA2NDQKLS0tIGEvbmV0LzlwL21vZC5jCisr
KyBiL25ldC85cC9tb2QuYwpAQCAtMTIsNiArMTIsNyBAQAogI2RlZmluZSBwcl9mbXQoZm10KSBL
QlVJTERfTU9ETkFNRSAiOiAiIGZtdAogCiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CisjaW5j
bHVkZSA8bGludXgva21vZC5oPgogI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+CiAjaW5jbHVkZSA8
bGludXgvc2NoZWQuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVwYXJhbS5oPgpAQCAtODcsMTIg
Kzg4LDcgQEAgdm9pZCB2OWZzX3VucmVnaXN0ZXJfdHJhbnMoc3RydWN0IHA5X3RyYW5zX21vZHVs
ZSAqbSkKIH0KIEVYUE9SVF9TWU1CT0wodjlmc191bnJlZ2lzdGVyX3RyYW5zKTsKIAotLyoqCi0g
KiB2OWZzX2dldF90cmFuc19ieV9uYW1lIC0gZ2V0IHRyYW5zcG9ydCB3aXRoIHRoZSBtYXRjaGlu
ZyBuYW1lCi0gKiBAczogc3RyaW5nIGlkZW50aWZ5aW5nIHRyYW5zcG9ydAotICoKLSAqLwotc3Ry
dWN0IHA5X3RyYW5zX21vZHVsZSAqdjlmc19nZXRfdHJhbnNfYnlfbmFtZShjaGFyICpzKQorc3Rh
dGljIHN0cnVjdCBwOV90cmFuc19tb2R1bGUgKl9wOV9nZXRfdHJhbnNfYnlfbmFtZShjb25zdCBj
aGFyICpzKQogewogCXN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnQsICpmb3VuZCA9IE5VTEw7CiAK
QEAgLTEwNiw2ICsxMDIsMjggQEAgc3RydWN0IHA5X3RyYW5zX21vZHVsZSAqdjlmc19nZXRfdHJh
bnNfYnlfbmFtZShjaGFyICpzKQogCQl9CiAKIAlzcGluX3VubG9jaygmdjlmc190cmFuc19sb2Nr
KTsKKworCXJldHVybiBmb3VuZDsKK30KKworLyoqCisgKiB2OWZzX2dldF90cmFuc19ieV9uYW1l
IC0gZ2V0IHRyYW5zcG9ydCB3aXRoIHRoZSBtYXRjaGluZyBuYW1lCisgKiBAczogc3RyaW5nIGlk
ZW50aWZ5aW5nIHRyYW5zcG9ydAorICoKKyAqLworc3RydWN0IHA5X3RyYW5zX21vZHVsZSAqdjlm
c19nZXRfdHJhbnNfYnlfbmFtZShjb25zdCBjaGFyICpzKQoreworCXN0cnVjdCBwOV90cmFuc19t
b2R1bGUgKmZvdW5kID0gTlVMTDsKKworCWZvdW5kID0gX3A5X2dldF90cmFuc19ieV9uYW1lKHMp
OworCisjaWZkZWYgQ09ORklHX01PRFVMRVMKKwlpZiAoIWZvdW5kKSB7CisJCXJlcXVlc3RfbW9k
dWxlKCI5cC0lcyIsIHMpOworCQlmb3VuZCA9IF9wOV9nZXRfdHJhbnNfYnlfbmFtZShzKTsKKwl9
CisjZW5kaWYKKwogCXJldHVybiBmb3VuZDsKIH0KIEVYUE9SVF9TWU1CT0wodjlmc19nZXRfdHJh
bnNfYnlfbmFtZSk7CmRpZmYgLS1naXQgYS9uZXQvOXAvdHJhbnNfcmRtYS5jIGIvbmV0LzlwL3Ry
YW5zX3JkbWEuYwppbmRleCBhZjBhOGE2Y2QzZmQuLjQ4MGZkMjc3NjBkNyAxMDA2NDQKLS0tIGEv
bmV0LzlwL3RyYW5zX3JkbWEuYworKysgYi9uZXQvOXAvdHJhbnNfcmRtYS5jCkBAIC03NjcsNiAr
NzY3LDcgQEAgc3RhdGljIHZvaWQgX19leGl0IHA5X3RyYW5zX3JkbWFfZXhpdCh2b2lkKQogCiBt
b2R1bGVfaW5pdChwOV90cmFuc19yZG1hX2luaXQpOwogbW9kdWxlX2V4aXQocDlfdHJhbnNfcmRt
YV9leGl0KTsKK01PRFVMRV9BTElBU185UCgicmRtYSIpOwogCiBNT0RVTEVfQVVUSE9SKCJUb20g
VHVja2VyIDx0b21Ab3BlbmdyaWRjb21wdXRpbmcuY29tPiIpOwogTU9EVUxFX0RFU0NSSVBUSU9O
KCJSRE1BIFRyYW5zcG9ydCBmb3IgOVAiKTsKZGlmZiAtLWdpdCBhL25ldC85cC90cmFuc192aXJ0
aW8uYyBiL25ldC85cC90cmFuc192aXJ0aW8uYwppbmRleCA0OTBhNGM5MDAzMzkuLmJkNWE4OWM0
OTYwZCAxMDA2NDQKLS0tIGEvbmV0LzlwL3RyYW5zX3ZpcnRpby5jCisrKyBiL25ldC85cC90cmFu
c192aXJ0aW8uYwpAQCAtNzk0LDYgKzc5NCw3IEBAIHN0YXRpYyB2b2lkIF9fZXhpdCBwOV92aXJ0
aW9fY2xlYW51cCh2b2lkKQogCiBtb2R1bGVfaW5pdChwOV92aXJ0aW9faW5pdCk7CiBtb2R1bGVf
ZXhpdChwOV92aXJ0aW9fY2xlYW51cCk7CitNT0RVTEVfQUxJQVNfOVAoInZpcnRpbyIpOwogCiBN
T0RVTEVfREVWSUNFX1RBQkxFKHZpcnRpbywgaWRfdGFibGUpOwogTU9EVUxFX0FVVEhPUigiRXJp
YyBWYW4gSGVuc2JlcmdlbiA8ZXJpY3ZoQGdtYWlsLmNvbT4iKTsKZGlmZiAtLWdpdCBhL25ldC85
cC90cmFuc194ZW4uYyBiL25ldC85cC90cmFuc194ZW4uYwppbmRleCAzZWMxYTUxYTY5NDQuLmUy
NjRkY2VlMDE5YSAxMDA2NDQKLS0tIGEvbmV0LzlwL3RyYW5zX3hlbi5jCisrKyBiL25ldC85cC90
cmFuc194ZW4uYwpAQCAtNTUyLDYgKzU1Miw3IEBAIHN0YXRpYyBpbnQgcDlfdHJhbnNfeGVuX2lu
aXQodm9pZCkKIAlyZXR1cm4gcmM7CiB9CiBtb2R1bGVfaW5pdChwOV90cmFuc194ZW5faW5pdCk7
CitNT0RVTEVfQUxJQVNfOVAoInhlbiIpOwogCiBzdGF0aWMgdm9pZCBwOV90cmFuc194ZW5fZXhp
dCh2b2lkKQogewotLSAKMi4zMy4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
