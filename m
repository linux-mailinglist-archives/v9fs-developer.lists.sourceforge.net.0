Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB44BA774F4
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Apr 2025 09:15:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tzVpu-0007On-Hr;
	Tue, 01 Apr 2025 07:15:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <test@ape-x.net>) id 1tzVpr-0007Nh-RA
 for v9fs-developer@lists.sourceforge.net;
 Tue, 01 Apr 2025 07:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 MIME-Version:Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+COXDxJ42nZRy1bxGHuBOPYUqzPINODzZYsskogrnAc=; b=bPhA71FQ/ve7IPZOTRNseQNJsX
 lC+QFRk7fNc/yqBJKrwe5Kel5c7EqK9YRnoX7wto5fz8aiOt0lCsDWWS3/Xg4Y4PCcByrY8QoM3Ic
 c0ZJCVr3Rl4rGfY1oFRd4bvE+Z+QO1P8eLDy9+5AOtP0eesQoaehSgjevSa5IgYKRrJc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+COXDxJ42nZRy1bxGHuBOPYUqzPINODzZYsskogrnAc=; b=U
 wAMMeaQo7TSbpz0IIiYNJTTS0FeZBValwg1ZKzRXS7KyH/x2C8VtVZzdcThZkXy2hJlSxxOhntf+7
 RMQeDpVxG54ASGmXDxGhDE6aDteygaasqx5JV6Ohg5pASdJk1tpTmz9OU/7/Bw4hhvnJSCJL4peDr
 PeFprUOq0LNxG0nE=;
Received: from mout26.speicherzentrum.de ([87.238.195.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tzVpa-0000LH-Oo for v9fs-developer@lists.sourceforge.net;
 Tue, 01 Apr 2025 07:15:00 +0000
Received: from mout17.speicherzentrum.de ([87.238.195.147])
 by mout26.speicherzentrum.de with esmtp (Exim 4.92)
 (envelope-from <test@ape-x.net>) id 1tzVpN-0003VQ-Te
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Apr 2025 07:14:30 +0000
Received: from s03.speicheranbieter.de ([178.254.62.34])
 by mout17.speicherzentrum.de with esmtp (Exim 4.92)
 (envelope-from <test@ape-x.net>) id 1tzVpL-00030f-AE
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Apr 2025 07:14:27 +0000
Received: from [192.168.0.26] (unknown [105.12.0.173])
 (Authenticated sender: test@ape-x.net)
 by s03.speicheranbieter.de (Postfix) with ESMTPSA id D5637449232
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  1 Apr 2025 09:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=speicherzentrum.de;
 s=odcrsa0; t=1743491667;
 bh=CA5l/QBmswlY5MCLbIY95MxLbv85nTo4jQCKQ3BkB8k=;
 h=Subject:To:From:Date:Reply-To:From;
 b=pEYlB9tJraGBoGdt/cXa/uAO+BgeR0fw6RQHK7pYYNmKjtrqHiFgX5uzxzC+R0jgm
 JXJAqepbi1vJhesP7CITlHwajxRSClzvin0aHrGuX4KjESKpPXZkvj2eqi9GnwUosw
 yDfG/Vgxxe1vdUGujPDkWgplnFUAu25KIQnHPizwNZRe8gOx/QSD+LXSwAVPnT+FWH
 6jc4pgs+ZcQwcbSzhq0N7hL9lWdQ3Oq8K9KY8UFtNmfP8q7Q1/V6jqD3jqgOedtZMZ
 HJJ2MTQHDq3OYj8kq9VUdMrXqpN9agwRscuDHjK3XqJ9UcJz23Eix7WMy9pfuw2vYR
 go7HtahWdMugw==
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: Biz Capital Finance <test@ape-x.net>
Date: Tue, 01 Apr 2025 09:14:21 +0200
Message-Id: <E1tzVpL-00030f-AE@mout17.speicherzentrum.de>
X-Spam-Score: 10.8 (++++++++++)
X-Spam-Report: Action: soft reject Symbol: HAS_REPLYTO(0.00)
 Symbol: RCVD_VIA_SMTP_AUTH(0.00) Symbol: MSBL_EBL(7.50)
 Symbol: TO_DN_NONE(0.00) Symbol: DKIM_TRACE(0.00)
 Symbol: SUBJ_ALL_CAPS(1.20) Symbol: RCVD_NO_TLS_LAST(0.10)
 Symbol: FROM_EQ_ENVFROM(0.00) Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00) Symbol: RECEIVED_SPAMHAUS_PBL(0.00)
 Symbol: ARC_NA(0.00) Symbol: R_DKIM_ALLOW(0.00)
 Symbol: FROM_HAS_DN(0.00) Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MIME_GOOD(-0.10) Symbol: REPLYTO_DOM_NEQ_FROM_DOM(0.00)
 Symbol: FREEMAIL_REPLYTO(0.00)
 Symbol: PREVIOUSLY_DELIVERED(0.00) Symbol: RCPT_COUNT_ONE(0.00)
 Symbol: DMARC_NA(0.00) Symbol: BAD_REP_POLICIES(0.10)
 Symbol: R_SPF_NA(0.00) Symbol: FUZZY_BLOCKED(0.00)
 Symbol: RBL_SENDERSCORE(2.00) Symbol: RBL_NIXSPAM_FAIL(0.00)
 Symbol: RCVD_COUNT_TWO(0.00) Symbol: GREYLIST(0.00)
 Message: Try again later
 Message-ID: E1tzVpL-00030f-AE@mout17.speicherzentrum.de
X-Spam-Score-INT: 107
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good Day, It's our pleasure to offer you the opportunity to
 apply for a loan through Biz Capital Finance! We are mainly interested in
 giving out PERSONAL LOANS, CONSOLIDATION, WORKING CAPITAL, BOND/MORTGAGE,
 BUSINESS PROJECT and GENERAL LOANS in the following sectors with a 5% per
 annum interest rates. 
 Content analysis details:   (5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [87.238.195.156 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [87.238.195.156 listed in sa-accredit.habeas.com]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1tzVpa-0000LH-Oo
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] LOAN APPLICATION
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
Reply-To: bizcapitalfinance@naver.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good Day,
  
 It's our pleasure to offer you the opportunity to apply for a loan through Biz Capital Finance!
  
 We are mainly interested in giving out PERSONAL LOANS, CONSOLIDATION, WORKING CAPITAL, BOND/MORTGAGE, BUSINESS PROJECT and GENERAL LOANS in the following sectors with a 5% per annum interest rates.
  
 Self-employed/Contractor/Retailer/ Farming/Real Estate / Hospitality / Tourism
 Construction/ Renewal Energy/Mining / import & Export / General Trading
 Oil & Gas/ Aviation / etc.
  
 To begin the application process, please reach out to us by sending documents and information below to  info@bizcapitalfinances.com
  
 A clear copy of valid ID or International Passport, Pay Slip or 3 Months Bank Statement
 Cell No / Office No .......................... / ................Email .......................
 Loan Amount .......................Loan Repayment Duration ..................
 Loan Type: Business / Personal ..................................
 Business loan applicants to submit Legal Registration Documents
  
 Biz Capital Finance Pty Ltd
 Email: info@bizcapitalfinances.com
 50 Roeland St, Cape Town City Centre,
 Cape Town, 8000, South Africa

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
