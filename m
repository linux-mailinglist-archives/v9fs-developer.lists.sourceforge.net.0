Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A5A43099B
	for <lists+v9fs-developer@lfdr.de>; Sun, 17 Oct 2021 16:06:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mc6nX-0003kT-3O; Sun, 17 Oct 2021 14:05:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <linux@weissschuh.net>) id 1mc6nV-0003kM-GN
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Oct 2021 14:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jLGqfyNZR+Unxjmox4aT0xBAoWyB8kzRfGRYSoqCAF8=; b=PiR6HeN9eoX3GjF+gQguUgWLUx
 FNPv84+KloRDSghs6J/ccNAL5bMh0WgT/GYczzrBbI6ZUCqQw3e8BGXTJg41T7at3dBEF10D2bokh
 B/BT41KdlFkUMSCwBJJPJH0cDD48FacaShVLZ9IOdpj2njwTU6FHZ6FMoGCmUs+zbUP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jLGqfyNZR+Unxjmox4aT0xBAoWyB8kzRfGRYSoqCAF8=; b=a
 PhSJsV7sBRO8j2tLcz1L+QRiRw4YU69nU+BtaCahbcYFbGJaJ6A9zj2xO7SaLQq/OZHpUs8kRLIXo
 7EUotVX4fXdXgNSp4RKJnk6fILFTuHOldQNoUaAkYdVD/RHJhVuHWTAZxu8bAN2Wo+tblMNhARQD7
 g5fySsLD49DGrA6M=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mc6nT-002hhc-Pk
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Oct 2021 14:05:57 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1634478378;
 bh=wR87lV2AvLHU2BiA+MBy+H4caEohoJSe1P0T82Xg4Dg=;
 h=From:To:Cc:Subject:Date:From;
 b=lNKuPHRHKGNVTavzu/k74VYow1C1bT2cY2gEkAt0HZv3W6RPzPdnuK8ws1GDpB86Q
 qIn9qku6kTVoe8lEhKpMz6eCnSnSeLksV+uDEoeYltu0v9xl2uloK4ggqukd930OH+
 tzdOH/klKNJ9yF1Talc+bBsvpxc7ukZmqw+Ui6HQ=
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, netdev@vger.kernel.org
Date: Sun, 17 Oct 2021 15:46:11 +0200
Message-Id: <20211017134611.4330-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Automatically load transport modules based on the trans= parameter
    passed to mount. The removes the requirement for the user to know which module
    to use. Signed-off-by: Thomas Weißschuh <linux@weissschuh.net> --- include/net/9p/transport.h
    | 6 ++++++ net/9p/mod.c | 30 ++++++++++++++++++++++++------ net/9p/trans_rdma.c
    | 1 + net/9p/trans_virtio.c | 1 + [...] 
 
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mc6nT-002hhc-Pk
Subject: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
Cc: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

QXV0b21hdGljYWxseSBsb2FkIHRyYW5zcG9ydCBtb2R1bGVzIGJhc2VkIG9uIHRoZSB0cmFucz0g
cGFyYW1ldGVyCnBhc3NlZCB0byBtb3VudC4KVGhlIHJlbW92ZXMgdGhlIHJlcXVpcmVtZW50IGZv
ciB0aGUgdXNlciB0byBrbm93IHdoaWNoIG1vZHVsZSB0byB1c2UuCgpTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgV2Vpw59zY2h1aCA8bGludXhAd2Vpc3NzY2h1aC5uZXQ+Ci0tLQogaW5jbHVkZS9uZXQv
OXAvdHJhbnNwb3J0LmggfCAgNiArKysrKysKIG5ldC85cC9tb2QuYyAgICAgICAgICAgICAgIHwg
MzAgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCiBuZXQvOXAvdHJhbnNfcmRtYS5jICAg
ICAgICB8ICAxICsKIG5ldC85cC90cmFuc192aXJ0aW8uYyAgICAgIHwgIDEgKwogbmV0LzlwL3Ry
YW5zX3hlbi5jICAgICAgICAgfCAgMSArCiA1IGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQvOXAvdHJhbnNwb3J0
LmggYi9pbmNsdWRlL25ldC85cC90cmFuc3BvcnQuaAppbmRleCAzZWI0MjYxYjI5NTguLjU4MTU1
NWQ4OGNiYSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQvOXAvdHJhbnNwb3J0LmgKKysrIGIvaW5j
bHVkZS9uZXQvOXAvdHJhbnNwb3J0LmgKQEAgLTExLDYgKzExLDggQEAKICNpZm5kZWYgTkVUXzlQ
X1RSQU5TUE9SVF9ICiAjZGVmaW5lIE5FVF85UF9UUkFOU1BPUlRfSAogCisjaW5jbHVkZSA8bGlu
dXgvbW9kdWxlLmg+CisKICNkZWZpbmUgUDlfREVGX01JTl9SRVNWUE9SVAkoNjY1VSkKICNkZWZp
bmUgUDlfREVGX01BWF9SRVNWUE9SVAkoMTAyM1UpCiAKQEAgLTU1LDQgKzU3LDggQEAgdm9pZCB2
OWZzX3VucmVnaXN0ZXJfdHJhbnMoc3RydWN0IHA5X3RyYW5zX21vZHVsZSAqbSk7CiBzdHJ1Y3Qg
cDlfdHJhbnNfbW9kdWxlICp2OWZzX2dldF90cmFuc19ieV9uYW1lKGNoYXIgKnMpOwogc3RydWN0
IHA5X3RyYW5zX21vZHVsZSAqdjlmc19nZXRfZGVmYXVsdF90cmFucyh2b2lkKTsKIHZvaWQgdjlm
c19wdXRfdHJhbnMoc3RydWN0IHA5X3RyYW5zX21vZHVsZSAqbSk7CisKKyNkZWZpbmUgTU9EVUxF
X0FMSUFTXzlQKHRyYW5zcG9ydCkgXAorCU1PRFVMRV9BTElBUygiOXAtIiB0cmFuc3BvcnQpCisK
ICNlbmRpZiAvKiBORVRfOVBfVFJBTlNQT1JUX0ggKi8KZGlmZiAtLWdpdCBhL25ldC85cC9tb2Qu
YyBiL25ldC85cC9tb2QuYwppbmRleCA1MTI2NTY2ODUwYmQuLmFhMzhiOGIwZTBmNiAxMDA2NDQK
LS0tIGEvbmV0LzlwL21vZC5jCisrKyBiL25ldC85cC9tb2QuYwpAQCAtMTIsNiArMTIsNyBAQAog
I2RlZmluZSBwcl9mbXQoZm10KSBLQlVJTERfTU9ETkFNRSAiOiAiIGZtdAogCiAjaW5jbHVkZSA8
bGludXgvbW9kdWxlLmg+CisjaW5jbHVkZSA8bGludXgva21vZC5oPgogI2luY2x1ZGUgPGxpbnV4
L2Vycm5vLmg+CiAjaW5jbHVkZSA8bGludXgvc2NoZWQuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1
bGVwYXJhbS5oPgpAQCAtODcsMTIgKzg4LDcgQEAgdm9pZCB2OWZzX3VucmVnaXN0ZXJfdHJhbnMo
c3RydWN0IHA5X3RyYW5zX21vZHVsZSAqbSkKIH0KIEVYUE9SVF9TWU1CT0wodjlmc191bnJlZ2lz
dGVyX3RyYW5zKTsKIAotLyoqCi0gKiB2OWZzX2dldF90cmFuc19ieV9uYW1lIC0gZ2V0IHRyYW5z
cG9ydCB3aXRoIHRoZSBtYXRjaGluZyBuYW1lCi0gKiBAczogc3RyaW5nIGlkZW50aWZ5aW5nIHRy
YW5zcG9ydAotICoKLSAqLwotc3RydWN0IHA5X3RyYW5zX21vZHVsZSAqdjlmc19nZXRfdHJhbnNf
YnlfbmFtZShjaGFyICpzKQorc3RhdGljIHN0cnVjdCBwOV90cmFuc19tb2R1bGUgKl9wOV9nZXRf
dHJhbnNfYnlfbmFtZShjaGFyICpzKQogewogCXN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnQsICpm
b3VuZCA9IE5VTEw7CiAKQEAgLTEwNiw2ICsxMDIsMjggQEAgc3RydWN0IHA5X3RyYW5zX21vZHVs
ZSAqdjlmc19nZXRfdHJhbnNfYnlfbmFtZShjaGFyICpzKQogCQl9CiAKIAlzcGluX3VubG9jaygm
djlmc190cmFuc19sb2NrKTsKKworCXJldHVybiBmb3VuZDsKK30KKworLyoqCisgKiB2OWZzX2dl
dF90cmFuc19ieV9uYW1lIC0gZ2V0IHRyYW5zcG9ydCB3aXRoIHRoZSBtYXRjaGluZyBuYW1lCisg
KiBAczogc3RyaW5nIGlkZW50aWZ5aW5nIHRyYW5zcG9ydAorICoKKyAqLworc3RydWN0IHA5X3Ry
YW5zX21vZHVsZSAqdjlmc19nZXRfdHJhbnNfYnlfbmFtZShjaGFyICpzKQoreworCXN0cnVjdCBw
OV90cmFuc19tb2R1bGUgKmZvdW5kID0gTlVMTDsKKworCWZvdW5kID0gX3A5X2dldF90cmFuc19i
eV9uYW1lKHMpOworCisjaWZkZWYgQ09ORklHX01PRFVMRVMKKwlpZiAoIWZvdW5kKSB7CisJCXJl
cXVlc3RfbW9kdWxlKCI5cC0lcyIsIHMpOworCQlmb3VuZCA9IF9wOV9nZXRfdHJhbnNfYnlfbmFt
ZShzKTsKKwl9CisjZW5kaWYKKwogCXJldHVybiBmb3VuZDsKIH0KIEVYUE9SVF9TWU1CT0wodjlm
c19nZXRfdHJhbnNfYnlfbmFtZSk7CmRpZmYgLS1naXQgYS9uZXQvOXAvdHJhbnNfcmRtYS5jIGIv
bmV0LzlwL3RyYW5zX3JkbWEuYwppbmRleCBhZjBhOGE2Y2QzZmQuLjQ4MGZkMjc3NjBkNyAxMDA2
NDQKLS0tIGEvbmV0LzlwL3RyYW5zX3JkbWEuYworKysgYi9uZXQvOXAvdHJhbnNfcmRtYS5jCkBA
IC03NjcsNiArNzY3LDcgQEAgc3RhdGljIHZvaWQgX19leGl0IHA5X3RyYW5zX3JkbWFfZXhpdCh2
b2lkKQogCiBtb2R1bGVfaW5pdChwOV90cmFuc19yZG1hX2luaXQpOwogbW9kdWxlX2V4aXQocDlf
dHJhbnNfcmRtYV9leGl0KTsKK01PRFVMRV9BTElBU185UCgicmRtYSIpOwogCiBNT0RVTEVfQVVU
SE9SKCJUb20gVHVja2VyIDx0b21Ab3BlbmdyaWRjb21wdXRpbmcuY29tPiIpOwogTU9EVUxFX0RF
U0NSSVBUSU9OKCJSRE1BIFRyYW5zcG9ydCBmb3IgOVAiKTsKZGlmZiAtLWdpdCBhL25ldC85cC90
cmFuc192aXJ0aW8uYyBiL25ldC85cC90cmFuc192aXJ0aW8uYwppbmRleCA0OTBhNGM5MDAzMzku
LmJkNWE4OWM0OTYwZCAxMDA2NDQKLS0tIGEvbmV0LzlwL3RyYW5zX3ZpcnRpby5jCisrKyBiL25l
dC85cC90cmFuc192aXJ0aW8uYwpAQCAtNzk0LDYgKzc5NCw3IEBAIHN0YXRpYyB2b2lkIF9fZXhp
dCBwOV92aXJ0aW9fY2xlYW51cCh2b2lkKQogCiBtb2R1bGVfaW5pdChwOV92aXJ0aW9faW5pdCk7
CiBtb2R1bGVfZXhpdChwOV92aXJ0aW9fY2xlYW51cCk7CitNT0RVTEVfQUxJQVNfOVAoInZpcnRp
byIpOwogCiBNT0RVTEVfREVWSUNFX1RBQkxFKHZpcnRpbywgaWRfdGFibGUpOwogTU9EVUxFX0FV
VEhPUigiRXJpYyBWYW4gSGVuc2JlcmdlbiA8ZXJpY3ZoQGdtYWlsLmNvbT4iKTsKZGlmZiAtLWdp
dCBhL25ldC85cC90cmFuc194ZW4uYyBiL25ldC85cC90cmFuc194ZW4uYwppbmRleCAzZWMxYTUx
YTY5NDQuLmUyNjRkY2VlMDE5YSAxMDA2NDQKLS0tIGEvbmV0LzlwL3RyYW5zX3hlbi5jCisrKyBi
L25ldC85cC90cmFuc194ZW4uYwpAQCAtNTUyLDYgKzU1Miw3IEBAIHN0YXRpYyBpbnQgcDlfdHJh
bnNfeGVuX2luaXQodm9pZCkKIAlyZXR1cm4gcmM7CiB9CiBtb2R1bGVfaW5pdChwOV90cmFuc194
ZW5faW5pdCk7CitNT0RVTEVfQUxJQVNfOVAoInhlbiIpOwogCiBzdGF0aWMgdm9pZCBwOV90cmFu
c194ZW5fZXhpdCh2b2lkKQogewoKYmFzZS1jb21taXQ6IGZhYzNjYjgyYTU0YTRiN2M0OWM5MzJm
OTZlZjE5NmNmNTc3NDM0NGMKLS0gCjIuMzMuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
