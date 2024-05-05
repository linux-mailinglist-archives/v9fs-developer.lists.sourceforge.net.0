Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 348318BC346
	for <lists+v9fs-developer@lfdr.de>; Sun,  5 May 2024 21:40:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s3hiH-0006UP-Pr;
	Sun, 05 May 2024 19:39:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@junengwangluo.com>) id 1s3hiF-0006UC-Uo
 for v9fs-developer@lists.sourceforge.net;
 Sun, 05 May 2024 19:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aSgeu4BfUV5rGtR7jmeZ1M41kH7Jy8Gmk/TAioKzRxw=; b=Zn9p2Zs3hgoIHW+/4yVrFdy+/F
 Owlx9HaJUUzbTAgu9HC0V6eZo2UadVFtFc3bz82jcFqhUNokWE+YzhH+z0RT3JPY6bsMxkKHxdFdd
 KvtGh149Ae+ByGjSa3XIEwS+K0DPajdgWXgKBYz0e4lc1D7hakbcO5/LYnsIXQ0ZVMt8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aSgeu4BfUV5rGtR7jmeZ1M41kH7Jy8Gmk/TAioKzRxw=; b=M
 nMI7MwNLdBB3g84SN4FdHJjwOk42l4SXPAxqtdAJZdelAc6ffNTkkIyFCM1b9FmTk2OAzT2vf2Q53
 i5ivlDq/yTBIBBmkG/yPx5kqyFNResVKR96S3mfO5+fxT4L8zi5nCXNFGrfbT+dOOB7CzsDJOwtbp
 TZICG+sdJWQ33YSM=;
Received: from [104.143.35.59] (helo=mail0.junengwangluo.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s3hiE-00058W-Ks for v9fs-developer@lists.sourceforge.net;
 Sun, 05 May 2024 19:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default;
 d=junengwangluo.com; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@junengwangluo.com;
 bh=aSgeu4BfUV5rGtR7jmeZ1M41kH7Jy8Gmk/TAioKzRxw=;
 b=LjQV0DM4R6kSlyZuadW3RXo7uD/Zr7viNYwjKwOTo/WBkg3QyJEqGu3xn/qIpz/q5PwwDXDYRdzD
 8sKZP7Fa/idtKRYtnKuSD0ntO8So9pPXkEOh9jjMGufY3oh+kjJbV6ccUK46xEr+m3EXD7QbCOl+
 hhVBJyVn8QMaaPWBttA=
Message-ID: <26a9a1eb9cab278ae3662e9e2bed589d@junengwangluo.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Date: Mon, 06 May 2024 03:19:30 +0800
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  このたびは、マスターカードをご利用いただきありがとうございます。
    カード年会費のお支払い方法に問題があります。 カードの利用を一時停
    止� [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: mqdzsw.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: mqdzsw.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1s3hiE-00058W-Ks
Subject: [V9fs-developer] =?utf-8?b?44CQ44Oe44K544K/44O844Kr44O844OJIA==?=
	=?utf-8?b?44CR44Kr44O844OJ5bm05Lya6LK744Gu44GK5pSv5omV44GE5pa55rOV?=
	=?utf-8?b?44Gr5ZWP6aGM44GM44GC44KK44G+44GZ?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: MasterCard via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: MasterCard <no-reply@junengwangluo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

44GT44Gu44Gf44Gz44Gv44CB44Oe44K544K/44O844Kr44O844OJ44KS44GU5Yip55So44GE44Gf
44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrjgqvjg7zjg4nlubTkvJro
srvjga7jgYrmlK/miZXjgYTmlrnms5XjgavllY/poYzjgYzjgYLjgorjgb7jgZnjgIINCuOCq+OD
vOODieOBruWIqeeUqOOCkuS4gOaZguWBnCDmraLjgZfjgb7jgZfjgZ/jgIINCuW5tOS8muiyu+OB
ruaUr+aJleOBhOaWueazleOCkuabtOaWsOOBl+OBpuOBj+OBoOOBleOBhOOAgg0KDQrilrzjgZTl
iKnnlKjmmI7ntLDjga7jgZTnorroqo3jga/jgZPjgaHjgokNCg0KaHR0cHM6Ly9tcWR6c3cuY29t
DQoNCuOBiuWuouanmOOBq+OBr+OBlOi/t+aDkeOAgeOBlOW/g+mFjeOCkuOBiuaOm+OBkeOBl+OA
geiqoOOBq+eUs+OBl+ios+OBlOOBluOBhOOBvuOBm+OCk+OAgg0K5L2V5Y2S44GU55CG6Kej44GE
44Gf44Gg44GN44Gf44GP44GK6aGY44GE55Sz44GX44GC44GS44G+44GZ44CCDQoNCuKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgA0K4pag55m66KGM6ICF4pagDQrj
g57jgrnjgr/jg7zjgqvjg7zjg4kg44K444Oj44OR44Oz5qCq5byP5Lya56S+DQrmnbHkuqzpg73m
uIvosLfljLrmoZzkuJjnlLrvvJLvvJbnlarvvJHlj7fjgrvjg6vjg6rjgqLjg7Pjgr/jg6/jg7zv
vJHvvJbpmo4NCuKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgA0K
QCAxOTk0LTIwMjQgTWFzdGVyY2FyZC4NCueEoeaWrei7oui8ieOBiuOCiOOBs+WGjemFjeW4g+OC
kuemgeOBmOOBvuOBmeOAggpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
