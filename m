Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718C1DF461
	for <lists+v9fs-developer@lfdr.de>; Sat, 23 May 2020 05:26:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jcKo9-0001Mg-Fm; Sat, 23 May 2020 03:26:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@EU.com>) id 1jcKo7-0001MU-91
 for v9fs-developer@lists.sourceforge.net; Sat, 23 May 2020 03:26:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Xxjg5y3xUd5oKWPlvc1k06KmMw9Gll9NFzLEPd4Cvk=; b=m5ktdT54NJAsAUHRSQrjw89FSb
 MUrs1iXgWQHJM70pAiVxGlaeyGeyzOzrH5STtuXc5elCuVDVghJrm/tKKdpofTESbxnCgz6/VVx8J
 rfCZIn0li0XWksn9hgWAFlReanr3uNb0S7gPdbMBjzzcvx+OYzAeXKqyNI7vBVAGFqHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3Xxjg5y3xUd5oKWPlvc1k06KmMw9Gll9NFzLEPd4Cvk=; b=U
 2PicCW3GrFXpWwgZnPBnFOkgpSbFghtMdaAROHWnxoFIMrR4pnBE7cTUgu1scIlHqS8hpdMEdtOZO
 9Mj+w2QHZ/i0E6LCAEBdSkAyhU5BUy6R6ho/k7Z+HBtH09TN+9Jo4raGfr4KMvSCc+Y7FCfMX2Kc3
 +tSNdfjCAu2O60po=;
Received: from [103.141.137.241] by sfi-mx-1.v28.lw.sourceforge.com with esmtp 
 (Exim 4.92.2) id 1jcKo3-00Dqzu-90
 for v9fs-developer@lists.sourceforge.net; Sat, 23 May 2020 03:26:43 +0000
From: "John Gray" <noreply@EU.com>
To: v9fs-developer@lists.sourceforge.net
Date: 22 May 2020 20:26:26 -0700
Message-ID: <20200522202626.94F4D5511AB464C1@EU.com>
MIME-Version: 1.0
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.141.137.241 listed in zen.spamhaus.org]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [103.141.137.241 listed in psbl.surriel.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [103.141.137.241 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [103.141.137.241 listed in bl.mailspike.net]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.141.137.241>]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jcKo3-00Dqzu-90
Subject: Re: [V9fs-developer] UN COVID-19 Stimulus
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
Reply-To: delia.d@onet.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Following the recent World Standing order over Corona Virus ( 
COVID-19)
PANDEMIC and its effect on World Economy, the World Bank in 
conjunction
with the UN and EU have approved a stimulus package for as many 
individuals and companies across the globe

Note that you have been chosen as one of the beneficiaries of 
this package.

You will be receiving the sum of 30,000.00 EUR plus Sanitizes 
worth 1000,
EUR in addition to this you will also receive face Mask worth 
1000 EUR as
well.


Kindly contact our Zonal Coordinator, Mrs Yova, through her email 
address
below to receive your approved package.


Contact Email Address: delia.d@onet.eu  


On behalf of the authorities, remain safe and try as much as you 
can to
maintain the standing order which is social distancing.

Together we will defeat this Pandemic.

Regards
John Gray


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
