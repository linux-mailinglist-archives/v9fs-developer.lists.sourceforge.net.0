Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C80482AA9C
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Jan 2024 10:16:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rNrAQ-0007w9-Ds;
	Thu, 11 Jan 2024 09:16:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ray.galt@severnouse.com>) id 1rNrAN-0007vX-TO
 for v9fs-developer@lists.sourceforge.net;
 Thu, 11 Jan 2024 09:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=waaYxUsyRtmB2zEBuWcqRuRHSoYd8sJFCtgHO/3AHKE=; b=SwwZuqEHOZQ1DPiAUQm9PWzKzW
 cO0KMZCwJbFcarsPXpSUs371nqjTy6TQhZN152JDHRdXXMI0kq0JzqLr4YHlPY7MBwe5FL4Mm/C1a
 4Rxme5O06YzAB+t1MVA8BmYBhPrlkCRsXfLcE+uwzrbttjGf0yxfa7q/r28mCCateESY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=waaYxUsyRtmB2zEBuWcqRuRHSoYd8sJFCtgHO/3AHKE=; b=Y
 2IQh/rzTY/KWn/HNTHek4MFpu81Dj+vjfpSDoxYsKxgDpqm8xs2ki+EVMIfyOR0ZnwNDTSxNJh5JM
 YGIONWrLHXK5TlYQ8L9dPQYBrKAszsxK9B8MUfFyENPq9coRr+FMK2boC1NudqCiT5UpwfBpF+haV
 rlplZFP3quutg7N4=;
Received: from mail.severnouse.com ([141.95.160.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rNrAF-0001Qu-SS for v9fs-developer@lists.sourceforge.net;
 Thu, 11 Jan 2024 09:15:56 +0000
Received: by mail.severnouse.com (Postfix, from userid 1002)
 id 474E0A2E51; Thu, 11 Jan 2024 09:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=severnouse.com;
 s=mail; t=1704964545;
 bh=waaYxUsyRtmB2zEBuWcqRuRHSoYd8sJFCtgHO/3AHKE=;
 h=Date:From:To:Subject:From;
 b=S5seJ39Igw0juKIvDtrujMHThm82LCmZBaWg1WwpDn/IbcjRHpTsV1MaZQROtmxp1
 z3i5/oLVZtKs+y7YOyvIK8kwnhPxqTZCwU21R3pU5wl8Prtyge1BtinO3XApwhHfKB
 b/+UxEkpvkaX+LQ4z3NCFxT8EHFALhdQ87MLmCZAd9LlbEjc+/r2myghrueapASW23
 HlPE63MNlb7bEWEPwKUTcCEAZQaMq8pJBkbCzlzF1SHvsuJ6GH3OjSsGABtn4Dax+T
 vHQUn2lW0m+iV4ZQDD3ZpdZjP8CosT1LgQDig7duDIGbYxqb+B1vQbCHXTkgTUdtyV
 eku5hHsQWRpqw==
Received: by mail.severnouse.com for <v9fs-developer@lists.sourceforge.net>;
 Thu, 11 Jan 2024 09:15:41 GMT
Message-ID: <20240111074500-0.1.bd.ocqo.0.goijkaieen@severnouse.com>
Date: Thu, 11 Jan 2024 09:15:41 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.severnouse.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I would like to reach out to the decision-maker in
 the IT environment within your company. We are a well-established digital
 agency in the European market. Our solutions eliminate the need to build and
 maintain in-house IT and programming departments, hire interface designers,
 or employ use [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rNrAF-0001Qu-SS
Subject: [V9fs-developer] Meeting with the Development Team
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
From: Ray Galt via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Ray Galt <ray.galt@severnouse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,

I would like to reach out to the decision-maker in the IT environment within your company.

We are a well-established digital agency in the European market. Our solutions eliminate the need to build and maintain in-house IT and programming departments, hire interface designers, or employ user experience specialists.

We take responsibility for IT functions while simultaneously reducing the costs of maintenance. We provide support that ensures access to high-quality specialists and continuous maintenance of efficient hardware and software infrastructure.

Companies that thrive are those that leverage market opportunities faster than their competitors. Guided by this principle, we support gaining a competitive advantage by providing comprehensive IT support.

May I present what we can do for you?


Best regards
Ray Galt


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
