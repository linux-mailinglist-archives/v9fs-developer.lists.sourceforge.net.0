Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A099A5085
	for <lists+v9fs-developer@lfdr.de>; Sat, 19 Oct 2024 21:38:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t2FHj-0003MA-Ua;
	Sat, 19 Oct 2024 19:38:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <post@fsrc.org>) id 1t2FHi-0003M3-Lo
 for v9fs-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 19:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q1D5FWQqhriTruDxTgFM4CtWyaYfciga9YGkzrVO1to=; b=ZT1H/sZTEJLVo+EsleCzT5veAx
 R0MI4L9GaiGnd6qoJr/8VfVVEVXexqyYEsfE+aA+R51sMYJ5mpJFn+e8c8HWcTsR8i8ZSualqrCKt
 dJ4ydozq7+RkWOMP827LxzxMdrvwz3QpDIjsxJIA5aMl8f/jxBZj9eMf/G1DN+JiPIXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q1D5FWQqhriTruDxTgFM4CtWyaYfciga9YGkzrVO1to=; b=Y
 3c4pmHkUv0KcJkFaGphapyCK7N0GwN4JGlpIifu4t7m9JHPGYFeDH9xMrVznUn+T+2EOeaacHTF/T
 E2H3em0sr1bIGJCYT67mwcszWczO/XrkluAGTtYW1t0j3JxU3buUh4iyGL7YAzX6SLDpoI4oZzIFF
 o2Hbn4HIknaW4MEg=;
Received: from [91.218.67.11] (helo=kernelhost.info)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t2FHg-0005dU-TS for v9fs-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 19:38:45 +0000
Received: from fsrc.org (dynamic-176-001-001-060.176.1.pool.telefonica.de
 [176.1.1.60]) by kernelhost.info (Postfix) with ESMTPA id 2B19015800C
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 19 Oct 2024 11:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fsrc.org; s=default;
 t=1729329695; bh=q1D5FWQqhriTruDxTgFM4CtWyaYfciga9YGkzrVO1to=;
 h=From:To:Subject;
 b=Kr9lXaGBvDiN1qeUntDdEJwknZ3bqKSNnfIRLm1U2jvxYT0fU1r/Ixz5xRA/K0yHd
 b9GHa0QztOzshYr9QqypCnMpx2QvULGuBKABIMdNHe0xz4IlTt2qT4oiUVAcnvT3nb
 7WdR4kI2qjE6RgMENMrPhuQ8UZvGnhUypBL9S5aZtUnJL4RV5qZ0Mp/k/QqII35pLj
 YIyN+MAfnr+wd3WQOQY4AYhV7LWnpdBY3rf5y9w6SM+jUirb7R3gFBAtIwNqBaStxL
 P78mAlWPTQ/AMLxuv3gcnynpIc2b+k47F2n2+XakRK3VxorP45Q85qblWfFSycPhVb
 Q7Day97WMIRmw==
Authentication-Results: kernelhost.info;
 spf=pass (sender IP is 176.1.1.60) smtp.mailfrom=post@fsrc.org
 smtp.helo=fsrc.org
Received-SPF: pass (kernelhost.info: connection is authenticated)
From: "Dr. Raymond Mcneill" <post@fsrc.org>
To: v9fs-developer@lists.sourceforge.net
Date: 19 Oct 2024 11:21:33 +0200
Message-ID: <20241019112133.A63E24D5C642D0B5@fsrc.org>
MIME-Version: 1.0
X-PPP-Message-ID: <172932969550.27952.15601156848287451588@kernelhost.info>
X-PPP-Vhost: fsrc.org
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Trust Financial & securities Services 432 16th St NW, Atlanta,
 GA 30302-3965 Email: imf.org@mail2Director.com Payment CPC Code
 CON/FT0/990/651/
 UNPAID FUND 2024. Hello Beneficiary How are you doing today? I hope everything
 is well with you. This particular letter is strictly confidential and Urgent
 only for your perusal based on message we sent to you last week, Till now
 you ha [...] 
 Content analysis details:   (7.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [91.218.67.11 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [glennterry227[at]aol.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 2.5 ADVANCE_FEE_4_NEW      Appears to be advance fee fraud (Nigerian 419)
X-Headers-End: 1t2FHg-0005dU-TS
Subject: [V9fs-developer] Attention !
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
Reply-To: glennterry227@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Trust Financial & securities Services
432 16th St NW,
Atlanta, GA 30302-3965
Email: imf.org@mail2Director.com
Payment CPC Code CON/FT0/990/651/ UNPAID FUND 2024.

Hello Beneficiary

How are you doing today? I hope everything is well with you. This 
particular letter is strictly confidential and Urgent only for 
your perusal based on message we sent to you last week, Till now 
you have not reply back regarding the notice. Well, our office is 
contacting you based on an important issues about Contractual 
/Inheritance payment which you suppose to receive since long time 
ago.

However, we are surprised to receive another application this 
morning from your representative, Mr. Klaus Muller, stating that 
you authorized him to transfer the funds to his bank account in
Germany and that you were recently involved in an auto accident 
and presently hospitalized.

Could you please confirm immediately below bank details if you 
are aware of this new development from Mr. Klaus Muller.

Deutsche Bank, D-45138 Essen, GERMANY
Kontonummer: 056097900
Bankleitzahl: 59070070
IBAN: DE75590700700056097900
BIC: DEUTDEDB595

Please if you are not aware of this this changes from Mr. Klaus 
Muller, You are advice to contact below Office of Paymaster 
immediately through his contact details below.

Dr. Raymond Mcniel
Email:  imf.org@mail2director.com

In other to avoid mistake while transferring your overdue payment 
to you, Confirm above account details our Officer finalize with 
transfer payment to above account Mr. Klaus forward to our 
office.

Yours sincerely,
Mr. Terry Glenn
Financial Services Regulation Committee
United Stated Of America


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
