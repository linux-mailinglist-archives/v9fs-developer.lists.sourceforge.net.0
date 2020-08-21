Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6083824E2E8
	for <lists+v9fs-developer@lfdr.de>; Sat, 22 Aug 2020 00:00:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k9F57-0007fk-Ia; Fri, 21 Aug 2020 22:00:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <infos@aperfo.online>) id 1k9F55-0007fZ-M3
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Aug 2020 22:00:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LVfoNTQ4QOhp9lM/8H3Rn0X7gxIwLgq/cc9lvGx5gzs=; b=YkmDRs3nHB13DhaxJqw8wrMCBr
 gRbKyeSSgAyfNr3ZGzrgHci8sUz3ctl0U40NBcjlACeE7mH+KEehc+ulYKOwsUmjkcI57sFCHKtOv
 cnY1yNd3rcLudwaDd3+6yRABuX8JaOqsoIXyRTGtIIacmAe6h0qL6W2SFwVAyNUWX6Yg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LVfoNTQ4QOhp9lM/8H3Rn0X7gxIwLgq/cc9lvGx5gzs=; b=n
 JUbmoDYNeN2VJPdYCCtMZfjQ4bVZrBFFNHwd0C49o40nsoriQp9X9JFnXeLTbEf46PGz5X3slHghc
 iRCHpalgFxnmRpvGtAmbh1DbNoHPhXB26uf6k6MPOvRZgvMMN3LFwdYbkIXhBWdXhHPiPmMqT0hZc
 lj0+OPEoU/jDk5/0=;
Received: from smtp6-g21.free.fr ([212.27.42.6])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k9F4x-003Trp-2l
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Aug 2020 22:00:15 +0000
Received: from dterur (unknown [37.164.220.240])
 by smtp6-g21.free.fr (Postfix) with ESMTP id 5BCED7802C2
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Aug 2020 23:59:53 +0200 (CEST)
Date: Sat, 22 Aug 2020 00:04:07 +0200
To: v9fs-developer@lists.sourceforge.net
From: virtual terminal <infos@aperfo.online>
Message-ID: <78b7e6a00d93b96fc15a21ca43fc21ef@dterur>
X-Priority: 3
X-Mailer: jourdi
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha1; q=dns/txt; l=14192; s=default;
 t=1598047447; c=relaxed/simple; h=From:To:Subject;
 d=aperfo.online; i=infos@aperfo.online;
 z=From:=20virtual=20terminal=20<infos@aperfo.online>
 |To:=20v9fs-developer@lists.sourceforge.net
 |Subject:=20Payment=20solutions;
 bh=s2flLqm1kftCSVzW8gbJ0Soy3d8=;
 b=bvVieDkOvD3LQYtqCYs7XuVv6n0rw0RSvfDEdhY6/4/6JZMtIrWfFEhjDNPNO5Dzon7KGKVZ3bVJGd+jeVT61dCNGtBbN7fShdPfWleWFdhK7545fs0a+HAdnEQV06/bb+7bxzzoeSo/IUJ5yEm9Q29iJsOkIG/bRdeyofPbBRU=
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aperfo.online]
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: aperfo.online]
 1.9 URIBL_ABUSE_SURBL Contains an URL listed in the ABUSE SURBL blocklist
 [URIs: aperfo.online]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.27.42.6 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.27.42.6 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_IMAGE_RATIO_06    BODY: HTML has a low ratio of text to image area
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100] 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_REMOTE_IMAGE         Message contains an external image
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k9F4x-003Trp-2l
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Payment solutions
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
Reply-To: infos@aperfo.online
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

MULTIPLY
PAYMENT SOLUTIONS
with a virtual terminal
FIND A SUPPLIER
IT&#039;S SIMPLE AND CONVENIENT!	
A virtual terminal is a secure Web-based system which allows you to take payments over the phone without the presence of your customer.	
All you need is an Internet connection and to obtain the customer&#039;s details via the phone, then, simply complete a secure online form and accept the payment.	
You can also print-out or send your customer&#039;s receipt via e-mail so that they can keep a copy.	

No Website
required
 

Safe secure
payments
 

No set-up
costs



Follow this link to stop receiving messages about Virtual terminal.
You have the right of access, rectification, opposition and consent, which you have access on this web page: Privacy policy.
You are receiving this message on your email address because you are in our list of managers and professionals.
ASCPM - 5 Avenue du General de Gaulle - SAINT MANDE - France - R.C.S. 814 073 060 CRETEIL


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
