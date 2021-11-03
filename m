Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D067444915
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 20:38:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miM5v-0003ce-83; Wed, 03 Nov 2021 19:38:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1miM5t-0003cQ-GE
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9dYWpDCmuP0l8gXeQitZCO/LQl6uVTBDmuO/c8fV99k=; b=T3HzGp1CZ99f8fN1fJC64oa/PC
 QFd7ft27+mOcViSa/0U9Q5ufLMHhuLxBdtNzyYlV9cWWyifaZxrmxKHPU7WKn5ZvmHNFqSBfdYPcT
 CRmR/Kou5OQYmV8UzPY5pozBARzoM5gnq3vYrM7BWxoqifBdAnqrzINvYowWyQoDG6CA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9dYWpDCmuP0l8gXeQitZCO/LQl6uVTBDmuO/c8fV99k=; b=mOr6IFHOXoL4zq4jzDF8s//hdL
 khA5UV/e9ehaaPuhBfEoYIjR1coHWvPShdczHXF0i+irv/uDGF0zTckMvrVeSsmaah6lOVo60jxN4
 I9pzycj0qO3NZ8YxNJNGEyDfj+50zXmUX1XE9aOh8g4DYN8CyU+Jdt3VecVrC/aBkco8=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miM5k-00HYtZ-I0
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:44 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1635968309;
 bh=6UveaCiY5lEvYXN6JGXdADIUn/LKhv5DoYE3zqBHiK8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uYaijVwttTj8d/enqJEuVcpwLPkGn4c7KAjRgvaCBsq3TsR9/xshZs5hHnz5dFqBY
 uGuMdIkBS81WYeQOtEIEZpu7s017BA8j10GkvIXgCtdnvMOsLWEV1PEJGPhD1a4qEF
 4Phu0XsrPvHDP0MOs8NBXGjQdvgg4yXSSwtVwYfI=
To: v9fs-developer@lists.sourceforge.net,
	netdev@vger.kernel.org
Date: Wed,  3 Nov 2021 20:38:22 +0100
Message-Id: <20211103193823.111007-4-linux@weissschuh.net>
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
 
 Content preview:  Signed-off-by: Thomas Weißschuh <linux@weissschuh.net> ---
    net/9p/trans_xen.c | 1 + 1 file changed, 1 insertion(+) diff --git a/net/9p/trans_xen.c
    b/net/9p/trans_xen.c index e264dcee019a..9c4c565f92e4 100644 --- a/net/9p/trans_xen.c
    +++ b/net/9p/trans_xen.c @@ -561,6 +561,7 @@ static void p9_trans_xen_exit(void)
    } [...] 
 
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
X-Headers-End: 1miM5k-00HYtZ-I0
Subject: [V9fs-developer] [PATCH v2 3/4] 9p/xen: autoload when xenbus
 service is available
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

U2lnbmVkLW9mZi1ieTogVGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0Pgot
LS0KIG5ldC85cC90cmFuc194ZW4uYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCgpkaWZmIC0tZ2l0IGEvbmV0LzlwL3RyYW5zX3hlbi5jIGIvbmV0LzlwL3RyYW5zX3hlbi5j
CmluZGV4IGUyNjRkY2VlMDE5YS4uOWM0YzU2NWY5MmU0IDEwMDY0NAotLS0gYS9uZXQvOXAvdHJh
bnNfeGVuLmMKKysrIGIvbmV0LzlwL3RyYW5zX3hlbi5jCkBAIC01NjEsNiArNTYxLDcgQEAgc3Rh
dGljIHZvaWQgcDlfdHJhbnNfeGVuX2V4aXQodm9pZCkKIH0KIG1vZHVsZV9leGl0KHA5X3RyYW5z
X3hlbl9leGl0KTsKIAorTU9EVUxFX0FMSUFTKCJ4ZW46OXBmcyIpOwogTU9EVUxFX0FVVEhPUigi
U3RlZmFubyBTdGFiZWxsaW5pIDxzdGVmYW5vQGFwb3JldG8uY29tPiIpOwogTU9EVUxFX0RFU0NS
SVBUSU9OKCJYZW4gVHJhbnNwb3J0IGZvciA5UCIpOwogTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwot
LSAKMi4zMy4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
