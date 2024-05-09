Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 083AF8C0FA3
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 May 2024 14:31:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s52vk-0008UP-Ci;
	Thu, 09 May 2024 12:31:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iusr_601562@vevida.net>) id 1s52vi-0008UH-UO
 for v9fs-developer@lists.sourceforge.net;
 Thu, 09 May 2024 12:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Content-type:MIME-Version:From:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+bz+BoZgcIQsLEKVhSRHmCc8Ne02KnD0xuvj1ooUSXM=; b=Q+X+ZbkIRgGsG1jrYBmPgWYuU0
 fU0nNs37ocA8Uen9EhJH9c6RPjpyhoLPOakXpSrOq66UdPEpxojYpi5j8EAoixxi1JdpAQBknihkZ
 cd4TCsD8fWL+HKxLJOA+OTwxwaxc2JL1JlyWmZB03jHwEoCWLDC+Nfu7+H4+fWKAvSOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Content-type:MIME-Version:From:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+bz+BoZgcIQsLEKVhSRHmCc8Ne02KnD0xuvj1ooUSXM=; b=D
 S3RzsWg0OOYcsg3QrJwIiEXsO1935tPwSWHq9Jj2iQ2jkrzJ9lrytuQdKbrwlwt1MOYNPpaDhq85C
 CXQ66CLM/N17JydF09KAz0QpOH5kIeTQCKkw6Y9/+Zf8AXOmbJsCbhhQa5yLCbtZRwvkILkbg7HLa
 gIekUEq30zN6HwLw=;
Received: from web-smtp3.vevida.net ([77.94.250.191] helo=smtp-20.vevida.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s52vh-00046K-Rl for v9fs-developer@lists.sourceforge.net;
 Thu, 09 May 2024 12:31:22 +0000
Received: from cs-10.vevida.net (cs-10.vevida.net [IPv6:2a00:f60::3:50])
 by smtp-20.vevida.net (Postfix) with ESMTP id 9639610111285
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 May 2024 14:31:14 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp-20.vevida.net 9639610111285
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vevida.com;
 s=20190813; t=1715257874;
 bh=+bz+BoZgcIQsLEKVhSRHmCc8Ne02KnD0xuvj1ooUSXM=;
 h=To:Subject:From:Date:From;
 b=Gf07tVouqevcAoGWqtV+wOzk8f11MCh00BiEs8pHC95LVybwnonQEjGwqRET4MQ7d
 Lqh3+MQMe0CoDi0RO8zjqofnrM+nxGMW/Q3pMAXA1/r+udmLm1Knd5L8KB+Jf+4LVa
 9VSHbkko4nSKdvOT5DONAbPGFX9Fe5JzFjguDJdlM98aaS37kfovdgjpic+OkStij6
 rNSpZSH92y3J6O9hneJrbPwq9ccVlMCUYOa3IchYnT7GNRL/EC4fIFaE8/8n9hZCtP
 rVZaAH0/G2hOQbqxOHeywxA2S6fU3qbEctlcAxWX+8sqrvYoYoi0rzEGV3ycgc4P62
 GQSUegwvdqHlA==
X-Virus-Scanned: amavisd-new at vevida.net
X-Amavis-Alert: BAD HEADER SECTION, MIME error: error: part did not end with
 expected boundary; ; error: unexpected end of parts before epilogue
Received: from smtp-21.vevida.net ([77.94.250.168])
 by cs-10.vevida.net (cs-10.vevida.net [77.94.251.50]) (amavisd-new, port 10022)
 with ESMTP id 4GzZtuSYSz9X for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 May 2024 14:31:08 +0200 (CEST)
Received: from plesk-apache-22.vevida.net (plesk-apache-22.vevida.net
 [77.94.249.181])
 by smtp-21.vevida.net (Postfix) with ESMTP id 6C719122284
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 May 2024 14:21:59 +0200 (CEST)
Received: by plesk-apache-22.vevida.net (Postfix, from userid 10299)
 id 68D36CE9387; Thu,  9 May 2024 14:21:59 +0200 (CEST)
To: v9fs-developer@lists.sourceforge.net
From: =?UTF-8?B?8J+SjkV0aGVuYSAmIEJpbmFuY2Xwn5KO?= <iusr_601562@vevida.net>
MIME-Version: 1.0;
Message-Id: <20240509122159.68D36CE9387@plesk-apache-22.vevida.net>
Date: Thu,  9 May 2024 14:21:59 +0200 (CEST)
X-Spam-Score: 4.1 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ENABLING THE INTERNET BOND We're thrilled to announce an
   exclusive partnership between Binance and Ethena, bringing you a one-of-a-kind
    opportunity! 🎉 Join our special promotion to get your hands on some FREE
    Ethena (ENA) tokens. It's easy and rewarding! 
 
 Content analysis details:   (4.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: join-ethena.pro]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: join-ethena.pro]
  0.1 ACT_NOW_CAPS           BODY: Talks about 'acting now' with capitals
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 T_PDS_PRO_TLD          .pro TLD
                             [URI: join-ethena.pro (pro)]
  0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_IMAGE_RATIO_04    BODY: HTML has a low ratio of text to image
                             area
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 BOGUS_MIME_VERSION     Mime version header is bogus
  2.0 URI_TRY_3LD            "Try it" URI, suspicious hostname
X-Headers-End: 1s52vh-00046K-Rl
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=F0=9F=9A=80_=5BExclusive_Airdrop_Aler?=
 =?utf-8?b?dCDwn5KlXTogQ2xhaW0gWW91ciBGcmVlIEVOQSBUb2tlbnMgTm93ISDwn4yf?=
 =?utf-8?b?IDA5LjA1LjIwMjQgMTU6MjEg4o+w?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
