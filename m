Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB043BC498
	for <lists+v9fs-developer@lfdr.de>; Tue,  6 Jul 2021 03:30:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m0ZuS-0000Eo-8E; Tue, 06 Jul 2021 01:30:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <LifePointsPaneL@outlook.com>) id 1m0ZuR-0000Ee-99
 for v9fs-developer@lists.sourceforge.net; Tue, 06 Jul 2021 01:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Transfer-Encoding:Content-Type:
 Subject:Date:To:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uDs70/s55N3RaYgqrUuKTw6QXr89Qnql8rfEJdueAyo=; b=k8zBWucCArj/OTbKYfLwnQ5Lg2
 GUfQakoADRd9VduKyffGnfNKOeYY5mU7hC0mBYASToEIPARQhmP+1Ih38WQ7EzBv7nfuK1tjJfjZs
 9rF0bNeHT/UWH1cF2+HxkUmY0m6uDZvX+fU2gKFAp3x1rvIqKxw4X76DhlMwjBcQSTtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Transfer-Encoding:Content-Type:Subject:Date:To:From:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uDs70/s55N3RaYgqrUuKTw6QXr89Qnql8rfEJdueAyo=; b=G
 u4zdSdCBXyjwLpW1ksNIi52AZjOxqSH5oZwm2Jow8IE/CfRhmvvYsMyX51I3k0vIN5Czbs5VBsEkK
 P8LgJ8MaKvC//F8gFN9a7yZGo6GqRRjidISKHm97vuDVe3NHegpXH9d6h2TeAmIqX/kM5Sv8/vTgm
 Uj2cM1XpJofRg0lQ=;
Received: from mail.unimax.com ([50.220.81.186] helo=remote.unimax.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1m0ZuH-0004Wz-1E
 for v9fs-developer@lists.sourceforge.net; Tue, 06 Jul 2021 01:29:59 +0000
MIME-Version: 1.0
From: LifePoints Research LLC <LifePointsPaneL@outlook.com>
To: <v9fs-developer@lists.sourceforge.net>
X-Priority: 1
Priority: urgent
Importance: high
Date: Tue, 6 Jul 2021 01:29:42 +0000
Message-ID: <f16684d2-6181-4f45-a0dc-7f7c7201b031@EXCHANGE1.unimax.local>
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?50.220.81.186>]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lifepointspanel[at]outlook.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_LONG  Fill in a form with personal information
 1.0 FORM_FRAUD             Fill a form and a fraud phrase
X-Headers-End: 1m0ZuH-0004Wz-1E
Subject: [V9fs-developer] [Alert]; PROJECT STUDY ANALYSIS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Prospective Panelist,

You have been selected as a Quality Service Evaluator to participate in our short 5-10 minutes Paid Research Evaluation Survey on select Walgreens/Walmart/CVS stores within your area.

COMPENSATION: 
You will earn $500.00 for every completed evaluation survey assignment.

SURVEY [#53779-1001] DIRECTIVES: 
LifePoints Research will issue your first survey packet alongside a check for $1400.00 meant to cover the expense and compensation for your evaluation survey via USPS within the next 1-2 business days.

You will conduct your evaluation survey by visiting the nearest Walgreens/Walmart/CVS store within your area to utilize their store services for customer satisfaction standards, associate skills, facility management and product testing.

As a survey panelist, you are to act as a potential customer at the assigned Walgreens/Walmart/CVS store and conduct your evaluation survey on the quality of efficiency of associates, customer service and standards in order to submit a fair and unbiased rating in your survey reports.

APPLY:
____________________________
Complete Your Survey Profile >
*********************************
*Full Name: 
*Mailing Address: 
*Zip Code: 
*Phone Number (cell): 
*Age: 
*Alternate Email Address: 
*Work Related Experience: 
*********************************


Sincerely,

LifePoints Research LLC
685 US Highway 202/206 Ste 204
Bridgewater ?, NJ 08807-1775
Attn: Richard Scott (Operations Manager)
[ P: (585) 532-6525 ]



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
