Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 724BD3B84BD
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Jun 2021 16:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lyase-0007Qv-6k; Wed, 30 Jun 2021 14:07:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cdlvagas89718@classificados27.excelentealternativa.com>)
 id 1lyasd-0007Qo-3a
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Jun 2021 14:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o7Bpry1bGur+zEEedk1L/Q3XW2MW0RvbKMyXtMuL5Ok=; b=PRhCoE5nxMjCoYy4bAujUc5Hwx
 OZQ9hGox8jexRS2qRehk81KQJuFpmRHHLXBAq+A+9lgo5DFdzltefFVRHbyPGNIttUDdueUFisfWB
 vu/UpWDAGcEpNYJn4SSnr2IAJlPUyaZ05ZmaCcfjoBoUpfG9i1U8ROy5kmq0xBOHm8bg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=o7Bpry1bGur+zEEedk1L/Q3XW2MW0RvbKMyXtMuL5Ok=; b=U
 aH/G36HkL8uV0Iy9f3kDpJl9L8RQBgiHP8MYHskhi0hC1db097ldmJ5fOl3jmOlCg4V2Pu1o7R6Xl
 pgAOf8wqplY9VaSFUgNvrA6+x2HVRJU/s9NXhIjRNFHBBed5m1W+jpRnxoECkFipQvd/CjjmZwqYZ
 15IdHQaM13d6fO4I=;
Received: from classificados27.excelentealternativa.com ([5.189.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lyasV-004o1n-TC
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Jun 2021 14:07:55 +0000
Received: by classificados27.excelentealternativa.com (Postfix, from userid 33)
 id 274C8C380D; Wed, 30 Jun 2021 13:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=classificados27.excelentealternativa.com; s=mail; t=1625061058;
 bh=o7Bpry1bGur+zEEedk1L/Q3XW2MW0RvbKMyXtMuL5Ok=;
 h=To:Subject:Date:From:Reply-To:From;
 b=zjQjubN+lmiuGvnpJRVkilZFbtJJMSwpwPYQbfXHrBYJox6WhC2fLUI5gFcwm/tNF
 rWUVy0+fmZLPBKf+ZJAJxFrZcfD8nDoLGwjY1hG1a8GRz5tzCZuO7IsU0prfxLNtYz
 XtqjrmX3Dcvms3MO9JJjdWD5nHty+8FC0CppVgiXy6GHnTC19ldL+msBNFOC9GafHn
 VTqHCWu+RKz15scIK4MgyAxPGMf/QXnS/C6b/MLvSaxUPE6q7Y8F7QgCLZV3/wt0sv
 jO0h4RbiQ+dGo9Bv9LZY+IkDXdhS5D6hDzVxq+tXb1HdMkZyYGPqfUQbfIeK8Mji6Z
 cQTMk9N4K4KQQ==
To: v9fs-developer@lists.sourceforge.net
Date: Wed, 30 Jun 2021 13:50:58 +0000
From: Erika Oliveira <cdlvagas89718@classificados27.excelentealternativa.com>
Message-ID: <b6c4c09f1c7141e62ef420fa106f8e76@5.189.222.181>
X-Priority: 3
X-Mailer: PHPMailer 5.2.4
 (http://code.google.com/a/apache-extras.org/p/phpmailer/)
MIME-Version: 1.0
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lkt.services]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.189.222.181 listed in zen.spamhaus.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: lkt.services]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: lkt.services]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
X-Headers-End: 1lyasV-004o1n-TC
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Curriculo
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
Reply-To: Erika Oliveira
 <cdlvagas89718@classificados27.excelentealternativa.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

c2VndWUsIG1ldcKgQ3VycsOtY3Vsbw0KDQrCoA0KDQpDVVJSSUNVTE8gLmRvY3ggMjggS0INCgoK
bl8xOTMzMDU2NTkyNDI0NTk3ODMyNzkyMjQ3MzEwODkyMjk5ODA2NDMwNzI2NjU1MTczMzI0NTg3
NTE3ODQ2MDE0NTQ5NzM2MDI3MzEzMDkwMTYzNTA0NTQxMzQ1OTM1MTU2MApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
