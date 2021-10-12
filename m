Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F54042B35A
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Oct 2021 05:24:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1maUsO-0000Yq-Uz; Wed, 13 Oct 2021 03:24:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <weq2345d@outlook.com>) id 1maUsM-0000Yj-NB
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 03:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YWU3cUx3Nwj+OWlJjo4iDyrc5s1MvqGgZUSR0ekZJpw=; b=c3QSzSVfe2d0giWVsXMMXab6Ha
 9W5iiJ4VOjidL4UZG0TijMJSiaM/5qr6LhSJOTVpTM+H33dB9G4cz/HJR/K4P0b50mzFaWsK3xvrk
 8oqrRLJJK17YOArYufaaXWLAZLKYlp6knPTXfu1e8mDbG5mIJgouWrrXXrCq7usejmZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YWU3cUx3Nwj+OWlJjo4iDyrc5s1MvqGgZUSR0ekZJpw=; b=g
 HUvZKENrsEYPIRAqLn5kojUpS4nOzuSiX5mTCEZBbQLp12GQ7j14H4w86NPNC2q2lQM3tAWHgdWLG
 ie0APX3yD/NYGKxZAB+LONp+Zm5Ha+Z5tlrTg9+cBbXOTbT7eVHnLzfsxvwmNv6JxKtCbos1Q4azE
 6026FnCckGi2/UYM=;
Received: from host.resellerhostpro.com ([207.7.92.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maUsK-00058c-OM
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 03:24:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=resellerhostpro.com; s=default; h=Content-Type:MIME-Version:Message-ID:
 Reply-To:From:Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YWU3cUx3Nwj+OWlJjo4iDyrc5s1MvqGgZUSR0ekZJpw=; b=lax45/4uNEbFPc1tQpKSrc4B/x
 3fWO0Xg/zD2e9pNk6eBkuxP7REJPSfP0+268xWHXviei+zPUvsGIq+qvwlx3KCkeVW6TG3DSwCleb
 Dq+WsHx6F7BPy32pO4HugigSytBw21853uzp03v2Nk24JgxUpvzTZ1/QhWCWOYLjN8fF9P9WLU0wr
 S6Li685Cg3EgatcQBlBNOT9ROTsDPIEXFkrZye7UTP1/kPxy0wkeLK2K017uafyDo/pb1ULP8uDjl
 ecLk7poa7wSehT7B6CRprHWPelEUlZcd4i08u7NNI4IeM1xuG9CPqk9AYn0i0Q1DvWXArpw2rq5Na
 ieRRvFlQ==;
Received: from realworks by host.resellerhostpro.com with local (Exim 4.94.2)
 (envelope-from <weq2345d@outlook.com>) id 1maFUy-00014Y-37
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Oct 2021 06:59:08 -0400
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: demo.resellerhostpro.com/wp-admin/crbnqmcomu.php for
 41.210.22.127
X-PHP-Originating-Script: 1266:crbnqmcomu.php
Date: Tue, 12 Oct 2021 10:59:08 +0000
From: Lorand Bertok <weq2345d@outlook.com>
Message-ID: <64fe7d09b8c715e78d9c2dcf0f73d14b@demo.resellerhostpro.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - host.resellerhostpro.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1266 997] / [47 12]
X-AntiAbuse: Sender Address Domain - outlook.com
X-Get-Message-Sender-Via: host.resellerhostpro.com: authenticated_id:
 realworks/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: host.resellerhostpro.com: realworks
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Sir/Madam, Good morning and compliment of the day to
 you, I represent an interest that has funds in the form of investment capital
 which can be given out as a loan for Project funding to companies or
 individuals
 who need financial funding. This is an alterna [...] 
 Content analysis details:   (6.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: resellerhostpro.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [weq2345d[at]outlook.com]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 PHP_SCRIPT             Sent by PHP script
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-Headers-End: 1maUsK-00058c-OM
Subject: [V9fs-developer] Loan Inquiry
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
Reply-To: q80abg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Sir/Madam,

Good morning and compliment of the day to you,

I represent an interest that has funds in the form of investment capital which can be given out as a loan for Project funding to companies or individuals who need financial funding. This is an alternative finance structure without the usual rigorous and stringent conditions experienced in banks and some other lending institutions.

Please revert back to me for further discussions on any possible business collaboration. If you're interested and equipped with an investment opportunity.

Best regards,
Mr.Lorand Bertok



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
