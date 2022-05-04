Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1094A5197B6
	for <lists+v9fs-developer@lfdr.de>; Wed,  4 May 2022 08:58:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nm8y7-0002E8-DP; Wed, 04 May 2022 06:58:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bitcoin20@cryptogroup.com>) id 1nm8xy-0002Dw-AI
 for v9fs-developer@lists.sourceforge.net; Wed, 04 May 2022 06:58:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gFEq1YQ2hIU6yVACS3wpT/U3+u/V76YyxPH4kkSXCGQ=; b=a/40kS9MHTSXHrQtAIf6HiNAd/
 hE+INLcXKqZC9cUaEMsd6iqilieIyVjk0AaU/cVaSygW7heJ+tQkfJPV4WjWKYYDTXcl5jxtTa0yH
 gFTcGIPoAWFoVEGh/iOd8BiBghgfrqR9kxl9k652MVbxMZ++FGD9eqv4XYx/d9FCDVtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gFEq1YQ2hIU6yVACS3wpT/U3+u/V76YyxPH4kkSXCGQ=; b=U
 XI/REptjvkREy2q+evGrXmobMR+Ijg/RAhA+tOVL9LgZTOh0PKDFRvRNo1X7Ci0fk1pS7F0uO+Zda
 W61EwOvDzcgCKlSjByJA6xXZ+66a51irW7fINnUbpzV8LvN6BO7qkxLsX875PMd3m4lLY1JKXTq8f
 wA8TQpu0Vhs249dE=;
Received: from mx1.vladavia.ru ([91.207.252.247] helo=gw12.vladavia.ru)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nm8xv-000pTK-ML
 for v9fs-developer@lists.sourceforge.net; Wed, 04 May 2022 06:58:28 +0000
Received: from [20.97.211.134] (port=64604 helo=cryptogroup.com)
 by gw12.vladavia.ru with esmtpsa (TLS1) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
 (Exim 4.94.2) (envelope-from <Bitcoin20@cryptogroup.com>)
 id 1nm8xl-0007yQ-1p
 for v9fs-developer@lists.sourceforge.net; Wed, 04 May 2022 16:58:18 +1000
X-SASI-Hits: BITCOIN_SEXTORTION 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODY_SIZE_1100_1199 0.000000, BODY_SIZE_2000_LESS 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 FRAUD_WEBMAIL_R_NOT_F 0.100000, FROM_NAME_PHRASE 0.000000,
 HTML_00_01 0.050000, HTML_00_10 0.050000, NO_URI_HTTPS 0.000000,
 RDNS_NXDOMAIN 0.000000, RDNS_SUSP 0.000000, RDNS_SUSP_GENERIC 0.000000,
 REPLYTO_FROM_DIFF_ADDY 0.100000, SENDER_NO_AUTH 0.000000,
 WEBMAIL_REPLYTO_NOT_FROM 0.500000, __ANY_URI 0.000000,
 __BITCOIN_ADDRESS_OBFU 0.000000, __BITCOIN_BODY 0.000000,
 __BODY_NO_MAILTO 0.000000, __CP_MEDIA_BODY 0.000000, __CT 0.000000,
 __CTE 0.000000, __CT_TEXT_PLAIN 0.000000, __FRAUD_BODY_WEBMAIL 0.000000,
 __FRAUD_PARTNERSHIP 0.000000, __FRAUD_WEBMAIL 0.000000,
 __FRAUD_WEBMAIL_REPLYTO 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_ADDR 0.000000, __FROM_NAME_NOT_IN_BODY 0.000000,
 __FUR_HEADER 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REPLYTO 0.000000, __HEADER_ORDER_FROM 0.000000,
 __INT_PROD_ONLINE 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MULTIPLE_URI_TEXT 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __PHISH_PHRASE10_D 0.000000, __PHISH_SPEAR_STRUCTURE_1 0.000000,
 __PHISH_SPEAR_STRUCTURE_2 0.000000, __REPLYTO_GMAIL 0.000000,
 __SANE_MSGID 0.000000, __SEXTORTION_PORN 0.000000,
 __STOCK_PHRASE_24 0.000000, __TO_MALFORMED_2 0.000000, __TO_NO_NAME 0.000000, 
 __URI_IN_BODY 0.000000, __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000,
 __URI_NO_PATH 0.000000, __URI_WITHOUT_PATH 0.000000
X-SASI-Probability: 10%
X-SASI-RCODE: 200
X-SASI-Version: Antispam-Engine: 4.1.4, AntispamData: 2022.3.11.110917
From: Ultra Fx Trade <Bitcoin20@cryptogroup.com>
To: v9fs-developer@lists.sourceforge.net
Date: 04 May 2022 06:58:16 +0000
Message-ID: <20220503200014.F306AA250D326982@cryptogroup.com>
MIME-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dear v9fs-developer A new month is here and market Capitality
 in Crypto; Bitcoin in particular will increase. We as a company profxequity.com
 have every capacity to actualize your dream in Earning good profits daily,
 wee [...] 
 Content analysis details:   (4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [91.207.252.247 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?91.207.252.247>]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=bitcoin20%40cryptogroup.com; ip=91.207.252.247;
 r=util-spamd-1.v13.lw.sourceforge.com]
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [91.207.252.247 listed in bl.score.senderscore.com]
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [91.207.252.247 listed in dnsbl-1.uceprotect.net]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1nm8xv-000pTK-ML
Subject: [V9fs-developer] Crypto Trading Program (Invest Now)
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
Reply-To: saint.miles0fficial@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear v9fs-developer

A new month is here and market Capitality in Crypto; Bitcoin in 
particular will increase.
We as a company profxequity.com have every capacity to actualize 
your dream in Earning good profits daily, weekly and monthly.


Invest a minimum of 0.1BTC - 1 BTC for 45days to earn an instant 
5% bonus (*BTC) and 20% (*BTC) on expiration of the cycle.


Invest between (1BTC - 5BTC) to earn an instant bonus of 10% and 
30% on expiration of your 45days cycle.

Invest 10 BTC for 30days to earn an instant 15% bonus (1.5BTC) 
and 40% (4BTC) on expiration of the cycle. Gross profit of 5.5BTC 
and compound capital of 15.5BTC.

So many testimonial videos and messages are in Confirmation to 
how lucrative and secure your investments are to us.

Remember, the principal profit can be taken away at any time!


Visit our official website;

www.profxequity.com  or write me directly for more guidance on 
saint.miles0fficial@gmail.com

My Referral ID: 1822S007

Regards
Mr.Saint Miles
Database Administrator & Crypto Analyst
saint.miles0fficial@gmail.com
www.profxequity.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
