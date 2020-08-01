Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 595BF235319
	for <lists+v9fs-developer@lfdr.de>; Sat,  1 Aug 2020 17:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iv8Y0SJ5wf8/1ezpdz6YMSPq9UTZEtQkCeUV6acJaOU=; b=i7HE+7EMZ3vXIlKaWaj14pWQ6v
	pjdtKsFP8AyPXB5b8SlSdNuKXlDC8Y3fcvSOw6ATcFGzhCpZBW1Z3qpIFTbliLBBWuLK9IYNzoHT2
	JFJjvNOhG52xLPsJoCjlJtTXSA/UuTsV028+OpTq51CnGDFz2/Eq1gzk15AwK/9dsGis=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k1tpf-0007OG-RN; Sat, 01 Aug 2020 15:53:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <no=reply@WHO.com>) id 1k1tpe-0007O4-U8
 for v9fs-developer@lists.sourceforge.net; Sat, 01 Aug 2020 15:53:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dWYoN3YZQpbeYK36Ny+TrcwcWSeufEz/udwQhVWCP3E=; b=XS9c907ixtXZdG7bYkveZ13Jkv
 nMByDeWs0Ck+vN7/96Nkk7XJqXsEbcarwun6wxMcIkEQl+7CI7V/QE4U+usedAclEbyKHXksjB/e8
 PSEEWW0KtkN8tRXQ3IixKQxpGqLCfmWXeoab7UZSfEivmqUjTXN72NogQyA5DKMS8/Ew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dWYoN3YZQpbeYK36Ny+TrcwcWSeufEz/udwQhVWCP3E=; b=J
 WTkI+h6lHdoTnI2l1doXsAhJdFKTV87DKYGr3togSf3tVewFoUZlAqZHKljlmEhitJp7kb+i1TjLi
 38v+oqPAarnjEze61emJ8jLsMfP4xci+P0+MuASrPllG4h37CAPZgDZk6FPao2F2G0XWdSGSFRnIH
 YS4QxHYLuxZQoTwo=;
Received: from [103.141.137.241] by sfi-mx-1.v28.lw.sourceforge.com with esmtp 
 (Exim 4.92.2) id 1k1tpd-00H2lB-8S
 for v9fs-developer@lists.sourceforge.net; Sat, 01 Aug 2020 15:53:58 +0000
To: v9fs-developer@lists.sourceforge.net
Date: 1 Aug 2020 08:53:50 -0700
Message-ID: <20200801085350.995FB89E5E0D4497@WHO.com>
MIME-Version: 1.0
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: onet.eu]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.141.137.241>]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.141.137.241 listed in zen.spamhaus.org]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [103.141.137.241 listed in psbl.surriel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k1tpd-00H2lB-8S
Subject: Re: [V9fs-developer] COVID-19 Compensation Payment Waiver
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
From: UN Foundation via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: delia.d@onet.eu
Cc: UN Foundation <no=reply@WHO.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fund Beneficiary / Email Owner
REGISTERED CASE NR: WHO/UNCCORG/HEALTH020

Congratulations!! 

Your Email has been conditionally selected for Solidarity COVID-
19 Palliative through World Health Organization(WHO), United 
Nations Foundation COMPENSATION BOARD and the financial 
empowerment platform is sending out relief Grants sum of 
US$500,000.00 (Five Hundred Thousand United States Dollars) as 
part of the Compensating response for Coronavirus (COVID-19) 
outbreak.

For claim, reach out to "Mrs Stefanova" on her Email " 
delia.d@onet.eu "

Sincerely,

Director general of the World Health Organization(WHO) &
United Nations Economic and Social Council(UNESCO)
WHO, UN Foundations.
405 East 42nd Street,
New York NY, 10017, USA
www.unfoundation.org


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
