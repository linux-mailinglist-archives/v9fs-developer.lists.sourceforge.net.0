Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B609525584D
	for <lists+v9fs-developer@lfdr.de>; Fri, 28 Aug 2020 12:07:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kBbIU-00077j-I0; Fri, 28 Aug 2020 10:07:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <am@gmail.com>) id 1kBbIT-00077K-Qt
 for v9fs-developer@lists.sourceforge.net; Fri, 28 Aug 2020 10:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:
 List-Unsubscribe:MIME-Version:Reply-To:From:Date:Message-ID:Subject:To:Sender
 :Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QX2BxdOHIzmyHfTskLoUxu9yS8dpxxKz25wIo42GXvc=; b=av3vEn92cinTHGlWzNbrARV3dX
 pxUzIAuWvgR+IJBeg8E7CoSe6tRV8zyllO7Fk/gN4dRySzn9c5OrAxK9Bh4liP+V8I0fTNao/Qiav
 vYIm01DMzBTt+xzgUOLisevxQzpUj8bfPEdem/QKjhWL8ZPG5bwN2xc7Lz6WhEL1Ggqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:List-Unsubscribe:MIME-Version:
 Reply-To:From:Date:Message-ID:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QX2BxdOHIzmyHfTskLoUxu9yS8dpxxKz25wIo42GXvc=; b=JX4aT9dWtR6ifxeCmQ/cyfx8i3
 5R/buB0nCkvHeN4rStTF0Bg+suf5ayPsyrAnK6P61V/1Qj72TB4jWOpzPDEab7HFfSq64FAyDG8Mv
 0evKmD3w2otm9VvtgkaZHRMzPRaqH3e5i89WMFGumsph64uw7cMP4AqMLxQRj0X0xz14=;
Received: from [45.155.125.181] (helo=rst1.rstyedm.info)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kBbI7-005YUR-Bu
 for v9fs-developer@lists.sourceforge.net; Fri, 28 Aug 2020 10:07:49 +0000
To: v9fs-developer@lists.sourceforge.net
Message-ID: <8a65bd8624b71a1cba0893b1238ebe5b@rstyedm.info>
Date: Fri, 28 Aug 2020 01:13:43 -0500
From: "Susan Anderson" <susan.anderson@mytbedm.info>
MIME-Version: 1.0
X-Mailer-LID: 10
X-Mailer-SID: 22
X-Spam-Score: 5.3 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (am[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: rstyedm.info]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [45.155.125.181 listed in psbl.surriel.com]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kBbI7-005YUR-Bu
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Lead report
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
Reply-To: susan.anderson@mytbedm.info
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Your email client cannot read this email.
To view it online, please go here:
http://rstyedm.info/e2bm/display.php?M=3902450&C=4g24efh7l6nra3mnzi4hhj2auf3t8mmv&S=22&L=10&N=1


To stop receiving these
emails:http://rstyedm.info/e2bm/unsubscribe.php?M=3902450&C=4g24efh7l6nra3mnzi4hhj2auf3t8mmv&L=10&N=22

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
