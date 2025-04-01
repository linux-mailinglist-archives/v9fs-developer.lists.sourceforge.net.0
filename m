Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C63B2A7763B
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Apr 2025 10:20:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tzWr8-0000xT-Ps;
	Tue, 01 Apr 2025 08:20:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <test@ape-x.net>) id 1tzWr7-0000xM-AY
 for v9fs-developer@lists.sourceforge.net;
 Tue, 01 Apr 2025 08:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 MIME-Version:Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8KE5F7rI3w20W8peWvYQO8XKR0UM629PGga2sUwjZNo=; b=L0NETTg10OcWAhgTNr0UjZimPs
 y81jAAjtQe4pQdwp7WJyiq6Qoofq8Y28iID2GBNGqZNvzAF6P4LSyedKdcCgUYj/imoKofji3QuVu
 aRnBEZ0aycB+YHhyRwCiN0uKFqksby3Tb47HeySa//AcIPAYIQ+rQOmW0jFZKQsB4gBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8KE5F7rI3w20W8peWvYQO8XKR0UM629PGga2sUwjZNo=; b=Q
 7JIRAJhjV5hAbf7dil4KCwAe806K3OVk1WnSLNvBszXWdoW8YZdFDvjpIaw0CTK05m1cxi3LZLemk
 Pt2YDc/Irsx4dk9t2vGTW4/mynQHIZHvUxEkn/OKYcN3Ooe5eknjRHEfyZdNX2Q0LvWRjll0EiFkP
 2SvK8xUlZGSU+5mI=;
Received: from mout26.speicherzentrum.de ([87.238.195.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tzWqq-000526-8z for v9fs-developer@lists.sourceforge.net;
 Tue, 01 Apr 2025 08:20:21 +0000
Received: from mout17.speicherzentrum.de ([87.238.195.147])
 by mout26.speicherzentrum.de with esmtp (Exim 4.92)
 (envelope-from <test@ape-x.net>) id 1tzWqe-0001Cq-Tk
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Apr 2025 08:19:53 +0000
Received: from s03.speicheranbieter.de ([178.254.62.34])
 by mout17.speicherzentrum.de with esmtp (Exim 4.92)
 (envelope-from <test@ape-x.net>) id 1tzWqc-0005X2-FP
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Apr 2025 08:19:50 +0000
Received: from [192.168.0.26] (unknown [105.12.0.173])
 (Authenticated sender: test@ape-x.net)
 by s03.speicheranbieter.de (Postfix) with ESMTPSA id 2C64C44AF9F
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  1 Apr 2025 10:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=speicherzentrum.de;
 s=odcrsa0; t=1743495590;
 bh=bu/m5kufizXwW1tcya3cPR+ZEmT7ZBAgD21Rr/J3y7M=;
 h=Subject:To:From:Date:Reply-To:From;
 b=JSc6N53iPjPsDzpF0d9u5klDQqE2duyf8IR7/fLxnnWVaClTJ6y/T4TotDuT+NID8
 ZvudfUYG4Noop+hhiivMdWeb12F6RPP2Qzrp23LxhlSaHMzU5TIzzhDUo88NCRszOC
 7izCMOxbjzFNNtAaR/tgfrpCJ74kTDrJYkX0GqsWHuUxAf8bov+fM5D+p/2Mk7hYYs
 F95ZQfm9XtM9p8lYWyevSsKwCH/kytDy8cqyeT+easz02Nl7bKfPfWRR5wNuxrytoX
 ew5d1thpPX51AYRIaMEep7YNRiTaHsHawzzcxxVn6nHiJx62rAh29Al0x/17SfiFwm
 fJBoF3l+uEQ1g==
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: Biz Capital Finance <test@ape-x.net>
Date: Tue, 01 Apr 2025 10:19:44 +0200
Message-Id: <E1tzWqc-0005X2-FP@mout17.speicherzentrum.de>
X-Spam-Score: 10.8 (++++++++++)
X-Spam-Report: Action: add header Symbol: HAS_REPLYTO(0.00)
 Symbol: RCVD_VIA_SMTP_AUTH(0.00) Symbol: MSBL_EBL(7.50)
 Symbol: TO_DN_NONE(0.00) Symbol: NEURAL_SPAM(0.00)
 Symbol: DKIM_TRACE(0.00) Symbol: SUBJ_ALL_CAPS(1.20)
 Symbol: RCVD_NO_TLS_LAST(0.10) Symbol: FROM_EQ_ENVFROM(0.00)
 Symbol: MIME_TRACE(0.00) Symbol: ASN(0.00)
 Symbol: RECEIVED_SPAMHAUS_PBL(0.00) Symbol: ARC_NA(0.00)
 Symbol: R_DKIM_ALLOW(0.00) Symbol: FROM_HAS_DN(0.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00) Symbol: MIME_GOOD(-0.10)
 Symbol: REPLYTO_DOM_NEQ_FROM_DOM(0.00)
 Symbol: FREEMAIL_REPLYTO(0.00)
 Symbol: PREVIOUSLY_DELIVERED(0.00) Symbol: RCPT_COUNT_ONE(0.00)
 Symbol: DMARC_NA(0.00) Symbol: BAD_REP_POLICIES(0.10)
 Symbol: R_SPF_NA(0.00) Symbol: FUZZY_BLOCKED(0.00)
 Symbol: RBL_NIXSPAM_FAIL(0.00) Symbol: RBL_SENDERSCORE(2.00)
 Symbol: RCVD_COUNT_TWO(0.00) Symbol: GREYLIST(0.00)
 Message-ID: E1tzWqc-0005X2-FP@mout17.speicherzentrum.de
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
X-Headers-End: 1tzWqq-000526-8z
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
