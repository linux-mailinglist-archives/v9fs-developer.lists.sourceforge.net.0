Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB9F191E5E
	for <lists+v9fs-developer@lfdr.de>; Wed, 25 Mar 2020 02:03:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jGuSK-0005oa-7M; Wed, 25 Mar 2020 01:03:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <samokojere@remittance.com>) id 1jGuSJ-0005oO-3d
 for v9fs-developer@lists.sourceforge.net; Wed, 25 Mar 2020 01:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HoWrRjup2LzMpzWBhZG3XKu1q9eruPbw5yZzFqsR2p8=; b=NDPds6OpI8LUd95VkamdlqMHOP
 wnYEgTCLacLqJprgtna55a7fqyI/IIb2icZws4R/2Q9PpPvMAo0HwAWp8q90u29/U/M2B07o7+gI7
 Vr0qN7L1UrY2P+hbdeyOxYe1NIO4+gAQj9h2MRIRobLlKBW7PU7565EIleT6mUqObzEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HoWrRjup2LzMpzWBhZG3XKu1q9eruPbw5yZzFqsR2p8=; b=P
 tJJeaTIfg19YmbXjaoP9c9/Seyh1sOaURKXURmKuDGfGluBeRhm/T6SJl+ejrCk7ya5wSiwMXgDLL
 qniJJQZ5mBKKkex+ovpD7cApgEOtPGX4srV5yPGEt8Kc/kfNv+OUkYT8+icMbUPO7qMg129qjFVrH
 gqeed+9lvd8SXeY8=;
Received: from smtphost103.smtphosting.sk ([185.14.255.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jGuSH-002SJR-Tv
 for v9fs-developer@lists.sourceforge.net; Wed, 25 Mar 2020 01:03:39 +0000
Received: from remittance.com (unknown [180.214.239.142])
 by smtphost103.smtphosting.sk (Postfix) with ESMTP id B8E2C31316
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 24 Mar 2020 22:51:30 +0100 (CET)
From: Mr.  Samuel Chukwuyem Okojere <samokojere@remittance.com>
To: v9fs-developer@lists.sourceforge.net
Date: 24 Mar 2020 14:51:28 -0700
Message-ID: <20200324145128.0F72234C2E55C789@remittance.com>
MIME-Version: 1.0
X-Spam-Score: 6.4 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?185.14.255.193>]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [185.14.255.193 listed in psbl.surriel.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [185.14.255.193 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (samokojere250[at]gmail.com)
 0.0 HK_NAME_MR_MRS         No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
 0.0 FORM_FRAUD_5           Fill a form and many fraud phrases
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jGuSH-002SJR-Tv
Subject: [V9fs-developer] Your Fund.
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
Reply-To: samokojere250@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Attention:

In consonance with the Central (Apex) Banks of West African 
countries (BENIN, BURKINA FASO, CAPE VERDE, COTE D'IVOIRE, 
GAMBIA, GHANA, GUINEA, GUINEA BISSAU, LIBERIA, MALI, NIGER, 
NIGERIA, SENEGAL, SIERRA LEONE,TOGO),we are committed to 
identifying beneficiaries/payments for eventual unconditional 
transfer to beneficiaries.

I, respectfully wish to draw your attention to the following that 
you have been identified as a beneficiary of outstanding Fund 
currently long overdue and to help / facilitate our on going 
exercise, preparing to the unconditional transfer of your funds, 
You need to urgently reconfirm your details and requisite 
information viz,

(a) Full names and address and telephone.
(b) Copy of your identity.
(c) Essential documents pertaining to your funds and your claim 
for payment.

Note:   You are quickly advised to stop communication with any 
other person whatsoever.Finally, endeavor to treat this mail as 
imperative and urgent and also to maintain confidentiality on it 
at all times and in all places until you have received your 
funds.

Finally, endeavor to treat this mail as imperative and urgent and 
also to maintain confidentiality on it at all times and in all 
places until you have received your funds.

Sincerely Yours,

Mr. Samuel Chukwuyem Okojere
Director,Payment Systems Management Department
Central Bank of Nigeria
Plot 33,Abubakar Tafawa Balewa Way 
Central Business District,Cadastral Zone,
Abuja,Federal Capital Territory,Nigeria 
P.M.B. 0187,Garki Abuja. 
Nigeria


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
